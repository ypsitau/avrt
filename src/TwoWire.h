//==============================================================================
// TwoWire.h
//==============================================================================
#ifndef TWOWIRE_H
#define TWOWIRE_H
#include <avrt.h>
#include <util/twi.h>

#define AVRT_IMPLEMENT_TwoWire(variableName, variableNameTimer) \
avrt::TwoWire variableName(variableNameTimer); \
ISR(TWI_vect) { variableName.HandleISR_TWI(); }

namespace avrt {

class Stream;

//------------------------------------------------------------------------------
// TwoWire
//------------------------------------------------------------------------------
class TwoWire {
public:
	enum class Stat { Idle, Running, Success, Error, };
	using Buffer = FIFOBuff<uint8_t, 16>;
public:
	class Sequencer {
	protected:
		TwoWire& twi_;
		Stat stat_;
	public:
		Sequencer(TwoWire& twi) : twi_(twi), stat_(Stat::Idle) {}
		void SetStatus(Stat stat) { stat_ = stat; }
		Stat GetStatus() { return stat_; }
		virtual bool Process(uint8_t statHW) = 0;
	};
	class SequencerMaster : public Sequencer {
	public:
		SequencerMaster(TwoWire& twi) : Sequencer(twi) {}
		bool StartMaster(bool stopFlag);
	};
	class SequencerMasterTransmitter : public SequencerMaster {
	private:
		uint8_t sla_;
	public:
		SequencerMasterTransmitter(TwoWire& twi, uint8_t sla) : SequencerMaster(twi), sla_(sla) {}
		virtual bool Process(uint8_t statHW);
	};
	class SequencerMasterReceiver : public SequencerMaster {
	private:
		uint8_t sla_;
		uint8_t lenRest_;
	public:
		SequencerMasterReceiver(TwoWire& twi, uint8_t sla, uint8_t len) : SequencerMaster(twi), sla_(sla), lenRest_(len) {}
		virtual bool Process(uint8_t statHW);
	};
	class SequencerSlave : public Sequencer {
	public:
		SequencerSlave(TwoWire& twi) : Sequencer(twi) {}
		virtual bool Process(uint8_t statHW);
	};
private:
	Timer::Alarm alarm_;
	Buffer buffSend_;
	Buffer buffRecv_;
	SequencerSlave sequencerSlave_;
public:
	TwoWire(Timer& timer) : alarm_(timer), sequencerSlave_(*this) {}
	Buffer& GetBuffSend() { return buffSend_; }
	Buffer& GetBuffRecv() { return buffRecv_; }
	Timer& GetTimer() { return alarm_.GetTimer(); }
	void Open(uint8_t slaThis = 0x00, uint32_t freq = 100000);
	void SetTimeout(uint32_t msec) { alarm_.SetTimeout(msec); }
	void Close();
	bool TransmitGeneric(uint8_t sla, void* buffRecv = nullptr, uint8_t lenRecv = 0);
	bool Transmit(uint8_t sla);
	bool Transmit(uint8_t sla, uint8_t data, void* buffRecv = nullptr, uint8_t lenRecv = 0);
	bool Transmit(uint8_t sla, uint8_t data1, uint8_t data2, void* buffRecv = nullptr, uint8_t lenRecv = 0);
	bool Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, void* buffRecv = nullptr, uint8_t lenRecv = 0);
	bool Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4, void* buffRecv = nullptr, uint8_t lenRecv = 0);
	bool Transmit(uint8_t sla, const void* buffSend, uint8_t lenSend, void* buffRecv = nullptr, uint8_t lenRecv = 0);
	bool PeekRequest(void* buffRecv, uint8_t lenRecvMax, uint8_t* pLenRecv);
	void Reply(uint8_t data);
	void Reply(uint8_t data1, uint8_t data2);
	void Reply(uint8_t data1, uint8_t data2, uint8_t data3);
	void Reply(uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4);
	void Reply(const void* buffSend, uint8_t lenSend);
	void HandleISR_TWI();
	void Detect(Stream& stream, uint8_t slaBegin = 0x03, uint8_t slaEnd = 0x78);
public:
	template<bool intDriven> static void SetTWCR_Start() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b1 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_StartWithACK() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b1 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_Stop() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_StopAndStart() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b1 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_Transmit() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_ReleaseBus() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_ReplyACK() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	template<bool intDriven> static void SetTWCR_ReplyNACK() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) |
				(static_cast<uint8_t>(intDriven) << TWIE);
	}
	static uint8_t PeekTWINT() { return TWCR & (1 << TWINT); }
	static void WaitForTWINT() { while (TWCR & (1 << TWINT)); }
	static void WaitForTWSTOCleared() { while (TWCR & (1 << TWSTO)) ; }
	static const __FlashStringHelper* StatusToString(uint8_t statHW);
};

}

#endif
