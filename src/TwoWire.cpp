//==============================================================================
// TwoWire.cpp
//==============================================================================
#include "TwoWire.h"

AVRT_DECLARE_Serial0_NoRecv(serial)

namespace avrt {

//------------------------------------------------------------------------------
// TwoWire
//------------------------------------------------------------------------------
void TwoWire::Open(uint8_t slaThis, uint32_t freq)
{
	uint8_t dataTWA = slaThis;				// TWA: TWI (Slave) Address Register
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

bool TwoWire::TransmitGeneric(uint8_t sla, void* buffRecv, uint8_t lenRecv)
{
	if (!buffRecv) return SequencerMasterTransmitter(*this, sla).StartMaster(true);
	if (!TwoWire::SequencerMasterTransmitter(*this, sla).StartMaster(false)) return false;
	if (!TwoWire::SequencerMasterReceiver(*this, sla, lenRecv).StartMaster(true)) return false;
	GetBuffRecv().ReadBuff(buffRecv, lenRecv);
	return true;
}

bool TwoWire::Transmit(uint8_t sla)
{
	return SequencerMasterTransmitter(*this, sla).StartMaster(true);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data, void* buffRecv, uint8_t lenRecv)
{
	GetBuffSend().WriteData(data);
	return TransmitGeneric(sla, buffRecv, lenRecv);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data1, uint8_t data2, void* buffRecv, uint8_t lenRecv)
{
	GetBuffSend().WriteData(data1);
	GetBuffSend().WriteData(data2);
	return TransmitGeneric(sla, buffRecv, lenRecv);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, void* buffRecv, uint8_t lenRecv)
{
	GetBuffSend().WriteData(data1);
	GetBuffSend().WriteData(data2);
	GetBuffSend().WriteData(data3);
	return TransmitGeneric(sla, buffRecv, lenRecv);
}

bool TwoWire::Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4, void* buffRecv, uint8_t lenRecv)
{
	GetBuffSend().WriteData(data1);
	GetBuffSend().WriteData(data2);
	GetBuffSend().WriteData(data3);
	GetBuffSend().WriteData(data4);
	return TransmitGeneric(sla, buffRecv, lenRecv);
}

bool TwoWire::Transmit(uint8_t sla, const void* buffSend, uint8_t lenSend, void* buffRecv, uint8_t lenRecv)
{
	GetBuffSend().WriteBuff(buffSend, lenSend);
	return TransmitGeneric(sla, buffRecv, lenRecv);
}

void TwoWire::Reply(uint8_t data)
{
	GetBuffSend().SetRewindPosToWritePos();
	GetBuffSend().WriteData(data);
}

void TwoWire::Reply(uint8_t data1, uint8_t data2)
{
	GetBuffSend().SetRewindPosToWritePos();
	GetBuffSend().WriteData(data1);
	GetBuffSend().WriteData(data2);
}

void TwoWire::Reply(uint8_t data1, uint8_t data2, uint8_t data3)
{
	GetBuffSend().SetRewindPosToWritePos();
	GetBuffSend().WriteData(data1);
	GetBuffSend().WriteData(data2);
	GetBuffSend().WriteData(data3);
}

void TwoWire::Reply(uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4)
{
	GetBuffSend().SetRewindPosToWritePos();
	GetBuffSend().WriteData(data1);
	GetBuffSend().WriteData(data2);
	GetBuffSend().WriteData(data3);
	GetBuffSend().WriteData(data4);
}

void TwoWire::Reply(const void* buffSend, uint8_t lenSend)
{
	GetBuffSend().SetRewindPosToWritePos();
	GetBuffSend().WriteBuff(buffSend, lenSend);
}

bool TwoWire::PeekRequest(void* buffRecv, uint8_t lenRecvMax, uint8_t* pLenRecv)
{
	if (!PeekTWINT()) return false;
	uint8_t statHW = TW_STATUS;
	//if ((statHW & 0xf0) != 0x80 && (statHW & 0xf0) != 0x90) {
	//	// TW_SR_DATA_ACK (0x80), TW_SR_DATA_NACK (0x88), TW_SR_GCALL_DATA_ACK (0x90),
	//	// and TW_SR_GCALL_DATA_NACK (0x98) are time critical.
	//	serial.Printf(F("StartMaster(statHW = %S)\n"), StatusToString(statHW));
	//}
	sequencerSlave_.SetStatus(Stat::Running);
	if (sequencerSlave_.Process(statHW)) return false;
	if (sequencerSlave_.GetStatus() == Stat::Success) {
		GetBuffRecv().ReadBuff(buffRecv, lenRecvMax, pLenRecv);
		return true;
	}
	return false;
}

void TwoWire::HandleISR_TWI()
{
	//uint8_t statHW = TW_STATUS;
	//serial.Printf(F("HandieISR_TWI(statHW = %S)\n"), StatusToString(statHW));
	//sequencerSlave_.Process(statHW);	
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

//------------------------------------------------------------------------------
// TwoWire::SequencerMaster
//------------------------------------------------------------------------------
bool TwoWire::SequencerMaster::StartMaster(bool stopFlag)
{
	constexpr bool intDriven = false;
	stat_ = Stat::Running;
	SetTWCR_Start<intDriven>();
	for (;;) {
		WaitForTWINT();
		uint8_t statHW = TW_STATUS;
		//serial.Printf(F("StartMaster(statHW = %S)\n"), StatusToString(statHW));
		if (statHW == TW_NO_INFO) {						// 0xF8: no state information available
			stat_ = Stat::Error;
			break;
		} else if (statHW == TW_BUS_ERROR) {			// 0x00: illegal start or stop condition
			stat_ = Stat::Error;
			break;
		} else if (!Process(statHW)) {
			SetTWCR_Stop<intDriven>();
			WaitForTWSTOCleared();
			break;
		}
	}
	return stat_ == Stat::Success;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerMasterTransmitter
// Table 22-2 Status codes for Master Transmitter Mode
//------------------------------------------------------------------------------
bool TwoWire::SequencerMasterTransmitter::Process(uint8_t statHW)
{
	constexpr bool intDriven = false;
	if (statHW == TW_START ||						// START(0x08): start condition transmitted
		statHW == TW_REP_START) {					// REP_START(0x10): repeated start condition transmitted
		TWDR = sla_ << 1;
		SetTWCR_Transmit<intDriven>();
	} else if (statHW == TW_MT_SLA_ACK ||			// MT_SLA_ACK(0x18): SLA+W transmitted, ACK received
			statHW == TW_MT_DATA_ACK) {				// MT_DATA_ACK(0x28): datatransmitted, ACK received
		Buffer& buff = twi_.GetBuffSend();
		if (buff.HasData()) {
			uint8_t data = buff.ReadData();
			TWDR = data;
			SetTWCR_Transmit<intDriven>();
		} else {
			stat_ = Stat::Success;
		}
	} else if (statHW == TW_MT_SLA_NACK) {			// MT_SLA_NACK(0x20): SLA+W transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_MT_DATA_NACK) {			// MT_DATA_NACK(0x30): data transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_MT_ARB_LOST) {			// MT_ARB_LOST(0x38): arbitration lost in SLA+W or NACK
		stat_ = Stat::Error;
	}
	return stat_ == Stat::Running;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerMasterReceiver
// Table 22-3. Status codes for Master Receiver Mode
//------------------------------------------------------------------------------
bool TwoWire::SequencerMasterReceiver::Process(uint8_t statHW)
{
	constexpr bool intDriven = false;
	if (statHW == TW_START ||						// START(0x08): start condition transmitted
		statHW == TW_REP_START) {					// REP_START(0x10): repeated start condition transmitted
		TWDR = (sla_ << 1) | 0b1;
		SetTWCR_Transmit<intDriven>();
	} else if (statHW == TW_MR_SLA_ACK) {			// MR_SLA_ACK(0x40): SLA+W transmitted, ACK received
		if (lenRest_ <= 1) {
			SetTWCR_ReplyNACK<intDriven>();
		} else {
			SetTWCR_ReplyACK<intDriven>();
		}
	} else if (statHW == TW_MR_DATA_ACK ||			// MR_DATA_ACK(0x50): datatransmitted, ACK received
		statHW == TW_MR_DATA_NACK) {				// MR_DATA_NACK(0x58): data transmitted, NACK received	
		lenRest_--;
		Buffer& buff = twi_.GetBuffRecv();
		uint8_t data = TWDR;
		buff.WriteData(data);
		if (lenRest_ == 0) {
			stat_ = Stat::Success;
		} else if (lenRest_ == 1) {
			SetTWCR_ReplyNACK<intDriven>();
		} else {
			SetTWCR_ReplyACK<intDriven>();
		}
	} else if (statHW == TW_MR_SLA_NACK) {			// MR_SLA_NACK(0x48): SLA+W transmitted, NACK received
		stat_ = Stat::Error;
	} else if (statHW == TW_MR_ARB_LOST) {			// MR_ARB_LOST(0x38): arbitration lost in SLA+R or NACK
		stat_ = Stat::Error;
	}
	return stat_ == Stat::Running;
}

//------------------------------------------------------------------------------
// TwoWire::SequencerSlave
//------------------------------------------------------------------------------
bool TwoWire::SequencerSlave::Process(uint8_t statHW)
{
	constexpr bool intDriven = false;
	// Table 22-3. Status codes for Slave Receiver Mode
	if (statHW == TW_SR_SLA_ACK) {					// 0x60: SLA+W received, ACK returned
		//twi_.GetBuffSend().Clear();
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_SR_DATA_ACK) {			// 0x80: data received, ACK returned
		// ******** time critical job ********
		uint8_t data = TWDR;
		SetTWCR_ReplyACK<intDriven>();
		twi_.GetBuffRecv().WriteData(data);
	} else if (statHW == TW_SR_DATA_NACK) {			// 0x88:data received, NACK returned
		// ******** time critical job ********
		uint8_t data = TWDR;
		twi_.GetBuffRecv().WriteData(data);
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_SR_GCALL_ACK) {			// 0x70: general call received, ACK returned
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_SR_GCALL_DATA_ACK) {	// 0x90: general call data received, ACK returned
		// ******** time critical job ********
		uint8_t data = TWDR;
		twi_.GetBuffRecv().WriteData(data);
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_SR_GCALL_DATA_NACK) {	// 0x98: general call data received, NACK returned
		// ******** time critical job ********
		uint8_t data = TWDR;
		twi_.GetBuffRecv().WriteData(data);
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_SR_STOP) {				// 0xA0: stop or repeated start condition received while selected
		SetTWCR_ReplyACK<intDriven>();
		twi_.GetBuffSend().Clear();
		stat_ = Stat::Success;
	} else if (statHW == TW_SR_ARB_LOST_SLA_ACK) {	// 0x68: arbitration lost in SLA+RW, SLA+W received, ACK returned
		stat_ = Stat::Error;
	} else if (statHW == TW_SR_ARB_LOST_GCALL_ACK) {// 0x78: arbitration lost in SLA+RW, general call received, ACK returned
		stat_ = Stat::Error;
	// Table 22-4. Status codes for Slave Transmitter Mode
	} else if (statHW == TW_ST_SLA_ACK ||			// 0xA8: SLA+R received, ACK returned
			statHW == TW_ST_DATA_ACK ||				// 0xB8: data transmitted, ACK received
			statHW == TW_ST_DATA_NACK) {			// 0xC0: data transmitted, NACK received
		if (!twi_.GetBuffSend().HasData()) twi_.GetBuffSend().RewindReadPos();
		uint8_t data = twi_.GetBuffSend().HasData()? twi_.GetBuffSend().ReadData() : 0x00;
		TWDR = data;
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_ST_LAST_DATA) {			// 0xC8: last data byte transmitted, ACK received
		SetTWCR_ReplyACK<intDriven>();
	} else if (statHW == TW_ST_ARB_LOST_SLA_ACK) {	// 0xB0: arbitration lost in SLA+RW, SLA+R received, ACK returned
		stat_ = Stat::Error;
	} else if (statHW == TW_NO_INFO) {				// 0xF8: no state information available
		stat_ = Stat::Error;
	} else if (statHW == TW_BUS_ERROR) {			// 0x00: illegal start or stop condition
		stat_ = Stat::Error;
	}
	return stat_ == Stat::Running;
}

}
