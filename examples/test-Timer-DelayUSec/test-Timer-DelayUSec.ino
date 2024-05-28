#include <avrt.h>

namespace av = avrt;

av::Port<av::D2, av::Out> portLED;

AVRT_IMPLEMENT_Serial0(serial)

void setup()
{
	serial.Open(serial.Speed::Bps57600);
	av::Ports::Init();
}

void loop()
{
	portLED.DigitalToggle();
	av::Timer::DelayUSec(1000000L);
}
