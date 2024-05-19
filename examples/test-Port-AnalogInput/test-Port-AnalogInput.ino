#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::A0> portA0;
av::Port<av::A1> portA1;
av::Port<av::A2> portA2;
av::Port<av::A3> portA3;
av::Port<av::A4> portA4;
av::Port<av::A5> portA5;

av::ADConv<> adConv;

void setup()
{
	serial.Open(serial.Speed::Bps57600);
	av::Ports::SetMode<>();
	portA0.SetMode<av::In>();
	portA1.SetMode<av::InPullup>();	// input Vcc
	portA2.SetMode<av::InPullup>();	// input Vcc
	portA3.SetMode<av::InPullup>();	// input Vcc
	portA4.SetMode<av::InPullup>();	// input Vcc
	portA5.SetMode<av::InPullup>();	// input Vcc
	adConv.Init(adConv.Clock::Div128, adConv.VoltRef::AVcc);
	serial.Println(F("Analog Print"));
}

void loop()
{
	serial.Printf(F("12bit[A0:%-4d A1:%-4d A2:%-4d A3:%-4d A4:%-4d A5:%-4d], 8bit[A0:%-3d A1:%-3d A2:%-3d A3:%-3d A4:%-3d A5:%-3d]\n"),
		portA0.AnalogInput(), portA1.AnalogInput(), portA2.AnalogInput(),
		portA3.AnalogInput(), portA4.AnalogInput(), portA5.AnalogInput(),
		portA0.AnalogInput8bit(), portA1.AnalogInput8bit(), portA2.AnalogInput8bit(),
		portA3.AnalogInput8bit(), portA4.AnalogInput8bit(), portA5.AnalogInput8bit());
}
