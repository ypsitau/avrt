#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Timer2(timer)
AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2, av::Out> portD2;
av::Port<av::D4, av::Out> portLED;

void setup()
{
	av::Ports::Init();
	serial.Open(serial.Speed::Bps57600);
	timer.Start(timer.Clock::Div64, timer.Waveform::Normal, timer.EnableInt_TIMER2_OVF);
	for (;;) {
		portLED.DigitalToggle();
		do {
			av::Timer::Alarm alarm(timer);
			alarm.Start(300);
			while (!alarm.IsExpired()) ;
		} while (0);
	}
}

void loop()
{
}
