#include "avrt.h"

namespace avrt {

//------------------------------------------------------------------------------
// Serial
//------------------------------------------------------------------------------
uint16_t Serial::LookupUBRR(Speed speed, bool doubleSpeedFlag)
{
	// 20.20 Examples of Baud Rate Setting
	// System Clock = 16.0000MHz
	if (doubleSpeedFlag) {
		return
			(speed == Speed::Bps2400)? 832 : (speed == Speed::Bps4800)? 416 :
			(speed == Speed::Bps9600)? 207 : (speed == Speed::Bps14400)? 138 :
			(speed == Speed::Bps19200)? 103 : (speed == Speed::Bps28800)? 68 :
			(speed == Speed::Bps38400)? 51 : (speed == Speed::Bps57600)? 34 :
			(speed == Speed::Bps76800)? 25 : (speed == Speed::Bps115200)? 16 :
			(speed == Speed::Bps230400)? 8 : (speed == Speed::Bps250000)? 7 :
			(speed == Speed::Bps500000)? 3 : (speed == Speed::Bps1000000)? 1 : 207;
	} else {
		return
			(speed == Speed::Bps2400)? 416 : (speed == Speed::Bps4800)? 207 :
			(speed == Speed::Bps9600)? 103 : (speed == Speed::Bps14400)? 68 :
			(speed == Speed::Bps19200)? 51 : (speed == Speed::Bps28800)? 34 :
			(speed == Speed::Bps38400)? 25 : (speed == Speed::Bps57600)? 16 :
			(speed == Speed::Bps76800)? 12 : (speed == Speed::Bps115200)? 8 :
			(speed == Speed::Bps230400)? 3 : (speed == Speed::Bps250000)? 3 :
			(speed == Speed::Bps500000)? 1 : (speed == Speed::Bps1000000)? 0 : 103;
	}
}

};
