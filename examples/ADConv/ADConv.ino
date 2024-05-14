#include <avrt.h>

namespace av = avrt;

av::Port<av::D2> portD2;

AVRT_IMPLEMENT_Serial0(serial)

avrt::ADConv<32> adConv;

ISR(ADC_vect)
{
	serial.Printf("ADC_vect\n");
	portD2.ImpulseDigital();
	adConv.HandleISR_ADC();
}

//AVRT_IMPLEMENT_ADConv_AutoTrigger(adConv)

void setup()
{
	serial.Open(serial.BaudRate57600);
	portD2.SetMode<av::Out>();
	adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::FreeRunning>();
	serial.Printf("ADConv Test\n");
}

void loop()
{
}
