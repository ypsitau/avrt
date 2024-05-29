#include <avrt.h>
#include "avrt-MPU6000.h"

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

void setup()
{
	timer.Start();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("#### test-TwoWire ####\n"));
	twi.Open();
	twi.Detect(serial);
	av::MPU6000(twi).DumpRegister(serial);
	//for (uint8_t addr = 103; addr < 118; addr++) {
	//	twi.GetBuffer().WriteData(addr);
	//	av::TwoWire::SequencerMT(twi, sla).Start(false);
	//	av::TwoWire::SequencerMR(twi, sla, 1).Start(true);
	//	serial.Printf("%02x: %02x\n", addr, twi.GetBuffer().ReadData());
	//}
}

void loop()
{
}
