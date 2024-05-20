#include <avrt.h>

namespace av = avrt;

av::Port<av::D2, av::Out> portD2;
av::Port<av::D3, av::Out> portD3;
av::Port<av::A0> portA0;

av::Timer1 timer1;

AVRT_IMPLEMENT_Serial0(serial)
//AVRT_IMPLEMENT_ADConv_AutoTrigger(adConv, 32)

avrt::ADConv<32> adConv;

ISR(ADC_vect)
{
	portD2.DigitalToggle();
	adConv.HandleISR_ADC();
}

ISR(TIMER1_OVF_vect)
{
	portD3.DigitalToggle();
}

void setup()
{
	av::Ports::Init();
	serial.Open(serial.Speed::Bps57600);
	timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_Upto00FF, timer1.EnableInt_TIMER1_OVF);
	adConv.Init(adConv.Clock::Div128, adConv.VoltRef::AVcc);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::FreeRunning);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_ANALOG_COMP);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_INT0);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_TIMER0_COMPA);
	adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_TIMER0_OVF);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_TIMER1_COMPB);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_TIMER1_OVF);
	//adConv.StartAutoTrigger(av::A0, adConv.Trigger::Int_TIMER1_CAPT>();
	serial.Printf("ADConv Test\n");
}

void loop()
{
	while (adConv.IsResultReady()) {
		serial.Printf("Buff Len:%-3d Result:%d\n", adConv.GetBuff().GetLength(), adConv.ReadResult());
	}
}
