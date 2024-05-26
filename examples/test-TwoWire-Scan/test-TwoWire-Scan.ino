#include <avrt.h>
#include <TwoWire.h>

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

void setup()
{
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto01FF, timer.EnableInt_TIMER1_OVF);
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("#### test-TwoWire-Scan ####\n"));
	twi.Open();
	for (uint8_t sla = 0x01; sla < 0x7f; sla++) {
		bool foundFlag = twi.Transmit(sla);
		serial.Printf(F("SLA:%02x .. %S\n"), sla, foundFlag? F("found") : F("no"));
	}
}

void loop() {
}
