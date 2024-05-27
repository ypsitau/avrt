#include <avrt.h>
#include <TwoWire.h>

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

namespace avrt {

// Table 22-2 Status codes for Master Transmitter Mode
void TwoWire::Sequencer_Transmit::Process()
{
	constexpr uint8_t dataTWIE = 0b0;
	uint8_t statHW = TW_STATUS;
	if (statHW == TW_START) {						// 0x08: start condition transmitted
		TWDR = sla_ << 1;
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
	} else if (statHW == TW_REP_START) {			// 0x10: repeated start condition transmitted
		TWDR = sla_ << 1;
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
	} else if (statHW == TW_MT_SLA_ACK) {			// 0x18: SLA+W transmitted, ACK received
		Buffer& buffSend = twi_.GetBuffSend();
		if (buffSend.HasData()) {
			uint8_t data = buffSend.ReadData();
			TWDR = data;
			TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
		} else {
			TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
		}
	} else if (statHW == TW_MT_SLA_NACK) {			// 0x20: SLA+W transmitted, NACK received
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
	} else if (statHW == TW_MT_DATA_ACK) {			// 0x28: data transmitted, ACK received
		Buffer& buffSend = twi_.GetBuffSend();
		if (buffSend.HasData()) {
			uint8_t data = buffSend.ReadData();
			TWDR = data;
			TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b0 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
		} else {
			TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
		}
	} else if (statHW == TW_MT_DATA_NACK) {			// 0x30: data transmitted, NACK received
		TWCR = (0b1 << TWINT) | (0b0 << TWEA) | (0b0 << TWSTA) | (0b1 << TWSTO) | (0b1 << TWEN) | (dataTWIE << TWIE);
	}
}

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
