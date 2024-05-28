#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Timer2(timer)
AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D4, av::Out> portLED;

void setup()
{
	av::Ports::Init();
	serial.Open(serial.Speed::Bps57600);
	timer.Start();
}

void loop()
{
	portLED.DigitalToggle();
	timer.DelayMSec(300);
}
