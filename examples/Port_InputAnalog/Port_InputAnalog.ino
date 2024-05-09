#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2> portD2;
av::Port<av::A0> portA0;
av::Port<av::A1> portA1;
av::Port<av::A2> portA2;
av::Port<av::A3> portA3;
av::Port<av::A4> portA4;
av::Port<av::A5> portA5;
av::Port<av::A5> portA6;

void setup()
{
	serial.Open(av::Serial::BaudRate57600);
	av::InitPort<>();
	av::InitADC<
		0b0000,		// MUX: Analog Channel Selection Bits = ADC0
		0b000		// ADPS: ADC Prescaler Select Bits = 1/128
	>();
	portD2.SetMode<av::Out>();
	serial.Println(F("Analog Print"));
	for (;;) {
		portD2.ToggleDigital();
		//portD2.OutputDigital<av::High>();
		//portD2.OutputDigital<av::High>();
		//portD2.OutputDigital<av::High>();
		portA0.InputAnalog();
	}
}

void loop()
{
	serial.Printf(F("A0:%-4d A1:%-4d A2:%-4d A3:%-4d A4:%-4d A5:%-4d A6:%-4d\n"),
	portA0.InputAnalog(), portA1.InputAnalog(), portA2.InputAnalog(),
		portA3.InputAnalog(), portA4.InputAnalog(), portA5.InputAnalog(), portA6.InputAnalog());
}
