#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0_NoRecv(serial)

const char*MakeBitPattern(char* buff, uint8_t dataPIN, uint8_t dataDDR);
void CheckPinStatus(uint8_t pinOutStart, uint8_t pinOutEnd, uint8_t pinInStart, uint8_t pinInEnd);

void setup()
{
	char buff[32];
	serial.Open(serial.Speed::Bps57600);
	av::Ports::SetMode<
		av::In,		// D0: PD0(RXD/PCINT16)
		av::In,		// D1: PD1(TXD/PCINT17)
		av::Out,	// D2: PD2(INT0/PCINT18)
		av::Out,	// D3: PD3(INT1/OC2B/PCINT19)
		av::Out,	// D4: PD4(XCK/T0/PCINT20)
		av::Out,	// D5: PD5(T1/OC0B/PCINT21)
		av::Out,	// D6: PD6(AIN0/OC0A/PCINT22)
		av::Out,	// D7: PD7(AIN1/PCINT23)
		av::Out,	// D8: PB0(ICP1/CLKO/PCINT0)
		av::Out,	// D9: PB1(OC1A/PCINT1)
		av::Out,	// D10: PB2(SS/OC1B/PCINT2)
		av::In,		// D11: PB3(MOSI/OC2A/PCINT3)
		av::In,		// D12: PB4(MISO/PCINT4)
		av::In,		// D13: PB5(SCK/PCINT5)
		av::In,		// D14: PC0(ADC0/PCINT8)
		av::In,		// D15: PC1(ADC1/PCINT9)
		av::In,		// D16: PC2(ADC2/PCINT10)
		av::In,		// D17: PC3(ADC3/PCINT11)
		av::In,		// D18: PC4(ADC4/SDA/PCINT12)
		av::In,		// D19: PC5(ADC5/SCL/PCINT13)
		av::In		// D20: PC6(RESET/PCINT14)
	>();
	CheckPinStatus(2, 10, 11, 20);
	av::Ports::SetMode<
		av::In,		// D0: PD0(RXD/PCINT16)
		av::In,		// D1: PD1(TXD/PCINT17)
		av::In,		// D2: PD2(INT0/PCINT18)
		av::In,		// D3: PD3(INT1/OC2B/PCINT19)
		av::In,		// D4: PD4(XCK/T0/PCINT20)
		av::In,		// D5: PD5(T1/OC0B/PCINT21)
		av::In,		// D6: PD6(AIN0/OC0A/PCINT22)
		av::In,		// D7: PD7(AIN1/PCINT23)
		av::In,		// D8: PB0(ICP1/CLKO/PCINT0)
		av::In,		// D9: PB1(OC1A/PCINT1)
		av::In,		// D10: PB2(SS/OC1B/PCINT2)
		av::Out,	// D11: PB3(MOSI/OC2A/PCINT3)
		av::Out,	// D12: PB4(MISO/PCINT4)
		av::Out,	// D13: PB5(SCK/PCINT5)
		av::Out,	// D14: PC0(ADC0/PCINT8)
		av::Out,	// D15: PC1(ADC1/PCINT9)
		av::Out,	// D16: PC2(ADC2/PCINT10)
		av::Out,	// D17: PC3(ADC3/PCINT11)
		av::Out,	// D18: PC4(ADC4/SDA/PCINT12)
		av::Out,	// D19: PC5(ADC5/SCL/PCINT13)
		av::Out		// D20: PC6(RESET/PCINT14)
	>();
	CheckPinStatus(11, 20, 2, 10);
}

void loop()
{
}

const char*MakeBitPattern(char* buff, uint8_t dataPIN, uint8_t dataDDR)
{
	char* p = buff;
	for (uint8_t mask = 0x80; mask != 0; mask >>= 1) {
		*p++ = (dataPIN & mask)? ((dataDDR & mask)? 'O' : 'I') : '-';
	}
	*p = '\0';
	return buff;
}

void CheckPinStatus(uint8_t pinOutStart, uint8_t pinOutEnd, uint8_t pinInStart, uint8_t pinInEnd)
{
	char buff[16];
	for (uint8_t pin = pinOutStart; pin <= pinOutEnd; pin++) {
		av::Ports::DigitalHigh(pin);
		serial.Printf(F("Pin#%-2d"), pin);
		serial.Printf(F(" PIND:%s"), MakeBitPattern(buff, PIND & 0xfc, DDRD));
		serial.Printf(F(" PINB:%s"), MakeBitPattern(buff, PINB, DDRB));
		serial.Printf(F(" PINC:%s"), MakeBitPattern(buff, PINC, DDRC));
		serial.Print(F(" .."));
		for (uint8_t pin = pinInStart; pin <= pinInEnd; pin++) {
			if (av::Ports::DigitalProbe(pin)) serial.Printf(F(" Pin#%d signalled"), pin);
		}
		serial.Println();
		av::Ports::DigitalLow(pin);
	}
}
