#include <avrt.h>
#include "LCD1602IIC.h"

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::LCD1602IIC lcd(twi);

void setup()
{
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto01FF, timer.EnableInt_TIMER1_OVF);
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	twi.Open();
	//twi.SetTimeout(1000);
	//serial.Printf(F("%d\n"), twi.Transmit(0x27));
	lcd.Open();
	lcd.Clear();
	lcd.EntryModeSet(true, false);
	lcd.DisplayOnOffControl(true, false, false);
	lcd.Printf(F("ABCDEFG1"));
#if 0
	lcd.SendCommand(0x2c);
	lcd.Printf(F("ABCDEFG1"));
#endif
}

void loop()
{
#if 0
	lcd.Clear();
	lcd.Printf(F("ABCDEFG"));
	lcd.Printf(F("abcdefg"));
	timer.DelayMSec(500);
	lcd.Clear();
	lcd.Printf(F("Hello"));
	timer.DelayMSec(500);
#endif
}
