#include <avrt.h>

namespace av = avrt;

volatile uint8_t data8 = 0;
volatile uint16_t data16 = 0;
volatile av::Logic logic = av::Low;

av::Port<av::D0, av::In>		portD0;
av::Port<av::D1, av::Out>		portD1;
av::Port<av::D2, av::InPullup>	portD2;
av::Port<av::D3, av::OutHigh>	portD3;
av::Port<av::D4, av::In>		portD4;
av::Port<av::D5, av::Out>		portD5;
av::Port<av::D6, av::InPullup>	portD6;
av::Port<av::D7, av::OutHigh>	portD7;
av::Port<av::D8, av::In>		portD8;
av::Port<av::D9, av::Out>		portD9;
av::Port<av::D10, av::InPullup>	portD10;
av::Port<av::D11, av::OutHigh>	portD11;
av::Port<av::D12, av::In>		portD12;
av::Port<av::D13, av::Out>		portD13;
av::Port<av::D14, av::InPullup>	portD14;
av::Port<av::D15, av::OutHigh>	portD15;
av::Port<av::D16, av::In>		portD16;
av::Port<av::D17, av::Out>		portD17;
av::Port<av::D18, av::InPullup>	portD18;
av::Port<av::D19, av::OutHigh>	portD19;
av::Port<av::D20, av::In>		portD20;

av::Port<av::A0> portA0;
av::Port<av::A1> portA1;
av::Port<av::A2> portA2;
av::Port<av::A3> portA3;
av::Port<av::A4> portA4;
av::Port<av::A5> portA5;
av::Port<av::A6> portA6;

