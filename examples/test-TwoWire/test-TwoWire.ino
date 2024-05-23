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
	twi_.SendData(address, codeHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.SendData(address, codeHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.SendData(address, codeLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.SendData(address, codeLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
}

}

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer1)
AVRT_IMPLEMENT_TwoWire(twi, timer1)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)


void setup()
{
	twi.Open();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	av::LCD1602 lcd(twi);
	lcd.SendCommand(0x01);
	lcd.SendCommand(0x02);
	lcd.SendCommand(0x06);
	lcd.SendCommand(0x0c);
	lcd.SendCommand(0x2c);
	const char buff[] = "Hello World";
	for (const char* p = buff; *p; p++) lcd.SendData(*p);
}

void loop()
{
}
