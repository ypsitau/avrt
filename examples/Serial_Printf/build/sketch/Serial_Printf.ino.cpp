#include <Arduino.h>
#line 1 "C:\\Users\\ypsit\\source\\Arduino\\exp-avrt\\Serial_Printf\\Serial_Printf.ino"
#include <avrt.h>

AVRT_IMPLEMENT_Serial0_NoRecv(serial)

#line 5 "C:\\Users\\ypsit\\source\\Arduino\\exp-avrt\\Serial_Printf\\Serial_Printf.ino"
void setup();
#line 159 "C:\\Users\\ypsit\\source\\Arduino\\exp-avrt\\Serial_Printf\\Serial_Printf.ino"
void loop();
#line 5 "C:\\Users\\ypsit\\source\\Arduino\\exp-avrt\\Serial_Printf\\Serial_Printf.ino"
void setup()
{
	serial.Open(avrt::Serial::BaudRate57600, avrt::Serial::CharSize8, avrt::Serial::ParityNone, avrt::Serial::StopBit1);
	serial.Println("---- %d specifier ----");
	serial.Printf(F("%%d 0              '%d'\n"), 0);
	serial.Printf(F("%%d 1234           '%d'\n"), 1234);
	serial.Printf(F("%%d -1234          '%d'\n"), -1234);
	serial.Printf(F("%%d 32767          '%d'\n"), 32767);
	serial.Printf(F("%%d -32768         '%d'\n"), -32768);
	serial.Printf(F("%%d 32768          '%d'\n"), 32768);
	serial.Printf(F("%%d -32769         '%d'\n"), -32769);
	serial.Printf(F("%%8d 1234          '%8d'\n"), 1234);
	serial.Printf(F("%%8d -1234         '%8d'\n"), -1234);
	serial.Printf(F("%%-8d 1234         '%-8d'\n"), 1234);
	serial.Printf(F("%%-8d -1234        '%-8d'\n"), -1234);
	serial.Printf(F("%%08d 1234         '%08d'\n"), 1234);
	serial.Printf(F("%%08d -1234        '%08d'\n"), -1234);
	serial.Printf(F("%%-08d 1234        '%-08d'\n"), 1234);
	serial.Printf(F("%%-08d -1234       '%-08d'\n"), -1234);
	serial.Println("---- %u specifier ----");
	serial.Printf(F("%%u 0              '%u'\n"), 0);
	serial.Printf(F("%%u 1234           '%u'\n"), 1234);
	serial.Printf(F("%%u -1234          '%u'\n"), -1234);
	serial.Printf(F("%%u 32767          '%u'\n"), 32767);
	serial.Printf(F("%%u -32768         '%u'\n"), -32768);
	serial.Printf(F("%%u 32768          '%u'\n"), 32768);
	serial.Printf(F("%%u -32769         '%u'\n"), -32769);
	serial.Printf(F("%%u 65535          '%u'\n"), 65535);
	serial.Printf(F("%%u 65536          '%u'\n"), 65536);
	serial.Printf(F("%%8u 1234          '%8u'\n"), 1234);
	serial.Printf(F("%%8u -1234         '%8u'\n"), -1234);
	serial.Printf(F("%%-8u 1234         '%-8u'\n"), 1234);
	serial.Printf(F("%%-8u -1234        '%-8u'\n"), -1234);
	serial.Printf(F("%%08u 1234         '%08u'\n"), 1234);
	serial.Printf(F("%%08u -1234        '%08u'\n"), -1234);
	serial.Printf(F("%%-08u 1234        '%-08u'\n"), 1234);
	serial.Printf(F("%%-08u -1234       '%-08u'\n"), -1234);
	serial.Println("---- %b specifier ----");
	serial.Printf(F("%%b 0              '%b'\n"), 0);
	serial.Printf(F("%%b 1234           '%b'\n"), 1234);
	serial.Printf(F("%%b -1234          '%b'\n"), -1234);
	serial.Printf(F("%%b 32767          '%b'\n"), 32767);
	serial.Printf(F("%%b -32768         '%b'\n"), -32768);
	serial.Printf(F("%%b 32768          '%b'\n"), 32768);
	serial.Printf(F("%%b -32769         '%b'\n"), -32769);
	serial.Printf(F("%%b 65535          '%b'\n"), 65535);
	serial.Printf(F("%%b 65536          '%b'\n"), 65536);
	serial.Printf(F("%%18b 1234         '%18b'\n"), 1234);
	serial.Printf(F("%%18b -1234        '%18b'\n"), -1234);
	serial.Printf(F("%%-18b 1234        '%-18b'\n"), 1234);
	serial.Printf(F("%%-18b -1234       '%-18b'\n"), -1234);
	serial.Printf(F("%%018b 1234        '%018b'\n"), 1234);
	serial.Printf(F("%%018b -1234       '%018b'\n"), -1234);
	serial.Printf(F("%%-018b 1234       '%-018b'\n"), 1234);
	serial.Printf(F("%%-018b -1234      '%-018b'\n"), -1234);
	serial.Println("---- %o specifier ----");
	serial.Printf(F("%%o 0              '%o'\n"), 0);
	serial.Printf(F("%%o 1234           '%o'\n"), 1234);
	serial.Printf(F("%%o -1234          '%o'\n"), -1234);
	serial.Printf(F("%%o 32767          '%o'\n"), 32767);
	serial.Printf(F("%%o -32768         '%o'\n"), -32768);
	serial.Printf(F("%%o 32768          '%o'\n"), 32768);
	serial.Printf(F("%%o -32769         '%o'\n"), -32769);
	serial.Printf(F("%%o 65535          '%o'\n"), 65535);
	serial.Printf(F("%%o 65536          '%o'\n"), 65536);
	serial.Printf(F("%%10o 1234         '%10o'\n"), 1234);
	serial.Printf(F("%%10o -1234        '%10o'\n"), -1234);
	serial.Printf(F("%%-10o 1234        '%-10o'\n"), 1234);
	serial.Printf(F("%%-10o -1234       '%-10o'\n"), -1234);
	serial.Printf(F("%%010o 1234        '%010o'\n"), 1234);
	serial.Printf(F("%%010o -1234       '%010o'\n"), -1234);
	serial.Printf(F("%%-010o 1234       '%-010o'\n"), 1234);
	serial.Printf(F("%%-010o -1234      '%-010o'\n"), -1234);
	serial.Println("---- %x specifier ----");
	serial.Printf(F("%%x 0              '%x'\n"), 0);
	serial.Printf(F("%%x 0x12ab         '%x'\n"), 0x12ab);
	serial.Printf(F("%%x -0x12ab        '%x'\n"), -0x12ab);
	serial.Printf(F("%%x 32767          '%x'\n"), 32767);
	serial.Printf(F("%%x -32768         '%x'\n"), -32768);
	serial.Printf(F("%%x 32768          '%x'\n"), 32768);
	serial.Printf(F("%%x -32769         '%x'\n"), -32769);
	serial.Printf(F("%%x 65535          '%x'\n"), 65535);
	serial.Printf(F("%%x 65536          '%x'\n"), 65536);
	serial.Printf(F("%%8x 0x12ab        '%8x'\n"), 0x12ab);
	serial.Printf(F("%%8x -0x12ab       '%8x'\n"), -0x12ab);
	serial.Printf(F("%%-8x 0x12ab       '%-8x'\n"), 0x12ab);
	serial.Printf(F("%%-8x -0x12ab      '%-8x'\n"), -0x12ab);
	serial.Printf(F("%%08x 0x12ab       '%08x'\n"), 0x12ab);
	serial.Printf(F("%%08x -0x12ab      '%08x'\n"), -0x12ab);
	serial.Printf(F("%%-08x 0x12ab      '%-08x'\n"), 0x12ab);
	serial.Printf(F("%%-08x -0x12ab     '%-08x'\n"), -0x12ab);
	serial.Println("---- %X specifier ----");
	serial.Printf(F("%%X 0              '%X'\n"), 0);
	serial.Printf(F("%%X 0x12ab         '%X'\n"), 0x12ab);
	serial.Printf(F("%%X -0x12ab        '%X'\n"), -0x12ab);
	serial.Printf(F("%%X 32767          '%X'\n"), 32767);
	serial.Printf(F("%%X -32768         '%X'\n"), -32768);
	serial.Printf(F("%%X 32768          '%X'\n"), 32768);
	serial.Printf(F("%%X -32769         '%X'\n"), -32769);
	serial.Printf(F("%%X 65535          '%X'\n"), 65535);
	serial.Printf(F("%%X 65536          '%X'\n"), 65536);
	serial.Printf(F("%%8X 0x12ab        '%8X'\n"), 0x12ab);
	serial.Printf(F("%%8X -0x12ab       '%8X'\n"), -0x12ab);
	serial.Printf(F("%%-8X 0x12ab       '%-8X'\n"), 0x12ab);
	serial.Printf(F("%%-8X -0x12ab      '%-8X'\n"), -0x12ab);
	serial.Printf(F("%%08X 0x12ab       '%08X'\n"), 0x12ab);
	serial.Printf(F("%%08X -0x12ab      '%08X'\n"), -0x12ab);
	serial.Printf(F("%%-08X 0x12ab      '%-08X'\n"), 0x12ab);
	serial.Printf(F("%%-08X -0x12ab     '%-08X'\n"), -0x12ab);
	serial.Println("---- %s specifier ----");
	serial.Printf(F("%%s \"Hello\"        '%s'\n"), "Hello");
	serial.Printf(F("%%8s \"Hello\"       '%8s'\n"), "Hello");
	serial.Printf(F("%%-8s \"Hello\"      '%-8s'\n"), "Hello");
	serial.Println("---- width by * ----");
	serial.Printf(F("%%*d 10, 1234      '%*d'\n"), 10, 1234);
	serial.Printf(F("%%*d -10, 1234     '%*d'\n"), -10, 1234);
	serial.Println("---- %ld specifier ----");
	serial.Printf(F("%%ld 0L            '%ld'\n"), 0L);
	serial.Printf(F("%%ld 1234L         '%ld'\n"), 1234L);
	serial.Printf(F("%%ld -1234L        '%ld'\n"), -1234L);
	serial.Printf(F("%%ld 2147483647L   '%ld'\n"), 2147483647L);
	serial.Printf(F("%%ld -2147483648L  '%ld'\n"), -2147483648L);
	serial.Println("---- %lu specifier ----");
	serial.Printf(F("%%lu 0L            '%lu'\n"), 0L);
	serial.Printf(F("%%lu 1234L         '%lu'\n"), 1234L);
	serial.Printf(F("%%lu -1234L        '%lu'\n"), -1234L);
	serial.Printf(F("%%lu 2147483647L   '%lu'\n"), 2147483647L);
	serial.Printf(F("%%lu -2147483648L  '%lu'\n"), -2147483648L);
	serial.Printf(F("%%lu 4294967295L   '%lu'\n"), 4294967295L);
	serial.Println("---- %lb specifier ----");
	serial.Printf(F("%%lb 0L            '%lb'\n"), 0L);
	serial.Printf(F("%%lb 1234L         '%lb'\n"), 1234L);
	serial.Printf(F("%%lb -1234L        '%lb'\n"), -1234L);
	serial.Printf(F("%%lb 2147483647L   '%lb'\n"), 2147483647L);
	serial.Printf(F("%%lb -2147483648L  '%lb'\n"), -2147483648L);
	serial.Printf(F("%%lb 4294967295L   '%lb'\n"), 4294967295L);
	serial.Println("---- %lo specifier ----");
	serial.Printf(F("%%lo 0L            '%lo'\n"), 0L);
	serial.Printf(F("%%lo 1234L         '%lo'\n"), 1234L);
	serial.Printf(F("%%lo -1234L        '%lo'\n"), -1234L);
	serial.Printf(F("%%lo 2147483647L   '%lo'\n"), 2147483647L);
	serial.Printf(F("%%lo -2147483648L  '%lo'\n"), -2147483648L);
	serial.Printf(F("%%lo 4294967295L   '%lo'\n"), 4294967295L);
	serial.Println("---- %lx specifier ----");
	serial.Printf(F("%%lx 0L            '%lx'\n"), 0L);
	serial.Printf(F("%%lx 1234L         '%lx'\n"), 1234L);
	serial.Printf(F("%%lx -1234L        '%lx'\n"), -1234L);
	serial.Printf(F("%%lx 2147483647L   '%lx'\n"), 2147483647L);
	serial.Printf(F("%%lx -2147483648L  '%lx'\n"), -2147483648L);
	serial.Printf(F("%%lx 4294967295L   '%lx'\n"), 4294967295L);
	//serial.Println("---- %f specifier ----");
	//serial.Printf(F("%%f 0              '%f'\n"), 0);
}

void loop()
{
}

