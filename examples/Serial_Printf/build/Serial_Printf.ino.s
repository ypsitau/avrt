	.file	"Serial_Printf.ino.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++11 (GCC) version 7.3.0 (avr)
 ; 	compiled by GNU C version 4.8.2, GMP version 5.0.2, MPFR version 3.1.0, MPC version 0.9, isl version none
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed: 
 ;  -I C:\Users\ypsit\AppData\Local\Arduino15\packages\arduino\hardware\avr\1.8.6\cores\arduino
 ;  -I C:\Users\ypsit\AppData\Local\Arduino15\packages\arduino\hardware\avr\1.8.6\variants\eightanaloginputs
 ;  -I C:\users\ypsit\source\Arduino\libraries\avrt -imultilib avr5
 ;  -iprefix c:\users\ypsit\appdata\local\arduino15\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7\bin\../lib/gcc/avr/7.3.0/
 ;  -D__AVR_ATmega328P__ -D__AVR_DEVICE_NAME__=atmega328p
 ;  -D F_CPU=16000000L -D ARDUINO=10607 -D ARDUINO_AVR_PRO
 ;  -D ARDUINO_ARCH_AVR
 ;  C:\users\ypsit\source\arduino\exp-avrt\Serial_Printf\build\sketch\Serial_Printf.ino.cpp
 ;  -mn-flash=1 -mmcu=avr5 -auxbase-strip build\Serial_Printf.ino.s -Os
 ;  -Wno-error=narrowing -w -std=gnu++11 -fverbose-asm -fpermissive
 ;  -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1
 ;  -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -falign-functions -falign-jumps -falign-labels -falign-loops
 ;  -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type
 ;  -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 ;  -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 ;  -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 ;  -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments
 ;  -fcommon -fcompare-elim -fcprop-registers -fcrossjumping
 ;  -fcse-follow-jumps -fdata-sections -fdefer-pop -fdevirtualize
 ;  -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
 ;  -feliminate-unused-debug-types -fexpensive-optimizations
 ;  -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse
 ;  -ffunction-sections -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
 ;  -fguess-branch-probability -fhoist-adjacent-loads -fident
 ;  -fif-conversion -fif-conversion2 -findirect-inlining -finline
 ;  -finline-atomics -finline-functions -finline-functions-called-once
 ;  -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
 ;  -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
 ;  -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
 ;  -fira-share-save-slots -fira-share-spill-slots
 ;  -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
 ;  -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
 ;  -fmath-errno -fmerge-constants -fmerge-debug-strings
 ;  -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 ;  -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
 ;  -freg-struct-return -freorder-blocks -freorder-functions
 ;  -frerun-cse-after-loop -fsched-critical-path-heuristic
 ;  -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 ;  -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 ;  -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 ;  -fsemantic-interposition -fshow-column -fshrink-wrap
 ;  -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
 ;  -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
 ;  -fstore-merging -fstrict-aliasing -fstrict-overflow
 ;  -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
 ;  -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 ;  -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 ;  -ftree-copy-prop -ftree-dce -ftree-dominator-opts -ftree-dse
 ;  -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im
 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 ;  -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
 ;  -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
 ;  -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
 ;  -fzero-initialized-in-bss

	.text
	.section	.text._ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh,"axG",@progbits,_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh,comdat
	.weak	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh
	.type	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh, @function
_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:779: 		while (!(UCSR0A & (0b1 << UDRE0))) ;
	lds r24,192	 ;  _2, MEM[(volatile uint8_t *)192B]
	sbrs r24,5	 ;  _2,
	rjmp .L2	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:780: 		UDR0 = data;
	sts 198,r22	 ;  MEM[(volatile uint8_t *)198B], data
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:781: 	}
	ret
	.size	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh, .-_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh
	.section	.text._ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv,"axG",@progbits,_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv,comdat
	.weak	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv
	.type	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv, @function
_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:788: 	}
	ldi r24,0	 ; 
/* epilogue start */
	ret
	.size	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv, .-_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv
	.section	.rodata.setup.str1.1,"aMS",@progbits,1
.LC0:
	.string	"---- %d specifier ----"
.LC1:
	.string	"---- %u specifier ----"
.LC2:
	.string	"---- %b specifier ----"
.LC3:
	.string	"---- %o specifier ----"
.LC4:
	.string	"---- %x specifier ----"
.LC5:
	.string	"---- %X specifier ----"
.LC6:
	.string	"---- %s specifier ----"
.LC7:
	.string	"Hello"
.LC8:
	.string	"---- width by * ----"
.LC9:
	.string	"---- %ld specifier ----"
.LC10:
	.string	"---- %lu specifier ----"
.LC11:
	.string	"---- %lb specifier ----"
.LC12:
	.string	"---- %lo specifier ----"
