//==============================================================================
// TwoWire.cpp
//==============================================================================
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
	constexpr uint8_t dataTWEA = 0b1;		// TWEA: TWI Enable Acknowledge Bit
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
	TWCR &= ~(0b1 << TWEN);					// TWEN: TWI Enable Bit = false
}

bool TwoWire::Transmit(uint8_t sla)
{
	return SequencerMT(*this, sla).Start(true);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data)
{
	GetBuffer().WriteData(data);
	return SequencerMT(*this, sla).Start(true);
}

#if 0
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
#endif

void TwoWire::HandleISR_TWI()
{
}

void TwoWire::Detect(Stream& stream, uint8_t slaBegin = 0x03, uint8_t slaEnd = 0x78)
{
	uint8_t col = 0;
	stream.Print(F("   "));
	for (uint8_t col = 0; col < 16; col++) stream.Printf(F(" %2x"), col);
	stream.PutChar('\n');
	for (uint8_t sla = 0x00; sla < 0x78; sla++) {
		if (col == 0) {
			stream.Printf(F("%2x: "), sla);
		} else {
			stream.PutChar(' ');
		}
		if (sla < slaBegin || sla > slaEnd) {
			stream.Print(F("  "));
		} else if (Transmit(sla)) {
			stream.Printf(F("%02x"), sla);
		} else {
			stream.Print(F("--"));
		}
		col++;
		if (col == 16) {
			stream.PutChar('\n');
			col = 0;
		}
	}
	if (col > 0) stream.PutChar('\n');
}

const __FlashStringHelper* TwoWire::StatusToString(uint8_t statHW)
{
	return
		(statHW == TW_START)? F("START") :
		(statHW == TW_REP_START)? F("REP_START") :
		(statHW == TW_MT_SLA_ACK)? F("MT_SLA_ACK") :
		(statHW == TW_MT_SLA_NACK)? F("MT_SLA_NACK") :
		(statHW == TW_MT_DATA_ACK)? F("MT_DATA_ACK") :
		(statHW == TW_MT_DATA_NACK)? F("MT_DATA_NACK") :
		(statHW == TW_MT_ARB_LOST)? F("MT_ARB_LOST") :
		(statHW == TW_MR_ARB_LOST)? F("MR_ARB_LOST") :
		(statHW == TW_MR_SLA_ACK)? F("MR_SLA_ACK") :
		(statHW == TW_MR_SLA_NACK)? F("MR_SLA_NACK") :
		(statHW == TW_MR_DATA_ACK)? F("MR_DATA_ACK") :
		(statHW == TW_MR_DATA_NACK)? F("MR_DATA_NACK") :
		(statHW == TW_ST_SLA_ACK)? F("ST_SLA_ACK") :
		(statHW == TW_ST_ARB_LOST_SLA_ACK)? F("ST_ARB_LOST_SLA_ACK") :
		(statHW == TW_ST_DATA_ACK)? F("ST_DATA_ACK") :
		(statHW == TW_ST_DATA_NACK)? F("ST_DATA_NACK") :
		(statHW == TW_ST_LAST_DATA)? F("ST_LAST_DATA") :
		(statHW == TW_SR_SLA_ACK)? F("SR_SLA_ACK") :
		(statHW == TW_SR_ARB_LOST_SLA_ACK)? F("SR_ARB_LOST_SLA_ACK") :
		(statHW == TW_SR_GCALL_ACK)? F("SR_GCALL_ACK") :
		(statHW == TW_SR_ARB_LOST_GCALL_ACK)? F("SR_ARB_LOST_GCALL_ACK") :
		(statHW == TW_SR_DATA_ACK)? F("SR_DATA_ACK") :
		(statHW == TW_SR_DATA_NACK)? F("SR_DATA_NACK") :
		(statHW == TW_SR_GCALL_DATA_ACK)? F("SR_GCALL_DATA_ACK") :
		(statHW == TW_SR_GCALL_DATA_NACK)? F("SR_GCALL_DATA_NACK") :
		(statHW == TW_SR_STOP)? F("SR_STOP") :
		(statHW == TW_NO_INFO)? F("NO_INFO") :
		(statHW == TW_BUS_ERROR)? F("BUS_ERROR") : F("unkonwn");
}

