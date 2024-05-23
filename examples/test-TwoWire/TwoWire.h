#include <avrt.h>
#include <util/twi.h>

#define AVRT_IMPLEMENT_TwoWire(variableName) \
avrt::TwoWire variableName; \
ISR(TWI_vect) { \
	variableName.HandleISR_TWI(); \
}

namespace avrt {

//------------------------------------------------------------------------------
// TwoWire
//------------------------------------------------------------------------------
class TwoWire {
private:
	FIFOBuff<uint8_t, 8> buffSend_;
	FIFOBuff<uint8_t, 8> buffRecv_;
public:
	void Open(uint8_t address = 0x00, uint32_t freq = 100000);
	void Close();
	void SendData(uint8_t address, uint8_t data);
	void HandleISR_TWI();
private:
	static void CtrlStart();
	static void CtrlStop();
	static void CtrlDisconnect();
	static void CtrlData(uint8_t data);
};

}
