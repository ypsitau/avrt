#include <avrt.h>

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
	//twi.Detect(serial);
	uint8_t sla = 0x68;
	for (uint8_t addr = 0x23; addr < 0x24; addr++) {
		twi.GetBuffer().WriteData(addr);
		av::TwoWire::SequencerMT(twi, sla).Start(false);
		av::TwoWire::SequencerMR(twi, sla, 1).Start(true);
		serial.Printf("%02x: %02x\n", addr, twi.GetBuffer().ReadData());
	}
}

void loop()
{
}
