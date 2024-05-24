#include "TwoWire.h"

//AVRT_DECLARE_Srial0_NoRecv(serial)

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

bool TwoWire::StartSequence(bool stopFlag)
{
	stat_ = Stat::Running;
	CtrlStart();
	while (stat_ == Stat::Running) ;
	if (stopFlag || stat_ == Stat::Error) CtrlStop();
	bool rtn = (stat_ == Stat::Success);
	stat_ = Stat::Idle;
	return rtn;
}

bool TwoWire::Transmit(uint8_t sla)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	return StartSequence(true);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data);
	return StartSequence(true);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data1, uint8_t data2)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data1);
	buffSend_.WriteData(data2);
	return StartSequence(true);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data1);
	buffSend_.WriteData(data2);
	buffSend_.WriteData(data3);
	return StartSequence(true);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data1);
	buffSend_.WriteData(data2);
	buffSend_.WriteData(data3);
	buffSend_.WriteData(data4);
	return StartSequence(true);
}

bool TwoWire::Transmit(uint8_t sla, const uint8_t* buff, uint8_t len)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteBuff(buff, len);
	return StartSequence(true);
}

bool TwoWire::TransmitCont(uint8_t sla)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	return StartSequence(false);
}

bool TwoWire::TransmitCont(uint8_t sla, uint8_t data)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data);
	return StartSequence(false);
}

bool TwoWire::TransmitCont(uint8_t sla, uint8_t data1, uint8_t data2)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data1);
	buffSend_.WriteData(data2);
	return StartSequence(false);
}

bool TwoWire::TransmitCont(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data1);
	buffSend_.WriteData(data2);
	buffSend_.WriteData(data3);
	return StartSequence(false);
}

bool TwoWire::TransmitCont(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteData(data1);
	buffSend_.WriteData(data2);
	buffSend_.WriteData(data3);
	buffSend_.WriteData(data4);
	return StartSequence(false);
}

bool TwoWire::TransmitCont(uint8_t sla, const uint8_t* buff, uint8_t len)
{
	buffSend_.WriteData((sla << 1) | (0b0 << 0));
	buffSend_.WriteBuff(buff, len);
	return StartSequence(false);
}

bool TwoWire::Receive(uint8_t sla, uint8_t* buff, uint8_t len)
{
	lenExpected_ = len;
	buffSend_.WriteData((sla << 1) | (0b1 << 0));
	if (!StartSequence(true)) return false;
	buffRecv_.ReadBuff(buff, len);
	return true;
}

bool TwoWire::ReceiveCont(uint8_t sla, uint8_t* buff, uint8_t len)
{
	lenExpected_ = len;
	buffSend_.WriteData((sla << 1) | (0b1 << 0));
	if (!StartSequence(true)) return false;
	buffRecv_.ReadBuff(buff, len);
	return true;
}