.LC13:
	.string	"---- %lx specifier ----"
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:755: 		UCSR0A =
	ldi r24,lo8(64)	 ;  tmp47,
	sts 192,r24	 ;  MEM[(volatile uint8_t *)192B], tmp47
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:759: 		UCSR0B =
	ldi r24,lo8(24)	 ;  tmp49,
	sts 193,r24	 ;  MEM[(volatile uint8_t *)193B], tmp49
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:767: 		UCSR0C =
	ldi r24,lo8(6)	 ;  tmp51,
	sts 194,r24	 ;  MEM[(volatile uint8_t *)194B], tmp51
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:773: 		uint16_t dataUBRR = LookupUBRR(baudRate, dataU2X);
	ldi r22,0	 ; 
	ldi r24,lo8(7)	 ; ,
	ldi r25,0	 ; 
	call _ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:774: 		UBRR0H = static_cast<uint8_t>((dataUBRR >> 8) & 0xff); // this must be written first
	sts 197,r25	 ;  MEM[(volatile uint8_t *)197B], dataUBRR
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:775: 		UBRR0L = static_cast<uint8_t>(dataUBRR & 0xff);
	sts 196,r24	 ;  MEM[(volatile uint8_t *)196B], dataUBRR
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:8: 	serial.Println("---- %d specifier ----");
	ldi r22,lo8(.LC0)	 ; ,
	ldi r23,hi8(.LC0)	 ; ,
	ldi r24,lo8(serial)	 ; ,
	ldi r25,hi8(serial)	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:9: 	serial.Printf(F("%%d 0              '%d'\n"), 0);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c)	 ;  tmp55,
	ldi r25,hi8(_ZZ5setupE3__c)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp55
	ldi r28,lo8(serial)	 ;  tmp59,
	ldi r29,hi8(serial)	 ; ,
	push r29	 ;  tmp24
	push r28	 ;  tmp25
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:10: 	serial.Printf(F("%%d 1234           '%d'\n"), 1234);
	ldi r24,lo8(4)	 ; ,
	mov r15,r24	 ;  tmp63,
	push r15	 ;  tmp63
	ldi r16,lo8(-46)	 ;  tmp64,
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c_0)	 ;  tmp65,
	ldi r25,hi8(_ZZ5setupE3__c_0)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp65
	push r29	 ;  tmp24
	push r28	 ;  tmp25
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:11: 	serial.Printf(F("%%d -1234          '%d'\n"), -1234);
	ldi r25,lo8(-5)	 ; ,
	mov r13,r25	 ;  tmp73,
	push r13	 ;  tmp73
	ldi r18,lo8(46)	 ; ,
	mov r14,r18	 ;  tmp74,
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c_1)	 ;  tmp75,
	ldi r25,hi8(_ZZ5setupE3__c_1)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp75
	push r29	 ;  tmp24
	push r28	 ;  tmp25
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:12: 	serial.Printf(F("%%d 32767          '%d'\n"), 32767);
	ldi r19,lo8(127)	 ; ,
	mov r12,r19	 ;  tmp83,
	push r12	 ;  tmp83
	ldi r17,lo8(-1)	 ;  tmp84,
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c_2)	 ;  tmp85,
	ldi r25,hi8(_ZZ5setupE3__c_2)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp85
	push r29	 ;  tmp24
	push r28	 ;  tmp25
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:13: 	serial.Printf(F("%%d -32768         '%d'\n"), -32768);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	ldi r20,lo8(-128)	 ; ,
	mov r9,r20	 ;  tmp95,
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c_3)	 ;  tmp96,
	ldi r25,hi8(_ZZ5setupE3__c_3)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp96
	push r29	 ;  tmp24
	push r28	 ;  tmp25
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:14: 	serial.Printf(F("%%d 32768          '%d'\n"), 32768);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push __zero_reg__
	push __zero_reg__
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c_4)	 ;  tmp105,
	ldi r25,hi8(_ZZ5setupE3__c_4)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp105
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:15: 	serial.Printf(F("%%d -32769         '%d'\n"), -32769);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c_5)	 ;  tmp117,
	ldi r25,hi8(_ZZ5setupE3__c_5)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp117
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:16: 	serial.Printf(F("%%8d 1234          '%8d'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c_6)	 ;  tmp127,
	ldi r25,hi8(_ZZ5setupE3__c_6)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp127
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:17: 	serial.Printf(F("%%8d -1234         '%8d'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c_7)	 ;  tmp137,
	ldi r25,hi8(_ZZ5setupE3__c_7)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp137
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:18: 	serial.Printf(F("%%-8d 1234         '%-8d'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c_8)	 ;  tmp147,
	ldi r25,hi8(_ZZ5setupE3__c_8)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp147
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:19: 	serial.Printf(F("%%-8d -1234        '%-8d'\n"), -1234);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,34	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c_9)	 ;  tmp157,
	ldi r25,hi8(_ZZ5setupE3__c_9)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp157
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:20: 	serial.Printf(F("%%08d 1234         '%08d'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__10_)	 ;  tmp167,
	ldi r25,hi8(_ZZ5setupE3__c__10_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp167
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:21: 	serial.Printf(F("%%08d -1234        '%08d'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__11_)	 ;  tmp177,
	ldi r25,hi8(_ZZ5setupE3__c__11_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp177
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:22: 	serial.Printf(F("%%-08d 1234        '%-08d'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__12_)	 ;  tmp187,
	ldi r25,hi8(_ZZ5setupE3__c__12_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp187
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:23: 	serial.Printf(F("%%-08d -1234       '%-08d'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__13_)	 ;  tmp197,
	ldi r25,hi8(_ZZ5setupE3__c__13_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp197
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:24: 	serial.Println("---- %u specifier ----");
	ldi r22,lo8(.LC1)	 ; ,
	ldi r23,hi8(.LC1)	 ; ,
	movw r24,r28	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:25: 	serial.Printf(F("%%u 0              '%u'\n"), 0);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__14_)	 ;  tmp205,
	ldi r25,hi8(_ZZ5setupE3__c__14_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp205
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:26: 	serial.Printf(F("%%u 1234           '%u'\n"), 1234);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__15_)	 ;  tmp215,
	ldi r25,hi8(_ZZ5setupE3__c__15_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp215
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:27: 	serial.Printf(F("%%u -1234          '%u'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__16_)	 ;  tmp225,
	ldi r25,hi8(_ZZ5setupE3__c__16_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp225
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:28: 	serial.Printf(F("%%u 32767          '%u'\n"), 32767);
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__17_)	 ;  tmp235,
	ldi r25,hi8(_ZZ5setupE3__c__17_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp235
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:29: 	serial.Printf(F("%%u -32768         '%u'\n"), -32768);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__18_)	 ;  tmp246,
	ldi r25,hi8(_ZZ5setupE3__c__18_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp246
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:30: 	serial.Printf(F("%%u 32768          '%u'\n"), 32768);
	push __zero_reg__
	push __zero_reg__
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__19_)	 ;  tmp255,
	ldi r25,hi8(_ZZ5setupE3__c__19_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp255
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:31: 	serial.Printf(F("%%u -32769         '%u'\n"), -32769);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,34	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__20_)	 ;  tmp267,
	ldi r25,hi8(_ZZ5setupE3__c__20_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp267
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:32: 	serial.Printf(F("%%u 65535          '%u'\n"), 65535);
	push __zero_reg__
	push __zero_reg__
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__21_)	 ;  tmp277,
	ldi r25,hi8(_ZZ5setupE3__c__21_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp277
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:33: 	serial.Printf(F("%%u 65536          '%u'\n"), 65536);
	push __zero_reg__
	clr r5	 ;  tmp285
	inc r5	 ;  tmp285
	push r5	 ;  tmp285
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__22_)	 ;  tmp286,
	ldi r25,hi8(_ZZ5setupE3__c__22_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp286
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:34: 	serial.Printf(F("%%8u 1234          '%8u'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__23_)	 ;  tmp296,
	ldi r25,hi8(_ZZ5setupE3__c__23_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp296
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:35: 	serial.Printf(F("%%8u -1234         '%8u'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__24_)	 ;  tmp306,
	ldi r25,hi8(_ZZ5setupE3__c__24_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp306
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:36: 	serial.Printf(F("%%-8u 1234         '%-8u'\n"), 1234);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__25_)	 ;  tmp316,
	ldi r25,hi8(_ZZ5setupE3__c__25_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp316
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:37: 	serial.Printf(F("%%-8u -1234        '%-8u'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__26_)	 ;  tmp326,
	ldi r25,hi8(_ZZ5setupE3__c__26_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp326
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:38: 	serial.Printf(F("%%08u 1234         '%08u'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__27_)	 ;  tmp336,
	ldi r25,hi8(_ZZ5setupE3__c__27_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp336
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:39: 	serial.Printf(F("%%08u -1234        '%08u'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__28_)	 ;  tmp346,
	ldi r25,hi8(_ZZ5setupE3__c__28_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp346
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:40: 	serial.Printf(F("%%-08u 1234        '%-08u'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__29_)	 ;  tmp356,
	ldi r25,hi8(_ZZ5setupE3__c__29_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp356
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:41: 	serial.Printf(F("%%-08u -1234       '%-08u'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__30_)	 ;  tmp366,
	ldi r25,hi8(_ZZ5setupE3__c__30_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp366
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:42: 	serial.Println("---- %b specifier ----");
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	ldi r22,lo8(.LC2)	 ; ,
	ldi r23,hi8(.LC2)	 ; ,
	movw r24,r28	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:43: 	serial.Printf(F("%%b 0              '%b'\n"), 0);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__31_)	 ;  tmp374,
	ldi r25,hi8(_ZZ5setupE3__c__31_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp374
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:44: 	serial.Printf(F("%%b 1234           '%b'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__32_)	 ;  tmp384,
	ldi r25,hi8(_ZZ5setupE3__c__32_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp384
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:45: 	serial.Printf(F("%%b -1234          '%b'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__33_)	 ;  tmp394,
	ldi r25,hi8(_ZZ5setupE3__c__33_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp394
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:46: 	serial.Printf(F("%%b 32767          '%b'\n"), 32767);
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__34_)	 ;  tmp404,
	ldi r25,hi8(_ZZ5setupE3__c__34_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp404
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:47: 	serial.Printf(F("%%b -32768         '%b'\n"), -32768);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__35_)	 ;  tmp415,
	ldi r25,hi8(_ZZ5setupE3__c__35_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp415
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:48: 	serial.Printf(F("%%b 32768          '%b'\n"), 32768);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push __zero_reg__
	push __zero_reg__
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__36_)	 ;  tmp424,
	ldi r25,hi8(_ZZ5setupE3__c__36_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp424
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:49: 	serial.Printf(F("%%b -32769         '%b'\n"), -32769);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__37_)	 ;  tmp436,
	ldi r25,hi8(_ZZ5setupE3__c__37_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp436
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:50: 	serial.Printf(F("%%b 65535          '%b'\n"), 65535);
	push __zero_reg__
	push __zero_reg__
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__38_)	 ;  tmp446,
	ldi r25,hi8(_ZZ5setupE3__c__38_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp446
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:51: 	serial.Printf(F("%%b 65536          '%b'\n"), 65536);
	push __zero_reg__
	push r5	 ;  tmp285
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__39_)	 ;  tmp455,
	ldi r25,hi8(_ZZ5setupE3__c__39_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp455
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:52: 	serial.Printf(F("%%18b 1234         '%18b'\n"), 1234);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__40_)	 ;  tmp465,
	ldi r25,hi8(_ZZ5setupE3__c__40_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp465
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:53: 	serial.Printf(F("%%18b -1234        '%18b'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__41_)	 ;  tmp475,
	ldi r25,hi8(_ZZ5setupE3__c__41_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp475
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:54: 	serial.Printf(F("%%-18b 1234        '%-18b'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__42_)	 ;  tmp485,
	ldi r25,hi8(_ZZ5setupE3__c__42_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp485
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:55: 	serial.Printf(F("%%-18b -1234       '%-18b'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__43_)	 ;  tmp495,
	ldi r25,hi8(_ZZ5setupE3__c__43_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp495
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:56: 	serial.Printf(F("%%018b 1234        '%018b'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__44_)	 ;  tmp505,
	ldi r25,hi8(_ZZ5setupE3__c__44_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp505
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:57: 	serial.Printf(F("%%018b -1234       '%018b'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__45_)	 ;  tmp515,
	ldi r25,hi8(_ZZ5setupE3__c__45_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp515
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:58: 	serial.Printf(F("%%-018b 1234       '%-018b'\n"), 1234);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__46_)	 ;  tmp525,
	ldi r25,hi8(_ZZ5setupE3__c__46_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp525
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:59: 	serial.Printf(F("%%-018b -1234      '%-018b'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__47_)	 ;  tmp535,
	ldi r25,hi8(_ZZ5setupE3__c__47_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp535
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:60: 	serial.Println("---- %o specifier ----");
	ldi r22,lo8(.LC3)	 ; ,
	ldi r23,hi8(.LC3)	 ; ,
	movw r24,r28	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:61: 	serial.Printf(F("%%o 0              '%o'\n"), 0);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__48_)	 ;  tmp543,
	ldi r25,hi8(_ZZ5setupE3__c__48_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp543
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:62: 	serial.Printf(F("%%o 1234           '%o'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__49_)	 ;  tmp553,
	ldi r25,hi8(_ZZ5setupE3__c__49_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp553
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:63: 	serial.Printf(F("%%o -1234          '%o'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__50_)	 ;  tmp563,
	ldi r25,hi8(_ZZ5setupE3__c__50_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp563
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:64: 	serial.Printf(F("%%o 32767          '%o'\n"), 32767);
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__51_)	 ;  tmp573,
	ldi r25,hi8(_ZZ5setupE3__c__51_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp573
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:65: 	serial.Printf(F("%%o -32768         '%o'\n"), -32768);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__52_)	 ;  tmp584,
	ldi r25,hi8(_ZZ5setupE3__c__52_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp584
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:66: 	serial.Printf(F("%%o 32768          '%o'\n"), 32768);
	push __zero_reg__
	push __zero_reg__
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__53_)	 ;  tmp593,
	ldi r25,hi8(_ZZ5setupE3__c__53_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp593
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:67: 	serial.Printf(F("%%o -32769         '%o'\n"), -32769);
	clr r6	 ;  tmp601
	dec r6	 ;  tmp601
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__54_)	 ;  tmp605,
	ldi r25,hi8(_ZZ5setupE3__c__54_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp605
	movw r10,r28	 ;  tmp609,
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:68: 	serial.Printf(F("%%o 65535          '%o'\n"), 65535);
	push __zero_reg__
	push __zero_reg__
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__55_)	 ;  tmp615,
	ldi r25,hi8(_ZZ5setupE3__c__55_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp615
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:69: 	serial.Printf(F("%%o 65536          '%o'\n"), 65536);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push __zero_reg__
	push r5	 ;  tmp285
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__56_)	 ;  tmp624,
	ldi r25,hi8(_ZZ5setupE3__c__56_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp624
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:70: 	serial.Printf(F("%%10o 1234         '%10o'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__57_)	 ;  tmp634,
	ldi r25,hi8(_ZZ5setupE3__c__57_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp634
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:71: 	serial.Printf(F("%%10o -1234        '%10o'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__58_)	 ;  tmp644,
	ldi r25,hi8(_ZZ5setupE3__c__58_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp644
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:72: 	serial.Printf(F("%%-10o 1234        '%-10o'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__59_)	 ;  tmp654,
	ldi r25,hi8(_ZZ5setupE3__c__59_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp654
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:73: 	serial.Printf(F("%%-10o -1234       '%-10o'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__60_)	 ;  tmp664,
	ldi r25,hi8(_ZZ5setupE3__c__60_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp664
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:74: 	serial.Printf(F("%%010o 1234        '%010o'\n"), 1234);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__61_)	 ;  tmp674,
	ldi r25,hi8(_ZZ5setupE3__c__61_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp674
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:75: 	serial.Printf(F("%%010o -1234       '%010o'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__62_)	 ;  tmp684,
	ldi r25,hi8(_ZZ5setupE3__c__62_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp684
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:76: 	serial.Printf(F("%%-010o 1234       '%-010o'\n"), 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	ldi r24,lo8(_ZZ5setupE3__c__63_)	 ;  tmp694,
	ldi r25,hi8(_ZZ5setupE3__c__63_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp694
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:77: 	serial.Printf(F("%%-010o -1234      '%-010o'\n"), -1234);
	push r13	 ;  tmp73
	push r14	 ;  tmp74
	ldi r24,lo8(_ZZ5setupE3__c__64_)	 ;  tmp704,
	ldi r25,hi8(_ZZ5setupE3__c__64_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp704
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:78: 	serial.Println("---- %x specifier ----");
	ldi r22,lo8(.LC4)	 ; ,
	ldi r23,hi8(.LC4)	 ; ,
	movw r24,r28	 ; , tmp10
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:79: 	serial.Printf(F("%%x 0              '%x'\n"), 0);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__65_)	 ;  tmp712,
	ldi r25,hi8(_ZZ5setupE3__c__65_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp712
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:80: 	serial.Printf(F("%%x 0x12ab         '%x'\n"), 0x12ab);
	ldi r21,lo8(18)	 ; ,
	mov r7,r21	 ;  tmp720,
	push r7	 ;  tmp720
	ldi r22,lo8(-85)	 ; ,
	mov r8,r22	 ;  tmp721,
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__66_)	 ;  tmp722,
	ldi r25,hi8(_ZZ5setupE3__c__66_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp722
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:81: 	serial.Printf(F("%%x -0x12ab        '%x'\n"), -0x12ab);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	ldi r23,lo8(-19)	 ; ,
	mov r13,r23	 ;  tmp730,
	push r13	 ;  tmp730
	ldi r30,lo8(85)	 ; ,
	mov r14,r30	 ;  tmp731,
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__67_)	 ;  tmp732,
	ldi r25,hi8(_ZZ5setupE3__c__67_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp732
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:82: 	serial.Printf(F("%%x 32767          '%x'\n"), 32767);
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__68_)	 ;  tmp742,
	ldi r25,hi8(_ZZ5setupE3__c__68_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp742
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:83: 	serial.Printf(F("%%x -32768         '%x'\n"), -32768);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__69_)	 ;  tmp753,
	ldi r25,hi8(_ZZ5setupE3__c__69_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp753
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:84: 	serial.Printf(F("%%x 32768          '%x'\n"), 32768);
	push __zero_reg__
	push __zero_reg__
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__70_)	 ;  tmp762,
	ldi r25,hi8(_ZZ5setupE3__c__70_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp762
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:85: 	serial.Printf(F("%%x -32769         '%x'\n"), -32769);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__71_)	 ;  tmp774,
	ldi r25,hi8(_ZZ5setupE3__c__71_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp774
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:86: 	serial.Printf(F("%%x 65535          '%x'\n"), 65535);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push __zero_reg__
	push __zero_reg__
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__72_)	 ;  tmp784,
	ldi r25,hi8(_ZZ5setupE3__c__72_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp784
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:87: 	serial.Printf(F("%%x 65536          '%x'\n"), 65536);
	push __zero_reg__
	push r5	 ;  tmp285
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__73_)	 ;  tmp793,
	ldi r25,hi8(_ZZ5setupE3__c__73_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp793
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:88: 	serial.Printf(F("%%8x 0x12ab        '%8x'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__74_)	 ;  tmp803,
	ldi r25,hi8(_ZZ5setupE3__c__74_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp803
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:89: 	serial.Printf(F("%%8x -0x12ab       '%8x'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__75_)	 ;  tmp813,
	ldi r25,hi8(_ZZ5setupE3__c__75_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp813
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:90: 	serial.Printf(F("%%-8x 0x12ab       '%-8x'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__76_)	 ;  tmp823,
	ldi r25,hi8(_ZZ5setupE3__c__76_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp823
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:91: 	serial.Printf(F("%%-8x -0x12ab      '%-8x'\n"), -0x12ab);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,34	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__77_)	 ;  tmp833,
	ldi r25,hi8(_ZZ5setupE3__c__77_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp833
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:92: 	serial.Printf(F("%%08x 0x12ab       '%08x'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__78_)	 ;  tmp843,
	ldi r25,hi8(_ZZ5setupE3__c__78_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp843
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:93: 	serial.Printf(F("%%08x -0x12ab      '%08x'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__79_)	 ;  tmp853,
	ldi r25,hi8(_ZZ5setupE3__c__79_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp853
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:94: 	serial.Printf(F("%%-08x 0x12ab      '%-08x'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__80_)	 ;  tmp863,
	ldi r25,hi8(_ZZ5setupE3__c__80_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp863
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:95: 	serial.Printf(F("%%-08x -0x12ab     '%-08x'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__81_)	 ;  tmp873,
	ldi r25,hi8(_ZZ5setupE3__c__81_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp873
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:96: 	serial.Println("---- %X specifier ----");
	ldi r22,lo8(.LC5)	 ; ,
	ldi r23,hi8(.LC5)	 ; ,
	movw r24,r28	 ; , tmp10
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:97: 	serial.Printf(F("%%X 0              '%X'\n"), 0);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__82_)	 ;  tmp881,
	ldi r25,hi8(_ZZ5setupE3__c__82_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp881
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:98: 	serial.Printf(F("%%X 0x12ab         '%X'\n"), 0x12ab);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__83_)	 ;  tmp891,
	ldi r25,hi8(_ZZ5setupE3__c__83_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp891
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:99: 	serial.Printf(F("%%X -0x12ab        '%X'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__84_)	 ;  tmp901,
	ldi r25,hi8(_ZZ5setupE3__c__84_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp901
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:100: 	serial.Printf(F("%%X 32767          '%X'\n"), 32767);
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__85_)	 ;  tmp911,
	ldi r25,hi8(_ZZ5setupE3__c__85_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp911
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:101: 	serial.Printf(F("%%X -32768         '%X'\n"), -32768);
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__86_)	 ;  tmp922,
	ldi r25,hi8(_ZZ5setupE3__c__86_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp922
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:102: 	serial.Printf(F("%%X 32768          '%X'\n"), 32768);
	push __zero_reg__
	push __zero_reg__
	push r9	 ;  tmp95
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__87_)	 ;  tmp931,
	ldi r25,hi8(_ZZ5setupE3__c__87_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp931
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:103: 	serial.Printf(F("%%X -32769         '%X'\n"), -32769);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,34	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	push r12	 ;  tmp83
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__88_)	 ;  tmp943,
	ldi r25,hi8(_ZZ5setupE3__c__88_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp943
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:104: 	serial.Printf(F("%%X 65535          '%X'\n"), 65535);
	push __zero_reg__
	push __zero_reg__
	push r17	 ;  tmp84
	push r17	 ;  tmp84
	ldi r24,lo8(_ZZ5setupE3__c__89_)	 ;  tmp953,
	ldi r25,hi8(_ZZ5setupE3__c__89_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp953
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:105: 	serial.Printf(F("%%X 65536          '%X'\n"), 65536);
	push __zero_reg__
	push r5	 ;  tmp285
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__90_)	 ;  tmp962,
	ldi r25,hi8(_ZZ5setupE3__c__90_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp962
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:106: 	serial.Printf(F("%%8X 0x12ab        '%8X'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__91_)	 ;  tmp972,
	ldi r25,hi8(_ZZ5setupE3__c__91_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp972
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:107: 	serial.Printf(F("%%8X -0x12ab       '%8X'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__92_)	 ;  tmp982,
	ldi r25,hi8(_ZZ5setupE3__c__92_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp982
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:108: 	serial.Printf(F("%%-8X 0x12ab       '%-8X'\n"), 0x12ab);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__93_)	 ;  tmp992,
	ldi r25,hi8(_ZZ5setupE3__c__93_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp992
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:109: 	serial.Printf(F("%%-8X -0x12ab      '%-8X'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__94_)	 ;  tmp1002,
	ldi r25,hi8(_ZZ5setupE3__c__94_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1002
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:110: 	serial.Printf(F("%%08X 0x12ab       '%08X'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__95_)	 ;  tmp1012,
	ldi r25,hi8(_ZZ5setupE3__c__95_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1012
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:111: 	serial.Printf(F("%%08X -0x12ab      '%08X'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__96_)	 ;  tmp1022,
	ldi r25,hi8(_ZZ5setupE3__c__96_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1022
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:112: 	serial.Printf(F("%%-08X 0x12ab      '%-08X'\n"), 0x12ab);
	push r7	 ;  tmp720
	push r8	 ;  tmp721
	ldi r24,lo8(_ZZ5setupE3__c__97_)	 ;  tmp1032,
	ldi r25,hi8(_ZZ5setupE3__c__97_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1032
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:113: 	serial.Printf(F("%%-08X -0x12ab     '%-08X'\n"), -0x12ab);
	push r13	 ;  tmp730
	push r14	 ;  tmp731
	ldi r24,lo8(_ZZ5setupE3__c__98_)	 ;  tmp1042,
	ldi r25,hi8(_ZZ5setupE3__c__98_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1042
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:114: 	serial.Println("---- %s specifier ----");
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	ldi r22,lo8(.LC6)	 ; ,
	ldi r23,hi8(.LC6)	 ; ,
	movw r24,r28	 ; , tmp10
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:115: 	serial.Printf(F("%%s \"Hello\"        '%s'\n"), "Hello");
	ldi r31,lo8(.LC7)	 ; ,
	mov r12,r31	 ;  tmp1050,
	ldi r31,hi8(.LC7)	 ; ,
	mov r13,r31	 ; ,
	push r13	 ; 
	push r12	 ;  tmp1050
	ldi r24,lo8(_ZZ5setupE3__c__99_)	 ;  tmp1054,
	ldi r25,hi8(_ZZ5setupE3__c__99_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1054
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:116: 	serial.Printf(F("%%8s \"Hello\"       '%8s'\n"), "Hello");
	push r13	 ; 
	push r12	 ;  tmp1050
	ldi r24,lo8(_ZZ5setupE3__c__100_)	 ;  tmp1066,
	ldi r25,hi8(_ZZ5setupE3__c__100_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1066
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:117: 	serial.Printf(F("%%-8s \"Hello\"      '%-8s'\n"), "Hello");
	push r13	 ; 
	push r12	 ;  tmp1050
	ldi r24,lo8(_ZZ5setupE3__c__101_)	 ;  tmp1078,
	ldi r25,hi8(_ZZ5setupE3__c__101_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1078
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:118: 	serial.Println("---- width by * ----");
	ldi r22,lo8(.LC8)	 ; ,
	ldi r23,hi8(.LC8)	 ; ,
	movw r24,r28	 ; , tmp10
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:119: 	serial.Printf(F("%%*d 10, 1234      '%*d'\n"), 10, 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	push __zero_reg__
	ldi r24,lo8(10)	 ;  tmp1088,
	push r24	 ;  tmp1088
	ldi r24,lo8(_ZZ5setupE3__c__102_)	 ;  tmp1089,
	ldi r25,hi8(_ZZ5setupE3__c__102_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1089
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:120: 	serial.Printf(F("%%*d -10, 1234     '%*d'\n"), -10, 1234);
	push r15	 ;  tmp63
	push r16	 ;  tmp64
	push r17	 ;  tmp84
	ldi r24,lo8(-10)	 ;  tmp1100,
	push r24	 ;  tmp1100
	ldi r24,lo8(_ZZ5setupE3__c__103_)	 ;  tmp1101,
	ldi r25,hi8(_ZZ5setupE3__c__103_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1101
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:121: 	serial.Println("---- %ld specifier ----");
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,34	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	ldi r22,lo8(.LC9)	 ; ,
	ldi r23,hi8(.LC9)	 ; ,
	movw r24,r28	 ; , tmp10
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:122: 	serial.Printf(F("%%ld 0L            '%ld'\n"), 0L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__104_)	 ;  tmp1109,
	ldi r25,hi8(_ZZ5setupE3__c__104_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1109
	push r29	 ;  tmp25
	push r28	 ;  tmp24
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:123: 	serial.Printf(F("%%ld 1234L         '%ld'\n"), 1234L);
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(4)	 ;  tmp632,
	push r24	 ;  tmp632
	ldi r24,lo8(-46)	 ;  tmp633,
	push r24	 ;  tmp633
	ldi r24,lo8(_ZZ5setupE3__c__105_)	 ;  tmp1119,
	ldi r25,hi8(_ZZ5setupE3__c__105_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1119
	push r11	 ; 
	push r28	 ;  tmp609
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:124: 	serial.Printf(F("%%ld -1234L        '%ld'\n"), -1234L);
	push r6	 ;  tmp601
	push r6	 ;  tmp601
	ldi r24,lo8(-5)	 ;  tmp642,
	push r24	 ;  tmp642
	ldi r24,lo8(46)	 ;  tmp643,
	push r24	 ;  tmp643
	ldi r24,lo8(_ZZ5setupE3__c__106_)	 ;  tmp1131,
	ldi r25,hi8(_ZZ5setupE3__c__106_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1131
	push r11	 ; 
	push r28	 ;  tmp609
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:125: 	serial.Printf(F("%%ld 2147483647L   '%ld'\n"), 2147483647L);
	ldi r24,lo8(127)	 ;  tmp603,
	push r24	 ;  tmp603
	push r6	 ;  tmp601
	push r6	 ;  tmp601
	push r6	 ;  tmp601
	ldi r24,lo8(_ZZ5setupE3__c__107_)	 ;  tmp1143,
	ldi r25,hi8(_ZZ5setupE3__c__107_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1143
	push r11	 ; 
	push r28	 ;  tmp609
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:126: 	serial.Printf(F("%%ld -2147483648L  '%ld'\n"), -2147483648L);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r6	 ;  tmp601
	push r6	 ;  tmp601
	push r6	 ;  tmp601
	ldi r28,lo8(-1)	 ;  tmp1154,
	push r28	 ;  tmp1154
	ldi r29,lo8(-128)	 ;  tmp1155,
	push r29	 ;  tmp1155
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__108_)	 ;  tmp1156,
	ldi r25,hi8(_ZZ5setupE3__c__108_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1156
	movw r16,r10	 ;  tmp1160,
	push r17	 ; 
	push r10	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:127: 	serial.Println("---- %lu specifier ----");
	ldi r22,lo8(.LC10)	 ; ,
	ldi r23,hi8(.LC10)	 ; ,
	movw r24,r10	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:128: 	serial.Printf(F("%%lu 0L            '%lu'\n"), 0L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__109_)	 ;  tmp1164,
	ldi r25,hi8(_ZZ5setupE3__c__109_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1164
	push r17	 ; 
	push r10	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:129: 	serial.Printf(F("%%lu 1234L         '%lu'\n"), 1234L);
	push __zero_reg__
	push __zero_reg__
	ldi r26,lo8(4)	 ; ,
	mov r11,r26	 ;  tmp1172,
	push r11	 ;  tmp1172
	ldi r27,lo8(-46)	 ; ,
	mov r12,r27	 ;  tmp1173,
	push r12	 ;  tmp1173
	ldi r24,lo8(_ZZ5setupE3__c__110_)	 ;  tmp1174,
	ldi r25,hi8(_ZZ5setupE3__c__110_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1174
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:130: 	serial.Printf(F("%%lu -1234L        '%lu'\n"), -1234L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(-5)	 ; ,
	mov r13,r24	 ;  tmp1184,
	push r13	 ;  tmp1184
	ldi r25,lo8(46)	 ; ,
	mov r14,r25	 ;  tmp1185,
	push r14	 ;  tmp1185
	ldi r24,lo8(_ZZ5setupE3__c__111_)	 ;  tmp1186,
	ldi r25,hi8(_ZZ5setupE3__c__111_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1186
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:131: 	serial.Printf(F("%%lu 2147483647L   '%lu'\n"), 2147483647L);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	ldi r18,lo8(127)	 ; ,
	mov r15,r18	 ;  tmp1194,
	push r15	 ;  tmp1194
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__112_)	 ;  tmp1198,
	ldi r25,hi8(_ZZ5setupE3__c__112_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1198
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:132: 	serial.Printf(F("%%lu -2147483648L  '%lu'\n"), -2147483648L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r29	 ;  tmp1155
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__113_)	 ;  tmp1211,
	ldi r25,hi8(_ZZ5setupE3__c__113_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1211
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:133: 	serial.Printf(F("%%lu 4294967295L   '%lu'\n"), 4294967295L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__114_)	 ;  tmp1223,
	ldi r25,hi8(_ZZ5setupE3__c__114_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1223
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:134: 	serial.Println("---- %lb specifier ----");
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	ldi r22,lo8(.LC11)	 ; ,
	ldi r23,hi8(.LC11)	 ; ,
	movw r24,r16	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:135: 	serial.Printf(F("%%lb 0L            '%lb'\n"), 0L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__115_)	 ;  tmp1231,
	ldi r25,hi8(_ZZ5setupE3__c__115_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1231
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:136: 	serial.Printf(F("%%lb 1234L         '%lb'\n"), 1234L);
	push __zero_reg__
	push __zero_reg__
	push r11	 ;  tmp1172
	push r12	 ;  tmp1173
	ldi r24,lo8(_ZZ5setupE3__c__116_)	 ;  tmp1241,
	ldi r25,hi8(_ZZ5setupE3__c__116_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1241
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:137: 	serial.Printf(F("%%lb -1234L        '%lb'\n"), -1234L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r13	 ;  tmp1184
	push r14	 ;  tmp1185
	ldi r24,lo8(_ZZ5setupE3__c__117_)	 ;  tmp1253,
	ldi r25,hi8(_ZZ5setupE3__c__117_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1253
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:138: 	serial.Printf(F("%%lb 2147483647L   '%lb'\n"), 2147483647L);
	push r15	 ;  tmp1194
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__118_)	 ;  tmp1265,
	ldi r25,hi8(_ZZ5setupE3__c__118_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1265
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:139: 	serial.Printf(F("%%lb -2147483648L  '%lb'\n"), -2147483648L);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r29	 ;  tmp1155
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__119_)	 ;  tmp1278,
	ldi r25,hi8(_ZZ5setupE3__c__119_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1278
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:140: 	serial.Printf(F("%%lb 4294967295L   '%lb'\n"), 4294967295L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__120_)	 ;  tmp1290,
	ldi r25,hi8(_ZZ5setupE3__c__120_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1290
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:141: 	serial.Println("---- %lo specifier ----");
	ldi r22,lo8(.LC12)	 ; ,
	ldi r23,hi8(.LC12)	 ; ,
	movw r24,r16	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:142: 	serial.Printf(F("%%lo 0L            '%lo'\n"), 0L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__121_)	 ;  tmp1298,
	ldi r25,hi8(_ZZ5setupE3__c__121_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1298
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:143: 	serial.Printf(F("%%lo 1234L         '%lo'\n"), 1234L);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push __zero_reg__
	push __zero_reg__
	push r11	 ;  tmp1172
	push r12	 ;  tmp1173
	ldi r24,lo8(_ZZ5setupE3__c__122_)	 ;  tmp1308,
	ldi r25,hi8(_ZZ5setupE3__c__122_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1308
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:144: 	serial.Printf(F("%%lo -1234L        '%lo'\n"), -1234L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r13	 ;  tmp1184
	push r14	 ;  tmp1185
	ldi r24,lo8(_ZZ5setupE3__c__123_)	 ;  tmp1320,
	ldi r25,hi8(_ZZ5setupE3__c__123_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1320
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:145: 	serial.Printf(F("%%lo 2147483647L   '%lo'\n"), 2147483647L);
	push r15	 ;  tmp1194
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__124_)	 ;  tmp1332,
	ldi r25,hi8(_ZZ5setupE3__c__124_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1332
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:146: 	serial.Printf(F("%%lo -2147483648L  '%lo'\n"), -2147483648L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r29	 ;  tmp1155
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__125_)	 ;  tmp1345,
	ldi r25,hi8(_ZZ5setupE3__c__125_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1345
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:147: 	serial.Printf(F("%%lo 4294967295L   '%lo'\n"), 4294967295L);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__126_)	 ;  tmp1357,
	ldi r25,hi8(_ZZ5setupE3__c__126_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1357
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:148: 	serial.Println("---- %lx specifier ----");
	ldi r22,lo8(.LC13)	 ; ,
	ldi r23,hi8(.LC13)	 ; ,
	movw r24,r16	 ; ,
	call _ZN4avrt6Stream7PrintlnEPKc	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:149: 	serial.Printf(F("%%lx 0L            '%lx'\n"), 0L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__127_)	 ;  tmp1365,
	ldi r25,hi8(_ZZ5setupE3__c__127_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1365
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:150: 	serial.Printf(F("%%lx 1234L         '%lx'\n"), 1234L);
	push __zero_reg__
	push __zero_reg__
	push r11	 ;  tmp1172
	push r12	 ;  tmp1173
	ldi r24,lo8(_ZZ5setupE3__c__128_)	 ;  tmp1375,
	ldi r25,hi8(_ZZ5setupE3__c__128_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1375
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:151: 	serial.Printf(F("%%lx -1234L        '%lx'\n"), -1234L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r13	 ;  tmp1184
	push r14	 ;  tmp1185
	ldi r24,lo8(_ZZ5setupE3__c__129_)	 ;  tmp1387,
	ldi r25,hi8(_ZZ5setupE3__c__129_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1387
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:152: 	serial.Printf(F("%%lx 2147483647L   '%lx'\n"), 2147483647L);
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,36	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
	push r15	 ;  tmp1194
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__130_)	 ;  tmp1399,
	ldi r25,hi8(_ZZ5setupE3__c__130_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1399
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:153: 	serial.Printf(F("%%lx -2147483648L  '%lx'\n"), -2147483648L);
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r29	 ;  tmp1155
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(_ZZ5setupE3__c__131_)	 ;  tmp1412,
	ldi r25,hi8(_ZZ5setupE3__c__131_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1412
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:154: 	serial.Printf(F("%%lx 4294967295L   '%lx'\n"), 4294967295L);
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	push r28	 ;  tmp1154
	ldi r24,lo8(_ZZ5setupE3__c__132_)	 ;  tmp1424,
	ldi r25,hi8(_ZZ5setupE3__c__132_)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp1424
	push r17	 ; 
	push r16	 ;  tmp1160
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:157: }
	in r24,__SP_L__	 ; 
	in r25,__SP_H__	 ; 
	adiw r24,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r24	 ; 
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	ret
	.size	setup, .-setup
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:161: }
	ret
	.size	loop, .-loop
	.section	.text.startup._GLOBAL__sub_I_serial,"ax",@progbits
	.type	_GLOBAL__sub_I_serial, @function
_GLOBAL__sub_I_serial:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt/avrt.h:748: 	Serial0() {}
	ldi r24,lo8(_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE+4)	 ;  tmp43,
	ldi r25,hi8(_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE+4)	 ; ,
	sts serial+1,r25	 ;  serial.D.4791.D.4663._vptr.Stream, tmp43
	sts serial,r24	 ;  serial.D.4791.D.4663._vptr.Stream, tmp43
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\exp-avrt\Serial_Printf\Serial_Printf.ino:161: }
	ret
	.size	_GLOBAL__sub_I_serial, .-_GLOBAL__sub_I_serial
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_serial)
	.weak	_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE
	.section	.rodata._ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE,"aG",@progbits,_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE,comdat
	.type	_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE, @object
	.size	_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE, 8
_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE:
	.word	0
	.word	0
	.word	gs(_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh)
	.word	gs(_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv)
	.section	.progmem.data._ZZ5setupE3__c__132_,"a",@progbits
	.type	_ZZ5setupE3__c__132_, @object
	.size	_ZZ5setupE3__c__132_, 26
_ZZ5setupE3__c__132_:
	.string	"%%lx 4294967295L   '%lx'\n"
	.section	.progmem.data._ZZ5setupE3__c__131_,"a",@progbits
	.type	_ZZ5setupE3__c__131_, @object
	.size	_ZZ5setupE3__c__131_, 26
_ZZ5setupE3__c__131_:
	.string	"%%lx -2147483648L  '%lx'\n"
	.section	.progmem.data._ZZ5setupE3__c__130_,"a",@progbits
	.type	_ZZ5setupE3__c__130_, @object
	.size	_ZZ5setupE3__c__130_, 26
_ZZ5setupE3__c__130_:
	.string	"%%lx 2147483647L   '%lx'\n"
	.section	.progmem.data._ZZ5setupE3__c__129_,"a",@progbits
	.type	_ZZ5setupE3__c__129_, @object
	.size	_ZZ5setupE3__c__129_, 26
_ZZ5setupE3__c__129_:
	.string	"%%lx -1234L        '%lx'\n"
	.section	.progmem.data._ZZ5setupE3__c__128_,"a",@progbits
	.type	_ZZ5setupE3__c__128_, @object
	.size	_ZZ5setupE3__c__128_, 26
_ZZ5setupE3__c__128_:
	.string	"%%lx 1234L         '%lx'\n"
	.section	.progmem.data._ZZ5setupE3__c__127_,"a",@progbits
	.type	_ZZ5setupE3__c__127_, @object
	.size	_ZZ5setupE3__c__127_, 26
_ZZ5setupE3__c__127_:
	.string	"%%lx 0L            '%lx'\n"
	.section	.progmem.data._ZZ5setupE3__c__126_,"a",@progbits
	.type	_ZZ5setupE3__c__126_, @object
	.size	_ZZ5setupE3__c__126_, 26
_ZZ5setupE3__c__126_:
	.string	"%%lo 4294967295L   '%lo'\n"
	.section	.progmem.data._ZZ5setupE3__c__125_,"a",@progbits
	.type	_ZZ5setupE3__c__125_, @object
	.size	_ZZ5setupE3__c__125_, 26
_ZZ5setupE3__c__125_:
	.string	"%%lo -2147483648L  '%lo'\n"
	.section	.progmem.data._ZZ5setupE3__c__124_,"a",@progbits
	.type	_ZZ5setupE3__c__124_, @object
	.size	_ZZ5setupE3__c__124_, 26
_ZZ5setupE3__c__124_:
	.string	"%%lo 2147483647L   '%lo'\n"
	.section	.progmem.data._ZZ5setupE3__c__123_,"a",@progbits
	.type	_ZZ5setupE3__c__123_, @object
	.size	_ZZ5setupE3__c__123_, 26
_ZZ5setupE3__c__123_:
	.string	"%%lo -1234L        '%lo'\n"
	.section	.progmem.data._ZZ5setupE3__c__122_,"a",@progbits
	.type	_ZZ5setupE3__c__122_, @object
	.size	_ZZ5setupE3__c__122_, 26
_ZZ5setupE3__c__122_:
	.string	"%%lo 1234L         '%lo'\n"
	.section	.progmem.data._ZZ5setupE3__c__121_,"a",@progbits
	.type	_ZZ5setupE3__c__121_, @object
	.size	_ZZ5setupE3__c__121_, 26
_ZZ5setupE3__c__121_:
	.string	"%%lo 0L            '%lo'\n"
	.section	.progmem.data._ZZ5setupE3__c__120_,"a",@progbits
	.type	_ZZ5setupE3__c__120_, @object
	.size	_ZZ5setupE3__c__120_, 26
_ZZ5setupE3__c__120_:
	.string	"%%lb 4294967295L   '%lb'\n"
	.section	.progmem.data._ZZ5setupE3__c__119_,"a",@progbits
	.type	_ZZ5setupE3__c__119_, @object
	.size	_ZZ5setupE3__c__119_, 26
_ZZ5setupE3__c__119_:
	.string	"%%lb -2147483648L  '%lb'\n"
	.section	.progmem.data._ZZ5setupE3__c__118_,"a",@progbits
	.type	_ZZ5setupE3__c__118_, @object
	.size	_ZZ5setupE3__c__118_, 26
_ZZ5setupE3__c__118_:
	.string	"%%lb 2147483647L   '%lb'\n"
	.section	.progmem.data._ZZ5setupE3__c__117_,"a",@progbits
	.type	_ZZ5setupE3__c__117_, @object
	.size	_ZZ5setupE3__c__117_, 26
_ZZ5setupE3__c__117_:
	.string	"%%lb -1234L        '%lb'\n"
	.section	.progmem.data._ZZ5setupE3__c__116_,"a",@progbits
	.type	_ZZ5setupE3__c__116_, @object
	.size	_ZZ5setupE3__c__116_, 26
_ZZ5setupE3__c__116_:
	.string	"%%lb 1234L         '%lb'\n"
	.section	.progmem.data._ZZ5setupE3__c__115_,"a",@progbits
	.type	_ZZ5setupE3__c__115_, @object
	.size	_ZZ5setupE3__c__115_, 26
_ZZ5setupE3__c__115_:
	.string	"%%lb 0L            '%lb'\n"
	.section	.progmem.data._ZZ5setupE3__c__114_,"a",@progbits
	.type	_ZZ5setupE3__c__114_, @object
	.size	_ZZ5setupE3__c__114_, 26
_ZZ5setupE3__c__114_:
	.string	"%%lu 4294967295L   '%lu'\n"
	.section	.progmem.data._ZZ5setupE3__c__113_,"a",@progbits
	.type	_ZZ5setupE3__c__113_, @object
	.size	_ZZ5setupE3__c__113_, 26
_ZZ5setupE3__c__113_:
	.string	"%%lu -2147483648L  '%lu'\n"
	.section	.progmem.data._ZZ5setupE3__c__112_,"a",@progbits
	.type	_ZZ5setupE3__c__112_, @object
	.size	_ZZ5setupE3__c__112_, 26
_ZZ5setupE3__c__112_:
	.string	"%%lu 2147483647L   '%lu'\n"
	.section	.progmem.data._ZZ5setupE3__c__111_,"a",@progbits
	.type	_ZZ5setupE3__c__111_, @object
	.size	_ZZ5setupE3__c__111_, 26
_ZZ5setupE3__c__111_:
	.string	"%%lu -1234L        '%lu'\n"
	.section	.progmem.data._ZZ5setupE3__c__110_,"a",@progbits
	.type	_ZZ5setupE3__c__110_, @object
	.size	_ZZ5setupE3__c__110_, 26
_ZZ5setupE3__c__110_:
	.string	"%%lu 1234L         '%lu'\n"
	.section	.progmem.data._ZZ5setupE3__c__109_,"a",@progbits
	.type	_ZZ5setupE3__c__109_, @object
	.size	_ZZ5setupE3__c__109_, 26
_ZZ5setupE3__c__109_:
	.string	"%%lu 0L            '%lu'\n"
	.section	.progmem.data._ZZ5setupE3__c__108_,"a",@progbits
	.type	_ZZ5setupE3__c__108_, @object
	.size	_ZZ5setupE3__c__108_, 26
_ZZ5setupE3__c__108_:
	.string	"%%ld -2147483648L  '%ld'\n"
	.section	.progmem.data._ZZ5setupE3__c__107_,"a",@progbits
	.type	_ZZ5setupE3__c__107_, @object
	.size	_ZZ5setupE3__c__107_, 26
_ZZ5setupE3__c__107_:
	.string	"%%ld 2147483647L   '%ld'\n"
	.section	.progmem.data._ZZ5setupE3__c__106_,"a",@progbits
	.type	_ZZ5setupE3__c__106_, @object
	.size	_ZZ5setupE3__c__106_, 26
_ZZ5setupE3__c__106_:
	.string	"%%ld -1234L        '%ld'\n"
	.section	.progmem.data._ZZ5setupE3__c__105_,"a",@progbits
	.type	_ZZ5setupE3__c__105_, @object
	.size	_ZZ5setupE3__c__105_, 26
_ZZ5setupE3__c__105_:
	.string	"%%ld 1234L         '%ld'\n"
	.section	.progmem.data._ZZ5setupE3__c__104_,"a",@progbits
	.type	_ZZ5setupE3__c__104_, @object
	.size	_ZZ5setupE3__c__104_, 26
_ZZ5setupE3__c__104_:
	.string	"%%ld 0L            '%ld'\n"
	.section	.progmem.data._ZZ5setupE3__c__103_,"a",@progbits
	.type	_ZZ5setupE3__c__103_, @object
	.size	_ZZ5setupE3__c__103_, 26
_ZZ5setupE3__c__103_:
	.string	"%%*d -10, 1234     '%*d'\n"
	.section	.progmem.data._ZZ5setupE3__c__102_,"a",@progbits
	.type	_ZZ5setupE3__c__102_, @object
	.size	_ZZ5setupE3__c__102_, 26
_ZZ5setupE3__c__102_:
	.string	"%%*d 10, 1234      '%*d'\n"
	.section	.progmem.data._ZZ5setupE3__c__101_,"a",@progbits
	.type	_ZZ5setupE3__c__101_, @object
	.size	_ZZ5setupE3__c__101_, 27
_ZZ5setupE3__c__101_:
	.string	"%%-8s \"Hello\"      '%-8s'\n"
	.section	.progmem.data._ZZ5setupE3__c__100_,"a",@progbits
	.type	_ZZ5setupE3__c__100_, @object
	.size	_ZZ5setupE3__c__100_, 26
_ZZ5setupE3__c__100_:
	.string	"%%8s \"Hello\"       '%8s'\n"
	.section	.progmem.data._ZZ5setupE3__c__99_,"a",@progbits
	.type	_ZZ5setupE3__c__99_, @object
	.size	_ZZ5setupE3__c__99_, 25
_ZZ5setupE3__c__99_:
	.string	"%%s \"Hello\"        '%s'\n"
	.section	.progmem.data._ZZ5setupE3__c__98_,"a",@progbits
	.type	_ZZ5setupE3__c__98_, @object
	.size	_ZZ5setupE3__c__98_, 28
_ZZ5setupE3__c__98_:
	.string	"%%-08X -0x12ab     '%-08X'\n"
	.section	.progmem.data._ZZ5setupE3__c__97_,"a",@progbits
	.type	_ZZ5setupE3__c__97_, @object
	.size	_ZZ5setupE3__c__97_, 28
_ZZ5setupE3__c__97_:
	.string	"%%-08X 0x12ab      '%-08X'\n"
	.section	.progmem.data._ZZ5setupE3__c__96_,"a",@progbits
	.type	_ZZ5setupE3__c__96_, @object
	.size	_ZZ5setupE3__c__96_, 27
_ZZ5setupE3__c__96_:
	.string	"%%08X -0x12ab      '%08X'\n"
	.section	.progmem.data._ZZ5setupE3__c__95_,"a",@progbits
	.type	_ZZ5setupE3__c__95_, @object
	.size	_ZZ5setupE3__c__95_, 27
_ZZ5setupE3__c__95_:
	.string	"%%08X 0x12ab       '%08X'\n"
	.section	.progmem.data._ZZ5setupE3__c__94_,"a",@progbits
	.type	_ZZ5setupE3__c__94_, @object
	.size	_ZZ5setupE3__c__94_, 27
_ZZ5setupE3__c__94_:
	.string	"%%-8X -0x12ab      '%-8X'\n"
	.section	.progmem.data._ZZ5setupE3__c__93_,"a",@progbits
	.type	_ZZ5setupE3__c__93_, @object
	.size	_ZZ5setupE3__c__93_, 27
_ZZ5setupE3__c__93_:
	.string	"%%-8X 0x12ab       '%-8X'\n"
	.section	.progmem.data._ZZ5setupE3__c__92_,"a",@progbits
	.type	_ZZ5setupE3__c__92_, @object
	.size	_ZZ5setupE3__c__92_, 26
_ZZ5setupE3__c__92_:
	.string	"%%8X -0x12ab       '%8X'\n"
	.section	.progmem.data._ZZ5setupE3__c__91_,"a",@progbits
	.type	_ZZ5setupE3__c__91_, @object
	.size	_ZZ5setupE3__c__91_, 26
_ZZ5setupE3__c__91_:
	.string	"%%8X 0x12ab        '%8X'\n"
	.section	.progmem.data._ZZ5setupE3__c__90_,"a",@progbits
	.type	_ZZ5setupE3__c__90_, @object
	.size	_ZZ5setupE3__c__90_, 25
_ZZ5setupE3__c__90_:
	.string	"%%X 65536          '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__89_,"a",@progbits
	.type	_ZZ5setupE3__c__89_, @object
	.size	_ZZ5setupE3__c__89_, 25
_ZZ5setupE3__c__89_:
	.string	"%%X 65535          '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__88_,"a",@progbits
	.type	_ZZ5setupE3__c__88_, @object
	.size	_ZZ5setupE3__c__88_, 25
_ZZ5setupE3__c__88_:
	.string	"%%X -32769         '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__87_,"a",@progbits
	.type	_ZZ5setupE3__c__87_, @object
	.size	_ZZ5setupE3__c__87_, 25
_ZZ5setupE3__c__87_:
	.string	"%%X 32768          '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__86_,"a",@progbits
	.type	_ZZ5setupE3__c__86_, @object
	.size	_ZZ5setupE3__c__86_, 25
_ZZ5setupE3__c__86_:
	.string	"%%X -32768         '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__85_,"a",@progbits
	.type	_ZZ5setupE3__c__85_, @object
	.size	_ZZ5setupE3__c__85_, 25
_ZZ5setupE3__c__85_:
	.string	"%%X 32767          '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__84_,"a",@progbits
	.type	_ZZ5setupE3__c__84_, @object
	.size	_ZZ5setupE3__c__84_, 25
_ZZ5setupE3__c__84_:
	.string	"%%X -0x12ab        '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__83_,"a",@progbits
	.type	_ZZ5setupE3__c__83_, @object
	.size	_ZZ5setupE3__c__83_, 25
_ZZ5setupE3__c__83_:
	.string	"%%X 0x12ab         '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__82_,"a",@progbits
	.type	_ZZ5setupE3__c__82_, @object
	.size	_ZZ5setupE3__c__82_, 25
_ZZ5setupE3__c__82_:
	.string	"%%X 0              '%X'\n"
	.section	.progmem.data._ZZ5setupE3__c__81_,"a",@progbits
	.type	_ZZ5setupE3__c__81_, @object
	.size	_ZZ5setupE3__c__81_, 28
_ZZ5setupE3__c__81_:
	.string	"%%-08x -0x12ab     '%-08x'\n"
	.section	.progmem.data._ZZ5setupE3__c__80_,"a",@progbits
	.type	_ZZ5setupE3__c__80_, @object
	.size	_ZZ5setupE3__c__80_, 28
_ZZ5setupE3__c__80_:
	.string	"%%-08x 0x12ab      '%-08x'\n"
	.section	.progmem.data._ZZ5setupE3__c__79_,"a",@progbits
	.type	_ZZ5setupE3__c__79_, @object
	.size	_ZZ5setupE3__c__79_, 27
_ZZ5setupE3__c__79_:
	.string	"%%08x -0x12ab      '%08x'\n"
	.section	.progmem.data._ZZ5setupE3__c__78_,"a",@progbits
	.type	_ZZ5setupE3__c__78_, @object
	.size	_ZZ5setupE3__c__78_, 27
_ZZ5setupE3__c__78_:
	.string	"%%08x 0x12ab       '%08x'\n"
	.section	.progmem.data._ZZ5setupE3__c__77_,"a",@progbits
	.type	_ZZ5setupE3__c__77_, @object
	.size	_ZZ5setupE3__c__77_, 27
_ZZ5setupE3__c__77_:
	.string	"%%-8x -0x12ab      '%-8x'\n"
	.section	.progmem.data._ZZ5setupE3__c__76_,"a",@progbits
	.type	_ZZ5setupE3__c__76_, @object
	.size	_ZZ5setupE3__c__76_, 27
_ZZ5setupE3__c__76_:
	.string	"%%-8x 0x12ab       '%-8x'\n"
	.section	.progmem.data._ZZ5setupE3__c__75_,"a",@progbits
	.type	_ZZ5setupE3__c__75_, @object
	.size	_ZZ5setupE3__c__75_, 26
_ZZ5setupE3__c__75_:
	.string	"%%8x -0x12ab       '%8x'\n"
	.section	.progmem.data._ZZ5setupE3__c__74_,"a",@progbits
	.type	_ZZ5setupE3__c__74_, @object
	.size	_ZZ5setupE3__c__74_, 26
_ZZ5setupE3__c__74_:
	.string	"%%8x 0x12ab        '%8x'\n"
	.section	.progmem.data._ZZ5setupE3__c__73_,"a",@progbits
	.type	_ZZ5setupE3__c__73_, @object
	.size	_ZZ5setupE3__c__73_, 25
_ZZ5setupE3__c__73_:
	.string	"%%x 65536          '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__72_,"a",@progbits
	.type	_ZZ5setupE3__c__72_, @object
	.size	_ZZ5setupE3__c__72_, 25
_ZZ5setupE3__c__72_:
	.string	"%%x 65535          '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__71_,"a",@progbits
	.type	_ZZ5setupE3__c__71_, @object
	.size	_ZZ5setupE3__c__71_, 25
_ZZ5setupE3__c__71_:
	.string	"%%x -32769         '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__70_,"a",@progbits
	.type	_ZZ5setupE3__c__70_, @object
	.size	_ZZ5setupE3__c__70_, 25
_ZZ5setupE3__c__70_:
	.string	"%%x 32768          '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__69_,"a",@progbits
	.type	_ZZ5setupE3__c__69_, @object
	.size	_ZZ5setupE3__c__69_, 25
_ZZ5setupE3__c__69_:
	.string	"%%x -32768         '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__68_,"a",@progbits
	.type	_ZZ5setupE3__c__68_, @object
	.size	_ZZ5setupE3__c__68_, 25
_ZZ5setupE3__c__68_:
	.string	"%%x 32767          '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__67_,"a",@progbits
	.type	_ZZ5setupE3__c__67_, @object
	.size	_ZZ5setupE3__c__67_, 25
_ZZ5setupE3__c__67_:
	.string	"%%x -0x12ab        '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__66_,"a",@progbits
	.type	_ZZ5setupE3__c__66_, @object
	.size	_ZZ5setupE3__c__66_, 25
_ZZ5setupE3__c__66_:
	.string	"%%x 0x12ab         '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__65_,"a",@progbits
	.type	_ZZ5setupE3__c__65_, @object
	.size	_ZZ5setupE3__c__65_, 25
_ZZ5setupE3__c__65_:
	.string	"%%x 0              '%x'\n"
	.section	.progmem.data._ZZ5setupE3__c__64_,"a",@progbits
	.type	_ZZ5setupE3__c__64_, @object
	.size	_ZZ5setupE3__c__64_, 29
_ZZ5setupE3__c__64_:
	.string	"%%-010o -1234      '%-010o'\n"
	.section	.progmem.data._ZZ5setupE3__c__63_,"a",@progbits
	.type	_ZZ5setupE3__c__63_, @object
	.size	_ZZ5setupE3__c__63_, 29
_ZZ5setupE3__c__63_:
	.string	"%%-010o 1234       '%-010o'\n"
	.section	.progmem.data._ZZ5setupE3__c__62_,"a",@progbits
	.type	_ZZ5setupE3__c__62_, @object
	.size	_ZZ5setupE3__c__62_, 28
_ZZ5setupE3__c__62_:
	.string	"%%010o -1234       '%010o'\n"
	.section	.progmem.data._ZZ5setupE3__c__61_,"a",@progbits
	.type	_ZZ5setupE3__c__61_, @object
	.size	_ZZ5setupE3__c__61_, 28
_ZZ5setupE3__c__61_:
	.string	"%%010o 1234        '%010o'\n"
	.section	.progmem.data._ZZ5setupE3__c__60_,"a",@progbits
	.type	_ZZ5setupE3__c__60_, @object
	.size	_ZZ5setupE3__c__60_, 28
_ZZ5setupE3__c__60_:
	.string	"%%-10o -1234       '%-10o'\n"
	.section	.progmem.data._ZZ5setupE3__c__59_,"a",@progbits
	.type	_ZZ5setupE3__c__59_, @object
	.size	_ZZ5setupE3__c__59_, 28
_ZZ5setupE3__c__59_:
	.string	"%%-10o 1234        '%-10o'\n"
	.section	.progmem.data._ZZ5setupE3__c__58_,"a",@progbits
	.type	_ZZ5setupE3__c__58_, @object
	.size	_ZZ5setupE3__c__58_, 27
_ZZ5setupE3__c__58_:
	.string	"%%10o -1234        '%10o'\n"
	.section	.progmem.data._ZZ5setupE3__c__57_,"a",@progbits
	.type	_ZZ5setupE3__c__57_, @object
	.size	_ZZ5setupE3__c__57_, 27
_ZZ5setupE3__c__57_:
	.string	"%%10o 1234         '%10o'\n"
	.section	.progmem.data._ZZ5setupE3__c__56_,"a",@progbits
	.type	_ZZ5setupE3__c__56_, @object
	.size	_ZZ5setupE3__c__56_, 25
_ZZ5setupE3__c__56_:
	.string	"%%o 65536          '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__55_,"a",@progbits
	.type	_ZZ5setupE3__c__55_, @object
	.size	_ZZ5setupE3__c__55_, 25
_ZZ5setupE3__c__55_:
	.string	"%%o 65535          '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__54_,"a",@progbits
	.type	_ZZ5setupE3__c__54_, @object
	.size	_ZZ5setupE3__c__54_, 25
_ZZ5setupE3__c__54_:
	.string	"%%o -32769         '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__53_,"a",@progbits
	.type	_ZZ5setupE3__c__53_, @object
	.size	_ZZ5setupE3__c__53_, 25
_ZZ5setupE3__c__53_:
	.string	"%%o 32768          '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__52_,"a",@progbits
	.type	_ZZ5setupE3__c__52_, @object
	.size	_ZZ5setupE3__c__52_, 25
_ZZ5setupE3__c__52_:
	.string	"%%o -32768         '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__51_,"a",@progbits
	.type	_ZZ5setupE3__c__51_, @object
	.size	_ZZ5setupE3__c__51_, 25
_ZZ5setupE3__c__51_:
	.string	"%%o 32767          '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__50_,"a",@progbits
	.type	_ZZ5setupE3__c__50_, @object
	.size	_ZZ5setupE3__c__50_, 25
_ZZ5setupE3__c__50_:
	.string	"%%o -1234          '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__49_,"a",@progbits
	.type	_ZZ5setupE3__c__49_, @object
	.size	_ZZ5setupE3__c__49_, 25
_ZZ5setupE3__c__49_:
	.string	"%%o 1234           '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__48_,"a",@progbits
	.type	_ZZ5setupE3__c__48_, @object
	.size	_ZZ5setupE3__c__48_, 25
_ZZ5setupE3__c__48_:
	.string	"%%o 0              '%o'\n"
	.section	.progmem.data._ZZ5setupE3__c__47_,"a",@progbits
	.type	_ZZ5setupE3__c__47_, @object
	.size	_ZZ5setupE3__c__47_, 29
_ZZ5setupE3__c__47_:
	.string	"%%-018b -1234      '%-018b'\n"
	.section	.progmem.data._ZZ5setupE3__c__46_,"a",@progbits
	.type	_ZZ5setupE3__c__46_, @object
	.size	_ZZ5setupE3__c__46_, 29
_ZZ5setupE3__c__46_:
	.string	"%%-018b 1234       '%-018b'\n"
	.section	.progmem.data._ZZ5setupE3__c__45_,"a",@progbits
	.type	_ZZ5setupE3__c__45_, @object
	.size	_ZZ5setupE3__c__45_, 28
_ZZ5setupE3__c__45_:
	.string	"%%018b -1234       '%018b'\n"
	.section	.progmem.data._ZZ5setupE3__c__44_,"a",@progbits
	.type	_ZZ5setupE3__c__44_, @object
	.size	_ZZ5setupE3__c__44_, 28
_ZZ5setupE3__c__44_:
	.string	"%%018b 1234        '%018b'\n"
	.section	.progmem.data._ZZ5setupE3__c__43_,"a",@progbits
	.type	_ZZ5setupE3__c__43_, @object
	.size	_ZZ5setupE3__c__43_, 28
_ZZ5setupE3__c__43_:
	.string	"%%-18b -1234       '%-18b'\n"
	.section	.progmem.data._ZZ5setupE3__c__42_,"a",@progbits
	.type	_ZZ5setupE3__c__42_, @object
	.size	_ZZ5setupE3__c__42_, 28
_ZZ5setupE3__c__42_:
	.string	"%%-18b 1234        '%-18b'\n"
	.section	.progmem.data._ZZ5setupE3__c__41_,"a",@progbits
	.type	_ZZ5setupE3__c__41_, @object
	.size	_ZZ5setupE3__c__41_, 27
_ZZ5setupE3__c__41_:
	.string	"%%18b -1234        '%18b'\n"
	.section	.progmem.data._ZZ5setupE3__c__40_,"a",@progbits
	.type	_ZZ5setupE3__c__40_, @object
	.size	_ZZ5setupE3__c__40_, 27
_ZZ5setupE3__c__40_:
	.string	"%%18b 1234         '%18b'\n"
	.section	.progmem.data._ZZ5setupE3__c__39_,"a",@progbits
	.type	_ZZ5setupE3__c__39_, @object
	.size	_ZZ5setupE3__c__39_, 25
_ZZ5setupE3__c__39_:
	.string	"%%b 65536          '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__38_,"a",@progbits
	.type	_ZZ5setupE3__c__38_, @object
	.size	_ZZ5setupE3__c__38_, 25
_ZZ5setupE3__c__38_:
	.string	"%%b 65535          '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__37_,"a",@progbits
	.type	_ZZ5setupE3__c__37_, @object
	.size	_ZZ5setupE3__c__37_, 25
_ZZ5setupE3__c__37_:
	.string	"%%b -32769         '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__36_,"a",@progbits
	.type	_ZZ5setupE3__c__36_, @object
	.size	_ZZ5setupE3__c__36_, 25
_ZZ5setupE3__c__36_:
	.string	"%%b 32768          '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__35_,"a",@progbits
	.type	_ZZ5setupE3__c__35_, @object
	.size	_ZZ5setupE3__c__35_, 25
_ZZ5setupE3__c__35_:
	.string	"%%b -32768         '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__34_,"a",@progbits
	.type	_ZZ5setupE3__c__34_, @object
	.size	_ZZ5setupE3__c__34_, 25
_ZZ5setupE3__c__34_:
	.string	"%%b 32767          '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__33_,"a",@progbits
	.type	_ZZ5setupE3__c__33_, @object
	.size	_ZZ5setupE3__c__33_, 25
_ZZ5setupE3__c__33_:
	.string	"%%b -1234          '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__32_,"a",@progbits
	.type	_ZZ5setupE3__c__32_, @object
	.size	_ZZ5setupE3__c__32_, 25
_ZZ5setupE3__c__32_:
	.string	"%%b 1234           '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__31_,"a",@progbits
	.type	_ZZ5setupE3__c__31_, @object
	.size	_ZZ5setupE3__c__31_, 25
_ZZ5setupE3__c__31_:
	.string	"%%b 0              '%b'\n"
	.section	.progmem.data._ZZ5setupE3__c__30_,"a",@progbits
	.type	_ZZ5setupE3__c__30_, @object
	.size	_ZZ5setupE3__c__30_, 28
_ZZ5setupE3__c__30_:
	.string	"%%-08u -1234       '%-08u'\n"
	.section	.progmem.data._ZZ5setupE3__c__29_,"a",@progbits
	.type	_ZZ5setupE3__c__29_, @object
	.size	_ZZ5setupE3__c__29_, 28
_ZZ5setupE3__c__29_:
	.string	"%%-08u 1234        '%-08u'\n"
	.section	.progmem.data._ZZ5setupE3__c__28_,"a",@progbits
	.type	_ZZ5setupE3__c__28_, @object
	.size	_ZZ5setupE3__c__28_, 27
_ZZ5setupE3__c__28_:
	.string	"%%08u -1234        '%08u'\n"
	.section	.progmem.data._ZZ5setupE3__c__27_,"a",@progbits
	.type	_ZZ5setupE3__c__27_, @object
	.size	_ZZ5setupE3__c__27_, 27
_ZZ5setupE3__c__27_:
	.string	"%%08u 1234         '%08u'\n"
	.section	.progmem.data._ZZ5setupE3__c__26_,"a",@progbits
	.type	_ZZ5setupE3__c__26_, @object
	.size	_ZZ5setupE3__c__26_, 27
_ZZ5setupE3__c__26_:
	.string	"%%-8u -1234        '%-8u'\n"
	.section	.progmem.data._ZZ5setupE3__c__25_,"a",@progbits
	.type	_ZZ5setupE3__c__25_, @object
	.size	_ZZ5setupE3__c__25_, 27
_ZZ5setupE3__c__25_:
	.string	"%%-8u 1234         '%-8u'\n"
	.section	.progmem.data._ZZ5setupE3__c__24_,"a",@progbits
	.type	_ZZ5setupE3__c__24_, @object
	.size	_ZZ5setupE3__c__24_, 26
_ZZ5setupE3__c__24_:
	.string	"%%8u -1234         '%8u'\n"
	.section	.progmem.data._ZZ5setupE3__c__23_,"a",@progbits
	.type	_ZZ5setupE3__c__23_, @object
	.size	_ZZ5setupE3__c__23_, 26
_ZZ5setupE3__c__23_:
	.string	"%%8u 1234          '%8u'\n"
	.section	.progmem.data._ZZ5setupE3__c__22_,"a",@progbits
	.type	_ZZ5setupE3__c__22_, @object
	.size	_ZZ5setupE3__c__22_, 25
_ZZ5setupE3__c__22_:
	.string	"%%u 65536          '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__21_,"a",@progbits
	.type	_ZZ5setupE3__c__21_, @object
	.size	_ZZ5setupE3__c__21_, 25
_ZZ5setupE3__c__21_:
	.string	"%%u 65535          '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__20_,"a",@progbits
	.type	_ZZ5setupE3__c__20_, @object
	.size	_ZZ5setupE3__c__20_, 25
_ZZ5setupE3__c__20_:
	.string	"%%u -32769         '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__19_,"a",@progbits
	.type	_ZZ5setupE3__c__19_, @object
	.size	_ZZ5setupE3__c__19_, 25
_ZZ5setupE3__c__19_:
	.string	"%%u 32768          '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__18_,"a",@progbits
	.type	_ZZ5setupE3__c__18_, @object
	.size	_ZZ5setupE3__c__18_, 25
_ZZ5setupE3__c__18_:
	.string	"%%u -32768         '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__17_,"a",@progbits
	.type	_ZZ5setupE3__c__17_, @object
	.size	_ZZ5setupE3__c__17_, 25
_ZZ5setupE3__c__17_:
	.string	"%%u 32767          '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__16_,"a",@progbits
	.type	_ZZ5setupE3__c__16_, @object
	.size	_ZZ5setupE3__c__16_, 25
_ZZ5setupE3__c__16_:
	.string	"%%u -1234          '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__15_,"a",@progbits
	.type	_ZZ5setupE3__c__15_, @object
	.size	_ZZ5setupE3__c__15_, 25
_ZZ5setupE3__c__15_:
	.string	"%%u 1234           '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__14_,"a",@progbits
	.type	_ZZ5setupE3__c__14_, @object
	.size	_ZZ5setupE3__c__14_, 25
_ZZ5setupE3__c__14_:
	.string	"%%u 0              '%u'\n"
	.section	.progmem.data._ZZ5setupE3__c__13_,"a",@progbits
	.type	_ZZ5setupE3__c__13_, @object
	.size	_ZZ5setupE3__c__13_, 28
_ZZ5setupE3__c__13_:
	.string	"%%-08d -1234       '%-08d'\n"
	.section	.progmem.data._ZZ5setupE3__c__12_,"a",@progbits
	.type	_ZZ5setupE3__c__12_, @object
	.size	_ZZ5setupE3__c__12_, 28
_ZZ5setupE3__c__12_:
	.string	"%%-08d 1234        '%-08d'\n"
	.section	.progmem.data._ZZ5setupE3__c__11_,"a",@progbits
	.type	_ZZ5setupE3__c__11_, @object
	.size	_ZZ5setupE3__c__11_, 27
_ZZ5setupE3__c__11_:
	.string	"%%08d -1234        '%08d'\n"
	.section	.progmem.data._ZZ5setupE3__c__10_,"a",@progbits
	.type	_ZZ5setupE3__c__10_, @object
	.size	_ZZ5setupE3__c__10_, 27
_ZZ5setupE3__c__10_:
	.string	"%%08d 1234         '%08d'\n"
	.section	.progmem.data._ZZ5setupE3__c_9,"a",@progbits
	.type	_ZZ5setupE3__c_9, @object
	.size	_ZZ5setupE3__c_9, 27
_ZZ5setupE3__c_9:
	.string	"%%-8d -1234        '%-8d'\n"
	.section	.progmem.data._ZZ5setupE3__c_8,"a",@progbits
	.type	_ZZ5setupE3__c_8, @object
	.size	_ZZ5setupE3__c_8, 27
_ZZ5setupE3__c_8:
	.string	"%%-8d 1234         '%-8d'\n"
	.section	.progmem.data._ZZ5setupE3__c_7,"a",@progbits
	.type	_ZZ5setupE3__c_7, @object
	.size	_ZZ5setupE3__c_7, 26
_ZZ5setupE3__c_7:
	.string	"%%8d -1234         '%8d'\n"
	.section	.progmem.data._ZZ5setupE3__c_6,"a",@progbits
	.type	_ZZ5setupE3__c_6, @object
	.size	_ZZ5setupE3__c_6, 26
_ZZ5setupE3__c_6:
	.string	"%%8d 1234          '%8d'\n"
	.section	.progmem.data._ZZ5setupE3__c_5,"a",@progbits
	.type	_ZZ5setupE3__c_5, @object
	.size	_ZZ5setupE3__c_5, 25
_ZZ5setupE3__c_5:
	.string	"%%d -32769         '%d'\n"
	.section	.progmem.data._ZZ5setupE3__c_4,"a",@progbits
	.type	_ZZ5setupE3__c_4, @object
	.size	_ZZ5setupE3__c_4, 25
_ZZ5setupE3__c_4:
	.string	"%%d 32768          '%d'\n"
	.section	.progmem.data._ZZ5setupE3__c_3,"a",@progbits
	.type	_ZZ5setupE3__c_3, @object
	.size	_ZZ5setupE3__c_3, 25
_ZZ5setupE3__c_3:
	.string	"%%d -32768         '%d'\n"
	.section	.progmem.data._ZZ5setupE3__c_2,"a",@progbits
	.type	_ZZ5setupE3__c_2, @object
	.size	_ZZ5setupE3__c_2, 25
_ZZ5setupE3__c_2:
	.string	"%%d 32767          '%d'\n"
	.section	.progmem.data._ZZ5setupE3__c_1,"a",@progbits
	.type	_ZZ5setupE3__c_1, @object
	.size	_ZZ5setupE3__c_1, 25
_ZZ5setupE3__c_1:
	.string	"%%d -1234          '%d'\n"
	.section	.progmem.data._ZZ5setupE3__c_0,"a",@progbits
	.type	_ZZ5setupE3__c_0, @object
	.size	_ZZ5setupE3__c_0, 25
_ZZ5setupE3__c_0:
	.string	"%%d 1234           '%d'\n"
	.section	.progmem.data._ZZ5setupE3__c,"a",@progbits
	.type	_ZZ5setupE3__c, @object
	.size	_ZZ5setupE3__c, 25
_ZZ5setupE3__c:
	.string	"%%d 0              '%d'\n"
.global	serial
	.section	.bss.serial,"aw",@nobits
	.type	serial, @object
	.size	serial, 2
serial:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
