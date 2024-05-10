//------------------------------------------------------------------------------
// Util.h
//------------------------------------------------------------------------------
#ifndef AVRT_UTIL_H
#define AVRT_UTIL_H

class __FlashStringHelper;

namespace avrt {

template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }

}

#endif
