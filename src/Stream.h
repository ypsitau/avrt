//------------------------------------------------------------------------------
// Stream.h
//------------------------------------------------------------------------------
#ifndef AVRT_STREAM_H
#define AVRT_STREAM_H
#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include <avr/pgmspace.h>
#include "Util.h"

namespace avrt {

//------------------------------------------------------------------------------
// FormatterFlags
//------------------------------------------------------------------------------
class FormatterFlags {
public:
	enum class PlusMode { None, Space, Plus };
	struct Prec {
		static const int Default	= -1;
		static const int Null		= -2;
	};
public:
	bool upperCaseFlag;
	bool leftAlignFlag;
	bool sharpFlag;
	int fieldMinWidth;
	int precision;
	PlusMode plusMode;
	char charPadding;
public:
	void Initialize();
	template<typename T, typename T_Unsigned> const char* FormatNumber_d(T num, char* buff, size_t size) const;
	template<typename T> const char* FormatNumber_u(T num, char* buff, size_t size) const;
	template<typename T> const char* FormatNumber_b(T num, char* buff, size_t size) const;
	template<typename T> const char* FormatNumber_o(T num, char* buff, size_t size) const;
	template<typename T> const char* FormatNumber_x(T num, char* buff, size_t size) const;
	const char* FormatNumber_e(float num, char* buff, size_t size) const;
	const char* FormatNumber_f(float num, char* buff, size_t size) const;
	const char* FormatNumber_g(float num, char* buff, size_t size) const;
private:
	void ToString(char* fmt, char qualifier) const;
};

template<typename T, typename T_Unsigned>
const char* FormatterFlags::FormatNumber_d(T num, char* buff, size_t size) const
{
	char* p = buff + size - 1;
	*p = '\0';
	if (num == 0) {
		if (precision == 0) {
			// empty string
		} else {
			p--;
			*p = '0';
		}
	} else if (num > 0) {
		int nCols = 0;
		for ( ; num != 0; num /= 10, nCols++) {
			p--;
			*p = (num % 10) + '0';
		}
		if (nCols < precision) {
			int cnt = ChooseMin(precision, static_cast<int>(size) - 2) - nCols;
			while (cnt-- > 0) {
				p--;
				*p = '0';
			}
		}
		if (plusMode == PlusMode::Space) {
			p--;
			*p = ' ';
		} else if (plusMode == PlusMode::Plus) {
			p--;
			*p = '+';
		}
	} else {
		int nCols = 0;
		T_Unsigned numNeg = -num;
		for ( ; numNeg != 0; numNeg /= 10, nCols++) {
			p--;
			*p = (numNeg % 10) + '0';
		}
		if (nCols < precision) {
			int cnt = ChooseMin(precision, static_cast<int>(size) - 2) - nCols;
			while (cnt-- > 0) {
				p--;
				*p = '0';
			}
		}
		p--;
		*p = '-';
	}
	return p;
}

template<typename T>
const char* FormatterFlags::FormatNumber_u(T num, char* buff, size_t size) const
{
	char* p = buff + size - 1;
	*p = '\0';
	if (num == 0) {
		if (precision == 0) {
			// empty string
		} else {
			p--;
			*p = '0';
		}
	} else {
		int nCols = 0;
		for ( ; num != 0; num /= 10, nCols++) {
			p--;
			*p = (num % 10) + '0';
		}
		if (nCols < precision) {
			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
			while (cnt-- > 0) {
				p--;
				*p = '0';
			}
		}
	}
	return p;
}

template<typename T>
const char* FormatterFlags::FormatNumber_b(T num, char* buff, size_t size) const
{
	char* p = buff + size - 1;
	*p = '\0';
	if (num == 0) {
		if (precision == 0) {
			// empty string
		} else {
			p--;
			*p = '0';
		}
	} else {
		int nCols = 0;
		for ( ; num != 0; num >>= 1, nCols++) {
			p--;
			*p = '0' + (num & 0x1);
		}
		if (nCols < precision) {
			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
			while (cnt-- > 0) {
				p--;
				*p = '0';
			}
		} else if (sharpFlag) {
			p--;
			*p = 'b';
			p--;
			*p = '0';
		}
	}
	return p;
}

template<typename T>
const char* FormatterFlags::FormatNumber_o(T num, char* buff, size_t size) const
{
	char* p = buff + size - 1;
	*p = '\0';
	if (num == 0) {
		if (precision == 0) {
			// empty string
		} else {
			p--;
			*p = '0';
		}
	} else {
		int nCols = 0;
		for ( ; num != 0; num >>= 3, nCols++) {
			p--;
			*p = '0' + (num & 0x7);
		}
		if (nCols < precision) {
			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
			while (cnt-- > 0) {
				p--;
				*p = '0';
			}
		} else if (sharpFlag) {
			p--;
			*p = '0';
		}
	}
	return p;
}

template<typename T>
const char* FormatterFlags::FormatNumber_x(T num, char* buff, size_t size) const
{
	const static char convUpperTbl[] PROGMEM = "0123456789ABCDEF";
	const static char convLowerTbl[] PROGMEM = "0123456789abcdef";
	char* p = buff + size - 1;
	*p = '\0';
	const char* convTbl = upperCaseFlag? convUpperTbl : convLowerTbl;
	if (num == 0) {
		if (precision == 0) {
			// empty string
		} else {
			p--;
			*p = '0';
		}
	} else {
		int nCols = 0;
		for ( ; num != 0; num >>= 4, nCols++) {
			p--;
			*p = pgm_read_byte(&convTbl[num & 0xf]);
		}
		if (nCols < precision) {
			int cnt = ChooseMin(precision, static_cast<int>(size) - 3) - nCols;
			while (cnt-- > 0) {
				p--;
				*p = '0';
			}
		}
		if (sharpFlag) {
			p--;
			*p = upperCaseFlag? 'X' : 'x';
			p--;
			*p = '0';
		}
	}
	return p;
}

//------------------------------------------------------------------------------
// StringPtr
//------------------------------------------------------------------------------
class StringPtr {
public:
	virtual char Next() = 0;
};

class StringPtr_SRAM : public StringPtr {
private:
	const char* p_;
public:
	StringPtr_SRAM(const char* p) : p_(p) {}
	virtual char Next() override { return *p_++; }
};

class StringPtr_Flash : public StringPtr {
private:
	const char* p_;
public:
	StringPtr_Flash(const __FlashStringHelper* p) : p_(reinterpret_cast<const char*>(p)) {}
	virtual char Next() override { char ch = pgm_read_byte(p_); p_++; return ch; }
};

//------------------------------------------------------------------------------
// Stream
//------------------------------------------------------------------------------
class Stream {
public:
	Stream() {}
	void Write(const uint8_t* buff, int len);
	void PutChar(char ch) { SendData(static_cast<uint8_t>(ch)); }
	char GetChar() { return static_cast<char>(RecvData()); }
	void Print(const char* str);
	void Print(const __FlashStringHelper* str);
	void Println() { PutChar('\n'); }
	void Println(const char* str);
	void Println(const __FlashStringHelper* str);
	bool Printf(const char* format, ...);
	bool Printf(const __FlashStringHelper* format, ...);
	bool PrintfV(const char* format, va_list ap);
	bool PrintfV(const __FlashStringHelper* format, va_list ap);
	bool PrintfV(StringPtr& format, va_list ap);
	void PutAlignedString(const FormatterFlags& formatterFlags, const char* str, int cntMax = -1);
public:
	virtual void SendData(uint8_t) = 0;
	virtual uint8_t RecvData() = 0;
};

}

#endif
