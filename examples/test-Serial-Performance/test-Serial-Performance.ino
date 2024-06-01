#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2, av::Out> portProbe;

void setup()
{
	av::Ports::Init();
}

void loop()
{
	serial.Printf(F("0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"));
	portProbe.DigitalToggle();
}