void CompileTest_Ports()
{
	av::Ports::ChangeMode<>();
	av::Ports::ChangeMode<
		av::In,			// D0: PD0(RXD/PCINT16)
		av::In,			// D1: PD1(TXD/PCINT17)
		av::In,			// D2: PD2(INT0/PCINT18)
		av::In,			// D3: PD3(INT1/OC2B/PCINT19)
		av::In,			// D4: PD4(XCK/T0/PCINT20)
		av::In,			// D5: PD5(T1/OC0B/PCINT21)
		av::In,			// D6: PD6(AIN0/OC0A/PCINT22)
		av::In,			// D7: PD7(AIN1/PCINT23)
		av::In,			// D8: PB0(ICP1/CLKO/PCINT0)
		av::In,			// D9: PB1(OC1A/PCINT1)
		av::In,			// D10: PB2(SS/OC1B/PCINT2)
		av::In,			// D11: PB3(MOSI/OC2A/PCINT3)
		av::In,			// D12: PB4(MISO/PCINT4)
		av::In,			// D13: PB5(SCK/PCINT5)
		av::In,			// D14: PC0(ADC0/PCINT8)
		av::In,			// D15: PC1(ADC1/PCINT9)
		av::In,			// D16: PC2(ADC2/PCINT10)
		av::In,			// D17: PC3(ADC3/PCINT11)
		av::In,			// D18: PC4(ADC4/SDA/PCINT12)
		av::In,			// D19: PC5(ADC5/SCL/PCINT13)
		av::In			// D20: PC6(RESET/PCINT14)
	>();
	av::Ports::ChangeMode<
		av::Out,		// D0: PD0(RXD/PCINT16)
		av::Out,		// D1: PD1(TXD/PCINT17)
		av::Out,		// D2: PD2(INT0/PCINT18)
		av::Out,		// D3: PD3(INT1/OC2B/PCINT19)
		av::Out,		// D4: PD4(XCK/T0/PCINT20)
		av::Out,		// D5: PD5(T1/OC0B/PCINT21)
		av::Out,		// D6: PD6(AIN0/OC0A/PCINT22)
		av::Out,		// D7: PD7(AIN1/PCINT23)
		av::Out,		// D8: PB0(ICP1/CLKO/PCINT0)
		av::Out,		// D9: PB1(OC1A/PCINT1)
		av::Out,		// D10: PB2(SS/OC1B/PCINT2)
		av::Out,		// D11: PB3(MOSI/OC2A/PCINT3)
		av::Out,		// D12: PB4(MISO/PCINT4)
		av::Out,		// D13: PB5(SCK/PCINT5)
		av::Out,		// D14: PC0(ADC0/PCINT8)
		av::Out,		// D15: PC1(ADC1/PCINT9)
		av::Out,		// D16: PC2(ADC2/PCINT10)
		av::Out,		// D17: PC3(ADC3/PCINT11)
		av::Out,		// D18: PC4(ADC4/SDA/PCINT12)
		av::Out,		// D19: PC5(ADC5/SCL/PCINT13)
		av::Out			// D20: PC6(RESET/PCINT14)
	>();
	av::Ports::ChangeMode<
		av::InPullup,	// D0: PD0(RXD/PCINT16)
		av::InPullup,	// D1: PD1(TXD/PCINT17)
		av::InPullup,	// D2: PD2(INT0/PCINT18)
		av::InPullup,	// D3: PD3(INT1/OC2B/PCINT19)
		av::InPullup,	// D4: PD4(XCK/T0/PCINT20)
		av::InPullup,	// D5: PD5(T1/OC0B/PCINT21)
		av::InPullup,	// D6: PD6(AIN0/OC0A/PCINT22)
		av::InPullup,	// D7: PD7(AIN1/PCINT23)
		av::InPullup,	// D8: PB0(ICP1/CLKO/PCINT0)
		av::InPullup,	// D9: PB1(OC1A/PCINT1)
		av::InPullup,	// D10: PB2(SS/OC1B/PCINT2)
		av::InPullup,	// D11: PB3(MOSI/OC2A/PCINT3)
		av::InPullup,	// D12: PB4(MISO/PCINT4)
		av::InPullup,	// D13: PB5(SCK/PCINT5)
		av::InPullup,	// D14: PC0(ADC0/PCINT8)
		av::InPullup,	// D15: PC1(ADC1/PCINT9)
		av::InPullup,	// D16: PC2(ADC2/PCINT10)
		av::InPullup,	// D17: PC3(ADC3/PCINT11)
		av::InPullup,	// D18: PC4(ADC4/SDA/PCINT12)
		av::InPullup,	// D19: PC5(ADC5/SCL/PCINT13)
		av::InPullup	// D20: PC6(RESET/PCINT14)
	>();
	av::Ports::ChangeMode<
		av::OutHigh,	// D0: PD0(RXD/PCINT16)
		av::OutHigh,	// D1: PD1(TXD/PCINT17)
		av::OutHigh,	// D2: PD2(INT0/PCINT18)
		av::OutHigh,	// D3: PD3(INT1/OC2B/PCINT19)
		av::OutHigh,	// D4: PD4(XCK/T0/PCINT20)
		av::OutHigh,	// D5: PD5(T1/OC0B/PCINT21)
		av::OutHigh,	// D6: PD6(AIN0/OC0A/PCINT22)
		av::OutHigh,	// D7: PD7(AIN1/PCINT23)
		av::OutHigh,	// D8: PB0(ICP1/CLKO/PCINT0)
		av::OutHigh,	// D9: PB1(OC1A/PCINT1)
		av::OutHigh,	// D10: PB2(SS/OC1B/PCINT2)
		av::OutHigh,	// D11: PB3(MOSI/OC2A/PCINT3)
		av::OutHigh,	// D12: PB4(MISO/PCINT4)
		av::OutHigh,	// D13: PB5(SCK/PCINT5)
		av::OutHigh,	// D14: PC0(ADC0/PCINT8)
		av::OutHigh,	// D15: PC1(ADC1/PCINT9)
		av::OutHigh,	// D16: PC2(ADC2/PCINT10)
		av::OutHigh,	// D17: PC3(ADC3/PCINT11)
		av::OutHigh,	// D18: PC4(ADC4/SDA/PCINT12)
		av::OutHigh,	// D19: PC5(ADC5/SCL/PCINT13)
		av::OutHigh		// D20: PC6(RESET/PCINT14)
	>();
}

void CompileTest_ADConv()
{
	av::ADConv<>().Init();
}

void CompileTest_AnalogComparator()
{
	av::AnalogComparator<>::Init();
}

