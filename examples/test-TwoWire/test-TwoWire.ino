#include <avrt.h>
#include "LCD1602IIC.h"

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::LCD1602IIC lcd(twi);

av::Timer::Alarm alarm(timer);

void setup()
{
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto01FF, timer.EnableInt_TIMER1_OVF);
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("#### test-TwoWire ####\n"));
	twi.Open();
	//twi.SetTimeout(1000);
	//serial.Printf(F("%d\n"), twi.Transmit(0x27));
	lcd.Open();
	lcd.Clear();
	lcd.EntryModeSet(true, false);
	lcd.DisplayOnOffControl(true, false, false);
	lcd.FunctionSet(true, true);
	alarm.Start(1000);
#if 0
	lcd.Printf(F("ABCDEFG1"));
#endif
}

int cnt = 0;

void loop()
{
	if (alarm.IsExpired()) {
		lcd.SetPosition(0, 0);
		lcd.Printf(F("Hello:%d"), cnt);
		cnt++;
		alarm.Start();
	}
	//timer.DelayMSec(2000);
	//lcd.SetPosition(0, 0);
	//lcd.Printf(F("World"));
	//timer.DelayMSec(2000);
}
