#include <avrt.h>
#include "LCD1602IIC.h"

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::LCD1602IIC lcd(twi);

void setup()
{
	twi.Open();
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto01FF, timer.EnableInt_TIMER1_OVF);
	serial.Open(serial.Speed::Bps57600);
	serial.Printf("test-TwoWire\n");
	lcd.ClearDisplay();
	lcd.ReturnHome();
	lcd.EntryModeSet(true, false);
	lcd.DisplayOnOffControl(true, false, false);
	//lcd.SendCommand(0x2c);
}

void loop()
{
	lcd.Clear();
	lcd.Printf(F("ABCDEFG"));
	lcd.Printf(F("abcdefg"));
	timer.DelayMSec(500);
	lcd.Clear();
	lcd.Printf(F("Hello"));
	timer.DelayMSec(500);
}
