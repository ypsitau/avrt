#include "TwoWire.h"

namespace av = avrt;

AVRT_IMPLEMENT_TwoWire(twi)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::Timer1 timer1;
ISR(TIMER1_OVF_vect) {timer1.HandleIRQ_TIMER1_OVF();}

void SendInstruction(av::TwoWire& twi, uint8_t code, uint8_t rsBit)
{
	uint8_t address = 0x27;
	uint8_t codeHi = code & 0xf0;
	uint8_t codeLo = code << 4;
	timer1.DelayMSec(1);
	twi.SendData(address, codeHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer1.DelayMSec(1);
	twi.SendData(address, codeHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
	timer1.DelayMSec(1);
	twi.SendData(address, codeLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer1.DelayMSec(1);
	twi.SendData(address, codeLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
}

void setup()
{
	twi.Open();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	SendInstruction(twi, 0x01, 0b0);
	SendInstruction(twi, 0x02, 0b0);
	SendInstruction(twi, 0x06, 0b0);
	SendInstruction(twi, 0x0c, 0b0);
	SendInstruction(twi, 0x2c, 0b0);
	const char buff[] = "Hello World";
	for (const char* p = buff; *p; p++) SendInstruction(twi, *p, 0b1);
}

void loop()
{
}
