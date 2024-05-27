#include <avrt.h>
#include <TwoWire.h>

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

namespace avrt {


}

void setup()
{
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto01FF, timer.EnableInt_TIMER1_OVF);
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("#### test-TwoWire-Scan ####\n"));
	twi.Open();
	for (uint8_t sla = 0x01; sla < 0x30; sla++) {
		bool foundFlag = twi.Transmit(sla);
		serial.Printf(F("SLA:%02x .. %S\n"), sla, foundFlag? F("found") : F("no"));
		timer.DelayMSec(100);
	}
#if 0
	for (uint8_t sla = 0x01; sla < 0x30; sla++) {
		TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
		//av::TwoWire::SetTWCR_Start();
		while (!(TWCR & (1 << TWINT))) ;
		serial.Printf(F("statHW=%S\n"), av::TwoWire::StatusToString(TW_STATUS));
		TWDR = sla << 1;
		serial.Printf(F("sla=0x%02x\n"), sla);
		TWCR = (1 << TWINT) | (1 << TWEN);
		while (!(TWCR & (1 << TWINT))) ;
		serial.Printf(F("statHW=%S\n"), av::TwoWire::StatusToString(TW_STATUS));
		TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);
		while (TWCR & (1 << TWSTO)) ;
	}
#endif
}

void loop() {
}