void TwoWire::HandleISR_TWI()
{
	uint8_t statHW = TW_STATUS;
	//serial.Printf(F("statHW:%02x\n"), statHW);
	if (statHW == TW_START) {						// 0x08: 
		//serial.Printf(F("TW_START\n"));
		TWDR = buffSend_.ReadData();
		CtrlSend();
	} else if (statHW == TW_REP_START) {			// 0x10: repeated start condition transmitted
		//serial.Printf(F("TW_REP_START\n"));
		TWDR = buffSend_.ReadData();
		CtrlSend();
	// Master Transmitter
	} else if (statHW == TW_MT_SLA_ACK) {			// 0x18: SLA+W transmitted, ACK received
		//serial.Printf(F("TW_MT_SLA_ACK\n"));
		if (buffSend_.HasData()) {
			TWDR = buffSend_.ReadData();
			//serial.Printf(F("data:%02x\n"), data);
			CtrlSend();
		} else {
			stat_ = Stat::Success; 
		}
	} else if (statHW == TW_MT_SLA_NACK) {			// 0x20: SLA+W transmitted, NACK received
		//serial.Printf(F("TW_MT_SLA_NACK\n"));
		stat_ = Stat::Error;
	} else if (statHW == TW_MT_DATA_ACK) {			// 0x28: data transmitted, ACK received
		//serial.Printf(F("TW_MT_DATA_ACK\n"));
		if (buffSend_.HasData()) {
			TWDR = buffSend_.ReadData();
			//serial.Printf(F("data:%02x\n"), data);
			CtrlSend();
		} else {
			//serial.Printf(F("stop\n"));
			stat_ = Stat::Success; 
		}
	} else if (statHW == TW_MT_DATA_NACK) {			// 0x30: data transmitted, NACK received
		//serial.Printf(F("TW_MT_DATA_NACK\n"));
		stat_ = Stat::Error;
	// Master Receiver
	//} else if (statHW == TW_MT_ARB_LOST) {		// 0x38: arbitration lost in SLA+W or data
	} else if (statHW == TW_MR_ARB_LOST) {			// 0x38: arbitration lost in SLA+R or NACK
		stat_ = Stat::Error;
	} else if (statHW == TW_MR_SLA_ACK) {			// 0x40: SLA+R transmitted, ACK received
		// nothing to do
	} else if (statHW == TW_MR_SLA_NACK) {			// 0x48: SLA+R transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_MR_DATA_ACK) {			// 0x50: data received, ACK returned
		uint8_t data = TWDR;
		if (len_ < lenExpected_) {
			buffRecv_.WriteData(data);
			len_++;
			CtrlRecvAck();
		} else{
			CtrlRecvNak();
		}
	} else if (statHW == TW_MR_DATA_NACK) {			// 0x58: data received, NACK returned
		CtrlRecvNak();
	// Slave Transmitter
	} else if (statHW == TW_ST_SLA_ACK) {			// 0xA8: SLA+R received, ACK returned
	} else if (statHW == TW_ST_ARB_LOST_SLA_ACK) {	// 0xB0: arbitration lost in SLA+RW, SLA+R received, ACK returned
	} else if (statHW == TW_ST_DATA_ACK) {			// 0xB8: data transmitted, ACK received
	} else if (statHW == TW_ST_DATA_NACK) {			// 0xC0: data transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_ST_LAST_DATA) {			// 0xC8: last data byte transmitted, ACK received
	// Slave Receiver
	} else if (statHW == TW_SR_SLA_ACK) {			// 0x60: SLA+W received, ACK returned
	} else if (statHW == TW_SR_ARB_LOST_SLA_ACK) {	// 0x68: arbitration lost in SLA+RW, SLA+W received, ACK returned
	} else if (statHW == TW_SR_GCALL_ACK) {			// 0x70: general call received, ACK returned
	} else if (statHW == TW_SR_ARB_LOST_GCALL_ACK) {// 0x78: arbitration lost in SLA+RW, general call received, ACK returned
	} else if (statHW == TW_SR_DATA_ACK) {			// 0x80: data received, ACK returned
	} else if (statHW == TW_SR_DATA_NACK) {			// 0x88:data received, NACK returned
		stat_ = Stat::Error;
	} else if (statHW == TW_SR_GCALL_DATA_ACK) {	// 0x90: general call data received, ACK returned
	} else if (statHW == TW_SR_GCALL_DATA_NACK) {	// 0x98: general call data received, NACK returned
		stat_ = Stat::Error;
	} else if (statHW == TW_SR_STOP) {				// 0xA0: stop or repeated start condition received while selected
	// Misc
	} else if (statHW == TW_NO_INFO) {				// 0xF8: no state information available
		stat_ = Stat::Error;
	} else if (statHW == TW_BUS_ERROR) {			// 0x00: illegal start or stop condition
		stat_ = Stat::Error;
	}
}

void TwoWire::CtrlStart()
{
	TWCR = TWCR & ~(0b1 << TWSTO) | ((0b1 << TWINT) | (0b1 << TWSTA) | (0b1 << TWEN));
}

void TwoWire::CtrlStop()
{
	TWCR = TWCR & ~(0b1 << TWSTA) | ((0b1 << TWINT) | (0b1 << TWSTO) | (0b1 << TWEN));
}

void TwoWire::CtrlDisconnect()
{
	TWCR = TWCR & ~(0b1 << TWEN);
}

void TwoWire::CtrlSend()
{
	TWCR = TWCR & ~((0b1 << TWSTA) | (0b1 << TWSTO)) | ((0b1 << TWINT) | (0b1 << TWEN)); 
}

void TwoWire::CtrlRecvAck()
{
	TWCR = TWCR & ~((0b1 << TWSTA) | (0b1 << TWSTO)) | ((0b1 << TWINT) | (0b1 << TWEN) | (0b1 << TWIE)); 
}

void TwoWire::CtrlRecvNak()
{
	TWCR = TWCR & ~((0b1 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWIE)) | ((0b1 << TWINT) | (0b1 << TWEN)); 
}

}
