#include "avrt.h"

namespace avrt {

//------------------------------------------------------------------------------
// Serial
//------------------------------------------------------------------------------
uint16_t Serial::LookupUBRR(BaudRate baudRate, bool doubleSpeedFlag)
{
	// 20.20 Examples of Baud Rate Setting
	// System Clock = 16.0000MHz
	if (doubleSpeedFlag) {
		return
			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
			(baudRate == BaudRate9600)? 207 : (baudRate == BaudRate14400)? 138 :
			(baudRate == BaudRate19200)? 103 : (baudRate == BaudRate28800)? 68 :
			(baudRate == BaudRate38400)? 51 : (baudRate == BaudRate57600)? 34 :
			(baudRate == BaudRate76800)? 25 : (baudRate == BaudRate115200)? 16 :
			(baudRate == BaudRate230400)? 8 : (baudRate == BaudRate250000)? 7 :
			(baudRate == BaudRate500000)? 3 : (baudRate == BaudRate1000000)? 1 : 207;
	} else {
		return
			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
			(baudRate == BaudRate9600)? 103 : (baudRate == BaudRate14400)? 68 :
			(baudRate == BaudRate19200)? 51 : (baudRate == BaudRate28800)? 34 :
			(baudRate == BaudRate38400)? 25 : (baudRate == BaudRate57600)? 16 :
			(baudRate == BaudRate76800)? 12 : (baudRate == BaudRate115200)? 8 :
			(baudRate == BaudRate230400)? 3 : (baudRate == BaudRate250000)? 3 :
			(baudRate == BaudRate500000)? 1 : (baudRate == BaudRate1000000)? 0 : 103;
	}
}

};
