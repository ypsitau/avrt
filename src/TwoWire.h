//==============================================================================
// TwoWire.h
//==============================================================================
#include <avrt.h>
#include <util/twi.h>

#define AVRT_IMPLEMENT_TwoWire(variableName, variableNameTimer) \
avrt::TwoWire variableName(variableNameTimer); \
ISR(TWI_vect) { variableName.HandleISR_TWI(); }

namespace avrt {

//------------------------------------------------------------------------------
// TwoWire
//------------------------------------------------------------------------------
class TwoWire {
public:
	enum class Stat { Idle, Running, Success, Error, };
	using Buffer = FIFOBuff<uint8_t, 16>;
public:
	class Sequencer_Transmit {
	private:
		TwoWire& twi_;
		uint8_t sla_;
	public:
		Sequencer_Transmit(TwoWire& twi, uint8_t sla) : twi_(twi), sla_(sla) {}
		void Process();
	};
private:
	Timer::Alarm alarm_;
	Buffer buffSend_;
	Buffer buffRecv_;
	volatile Stat stat_;
	uint8_t lenExpected_;
	uint8_t len_;
	volatile uint8_t slaRW_;
	volatile bool stopFlag_;
public:
	TwoWire(Timer& timer) : alarm_(timer), stat_(Stat::Idle), lenExpected_(0), len_(0), slaRW_(0x00), stopFlag_(false) {}
	Buffer& GetBuffSend() { return buffSend_; }
	Buffer& GetBuffRecv() { return buffRecv_; }
	Timer& GetTimer() { return alarm_.GetTimer(); }
	void Open(uint8_t address = 0x00, uint32_t freq = 100000);
	void SetTimeout(uint32_t msec) { alarm_.SetTimeout(msec); }
	void Close();
	bool StartSequence(bool stopFlag);
	bool Transmit(uint8_t sla);
	bool Transmit(uint8_t sla, uint8_t data);
	bool Transmit(uint8_t sla, uint8_t data1, uint8_t data2);
	bool Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3);
	bool Transmit(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4);
	bool Transmit(uint8_t sla, const uint8_t* buff, uint8_t len);
	bool TransmitCont(uint8_t sla);
	bool TransmitCont(uint8_t sla, uint8_t data);
	bool TransmitCont(uint8_t sla, uint8_t data1, uint8_t data2);
	bool TransmitCont(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3);
	bool TransmitCont(uint8_t sla, uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4);
	bool TransmitCont(uint8_t sla, const uint8_t* buff, uint8_t len);
	bool Receive(uint8_t sla, uint8_t* buff, uint8_t len);
	bool ReceiveCont(uint8_t sla, uint8_t* buff, uint8_t len);
	void HandleISR_TWI();
	public:
	static void SetTWCR_Start() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b1 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (0b1 << TWIE);
	}
	static void SetTWCR_Stop() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (0b0 << TWIE);
	}
	static void SetTWCR_StopAndStart() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b1 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (0b1 << TWIE);
	}
	static void SetTWCR_Transmit() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (0b1 << TWIE);
	}
	static void SetTWCR_ReleaseBus() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (0b1 << TWIE);
	}
	static void SetTWCR_ReplyACK() {
		TWCR = (0b1 << TWINT) | (0b1 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (0b1 << TWIE);
	}
	static void SetTWCR_ReplyNACK() {
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (0b1 << TWIE);
	}
	static void WaitTWSTOClered() {
		while (TWCR & (1 << TWSTO)) ;
	}
	static void WaitForTWINT() {
		while (!(TWCR & (1 << TWINT))) ;
	}
	static const __FlashStringHelper* StatusToString(uint8_t statHW);
};

}
