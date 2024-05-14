//------------------------------------------------------------------------------
// Util.h
//------------------------------------------------------------------------------
#ifndef AVRT_UTIL_H
#define AVRT_UTIL_H

class __FlashStringHelper;

namespace avrt {

template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }

using Logic = uint8_t;

constexpr uint8_t Low		= 0;
constexpr uint8_t High		= 1;

constexpr uint8_t In		= 0;
constexpr uint8_t Out		= 1;
constexpr uint8_t InPullup	= 2;
constexpr uint8_t OutHigh	= 3;

constexpr int D0			= 0;
constexpr int D1			= 1;
constexpr int D2			= 2;
constexpr int D3			= 3;
constexpr int D4			= 4;
constexpr int D5			= 5;
constexpr int D6			= 6;
constexpr int D7			= 7;
constexpr int D8			= 8;
constexpr int D9			= 9;
constexpr int D10			= 10;
constexpr int D11			= 11;
constexpr int D12			= 12;
constexpr int D13			= 13;
constexpr int D14			= 14;
constexpr int D15			= 15;
constexpr int D16			= 16;
constexpr int D17			= 17;
constexpr int D18			= 18;
constexpr int D19			= 19;
constexpr int D20			= 20;

constexpr int A0			= 14;
constexpr int A1			= 15;
constexpr int A2			= 16;
constexpr int A3			= 17;
constexpr int A4			= 18;
constexpr int A5			= 19;
constexpr int A6			= 20;

constexpr uint8_t PinToADCMux(uint8_t pin) { return pin - A0; }

}

#endif
