#include <avrt.h>

namespace av = avrt;

av::Port<av::D2> portD2;
av::Port<av::A0> portA0;

AVRT_IMPLEMENT_Serial0(serial)

avrt::ADConv<32> adConv;

ISR(ADC_vect)
{
	//serial.Printf("ADC_vect\n");
	portD2.ImpulseDigital();
	adConv.HandleISR_ADC();
}

//AVRT_IMPLEMENT_ADConv_AutoTrigger(adConv)

void setup()
{
	serial.Open(serial.BaudRate57600);
	portD2.SetMode<av::Out>();
	portA0.SetMode<av::In>();
	adConv.Init(adConv.Div128, adConv.VoltRef::AVcc);
	adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::FreeRunning>();
	serial.Printf("ADConv Test\n");
}

void loop()
{
	while (adConv.IsResultReady()) {
		serial.Printf("%d %d\n", adConv.GetBuff().GetLength(), adConv.ReadResult());
	}
	//serial.Printf("%d\n", adConv.InputSingle<av::A0>());
}
