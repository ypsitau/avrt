#include <avrt.h>

namespace av = avrt;

av::Port<av::D2> portD2;
av::Port<av::A0> portA0;

av::Timer1<
	//0b011,	// CS1: Clock Select = clk/64
	0b001,	// CS1: Clock Select = clk/1
	0b001,	// WGM1: Waveform Generation Mode = PWM, Phase Correct, 8-bit
	//0b101,	// WGM1: Waveform Generation Mode = Fast PWM, 8-bit
	0b1		// TOIE1: Timer/Counter1 Overflow Interrupt Enable (TIMER1_OVF) = enable
> timer1;

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
	adConv.Init(adConv.Clock::Div128, adConv.VoltRef::AVcc);
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::FreeRunning>();
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Analog_Comp>();
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Int0>();
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Timer0_CompA>();
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Timer0_Ovf>();
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Timer1_CompB>();
	adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Timer1_Ovf>();
	//adConv.StartAutoTrigger<av::A0, adConv.TrigSrc::Timer1_Capt>();
	serial.Printf("ADConv Test\n");
}

void loop()
{
	while (adConv.IsResultReady()) {
		serial.Printf("%d %d\n", adConv.GetBuff().GetLength(), adConv.ReadResult());
	}
	//serial.Printf("%d\n", adConv.InputSingle<av::A0>());
}
