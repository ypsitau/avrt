#include "TwoWire.h"

namespace av = avrt;

AVRT_IMPLEMENT_TwoWire(twi)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::Timer1 timer1;
ISR(TIMER1_OVF_vect) {timer1.HandleIRQ_TIMER1_OVF();}

void SendCommand(av::TwoWire& twi, uint8_t cmd)
{
	uint32_t address = 0x27;
	uint8_t buff[3];
	buff[0] = 0xa0;
	buff[1] = 0x00;
	buff[2] = cmd;
	twi.SendBuff(address, buff, 3);
}

void SendData(av::TwoWire& twi, uint8_t data)
{
	uint32_t address = 0x27;
	uint8_t buff[3];
	buff[0] = 0xa0;
	buff[1] = 0x80;
	buff[2] = data;
	twi.SendBuff(address, buff, 3);
}

void setup()
{
	twi.Open();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	SendCommand(twi, 0x01);
	SendCommand(twi, 0x38);
	SendCommand(twi, 0x0f);
	SendCommand(twi, 0x06);
	SendCommand(twi, 0x80);
	SendData(twi, 'A');
	SendData(twi, 'B');
}

void loop()
{
}