void CompileTest_Port_ChangeMode()
{
	portD0.ChangeMode<av::In>();
	portD1.ChangeMode<av::In>();
	portD2.ChangeMode<av::In>();
	portD3.ChangeMode<av::In>();
	portD4.ChangeMode<av::In>();
	portD5.ChangeMode<av::In>();
	portD6.ChangeMode<av::In>();
	portD7.ChangeMode<av::In>();
	portD8.ChangeMode<av::In>();
	portD9.ChangeMode<av::In>();
	portD10.ChangeMode<av::In>();
	portD11.ChangeMode<av::In>();
	portD12.ChangeMode<av::In>();
	portD13.ChangeMode<av::In>();
	portD14.ChangeMode<av::In>();
	portD15.ChangeMode<av::In>();
	portD16.ChangeMode<av::In>();
	portD17.ChangeMode<av::In>();
	portD18.ChangeMode<av::In>();
	portD19.ChangeMode<av::In>();
	portD20.ChangeMode<av::In>();
	portD0.ChangeMode<av::Out>();
	portD1.ChangeMode<av::Out>();
	portD2.ChangeMode<av::Out>();
	portD3.ChangeMode<av::Out>();
	portD4.ChangeMode<av::Out>();
	portD5.ChangeMode<av::Out>();
	portD6.ChangeMode<av::Out>();
	portD7.ChangeMode<av::Out>();
	portD8.ChangeMode<av::Out>();
	portD9.ChangeMode<av::Out>();
	portD10.ChangeMode<av::Out>();
	portD11.ChangeMode<av::Out>();
	portD12.ChangeMode<av::Out>();
	portD13.ChangeMode<av::Out>();
	portD14.ChangeMode<av::Out>();
	portD15.ChangeMode<av::Out>();
	portD16.ChangeMode<av::Out>();
	portD17.ChangeMode<av::Out>();
	portD18.ChangeMode<av::Out>();
	portD19.ChangeMode<av::Out>();
	portD20.ChangeMode<av::Out>();
	portD0.ChangeMode<av::InPullup>();
	portD1.ChangeMode<av::InPullup>();
	portD2.ChangeMode<av::InPullup>();
	portD3.ChangeMode<av::InPullup>();
	portD4.ChangeMode<av::InPullup>();
	portD5.ChangeMode<av::InPullup>();
	portD6.ChangeMode<av::InPullup>();
	portD7.ChangeMode<av::InPullup>();
	portD8.ChangeMode<av::InPullup>();
	portD9.ChangeMode<av::InPullup>();
	portD10.ChangeMode<av::InPullup>();
	portD11.ChangeMode<av::InPullup>();
	portD12.ChangeMode<av::InPullup>();
	portD13.ChangeMode<av::InPullup>();
	portD14.ChangeMode<av::InPullup>();
	portD15.ChangeMode<av::InPullup>();
	portD16.ChangeMode<av::InPullup>();
	portD17.ChangeMode<av::InPullup>();
	portD18.ChangeMode<av::InPullup>();
	portD19.ChangeMode<av::InPullup>();
	portD20.ChangeMode<av::InPullup>();
}

void CompileTest_Port_DigitalLow()
{
	portD0.DigitalLow();
	portD1.DigitalLow();
	portD2.DigitalLow();
	portD3.DigitalLow();
	portD4.DigitalLow();
	portD5.DigitalLow();
	portD6.DigitalLow();
	portD7.DigitalLow();
	portD8.DigitalLow();
	portD9.DigitalLow();
	portD10.DigitalLow();
	portD11.DigitalLow();
	portD12.DigitalLow();
	portD13.DigitalLow();
	portD14.DigitalLow();
	portD15.DigitalLow();
	portD16.DigitalLow();
	portD17.DigitalLow();
	portD18.DigitalLow();
	portD19.DigitalLow();
	portD20.DigitalLow();
}

void CompileTest_Port_DigitalHigh()
{
	portD0.DigitalHigh();
	portD1.DigitalHigh();
	portD2.DigitalHigh();
	portD3.DigitalHigh();
	portD4.DigitalHigh();
	portD5.DigitalHigh();
	portD6.DigitalHigh();
	portD7.DigitalHigh();
	portD8.DigitalHigh();
	portD9.DigitalHigh();
	portD10.DigitalHigh();
	portD11.DigitalHigh();
	portD12.DigitalHigh();
	portD13.DigitalHigh();
	portD14.DigitalHigh();
	portD15.DigitalHigh();
	portD16.DigitalHigh();
	portD17.DigitalHigh();
	portD18.DigitalHigh();
	portD19.DigitalHigh();
	portD20.DigitalHigh();
}

void CompileTest_Port_DigitalOutput()
{
	portD0.DigitalOutput(logic);
	portD1.DigitalOutput(logic);
	portD2.DigitalOutput(logic);
	portD3.DigitalOutput(logic);
	portD4.DigitalOutput(logic);
	portD5.DigitalOutput(logic);
	portD6.DigitalOutput(logic);
	portD7.DigitalOutput(logic);
	portD8.DigitalOutput(logic);
	portD9.DigitalOutput(logic);
	portD10.DigitalOutput(logic);
	portD11.DigitalOutput(logic);
	portD12.DigitalOutput(logic);
	portD13.DigitalOutput(logic);
	portD14.DigitalOutput(logic);
	portD15.DigitalOutput(logic);
	portD16.DigitalOutput(logic);
	portD17.DigitalOutput(logic);
	portD18.DigitalOutput(logic);
	portD19.DigitalOutput(logic);
	portD20.DigitalOutput(logic);
}

void CompileTest_Port_DigitalInput()
{
	logic = portD0.DigitalInput();
	logic = portD1.DigitalInput();
	logic = portD2.DigitalInput();
	logic = portD3.DigitalInput();
	logic = portD4.DigitalInput();
	logic = portD5.DigitalInput();
	logic = portD6.DigitalInput();
	logic = portD7.DigitalInput();
	logic = portD8.DigitalInput();
	logic = portD9.DigitalInput();
	logic = portD10.DigitalInput();
	logic = portD11.DigitalInput();
	logic = portD12.DigitalInput();
	logic = portD13.DigitalInput();
	logic = portD14.DigitalInput();
	logic = portD15.DigitalInput();
	logic = portD16.DigitalInput();
	logic = portD17.DigitalInput();
	logic = portD18.DigitalInput();
	logic = portD19.DigitalInput();
	logic = portD20.DigitalInput();
}

