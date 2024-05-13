#include <avrt.h>

AVRT_IMPLEMENT_ADConv_AutoTrigger(adConv, 0b111)

void setup()
{
	adConv.StartAutoTrigger(0, 0);
}

void loop()
{
}