//------------------------------------------------------------------------------
// TwoWire::Sequencer
//------------------------------------------------------------------------------
bool TwoWire::Sequencer::Start(bool stopFlag)
{
	constexpr bool reqInt = false;
	stat_ = Stat::Running;
	SetTWCR_Start<reqInt>();
	for (;;) {
		WaitForTWINTSet();
		uint8_t statHW = TW_STATUS;
		serial.Printf(F("statHW = %S\n"), StatusToString(statHW));
		if (statHW == TW_NO_INFO) {						// 0xF8: no state information available
			stat_ = Stat::Error;
		} else if (statHW == TW_BUS_ERROR) {			// 0x00: illegal start or stop condition
			stat_ = Stat::Error;
		} else if (!Process(statHW)) {
			SetTWCR_Stop<reqInt>();
			WaitForTWSTOCleared();
			break;
		}
	}
	return stat_ == Stat::Success;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerMT
// Table 22-2 Status codes for Master Transmitter Mode
//------------------------------------------------------------------------------
bool TwoWire::SequencerMT::Process(uint8_t statHW)
{
	constexpr bool reqInt = false;
	if (statHW == TW_START ||						// START(0x08): start condition transmitted
		statHW == TW_REP_START) {					// REP_START(0x10): repeated start condition transmitted
		TWDR = sla_ << 1;
		SetTWCR_Transmit<reqInt>();
	} else if (statHW == TW_MT_ARB_LOST) {			// TW_MT_ARB_LOST(0x38): arbitration lost in SLA+W or NACK
		stat_ = Stat::Error;
	} else if (statHW == TW_MT_SLA_ACK ||			// MT_SLA_ACK(0x18): SLA+W transmitted, ACK received
			statHW == TW_MT_DATA_ACK) {				// MT_DATA_ACK(0x28): datatransmitted, ACK received
		Buffer& buff = twi_.GetBuffer();
		if (buff.HasData()) {
			uint8_t data = buff.ReadData();
			TWDR = data;
			SetTWCR_Transmit<reqInt>();
		} else {
			stat_ = Stat::Success;
		}
	} else if (statHW == TW_MT_SLA_NACK) {			// MT_SLA_NACK(0x20): SLA+W transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_MT_DATA_NACK) {			// MT_DATA_NACK(0x30): data transmitted, NACK received
		stat_ = Stat::Error;
	}
	return stat_ == Stat::Running;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerMR
// Table 22-3. Status codes for Master Receiver Mode
//------------------------------------------------------------------------------
bool TwoWire::SequencerMR::Process(uint8_t statHW)
{
	constexpr bool reqInt = false;
	if (statHW == TW_START ||						// START(0x08): start condition transmitted
		statHW == TW_REP_START) {					// REP_START(0x10): repeated start condition transmitted
		TWDR = (sla_ << 1) | 0b1;
		SetTWCR_Transmit<reqInt>();
	} else if (statHW == TW_MR_ARB_LOST) {			// MR_ARB_LOST(0x38): arbitration lost in SLA+R or NACK
		stat_ = Stat::Error;
	} else if (statHW == TW_MR_SLA_ACK) {			// MR_SLA_ACK(0x40): SLA+W transmitted, ACK received
		if (lenRest_ <= 1) {
			SetTWCR_ReplyNACK<reqInt>();
		} else {
			SetTWCR_ReplyACK<reqInt>();
		}
	} else if (statHW == TW_MR_DATA_ACK ||			// MR_DATA_ACK(0x50): datatransmitted, ACK received
		statHW == TW_MR_DATA_NACK) {				// MR_DATA_NACK(0x58): data transmitted, NACK received	
		lenRest_--;
		Buffer& buff = twi_.GetBuffer();
		uint8_t data = TWDR;
		buff.WriteData(data);
		if (lenRest_ == 0) {
			stat_ = Stat::Success;
		} else if (lenRest_ == 1) {
			SetTWCR_ReplyNACK<reqInt>();
		} else {
			SetTWCR_ReplyACK<reqInt>();
		}
	} else if (statHW == TW_MR_SLA_NACK) {			// MR_SLA_NACK(0x48): SLA+W transmitted, NACK received
		stat_ = Stat::Error;
	}
	return stat_ == Stat::Running;
	return false;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerST
//------------------------------------------------------------------------------
bool TwoWire::SequencerST::Process(uint8_t statHW)
{
	// Slave Transmitter
	if (statHW == TW_ST_SLA_ACK) {					// 0xA8: SLA+R received, ACK returned
	} else if (statHW == TW_ST_ARB_LOST_SLA_ACK) {	// 0xB0: arbitration lost in SLA+RW, SLA+R received, ACK returned
	} else if (statHW == TW_ST_DATA_ACK) {			// 0xB8: data transmitted, ACK received
	} else if (statHW == TW_ST_DATA_NACK) {			// 0xC0: data transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_ST_LAST_DATA) {			// 0xC8: last data byte transmitted, ACK received
	}
	return false;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerSR
//------------------------------------------------------------------------------
bool TwoWire::SequencerSR::Process(uint8_t statHW)
{
	// Slave Receiver
	if (statHW == TW_SR_SLA_ACK) {					// 0x60: SLA+W received, ACK returned
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
	}
	return false;
}

}