void CompileTest_Port_DigitalProbe()
{
	data8 = portD0.DigitalProbe();
	data8 = portD1.DigitalProbe();
	data8 = portD2.DigitalProbe();
	data8 = portD3.DigitalProbe();
	data8 = portD4.DigitalProbe();
	data8 = portD5.DigitalProbe();
	data8 = portD6.DigitalProbe();
	data8 = portD7.DigitalProbe();
	data8 = portD8.DigitalProbe();
	data8 = portD9.DigitalProbe();
	data8 = portD10.DigitalProbe();
	data8 = portD11.DigitalProbe();
	data8 = portD12.DigitalProbe();
	data8 = portD13.DigitalProbe();
	data8 = portD14.DigitalProbe();
	data8 = portD15.DigitalProbe();
	data8 = portD16.DigitalProbe();
	data8 = portD17.DigitalProbe();
	data8 = portD18.DigitalProbe();
	data8 = portD19.DigitalProbe();
	data8 = portD20.DigitalProbe();
}

void CompileTest_Port_PWMEnable()
{
	//portD0.PWMEnable();
	//portD1.PWMEnable();
	//portD2.PWMEnable();
	portD3.PWMEnable();
	//portD4.PWMEnable();
	portD5.PWMEnable();
	portD6.PWMEnable();
	//portD7.PWMEnable();
	//portD8.PWMEnable();
	portD9.PWMEnable();
	//portD10.PWMEnable();
	portD11.PWMEnable();
	//portD12.PWMEnable();
	//portD13.PWMEnable();
	//portD14.PWMEnable();
	//portD15.PWMEnable();
	//portD16.PWMEnable();
	//portD17.PWMEnable();
	//portD18.PWMEnable();
	//portD19.PWMEnable();
	//portD20.PWMEnable();
}

void CompileTest_Port_PWMDisable()
{
	//portD0.PWMDisable();
	//portD1.PWMDisable();
	//portD2.PWMDisable();
	portD3.PWMDisable();
	//portD4.PWMDisable();
	portD5.PWMDisable();
	portD6.PWMDisable();
	//portD7.PWMDisable();
	//portD8.PWMDisable();
	portD9.PWMDisable();
	//portD10.PWMDisable();
	portD11.PWMDisable();
	//portD12.PWMDisable();
	//portD13.PWMDisable();
	//portD14.PWMDisable();
	//portD15.PWMDisable();
	//portD16.PWMDisable();
	//portD17.PWMDisable();
	//portD18.PWMDisable();
	//portD19.PWMDisable();
	//portD20.PWMDisable();
}

void CompileTest_Port_PWMOutput()
{
	//portD0.PWMOutput(data8);
	//portD1.PWMOutput(data8);
	//portD2.PWMOutput(data8);
	portD3.PWMOutput(data8);
	//portD4.PWMOutput(data8);
	portD5.PWMOutput(data8);
	portD6.PWMOutput(data8);
	//portD7.PWMOutput(data8);
	//portD8.PWMOutput(data8);
	portD9.PWMOutput(data8);
	//portD10.PWMOutput(data8);
	portD11.PWMOutput(data8);
	//portD12.PWMOutput(data8);
	//portD13.PWMOutput(data8);
	//portD14.PWMOutput(data8);
	//portD15.PWMOutput(data8);
	//portD16.PWMOutput(data8);
	//portD17.PWMOutput(data8);
	//portD18.PWMOutput(data8);
	//portD19.PWMOutput(data8);
	//portD20.PWMOutput(data8);
}

void CompileTest_Port_AnalogInput()
{
	data16 = portA0.AnalogInput();
	data16 = portA1.AnalogInput();
	data16 = portA2.AnalogInput();
	data16 = portA3.AnalogInput();
	data16 = portA4.AnalogInput();
	data16 = portA5.AnalogInput();
	data16 = portA6.AnalogInput();
}

void setup()
{
	CompileTest_Ports();
	CompileTest_ADConv();
	CompileTest_AnalogComparator();
	CompileTest_Port_ChangeMode();
	CompileTest_Port_DigitalLow();
	CompileTest_Port_DigitalHigh();
	CompileTest_Port_DigitalOutput();
	CompileTest_Port_DigitalInput();
	CompileTest_Port_DigitalProbe();
	CompileTest_Port_PWMEnable();
	CompileTest_Port_PWMDisable();
	CompileTest_Port_PWMOutput();
	CompileTest_Port_AnalogInput();
}

void loop()
{
}
