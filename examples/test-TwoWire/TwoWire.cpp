#include "TwoWire.h"

AVRT_DECLARE_Srial0_NoRecv(serial)

namespace avrt {

//------------------------------------------------------------------------------
// TwoWire
//------------------------------------------------------------------------------
void TwoWire::Open(uint8_t address, uint32_t freq)
{
	uint8_t dataTWA = address;				// TWA: TWI (Slave) Address Register
	uint8_t dataTWBR = static_cast<uint8_t>(((F_CPU / freq) - 16) / 2);
											// TWBR: TWI Bit Rate Register
	constexpr uint8_t dataTWINT = 0b1;		// TWINT: TWI Interrupt Flag = set one to clear
	constexpr uint8_t dataTWEA = 0b1;		// TWEA: TWI Enable Acknowledge Bit = true .. connect to the bus
	constexpr uint8_t dataTWIE = 0b1;		// TWIE: TWI Interrupt Enable = true
	constexpr uint8_t dataTWEN = 0b1;		// TWEN: TWI Enable Bit = true
	constexpr uint8_t dataTWPS = 0b00;		// TWPS: TWI Prescaler Bits = Div1
	constexpr uint8_t dataTWSTA = 0b0;		// TWSTA: TWI START Condition Bit
	constexpr uint8_t dataTWSTO = 0b0;		// TWSTO: TWI STOP Condition Bit
	constexpr uint8_t dataTWAM = 0b0000000;	// TWAM: TWI Address Mask
	constexpr uint8_t dataTWGCE = 0b0;		// TWGCE: TWI General Call Recognition Enable Bit
	TWBR = dataTWBR << TWBR0;
	TWCR = (dataTWINT << TWINT) | (dataTWEA << TWEA) | (dataTWSTA < TWSTA) | (dataTWSTO << TWSTO) |
		(dataTWEN << TWEN) | (dataTWIE << TWIE);
	TWSR = (dataTWPS << TWPS0);
	TWDR = 0x00;
	TWAR = (dataTWA << TWA0) | (dataTWGCE << TWGCE);
	TWAMR = dataTWAM << TWAM0;
}

void TwoWire::Close()
{
	TWCR &= ~(0b1 << TWEA);					// TWEA: TWI Enable Acknowledge Bit = false .. disconnect from the bus
}

void TwoWire::SendData(uint8_t address, uint8_t data)
{
	buffSend_.WriteData(address);
	buffSend_.WriteData(data);
	CtrlStart();
	while (IsRunning()) ;
}

void TwoWire::SendBuff(uint8_t address, const uint8_t* buff, int len)
{
	buffSend_.WriteData(address);
	buffSend_.WriteBuff(buff, len);
	CtrlStart();
	while (IsRunning()) ;
}

void TwoWire::HandleISR_TWI()
{
	uint8_t stat = TW_STATUS;
	//serial.Printf(F("stat:%02x\n"), stat);
	if (stat == TW_START) {							// 0x08: 
		serial.Printf(F("TW_START\n"));
		uint8_t address = buffSend_.ReadData();
		CtrlData((address << 1) | (0b0 << 0));
	} else if (stat == TW_REP_START) {				// 0x10: repeated start condition transmitted
		serial.Printf(F("TW_REP_START\n"));
		uint8_t address = buffSend_.ReadData();
		CtrlData((address << 1) | (0b0 << 0));
	// Master Transmitter
	} else if (stat == TW_MT_SLA_ACK) {				// 0x18: SLA+W transmitted, ACK received
		serial.Printf(F("TW_MT_SLA_ACK\n"));
		if (buffSend_.HasData()) {
			uint8_t data = buffSend_.ReadData();
			serial.Printf(F("data:%02x\n"), data);
			CtrlData(buffSend_.ReadData());
		} else {
			CtrlStop(); 
		}
	} else if (stat == TW_MT_SLA_NACK) {			// 0x20: SLA+W transmitted, NACK received
		serial.Printf(F("TW_MT_SLA_NACK\n"));
		// not found
		CtrlDisconnect();
	} else if (stat == TW_MT_DATA_ACK) {			// 0x28: data transmitted, ACK received
		serial.Printf(F("TW_MT_DATA_ACK\n"));
		if (buffSend_.HasData()) {
			uint8_t data = buffSend_.ReadData();
			serial.Printf(F("data:%02x\n"), data);
			CtrlData(buffSend_.ReadData());
		} else {
			serial.Printf(F("stop\n"));
			CtrlStop();
		}
	} else if (stat == TW_MT_DATA_NACK) {			// 0x30: data transmitted, NACK received
		serial.Printf(F("TW_MT_DATA_NACK\n"));
		CtrlDisconnect();
	// Master Receiver
	//} else if (stat == TW_MT_ARB_LOST) {			// 0x38: arbitration lost in SLA+W or data
	} else if (stat == TW_MR_ARB_LOST) {			// 0x38: arbitration lost in SLA+R or NACK
	} else if (stat == TW_MR_SLA_ACK) {				// 0x40: SLA+R transmitted, ACK received
	} else if (stat == TW_MR_SLA_NACK) {			// 0x48: SLA+R transmitted, NACK received
	} else if (stat == TW_MR_DATA_ACK) {			// 0x50: data received, ACK returned
	} else if (stat == TW_MR_DATA_NACK) {			// 0x58: data received, NACK returned
	// Slave Transmitter
	} else if (stat == TW_ST_SLA_ACK) {				// 0xA8: SLA+R received, ACK returned
	} else if (stat == TW_ST_ARB_LOST_SLA_ACK) {	// 0xB0: arbitration lost in SLA+RW, SLA+R received, ACK returned
	} else if (stat == TW_ST_DATA_ACK) {			// 0xB8: data transmitted, ACK received
	} else if (stat == TW_ST_DATA_NACK) {			// 0xC0: data transmitted, NACK received
	} else if (stat == TW_ST_LAST_DATA) {			// 0xC8: last data byte transmitted, ACK received
	// Slave Receiver
	} else if (stat == TW_SR_SLA_ACK) {				// 0x60: SLA+W received, ACK returned
	} else if (stat == TW_SR_ARB_LOST_SLA_ACK) {	// 0x68: arbitration lost in SLA+RW, SLA+W received, ACK returned
	} else if (stat == TW_SR_GCALL_ACK) {			// 0x70: general call received, ACK returned
	} else if (stat == TW_SR_ARB_LOST_GCALL_ACK) {	// 0x78: arbitration lost in SLA+RW, general call received, ACK returned
	} else if (stat == TW_SR_DATA_ACK) {			// 0x80: data received, ACK returned
	} else if (stat == TW_SR_DATA_NACK) {			// 0x88:data received, NACK returned
	} else if (stat == TW_SR_GCALL_DATA_ACK) {		// 0x90: general call data received, ACK returned
	} else if (stat == TW_SR_GCALL_DATA_NACK) {		// 0x98: general call data received, NACK returned
	} else if (stat == TW_SR_STOP) {				// 0xA0: stop or repeated start condition received while selected
	// Misc
	} else if (stat == TW_NO_INFO) {				// 0xF8: no state information available
	} else if (stat == TW_BUS_ERROR) {				// 0x00: illegal start or stop condition
	}
}

void TwoWire::CtrlStart()
{
	runningFlag_ = true;
	TWCR = TWCR & ~(0b1 << TWSTO) | ((0b1 << TWINT) | (0b1 << TWSTA) | (0b1 << TWEN));
}

void TwoWire::CtrlStop()
{
	runningFlag_ = false;
	TWCR = TWCR & ~(0b1 << TWSTA) | ((0b1 << TWINT) | (0b1 << TWSTO) | (0b1 << TWEN));
}

void TwoWire::CtrlDisconnect()
{
	TWCR = TWCR & ~(0b1 << TWEN);
}

void TwoWire::CtrlData(uint8_t data)
{
	TWDR = data;
	TWCR = TWCR & ~((0b1 << TWSTA) | (0b1 << TWSTO)) | ((0b1 << TWINT) | (0b1 << TWEN)); 
}

}
