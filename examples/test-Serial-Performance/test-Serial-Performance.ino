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
}
