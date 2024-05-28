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
		bool Start(bool stopFlag);
		virtual bool Process(uint8_t statHW) = 0;
	};
	class SequencerMT : public Sequencer {
	private:
		uint8_t sla_;
	public:
		SequencerMT(TwoWire& twi, uint8_t sla) : Sequencer(twi), sla_(sla) {}
		virtual bool Process(uint8_t statHW);
	};
	class SequencerMR : public Sequencer {
	private:
		uint8_t sla_;
		uint8_t lenRest_;
	public:
		SequencerMR(TwoWire& twi, uint8_t sla, uint8_t len) : Sequencer(twi), sla_(sla), lenRest_(len) {}
		virtual bool Process(uint8_t statHW);
	};
	class SequencerST : public Sequencer {
	public:
		SequencerST(TwoWire& twi) : Sequencer(twi) {}
		virtual bool Process(uint8_t statHW);
	};
	class SequencerSR : public Sequencer {
	public:
		SequencerSR(TwoWire& twi) : Sequencer(twi) {}
		virtual bool Process(uint8_t statHW);
	};
private:
	Timer::Alarm alarm_;
	Buffer buffer_;
	volatile Stat stat_;
	uint8_t lenExpected_;
	uint8_t len_;
	volatile uint8_t slaRW_;
	volatile bool stopFlag_;
public:
	TwoWire(Timer& timer) : alarm_(timer), stat_(Stat::Idle), lenExpected_(0), len_(0), slaRW_(0x00), stopFlag_(false) {}
	Buffer& GetBuffer() { return buffer_; }
	Timer& GetTimer() { return alarm_.GetTimer(); }
	void Open(uint8_t address = 0x00, uint32_t freq = 100000);
	void SetTimeout(uint32_t msec) { alarm_.SetTimeout(msec); }
	void Close();
	bool Transmit(uint8_t sla);
	bool Transmit(uint8_t sla, uint8_t data);
	//bool Receive(uint8_t sla, uint8_t* buff, uint8_t len);
	//bool ReceiveCont(uint8_t sla, uint8_t* buff, uint8_t len);
	void HandleISR_TWI();
	void Detect(Stream& stream, uint8_t slaBegin = 0x03, uint8_t slaEnd = 0x78);
public:
	template<bool reqInt> static void SetTWCR_Start() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b1 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	template<bool reqInt> static void SetTWCR_Stop() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	template<bool reqInt> static void SetTWCR_StopAndStart() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b1 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	template<bool reqInt> static void SetTWCR_Transmit() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	template<bool reqInt> static void SetTWCR_ReleaseBus() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	template<bool reqInt> static void SetTWCR_ReplyACK() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	template<bool reqInt> static void SetTWCR_ReplyNACK() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (static_cast<uint8_t>(reqInt) << TWIE);
	}
	static void WaitForTWINTSet() {
		while (!(TWCR & (1 << TWINT))) ;
	}
	static void WaitForTWSTOCleared() {
		while (TWCR & (1 << TWSTO)) ;
	}
	static const __FlashStringHelper* StatusToString(uint8_t statHW);
};

}

#endif
