//==============================================================================
// LCD1602IIC.h
//==============================================================================
#include <TwoWire.h>

namespace avrt {

class LCD1602IIC : public Stream {
private:
	TwoWire& twi_;
	uint8_t sla_;
public:
	LCD1602IIC(TwoWire& twi) : twi_(twi), sla_(0x00) {}
	bool Open();
	void SendGeneric(uint8_t code, uint8_t rsBit);
	void SendCommand(uint8_t code) { SendGeneric(code, 0b0); }
public:
	void ClearDisplay() { SendCommand(0x01); Timer::DelayUSec(20000); }
	void ReturnHome() { SendCommand(0x02); Timer::DelayUSec(20000); }
	void Clear() { ClearDisplay(); ReturnHome(); }
	void EntryModeSet(bool incFlag, bool shiftFlag) {
		SendCommand(0x04 | (static_cast<uint8_t>(incFlag) << 1) | (static_cast<uint8_t>(shiftFlag) << 0));
		Timer::DelayUSec(60);
	}
	void DisplayOnOffControl(bool displayFlag, bool cursorFlag, bool blinkFlag) {
		SendCommand(0x08 | (static_cast<uint8_t>(displayFlag) << 2) | (static_cast<uint8_t>(cursorFlag) << 1) | (static_cast<uint8_t>(blinkFlag) << 0));
		Timer::DelayUSec(60);
	}
	void CursorOrDisplayShift() { SendCommand(0x10); Timer::DelayUSec(60); }
	void FunctionSet(bool twoLineFlag, bool largeFontFlag) {
		SendCommand(0x20 | (static_cast<uint8_t>(twoLineFlag) << 3) | (static_cast<uint8_t>(largeFontFlag)));
		Timer::DelayUSec(60);
	}
	void SetCGRAMAddress() { SendCommand(0x40); Timer::DelayUSec(60); }
	void SetDDRAMAddress() { SendCommand(0x80); Timer::DelayUSec(60); }
	void SetPosition(size_t x, size_t y) { SendCommand(0x80 + x + y * 0x40); Timer::DelayUSec(60); }
	//void ReadBusyFlagAndAddressCounter() { SendCommand(0x01); }
public:
	virtual void SendData(uint8_t data) override { SendGeneric(data, 0b1); Timer::DelayUSec(60); }
	virtual uint8_t RecvData() override { /* nothing */ }
};

}
