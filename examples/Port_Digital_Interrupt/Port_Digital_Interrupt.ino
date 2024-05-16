#include <avrt.h>

namespace av = avrt;

av::Port<av::D2> portD2;
av::Port<av::D3> portD3;
av::Port<av::D3> portD4;
av::Port<av::D3> portD8;
av::Port<av::D3> portD14;

void setup()
{
	portD2.SetMode<av::InPullup>();
	portD3.SetMode<av::InPullup>();
	portD4.SetMode<av::InPullup>();
	portD8.SetMode<av::InPullup>();
	portD14.SetMode<av::InPullup>();
	portD2.EnableExternalInterrupt(av::Sense::Change);
	portD3.EnableExternalInterrupt(av::Sense::Change);
	portD4.EnablePinChangeInterrupt();
	portD8.EnablePinChangeInterrupt();
	portD14.EnablePinChangeInterrupt();
}

void loop()
{
}
