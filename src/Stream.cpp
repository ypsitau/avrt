//------------------------------------------------------------------------------
// Stream.cpp
//------------------------------------------------------------------------------
#include "Stream.h"

#define ENABLE_L_FLAG

namespace avrt {

//------------------------------------------------------------------------------
// FormatterFlags
//------------------------------------------------------------------------------
void FormatterFlags::Initialize()
{
	upperCaseFlag = false;
	leftAlignFlag = false;
	sharpFlag = false;
	fieldMinWidth = 0;
	precision = Prec::Default;
	plusMode = PlusMode::None;
	charPadding = ' ';
}

const char* FormatterFlags::FormatNumber_e(float num, char* buff, size_t size) const
{
#if 1
	char fmt[32];
	ToString(fmt, upperCaseFlag? 'E' : 'e');
	::snprintf(buff, size, fmt, num);
#endif
	return buff;
}

const char* FormatterFlags::FormatNumber_f(float num, char* buff, size_t size) const
{
#if 1
	char fmt[32];
	ToString(fmt, 'f');
	::snprintf(buff, size, fmt, num);
#endif
	return buff;
}

const char* FormatterFlags::FormatNumber_g(float num, char* buff, size_t size) const
{
#if 1
	char fmt[32];
	ToString(fmt, upperCaseFlag? 'G' : 'g');
	::snprintf(buff, size, fmt, num);
#endif
	return buff;
}

void FormatterFlags::ToString(char* fmt, char qualifier) const
{
	char* p = fmt;
	*p++ = '%';
	if (leftAlignFlag) *p++ += '-';
	if (sharpFlag) *p++ += '#';
	if (charPadding == '0') *p++ += '0';
	if (plusMode == PlusMode::Space) {
		*p++ += ' ';
	} else if (plusMode == PlusMode::Plus) {
		*p++ += '+';
	}
	if (fieldMinWidth > 0) {
		::itoa(fieldMinWidth, p, 10);
		for ( ; *p; p++) ;
	}
	if (precision == Prec::Null) {
		*p++ = '.';
	} else if (precision >= 0) {
		*p++ = '.';
		::itoa(precision, p, 10);
		for ( ; *p; p++) ;
	}
	*p++ += qualifier;
	*p = '\0';
}

//------------------------------------------------------------------------------
// Stream
//------------------------------------------------------------------------------
void Stream::Write(const uint8_t* buff, int len)
{
	for ( ; len > 0; buff++, len--) SendData(*buff);
}

void Stream::Print(const char* str)
{
	for (const char* p = str; *p; p++) PutChar(*p);
}

void Stream::Print(const __FlashStringHelper* str)
{
	const char* p = reinterpret_cast<const char*>(str);
	for ( ; ; p++) {
		char ch = pgm_read_byte(p);
		if (!ch) break;
		PutChar(ch);
	}
}

void Stream::Println(const char* str)
{
	Print(str);
	PutChar('\n');
}

void Stream::Println(const __FlashStringHelper* str)
{
	Print(str);
	PutChar('\n');
}

bool Stream::Printf(const char* format, ...)
{
	va_list ap;
	va_start(ap, format);
	bool rtn = PrintfV(format, ap);
	va_end(ap);
	return rtn;
}

bool Stream::Printf(const __FlashStringHelper* format, ...)
{
	va_list ap;
	va_start(ap, format);
	bool rtn = PrintfV(format, ap);
	va_end(ap);
	return rtn;
}

bool Stream::PrintfV(const char* format, va_list ap)
{
	StringPtr_SRAM format_(format);
	return PrintfV(format_, ap);
}

bool Stream::PrintfV(const __FlashStringHelper* format, va_list ap)
{
	StringPtr_Flash format_(format);
	return PrintfV(format_, ap);
}

void Stream::Dump(const void* buff, int bytes, bool printAddrFlag)
{
	const __FlashStringHelper* formatAddr = F("%04x");
	const __FlashStringHelper* formatData = F("%02x");
	const uint8_t* p = reinterpret_cast<const uint8_t*>(buff);
	uint8_t col = 0;
	for (int i = 0; i < bytes; i++, p++) {
		if (col > 0) {
			PutChar(' ');
		} else if (printAddrFlag) {
			Printf(formatAddr, i);
			Print(F("  "));
		}
		Printf(formatData, *p);
		col++;
		if (col == 16) {
			Println();
			col = 0;
		}
	}
	if (col > 0) Println();
}

bool Stream::PrintfV(StringPtr& format, va_list ap)
{
	enum class Stat {
		Start, NoFormat, FlagsPre, Flags,
		FlagsAfterWhite,
#if defined(ENABLE_L_FLAG)
		FlagsAfterL,
#endif
		PrecisionPre, Precision, Padding,
	};
	char buff[40];
	bool eatNextFlag;
	FormatterFlags formatterFlags;
	Stat stat = Stat::Start;
	char ch = format.Next();
	for (;;) {
		eatNextFlag = true;
		if (ch == '\0') break;
		switch (stat) {
		case Stat::Start: {
			if (ch == '%') {
				stat = Stat::FlagsPre;
			} else {
				PutChar(ch);
			}
			break;
		}
		case Stat::NoFormat: {
			PutChar(ch);
			break;
		}
		case Stat::FlagsPre: {
			if (ch == '%') {
				PutChar(ch);
				stat = Stat::Start;
			} else {
				formatterFlags.Initialize();
				eatNextFlag = false;
				stat = Stat::Flags;
			}
			break;
		}
		case Stat::Flags: {
			if (ch == '#') {
				formatterFlags.sharpFlag = true;
			} else if (ch == '0') {
				if (!formatterFlags.leftAlignFlag) {
					formatterFlags.charPadding = '0';
				}
			} else if (ch == '-') {
				formatterFlags.leftAlignFlag = true;
				formatterFlags.charPadding = ' ';
			} else if (ch == ' ') {
				if (formatterFlags.plusMode == FormatterFlags::PlusMode::None) {
					formatterFlags.plusMode = FormatterFlags::PlusMode::Space;
				}
				stat = Stat::FlagsAfterWhite;
			} else if (ch == '+') {
				formatterFlags.plusMode = FormatterFlags::PlusMode::Plus;
			} else if (ch == '*') {
				formatterFlags.fieldMinWidth = va_arg(ap, int);
				if (formatterFlags.fieldMinWidth < 0) {
					formatterFlags.leftAlignFlag = true;
					formatterFlags.fieldMinWidth = -formatterFlags.fieldMinWidth;
				}
			} else if ('0' < ch && ch <= '9') {
				eatNextFlag = false;
				stat = Stat::Padding;
			} else if (ch == '.') {
				stat = Stat::PrecisionPre;
			} else if (ch == 'l') {
#if defined(ENABLE_L_FLAG)
				stat = Stat::FlagsAfterL;
#else
				static const char msg[] PROGMEM = "[l flag is not enabled]";
				Print(reinterpret_cast<const __FlashStringHelper*>(msg));
				stat = Stat::NoFormat;
#endif
			} else if (ch == 'd' || ch == 'i') {
				int num = va_arg(ap, int);
				const char* p = formatterFlags.FormatNumber_d<int, unsigned int>(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'u') {
				unsigned int num = va_arg(ap, unsigned int);
				const char* p = formatterFlags.FormatNumber_u(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'b') {
				unsigned int num = va_arg(ap, unsigned int);
				const char* p = formatterFlags.FormatNumber_b(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'o') {
				unsigned int num = va_arg(ap, unsigned int);
				const char* p = formatterFlags.FormatNumber_o(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'x' || ch == 'X') {
				unsigned int num = va_arg(ap, unsigned int);
				formatterFlags.upperCaseFlag = (ch == 'X');
				const char* p = formatterFlags.FormatNumber_x(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'p') {
				unsigned int num = va_arg(ap, unsigned int);
				const char* p = formatterFlags.FormatNumber_x(num, buff, sizeof(buff));
				Print("0x");
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'e' || ch == 'E') {
				float num = va_arg(ap, float);
				formatterFlags.upperCaseFlag = (ch == 'E');
				const char* p = formatterFlags.FormatNumber_e(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'f' || ch == 'F') {
				float num = va_arg(ap, float);
				const char* p = formatterFlags.FormatNumber_f(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'g' || ch == 'G') {
				float num = va_arg(ap, float);
				formatterFlags.upperCaseFlag = (ch == 'G');
				const char* p = formatterFlags.FormatNumber_g(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 's') {
				const char* str = va_arg(ap, const char*);
				PutAlignedString(formatterFlags, str);
				stat = Stat::Start;
			} else if (ch == 'S') {
				const __FlashStringHelper* str = va_arg(ap, const __FlashStringHelper*);
				PutAlignedStringInFlash(formatterFlags, str);
				stat = Stat::Start;
			} else if (ch == 'c') {
				char ch = va_arg(ap, char);
				PutChar(ch);
				stat = Stat::Start;
			} else {
				return false;
			}
			break;
		}
		case Stat::FlagsAfterWhite: {
			if (ch == ' ') {
				return false;
			} else {
				eatNextFlag = false;
				stat = Stat::Flags;
			}
			break;
		}
#if defined(ENABLE_L_FLAG)
		case Stat::FlagsAfterL: {
			if (ch == 'd' || ch == 'i') {
				int32_t num = va_arg(ap, int32_t);
				const char* p = formatterFlags.FormatNumber_d<int32_t, uint32_t>(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'u') {
				uint32_t num = va_arg(ap, uint32_t);
				const char* p = formatterFlags.FormatNumber_u(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'b') {
				uint32_t num = va_arg(ap, uint32_t);
				const char* p = formatterFlags.FormatNumber_b(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'o') {
				uint32_t num = va_arg(ap, uint32_t);
				const char* p = formatterFlags.FormatNumber_o(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else if (ch == 'x' || ch == 'X') {
				uint32_t num = va_arg(ap, uint32_t);
				formatterFlags.upperCaseFlag = (ch == 'X');
				const char* p = formatterFlags.FormatNumber_x(num, buff, sizeof(buff));
				PutAlignedString(formatterFlags, p);
				stat = Stat::Start;
			} else {
				return false;
			}
			break;
		}
#endif
		case Stat::Padding: {
			if ('0' <= ch && ch <= '9') {
				formatterFlags.fieldMinWidth = formatterFlags.fieldMinWidth * 10 + (ch - '0');
			} else {
				eatNextFlag = false;
				stat = Stat::Flags;
			}
			break;
		}
		case Stat::PrecisionPre: {
			if (ch == '*') {
				formatterFlags.precision = va_arg(ap, int);
				if (formatterFlags.precision < 0) formatterFlags.precision = FormatterFlags::Prec::Default;
				stat = Stat::Flags;
			} else if ('0' <= ch && ch <= '9') {
				formatterFlags.precision = 0;
				eatNextFlag = false;
				stat = Stat::Precision;
			} else {
				formatterFlags.precision = FormatterFlags::Prec::Null;
				eatNextFlag = false;
				stat = Stat::Flags;
			}
			break;
		}
		case Stat::Precision: {
			if ('0' <= ch && ch <= '9') {
				formatterFlags.precision = formatterFlags.precision * 10 + (ch - '0');
			} else {
				eatNextFlag = false;
				stat = Stat::Flags;
			}
			break;
		}
		default:
			break;
		}
		if (eatNextFlag) {
			ch = format.Next();
		}
	}
	return true;
}

void Stream::PutAlignedString(const FormatterFlags& formatterFlags, const char* str, int cntMax)
{
	int cnt = 0;
	for (const char* p = str; *p; p++, cnt++) ;
	if (cntMax >= 0 && cnt > cntMax) cnt = cntMax;
	int cntPadding = formatterFlags.fieldMinWidth - cnt;
	const char* p = str;
	if (formatterFlags.leftAlignFlag) {
		for ( ; cnt > 0; p++, cnt--) PutChar(*p);
		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
	} else {
		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
		for ( ; cnt > 0; p++, cnt--) PutChar(*p);
	}
}

void Stream::PutAlignedStringInFlash(const FormatterFlags& formatterFlags, const __FlashStringHelper* str, int cntMax)
{
	int cnt = 0;
	for (const char* p = reinterpret_cast<const char*>(str); pgm_read_byte(p); p++, cnt++) ;
	if (cntMax >= 0 && cnt > cntMax) cnt = cntMax;
	int cntPadding = formatterFlags.fieldMinWidth - cnt;
	const char* p = reinterpret_cast<const char*>(str);
	if (formatterFlags.leftAlignFlag) {
		for ( ; cnt > 0; p++, cnt--) PutChar(pgm_read_byte(p));
		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
	} else {
		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
		for ( ; cnt > 0; p++, cnt--) PutChar(pgm_read_byte(p));
	}
}

}
