#include <TwoWire.h>

namespace avrt {

class LCD1602IIC : public Stream {
private:
	TwoWire& twi_;
public:
	LCD1602IIC(TwoWire& twi) : twi_(twi) {}
	void SendGeneric(uint8_t code, uint8_t rsBit);
	void SendCommand(uint8_t code) { SendGeneric(code, 0b0); }
public:
	void ClearDisplay() { SendCommand(0x01); }
	void ReturnHome() { SendCommand(0x02); }
	void Clear() { ClearDisplay(); ReturnHome(); }
	void EntryModeSet(bool incFlag, bool shiftFlag) {
		SendCommand(0x04 | (static_cast<uint8_t>(incFlag) << 1) | (static_cast<uint8_t>(shiftFlag) << 0));
	}
	void DisplayOnOffControl(bool displayFlag, bool cursorFlag, bool blinkFlag) {
		SendCommand(0x08 | (static_cast<uint8_t>(displayFlag) << 2) | (static_cast<uint8_t>(cursorFlag) << 1) | (static_cast<uint8_t>(blinkFlag) << 0));
	}
	void CursorOrDisplayShift() { SendCommand(0x10); }
	void FunctionSet() { SendCommand(0x20); }
	void SetCGRAMAddress() { SendCommand(0x40); }
	void SetDDRAMAddress() { SendCommand(0x80); }
	//void ReadBusyFlagAndAddressCounter() { SendCommand(0x01); }
public:
	virtual void SendData(uint8_t data) override { SendGeneric(data, 0b1); }
	virtual uint8_t RecvData() override { /* nothing */ }
};

}
