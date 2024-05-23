#include "TwoWire.h"

namespace av = avrt;

AVRT_IMPLEMENT_TwoWire(twi)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::Timer1 timer1;
ISR(TIMER1_OVF_vect) {timer1.HandleIRQ_TIMER1_OVF();}

void setup()
{
	twi.Open();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	uint32_t address = 0x27;
	twi.SendData(address, 0x01);
	twi.SendData(address, 0x08);
	twi.SendData(address, 0x03);
	twi.SendData(address, 0x0f);
	twi.SendData(address, 0x06);
	twi.SendData(address, 0x80);
	twi.SendData(address, 'A');
	//twi.SendData(address, 0x01);
	//twi.SendData(address, 0x38);
	//twi.SendData(address, 0x0f);
	//twi.SendData(address, 0x06);
	//twi.SendData(address, 0x80);
	//twi.SendData(address, 'A');
	//twi.SendData(address, 'B');
}

void loop()
{
}
