#include "TwoWire.h"

namespace av = avrt;

AVRT_IMPLEMENT_TwoWire(twi)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::Timer1 timer1;
ISR(TIMER1_OVF_vect) {timer1.HandleIRQ_TIMER1_OVF();}

void SendCommand(av::TwoWire& twi, uint8_t cmd)
{
	uint32_t address = 0x27;
	uint8_t cmdHi = cmd & 0xf0;
	uint8_t cmdLo = cmd << 4;
	uint8_t buff[4];
	buff[0] = cmdHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (0b0 << 0);
	buff[1] = cmdHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (0b0 << 0);
	buff[2] = cmdLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (0b0 << 0);
	buff[3] = cmdLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (0b0 << 0);
	twi.SendBuff(address, buff, 4);
}

void SendData(av::TwoWire& twi, uint8_t data)
{
	uint32_t address = 0x27;
	uint8_t dataHi = data & 0xf0, dataLo = data << 4;
	uint8_t buff[4];
	buff[0] = dataHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (0b1 << 0);
	buff[1] = dataHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (0b1 << 0);
	buff[2] = dataLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (0b1 << 0);
	buff[3] = dataLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (0b1 << 0);
	twi.SendBuff(address, buff, 4);
}

void setup()
{
	twi.Open();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	SendCommand(twi, 0x01);
	SendCommand(twi, 0x02);
	SendData(twi, 'A');	
	SendData(twi, 'B');	
	SendData(twi, 'C');	
}

void loop()
{
}
