#include "TwoWire.h"

namespace avrt {

class LCD1602 : public Stream {
private:
	TwoWire& twi_;
public:
	LCD1602(TwoWire& twi) : twi_(twi) {}
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

void LCD1602::SendGeneric(uint8_t code, uint8_t rsBit)
{
	Timer& timer = twi_.GetTimer();
	uint8_t address = 0x27;
	uint8_t codeHi = code & 0xf0;
	uint8_t codeLo = code << 4;
	timer.DelayMSec(1);
	twi_.Transmit(address, codeHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(address, codeHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(address, codeLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(address, codeLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
}

}

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::LCD1602 lcd(twi);

void setup()
{
	twi.Open();
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto01FF, timer.EnableInt_TIMER1_OVF);
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	lcd.ClearDisplay();
	lcd.ReturnHome();
	lcd.EntryModeSet(true, false);
	lcd.DisplayOnOffControl(true, false, false);
	//lcd.SendCommand(0x2c);
}

void loop()
{
	lcd.Clear();
	lcd.Printf(F("ABCDEFG"));
	lcd.Printf(F("abcdefg"));
	timer.DelayMSec(500);
	lcd.Clear();
	lcd.Printf(F("Hello"));
	timer.DelayMSec(500);
}
