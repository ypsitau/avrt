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
private:
	Timer::Alarm alarm_;
	FIFOBuff<uint8_t, 8> buffSend_;
	FIFOBuff<uint8_t, 8> buffRecv_;
	volatile Stat stat_;
	uint8_t lenExpected_;
	uint8_t len_;
public:
	TwoWire(Timer& timer) : alarm_(timer), stat_(Stat::Idle), lenExpected_(0), len_(0) {}
	Timer& GetTimer() { return alarm_.GetTimer(); }
	void Open(uint8_t address = 0x00, uint32_t freq = 100000);
	void SetTimeout(uint32_t msec) { alarm_.SetTimeOut(msec); }
	void Close();
	bool StartSequence(bool stopFlag);
	bool Stop() { CtrlStop(); }
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
private:
	static void CtrlStart();
	static void CtrlStop();
	static void CtrlDisconnect();
	static void CtrlSend();
	static void CtrlRecvAck();
	static void CtrlRecvNak();
};

}
