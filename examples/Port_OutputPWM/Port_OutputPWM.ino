#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::A0> portA0;
av::Port<av::D3> portPWM;

void setup()
{
	serial.Open(av::Serial::BaudRate57600);
	av::Ports<>::SetMode();
	av::ADConv<>::InitAs8bit();
	portPWM.SetMode<av::Out>();
	portPWM.EnablePWM();
}

void loop()
{
	uint8_t value = portA0.InputAnalog_8bit();
	serial.Printf(F("Duty: %3d/255\n"), value);
	portPWM.OutputPWM(value);
}
