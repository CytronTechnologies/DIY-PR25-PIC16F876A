opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 17 "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	psect config,class=CONFIG,delta=2 ;#
# 17 "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	dw 0x3F32 ;#
	FNCALL	_main,_init
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_delay
	FNCALL	_main,_send_dec
	FNCALL	_send_dec,___llmod
	FNCALL	_send_dec,___lldiv
	FNCALL	_send_dec,_send_char
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_init,_send_config
	FNCALL	_init,_delay
	FNCALL	_send_char,_delay
	FNCALL	_send_char,_e_pulse
	FNCALL	_send_config,_delay
	FNCALL	_send_config,_e_pulse
	FNCALL	_e_pulse,_delay
	FNROOT	_main
	global	main@F483
	global	main@F481
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	57

;initializer for main@F483
	retlw	0B1h
	retlw	057h

	retlw	0
	retlw	0

	line	56

;initializer for main@F481
	retlw	07Fh
	retlw	0
	global	_PORTB
_PORTB	set	6
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA4
_RA4	set	44
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_8:	
	retlw	85	;'U'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_14:	
	retlw	85	;'U'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	80	;'P'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	121	;'y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	0
psect	strings
	
STR_12:	
	retlw	85	;'U'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_9:	
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_10:	
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	strings
	
STR_7:	
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
STR_3	equ	STR_6+1
STR_11	equ	STR_7+0
STR_13	equ	STR_7+0
	file	"PR 25.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	57
main@F483:
       ds      4

psect	dataBANK0
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	56
main@F481:
       ds      2

; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_e_pulse
?_e_pulse:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	delay@i
delay@i:	; 2 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	2
	global	??_send_config
??_send_config:	; 0 bytes @ 0x6
	global	??_e_pulse
??_e_pulse:	; 0 bytes @ 0x6
	global	??_send_char
??_send_char:	; 0 bytes @ 0x6
	global	send_config@data
send_config@data:	; 1 bytes @ 0x6
	global	send_char@data
send_char@data:	; 1 bytes @ 0x6
	ds	1
	global	??_init
??_init:	; 0 bytes @ 0x7
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x7
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x7
	global	??_send_string
??_send_string:	; 0 bytes @ 0x7
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0x8
	global	send_string@s
send_string@s:	; 1 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_send_dec
??_send_dec:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_send_dec
?_send_dec:	; 0 bytes @ 0x0
	global	send_dec@data
send_dec@data:	; 4 bytes @ 0x0
	ds	4
	global	send_dec@num_dig
send_dec@num_dig:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	5
	global	main@data
main@data:	; 26 bytes @ 0xA
	ds	26
	global	main@database
main@database:	; 1 bytes @ 0x24
	ds	1
	global	main@id2
main@id2:	; 4 bytes @ 0x25
	ds	4
	global	main@id1
main@id1:	; 2 bytes @ 0x29
	ds	2
	global	main@a
main@a:	; 1 bytes @ 0x2B
	ds	1
	global	main@mode
main@mode:	; 1 bytes @ 0x2C
	ds	1
	global	main@b
main@b:	; 1 bytes @ 0x2D
	ds	1
	global	main@convert2
main@convert2:	; 2 bytes @ 0x2E
	ds	2
	global	main@convert1
main@convert1:	; 1 bytes @ 0x30
	ds	1
	global	main@repeat
main@repeat:	; 1 bytes @ 0x31
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x32
	ds	1
;;Data sizes: Strings 154, constant 0, data 6, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     51      57
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 18
;;		 -> STR_14(CODE[16]), STR_13(CODE[8]), STR_12(CODE[15]), STR_11(CODE[8]), 
;;		 -> STR_10(CODE[14]), STR_9(CODE[15]), STR_8(CODE[18]), STR_7(CODE[8]), 
;;		 -> STR_6(CODE[16]), STR_5(CODE[17]), STR_4(CODE[14]), STR_3(CODE[15]), 
;;		 -> STR_2(CODE[10]), STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _send_dec->___lldiv
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _init->_send_config
;;   _send_char->_delay
;;   _send_config->_delay
;;   _e_pulse->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_send_dec
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                46    46      0    3731
;;                                              5 BANK0     46    46      0
;;                               _init
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                              _delay
;;                           _send_dec
;; ---------------------------------------------------------------------------------
;; (1) _send_dec                                             5     0      5    1149
;;                                              0 BANK0      5     0      5
;;                            ___llmod
;;                            ___lldiv
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          2     2      0     225
;;                                              7 COMMON     2     2      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     247
;;                                              7 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clr                                              0     0      0     226
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0     226
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0     158
;;                                              6 COMMON     1     1      0
;;                              _delay
;;                            _e_pulse
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0     158
;;                                              6 COMMON     1     1      0
;;                              _delay
;;                            _e_pulse
;; ---------------------------------------------------------------------------------
;; (3) _e_pulse                                              0     0      0      68
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                             10     2      8     159
;;                                              0 COMMON    10     2      8
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                6     2      4      68
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _send_config
;;       _delay
;;       _e_pulse
;;         _delay
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;       _e_pulse
;;         _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;       _e_pulse
;;         _delay
;;   _send_string
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;   _delay
;;   _send_dec
;;     ___llmod
;;     ___lldiv
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      4B      12        0.0%
;;ABS                  0      0      47       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50     33      39       5       71.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           26   10[BANK0 ] unsigned char [26]
;;  id2             4   37[BANK0 ] unsigned int [2]
;;  convert2        2   46[BANK0 ] unsigned int 
;;  id1             2   41[BANK0 ] unsigned char [2]
;;  i               1   50[BANK0 ] unsigned char 
;;  repeat          1   49[BANK0 ] unsigned char 
;;  convert1        1   48[BANK0 ] unsigned char 
;;  b               1   45[BANK0 ] unsigned char 
;;  mode            1   44[BANK0 ] unsigned char 
;;  a               1   43[BANK0 ] unsigned char 
;;  database        1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      41       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      46       0       0       0
;;Total ram usage:       46 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_init
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_delay
;;		_send_dec
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	53
	
l2752:	
;PR25.c: 51: unsigned char i, repeat, a, b, database;
;PR25.c: 52: unsigned char data[26];
;PR25.c: 53: unsigned char convert1=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@convert1)
	line	54
	
l2754:	
;PR25.c: 54: unsigned int convert2=0;
	movlw	low(0)
	movwf	(main@convert2)
	movlw	high(0)
	movwf	((main@convert2))+1
	line	55
	
l2756:	
;PR25.c: 55: unsigned char mode=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@mode)
	line	56
	
l2758:	
;PR25.c: 56: unsigned char id1[2]={127,0};
	movf	(main@F481+1),w
	clrf	(main@id1+1)
	addwf	(main@id1+1)
	movf	(main@F481),w
	clrf	(main@id1)
	addwf	(main@id1)

	line	57
	
l2760:	
;PR25.c: 57: unsigned int id2[2]={22449,0};
	movf	(main@F483+3),w
	movwf	(main@id2+3)
	movf	(main@F483+2),w
	movwf	(main@id2+2)
	movf	(main@F483+1),w
	movwf	(main@id2+1)
	movf	(main@F483),w
	movwf	(main@id2)

	line	59
	
l2762:	
;PR25.c: 59: init();
	fcall	_init
	line	60
	
l2764:	
;PR25.c: 60: lcd_clr();
	fcall	_lcd_clr
	line	61
;PR25.c: 61: id1[1]=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(main@id1)+01h
	line	62
	
l2766:	
;PR25.c: 62: id2[1]=0;
	movlw	low(0)
	movwf	0+(main@id2)+02h
	movlw	high(0)
	movwf	(0+(main@id2)+02h)+1
	line	63
	
l2768:	
;PR25.c: 63: RC4=1;
	bsf	(60/8),(60)&7
	line	64
	
l2770:	
;PR25.c: 64: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	65
	
l2772:	
;PR25.c: 65: send_string (" RFID door");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	66
	
l2774:	
;PR25.c: 66: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	67
	
l2776:	
;PR25.c: 67: send_string (" security");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	69
	
l2778:	
;PR25.c: 69: for(repeat=12; repeat>0; repeat--)
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@repeat)
	
l2780:	
	movf	(main@repeat),f
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l2784
u3170:
	goto	l2790
	
l2782:	
	goto	l2790
	line	70
	
l515:	
	line	71
	
l2784:	
;PR25.c: 70: {
;PR25.c: 71: delay(1000000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0Fh
	movwf	(?_delay+2)
	movlw	042h
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	69
	
l2786:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@repeat),f
	
l2788:	
	movf	(main@repeat),f
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l2784
u3180:
	goto	l2790
	
l516:	
	goto	l2790
	line	74
;PR25.c: 72: }
;PR25.c: 74: while(1)
	
l517:	
	line	76
	
l2790:	
;PR25.c: 75: {
;PR25.c: 76: convert1=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@convert1)
	line	77
	
l2792:	
;PR25.c: 77: convert2=0;
	movlw	low(0)
	movwf	(main@convert2)
	movlw	high(0)
	movwf	((main@convert2))+1
	line	79
	
l2794:	
;PR25.c: 79: lcd_clr();
	fcall	_lcd_clr
	line	80
	
l2796:	
;PR25.c: 80: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	81
	
l2798:	
;PR25.c: 81: send_string ("Place your tag");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	82
	
l2800:	
;PR25.c: 82: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	83
	
l2802:	
;PR25.c: 83: send_string ("on the reader");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	85
;PR25.c: 85: while(mode==0)
	goto	l518
	
l519:	
	line	87
;PR25.c: 86: {
;PR25.c: 87: if((RC1==0)||(RC2==0)) mode=1;
	btfss	(57/8),(57)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l2806
u3190:
	
l2804:	
	btfsc	(58/8),(58)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l520
u3200:
	goto	l2806
	
l522:	
	
l2806:	
	clrf	(main@mode)
	bsf	status,0
	rlf	(main@mode),f
	goto	l518
	line	88
	
l520:	
;PR25.c: 88: else if(RA4==0) mode=2;
	btfsc	(44/8),(44)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l518
u3210:
	
l2808:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	goto	l518
	
l524:	
	goto	l518
	line	89
	
l523:	
	
l518:	
	line	85
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	skipz
	goto	u3220
	goto	l519
u3220:
	goto	l2886
	
l525:	
	line	92
;PR25.c: 89: }
;PR25.c: 92: while(mode==1)
	goto	l2886
	
l527:	
	line	94
;PR25.c: 93: {
;PR25.c: 94: if((RC1==0)&&(RC2==1))
	btfsc	(57/8),(57)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l528
u3230:
	
l2810:	
	btfss	(58/8),(58)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l528
u3240:
	line	96
	
l2812:	
;PR25.c: 95: {
;PR25.c: 96: data[i]=0;
	clrc
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	97
;PR25.c: 97: while((RC1==0)&&(RC2==1));
	goto	l529
	
l530:	
	
l529:	
	btfsc	(57/8),(57)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l2822
u3250:
	
l2814:	
	btfsc	(58/8),(58)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l529
u3260:
	goto	l2822
	
l532:	
	goto	l2822
	
l533:	
	line	98
;PR25.c: 98: }
	goto	l2822
	line	99
	
l528:	
;PR25.c: 99: else if ((RC1==1)&&(RC2==0))
	btfss	(57/8),(57)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l2822
u3270:
	
l2816:	
	btfsc	(58/8),(58)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l2822
u3280:
	line	101
	
l2818:	
;PR25.c: 100: {
;PR25.c: 101: data[i]=1;
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	102
;PR25.c: 102: while((RC1==1)&&(RC2==0));
	goto	l536
	
l537:	
	
l536:	
	btfss	(57/8),(57)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l2822
u3290:
	
l2820:	
	btfss	(58/8),(58)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l536
u3300:
	goto	l2822
	
l539:	
	goto	l2822
	
l540:	
	goto	l2822
	line	103
	
l535:	
	goto	l2822
	line	104
	
l534:	
	
l2822:	
;PR25.c: 103: }
;PR25.c: 104: i+=1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	line	106
;PR25.c: 106: while(i<26)
	goto	l2840
	
l542:	
	line	108
;PR25.c: 107: {
;PR25.c: 108: while((RC1==1)&&(RC2==1));
	goto	l543
	
l544:	
	
l543:	
	btfss	(57/8),(57)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l547
u3310:
	
l2824:	
	btfsc	(58/8),(58)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l543
u3320:
	goto	l547
	
l546:	
	
l547:	
	line	109
;PR25.c: 109: if((RC1==0)&&(RC2==1))
	btfsc	(57/8),(57)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l548
u3330:
	
l2826:	
	btfss	(58/8),(58)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l548
u3340:
	line	111
	
l2828:	
;PR25.c: 110: {
;PR25.c: 111: data[i]=0;
	clrc
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	112
;PR25.c: 112: while((RC1==0)&&(RC2==1));
	goto	l549
	
l550:	
	
l549:	
	btfsc	(57/8),(57)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l2838
u3350:
	
l2830:	
	btfsc	(58/8),(58)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l549
u3360:
	goto	l2838
	
l552:	
	goto	l2838
	
l553:	
	line	113
;PR25.c: 113: }
	goto	l2838
	line	114
	
l548:	
;PR25.c: 114: else if ((RC1==1)&&(RC2==0))
	btfss	(57/8),(57)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2838
u3370:
	
l2832:	
	btfsc	(58/8),(58)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2838
u3380:
	line	116
	
l2834:	
;PR25.c: 115: {
;PR25.c: 116: data[i]=1;
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	117
;PR25.c: 117: while((RC1==1)&&(RC2==0));
	goto	l556
	
l557:	
	
l556:	
	btfss	(57/8),(57)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l2838
u3390:
	
l2836:	
	btfss	(58/8),(58)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l556
u3400:
	goto	l2838
	
l559:	
	goto	l2838
	
l560:	
	goto	l2838
	line	118
	
l555:	
	goto	l2838
	line	119
	
l554:	
	
l2838:	
;PR25.c: 118: }
;PR25.c: 119: i+=1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	goto	l2840
	line	120
	
l541:	
	line	106
	
l2840:	
	movlw	(01Ah)
	subwf	(main@i),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l543
u3410:
	goto	l2842
	
l561:	
	line	122
	
l2842:	
;PR25.c: 120: }
;PR25.c: 122: mode=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@mode)
	line	124
;PR25.c: 124: i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@i)
	line	125
	
l2844:	
;PR25.c: 125: lcd_clr();
	fcall	_lcd_clr
	line	127
	
l2846:	
;PR25.c: 127: for(i=0;i<8;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2848:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l2852
u3420:
	goto	l2858
	
l2850:	
	goto	l2858
	line	128
	
l562:	
	line	129
	
l2852:	
;PR25.c: 128: {
;PR25.c: 129: convert1=(convert1<<1)|data[i+1];
	movf	(main@i),w
	addlw	01h
	addlw	main@data&0ffh
	movwf	fsr0
	movf	(main@convert1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@convert1)
	line	127
	
l2854:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2856:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l2852
u3430:
	goto	l2858
	
l563:	
	line	131
	
l2858:	
;PR25.c: 130: }
;PR25.c: 131: for(i=0;i<16;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@i)
	
l2860:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l2864
u3440:
	goto	l2870
	
l2862:	
	goto	l2870
	line	132
	
l564:	
	line	133
	
l2864:	
;PR25.c: 132: {
;PR25.c: 133: convert2=(convert2<<1)|data[i+9];
	movf	(main@convert2+1),w
	movwf	(??_main+0)+0+1
	movf	(main@convert2),w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u3455:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u3455
	movf	(main@i),w
	addlw	09h
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	iorwf	0+(??_main+0)+0,w
	movwf	(main@convert2)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@convert2)
	line	131
	
l2866:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2868:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l2864
u3460:
	goto	l2870
	
l565:	
	line	136
	
l2870:	
;PR25.c: 134: }
;PR25.c: 136: for(b=0;b<2;b++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@b)
	
l2872:	
	movlw	(02h)
	subwf	(main@b),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l2876
u3470:
	goto	l2884
	
l2874:	
	goto	l2884
	line	137
	
l566:	
	line	138
	
l2876:	
;PR25.c: 137: {
;PR25.c: 138: if((convert1==id1[b])&&(convert2==id2[b])) database=1;
	movf	(main@b),w
	addlw	main@id1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(main@convert1),w
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l2882
u3480:
	
l2878:	
	movf	(main@b),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@id2&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movf	(main@convert2+1),w
	xorwf	1+(??_main+1)+0,w
	skipz
	goto	u3495
	movf	(main@convert2),w
	xorwf	0+(??_main+1)+0,w
u3495:

	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l2882
u3490:
	
l2880:	
	clrf	(main@database)
	bsf	status,0
	rlf	(main@database),f
	goto	l2882
	
l568:	
	line	136
	
l2882:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@b),f
	movlw	(02h)
	subwf	(main@b),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l2876
u3500:
	goto	l2884
	
l567:	
	line	140
	
l2884:	
;PR25.c: 139: }
;PR25.c: 140: lcd_clr();
	fcall	_lcd_clr
	goto	l2886
	line	141
	
l526:	
	line	92
	
l2886:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	xorlw	01h
	skipnz
	goto	u3511
	goto	u3510
u3511:
	goto	l527
u3510:
	goto	l2948
	
l569:	
	line	144
;PR25.c: 141: }
;PR25.c: 144: while(mode==2)
	goto	l2948
	
l571:	
	line	146
	
l2888:	
;PR25.c: 145: {
;PR25.c: 146: lcd_clr();
	fcall	_lcd_clr
	line	147
;PR25.c: 147: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	148
	
l2890:	
;PR25.c: 148: send_string ("    Save mode   ");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	line	149
	
l2892:	
;PR25.c: 149: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	150
;PR25.c: 150: send_string (" Place your tag");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	152
;PR25.c: 152: while(i<26)
	goto	l2910
	
l573:	
	line	154
;PR25.c: 153: {
;PR25.c: 154: while((RC1==1)&&(RC2==1));
	goto	l574
	
l575:	
	
l574:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l578
u3520:
	
l2894:	
	btfsc	(58/8),(58)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l574
u3530:
	goto	l578
	
l577:	
	
l578:	
	line	155
;PR25.c: 155: if((RC1==0)&&(RC2==1))
	btfsc	(57/8),(57)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l579
u3540:
	
l2896:	
	btfss	(58/8),(58)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l579
u3550:
	line	157
	
l2898:	
;PR25.c: 156: {
;PR25.c: 157: data[i]=0;
	clrc
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	158
;PR25.c: 158: while((RC1==0)&&(RC2==1));
	goto	l580
	
l581:	
	
l580:	
	btfsc	(57/8),(57)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l2908
u3560:
	
l2900:	
	btfsc	(58/8),(58)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l580
u3570:
	goto	l2908
	
l583:	
	goto	l2908
	
l584:	
	line	159
;PR25.c: 159: }
	goto	l2908
	line	160
	
l579:	
;PR25.c: 160: else if ((RC1==1)&&(RC2==0))
	btfss	(57/8),(57)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l2908
u3580:
	
l2902:	
	btfsc	(58/8),(58)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l2908
u3590:
	line	162
	
l2904:	
;PR25.c: 161: {
;PR25.c: 162: data[i]=1;
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	163
;PR25.c: 163: while((RC1==1)&&(RC2==0));
	goto	l587
	
l588:	
	
l587:	
	btfss	(57/8),(57)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l2908
u3600:
	
l2906:	
	btfss	(58/8),(58)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l587
u3610:
	goto	l2908
	
l590:	
	goto	l2908
	
l591:	
	goto	l2908
	line	164
	
l586:	
	goto	l2908
	line	165
	
l585:	
	
l2908:	
;PR25.c: 164: }
;PR25.c: 165: i+=1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	goto	l2910
	line	166
	
l572:	
	line	152
	
l2910:	
	movlw	(01Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@i),w
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l574
u3620:
	goto	l2912
	
l592:	
	line	168
	
l2912:	
;PR25.c: 166: }
;PR25.c: 168: mode=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@mode)
	line	169
;PR25.c: 169: i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@i)
	line	170
	
l2914:	
;PR25.c: 170: lcd_clr();
	fcall	_lcd_clr
	line	172
	
l2916:	
;PR25.c: 172: for(i=0;i<8;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2918:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l2922
u3630:
	goto	l2928
	
l2920:	
	goto	l2928
	line	173
	
l593:	
	line	174
	
l2922:	
;PR25.c: 173: {
;PR25.c: 174: convert1=(convert1<<1)|data[i+1];
	movf	(main@i),w
	addlw	01h
	addlw	main@data&0ffh
	movwf	fsr0
	movf	(main@convert1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@convert1)
	line	172
	
l2924:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2926:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l2922
u3640:
	goto	l2928
	
l594:	
	line	176
	
l2928:	
;PR25.c: 175: }
;PR25.c: 176: for(i=0;i<16;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@i)
	
l2930:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l2934
u3650:
	goto	l2940
	
l2932:	
	goto	l2940
	line	177
	
l595:	
	line	178
	
l2934:	
;PR25.c: 177: {
;PR25.c: 178: convert2=(convert2<<1)|data[i+9];
	movf	(main@convert2+1),w
	movwf	(??_main+0)+0+1
	movf	(main@convert2),w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u3665:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u3665
	movf	(main@i),w
	addlw	09h
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	iorwf	0+(??_main+0)+0,w
	movwf	(main@convert2)
	movf	1+(??_main+0)+0,w
	movwf	1+(main@convert2)
	line	176
	
l2936:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2938:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l2934
u3670:
	goto	l2940
	
l596:	
	line	181
	
l2940:	
;PR25.c: 179: }
;PR25.c: 181: id1[1]=convert1;
	movf	(main@convert1),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(main@id1)+01h
	line	182
	
l2942:	
;PR25.c: 182: id2[1]=convert2;
	movf	(main@convert2+1),w
	clrf	1+(main@id2)+02h
	addwf	1+(main@id2)+02h
	movf	(main@convert2),w
	clrf	0+(main@id2)+02h
	addwf	0+(main@id2)+02h

	line	184
	
l2944:	
;PR25.c: 184: database=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@database)
	line	185
	
l2946:	
;PR25.c: 185: lcd_clr();
	fcall	_lcd_clr
	goto	l2948
	line	186
	
l570:	
	line	144
	
l2948:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	xorlw	02h
	skipnz
	goto	u3681
	goto	u3680
u3681:
	goto	l2888
u3680:
	goto	l3036
	
l597:	
	line	188
;PR25.c: 186: }
;PR25.c: 188: switch(database)
	goto	l3036
	line	190
;PR25.c: 189: {
;PR25.c: 190: case 1:
	
l599:	
	line	191
;PR25.c: 191: RA1=1;
	bsf	(41/8),(41)&7
	line	192
;PR25.c: 192: RC3=0;
	bcf	(59/8),(59)&7
	line	193
	
l2950:	
;PR25.c: 193: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	194
	
l2952:	
;PR25.c: 194: send_string("ID no: ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	195
	
l2954:	
;PR25.c: 195: lcd_goto(7);
	movlw	(07h)
	fcall	_lcd_goto
	line	196
	
l2956:	
;PR25.c: 196: send_dec(convert1,3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@convert1),w
	movwf	(??_main+0)+0
	clrf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	3+(??_main+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_main+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_main+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_main+0)+0,w
	movwf	(?_send_dec)

	movlw	(03h)
	movwf	(??_main+4)+0
	movf	(??_main+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	197
	
l2958:	
;PR25.c: 197: lcd_goto(10);
	movlw	(0Ah)
	fcall	_lcd_goto
	line	198
	
l2960:	
;PR25.c: 198: send_dec(convert2,5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@convert2),w
	movwf	(?_send_dec)
	movf	(main@convert2+1),w
	movwf	((?_send_dec))+1
	clrf	2+((?_send_dec))
	clrf	3+((?_send_dec))
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	199
	
l2962:	
;PR25.c: 199: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	200
;PR25.c: 200: send_string("User identified. ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	201
	
l2964:	
;PR25.c: 201: for(repeat=12; repeat>0; repeat--)
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@repeat)
	
l2966:	
	movf	(main@repeat),f
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l2970
u3690:
	goto	l2976
	
l2968:	
	goto	l2976
	line	202
	
l600:	
	line	203
	
l2970:	
;PR25.c: 202: {
;PR25.c: 203: delay(1000000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0Fh
	movwf	(?_delay+2)
	movlw	042h
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	201
	
l2972:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@repeat),f
	
l2974:	
	movf	(main@repeat),f
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l2970
u3700:
	goto	l2976
	
l601:	
	line	205
	
l2976:	
;PR25.c: 204: }
;PR25.c: 205: lcd_clr();
	fcall	_lcd_clr
	line	206
;PR25.c: 206: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	207
	
l2978:	
;PR25.c: 207: send_string("Door lock will");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_send_string
	line	208
	
l2980:	
;PR25.c: 208: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	209
;PR25.c: 209: send_string("be locked in ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_send_string
	line	211
	
l2982:	
;PR25.c: 211: for(a=5;a>0;a--)
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@a)
	
l2984:	
	movf	(main@a),f
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l2988
u3710:
	goto	l3038
	
l2986:	
	goto	l3038
	line	212
	
l602:	
	line	213
	
l2988:	
;PR25.c: 212: {
;PR25.c: 213: lcd_goto(34);
	movlw	(022h)
	fcall	_lcd_goto
	line	214
;PR25.c: 214: send_dec(a, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	movwf	(??_main+0)+0
	clrf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	3+(??_main+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_main+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_main+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_main+0)+0,w
	movwf	(?_send_dec)

	clrf	0+(?_send_dec)+04h
	bsf	status,0
	rlf	0+(?_send_dec)+04h,f
	fcall	_send_dec
	line	215
	
l2990:	
;PR25.c: 215: for(repeat=10; repeat>0; repeat--)
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@repeat)
	
l2992:	
	movf	(main@repeat),f
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l2996
u3720:
	goto	l3002
	
l2994:	
	goto	l3002
	line	216
	
l604:	
	line	217
	
l2996:	
;PR25.c: 216: {
;PR25.c: 217: delay(1000000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0Fh
	movwf	(?_delay+2)
	movlw	042h
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	215
	
l2998:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@repeat),f
	
l3000:	
	movf	(main@repeat),f
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l2996
u3730:
	goto	l3002
	
l605:	
	line	211
	
l3002:	
	movlw	low(01h)
	subwf	(main@a),f
	
l3004:	
	movf	(main@a),f
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l2988
u3740:
	goto	l3038
	
l603:	
	line	220
;PR25.c: 218: }
;PR25.c: 219: }
;PR25.c: 220: break;
	goto	l3038
	line	222
;PR25.c: 222: case 2:
	
l607:	
	line	223
;PR25.c: 223: RA1=1;
	bsf	(41/8),(41)&7
	line	224
;PR25.c: 224: RC3=0;
	bcf	(59/8),(59)&7
	line	225
	
l3006:	
;PR25.c: 225: lcd_clr();
	fcall	_lcd_clr
	line	226
;PR25.c: 226: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	227
	
l3008:	
;PR25.c: 227: send_string("ID no: ");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_send_string
	line	228
	
l3010:	
;PR25.c: 228: lcd_goto(7);
	movlw	(07h)
	fcall	_lcd_goto
	line	229
	
l3012:	
;PR25.c: 229: send_dec(convert1,3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@convert1),w
	movwf	(??_main+0)+0
	clrf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	3+(??_main+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_main+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_main+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_main+0)+0,w
	movwf	(?_send_dec)

	movlw	(03h)
	movwf	(??_main+4)+0
	movf	(??_main+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	230
	
l3014:	
;PR25.c: 230: lcd_goto(10);
	movlw	(0Ah)
	fcall	_lcd_goto
	line	231
	
l3016:	
;PR25.c: 231: send_dec(convert2,5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@convert2),w
	movwf	(?_send_dec)
	movf	(main@convert2+1),w
	movwf	((?_send_dec))+1
	clrf	2+((?_send_dec))
	clrf	3+((?_send_dec))
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	232
	
l3018:	
;PR25.c: 232: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	233
;PR25.c: 233: send_string("User ID saved.");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_send_string
	line	234
;PR25.c: 234: break;
	goto	l3038
	line	236
;PR25.c: 236: default:
	
l608:	
	line	237
;PR25.c: 237: RA1=0;
	bcf	(41/8),(41)&7
	line	238
;PR25.c: 238: RC3=1;
	bsf	(59/8),(59)&7
	line	239
	
l3020:	
;PR25.c: 239: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	240
	
l3022:	
;PR25.c: 240: send_string("ID no: ");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_send_string
	line	241
	
l3024:	
;PR25.c: 241: lcd_goto(7);
	movlw	(07h)
	fcall	_lcd_goto
	line	242
	
l3026:	
;PR25.c: 242: send_dec(convert1,3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@convert1),w
	movwf	(??_main+0)+0
	clrf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	3+(??_main+0)+0,w
	movwf	(?_send_dec+3)
	movf	2+(??_main+0)+0,w
	movwf	(?_send_dec+2)
	movf	1+(??_main+0)+0,w
	movwf	(?_send_dec+1)
	movf	0+(??_main+0)+0,w
	movwf	(?_send_dec)

	movlw	(03h)
	movwf	(??_main+4)+0
	movf	(??_main+4)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	243
	
l3028:	
;PR25.c: 243: lcd_goto(10);
	movlw	(0Ah)
	fcall	_lcd_goto
	line	244
	
l3030:	
;PR25.c: 244: send_dec(convert2,5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@convert2),w
	movwf	(?_send_dec)
	movf	(main@convert2+1),w
	movwf	((?_send_dec))+1
	clrf	2+((?_send_dec))
	clrf	3+((?_send_dec))
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	245
	
l3032:	
;PR25.c: 245: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	246
;PR25.c: 246: send_string("User not found.");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_send_string
	line	247
;PR25.c: 247: break;
	goto	l3038
	line	248
	
l3034:	
;PR25.c: 248: }
	goto	l3038
	line	188
	
l598:	
	
l3036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@database),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    28    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l599
	xorlw	2^1	; case 2
	skipnz
	goto	l607
	goto	l608

	line	248
	
l606:	
	line	250
	
l3038:	
;PR25.c: 250: for(repeat=12; repeat>0; repeat--)
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@repeat)
	
l3040:	
	movf	(main@repeat),f
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l3044
u3750:
	goto	l3050
	
l3042:	
	goto	l3050
	line	251
	
l609:	
	line	252
	
l3044:	
;PR25.c: 251: {
;PR25.c: 252: delay(1000000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0Fh
	movwf	(?_delay+2)
	movlw	042h
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	250
	
l3046:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@repeat),f
	
l3048:	
	movf	(main@repeat),f
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l3044
u3760:
	goto	l3050
	
l610:	
	line	255
	
l3050:	
;PR25.c: 253: }
;PR25.c: 255: i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@i)
	line	256
	
l3052:	
;PR25.c: 256: RC3=0;
	bcf	(59/8),(59)&7
	line	257
;PR25.c: 257: database=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@database)
	line	258
	
l3054:	
;PR25.c: 258: RA1=0;
	bcf	(41/8),(41)&7
	line	259
;PR25.c: 259: convert1=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@convert1)
	line	260
	
l3056:	
;PR25.c: 260: convert2=0;
	movlw	low(0)
	movwf	(main@convert2)
	movlw	high(0)
	movwf	((main@convert2))+1
	goto	l2790
	line	261
	
l611:	
	line	74
	goto	l2790
	
l612:	
	line	262
	
l613:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_dec
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function _send_dec *****************
;; Defined at:
;;		line 314 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[BANK0 ] unsigned long 
;;  num_dig         1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___llmod
;;		___lldiv
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text251
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	314
	global	__size_of_send_dec
	__size_of_send_dec	equ	__end_of_send_dec-_send_dec
	
_send_dec:	
	opt	stack 4
; Regs used in _send_dec: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	315
	
l2692:	
;PR25.c: 315: if(num_dig>=10)
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l2698
u3070:
	line	317
	
l2694:	
;PR25.c: 316: {
;PR25.c: 317: data=data%10000000000;
	movlw	054h
	movwf	(?___llmod+3)
	movlw	0Bh
	movwf	(?___llmod+2)
	movlw	0E4h
	movwf	(?___llmod+1)
	movlw	0
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	318
	
l2696:	
;PR25.c: 318: send_char(data/1000000000+0x30);
	movlw	03Bh
	movwf	(?___lldiv+3)
	movlw	09Ah
	movwf	(?___lldiv+2)
	movlw	0CAh
	movwf	(?___lldiv+1)
	movlw	0
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2698
	line	319
	
l630:	
	line	320
	
l2698:	
;PR25.c: 319: }
;PR25.c: 320: if(num_dig>=9)
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l2704
u3080:
	line	322
	
l2700:	
;PR25.c: 321: {
;PR25.c: 322: data=data%1000000000;
	movlw	03Bh
	movwf	(?___llmod+3)
	movlw	09Ah
	movwf	(?___llmod+2)
	movlw	0CAh
	movwf	(?___llmod+1)
	movlw	0
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	323
	
l2702:	
;PR25.c: 323: send_char(data/100000000+0x30);
	movlw	05h
	movwf	(?___lldiv+3)
	movlw	0F5h
	movwf	(?___lldiv+2)
	movlw	0E1h
	movwf	(?___lldiv+1)
	movlw	0
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2704
	line	324
	
l631:	
	line	325
	
l2704:	
;PR25.c: 324: }
;PR25.c: 325: if(num_dig>=8)
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l2710
u3090:
	line	327
	
l2706:	
;PR25.c: 326: {
;PR25.c: 327: data=data%100000000;
	movlw	05h
	movwf	(?___llmod+3)
	movlw	0F5h
	movwf	(?___llmod+2)
	movlw	0E1h
	movwf	(?___llmod+1)
	movlw	0
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	328
	
l2708:	
;PR25.c: 328: send_char(data/10000000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	098h
	movwf	(?___lldiv+2)
	movlw	096h
	movwf	(?___lldiv+1)
	movlw	080h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2710
	line	329
	
l632:	
	line	330
	
l2710:	
;PR25.c: 329: }
;PR25.c: 330: if(num_dig>=7)
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l2716
u3100:
	line	332
	
l2712:	
;PR25.c: 331: {
;PR25.c: 332: data=data%10000000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	098h
	movwf	(?___llmod+2)
	movlw	096h
	movwf	(?___llmod+1)
	movlw	080h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	333
	
l2714:	
;PR25.c: 333: send_char(data/1000000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0Fh
	movwf	(?___lldiv+2)
	movlw	042h
	movwf	(?___lldiv+1)
	movlw	040h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2716
	line	334
	
l633:	
	line	335
	
l2716:	
;PR25.c: 334: }
;PR25.c: 335: if(num_dig>=6)
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l2722
u3110:
	line	337
	
l2718:	
;PR25.c: 336: {
;PR25.c: 337: data=data%1000000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0Fh
	movwf	(?___llmod+2)
	movlw	042h
	movwf	(?___llmod+1)
	movlw	040h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	338
	
l2720:	
;PR25.c: 338: send_char(data/100000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	01h
	movwf	(?___lldiv+2)
	movlw	086h
	movwf	(?___lldiv+1)
	movlw	0A0h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2722
	line	339
	
l634:	
	line	340
	
l2722:	
;PR25.c: 339: }
;PR25.c: 340: if(num_dig>=5)
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l2728
u3120:
	line	342
	
l2724:	
;PR25.c: 341: {
;PR25.c: 342: data=data%100000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	01h
	movwf	(?___llmod+2)
	movlw	086h
	movwf	(?___llmod+1)
	movlw	0A0h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	343
	
l2726:	
;PR25.c: 343: send_char(data/10000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	027h
	movwf	(?___lldiv+1)
	movlw	010h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2728
	line	344
	
l635:	
	line	345
	
l2728:	
;PR25.c: 344: }
;PR25.c: 345: if(num_dig>=4)
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l2734
u3130:
	line	347
	
l2730:	
;PR25.c: 346: {
;PR25.c: 347: data=data%10000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	027h
	movwf	(?___llmod+1)
	movlw	010h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	348
	
l2732:	
;PR25.c: 348: send_char(data/1000+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	03h
	movwf	(?___lldiv+1)
	movlw	0E8h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2734
	line	349
	
l636:	
	line	350
	
l2734:	
;PR25.c: 349: }
;PR25.c: 350: if(num_dig>=3)
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2740
u3140:
	line	352
	
l2736:	
;PR25.c: 351: {
;PR25.c: 352: data=data%1000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	03h
	movwf	(?___llmod+1)
	movlw	0E8h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	353
	
l2738:	
;PR25.c: 353: send_char(data/100+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	064h
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2740
	line	354
	
l637:	
	line	355
	
l2740:	
;PR25.c: 354: }
;PR25.c: 355: if(num_dig>=2)
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l2746
u3150:
	line	357
	
l2742:	
;PR25.c: 356: {
;PR25.c: 357: data=data%100;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	064h
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	358
	
l2744:	
;PR25.c: 358: send_char(data/10+0x30);
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	0Ah
	movwf	(?___lldiv)

	movf	(send_dec@data+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@data),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	addlw	030h
	fcall	_send_char
	goto	l2746
	line	359
	
l638:	
	line	360
	
l2746:	
;PR25.c: 359: }
;PR25.c: 360: if(num_dig>=1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_dec@num_dig),w
	skipz
	goto	u3160
	goto	l640
u3160:
	line	362
	
l2748:	
;PR25.c: 361: {
;PR25.c: 362: data=data%10;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	movf	(send_dec@data+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@data+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@data+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@data),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	line	363
	
l2750:	
;PR25.c: 363: send_char(data+0x30);
	movf	(send_dec@data),w
	addlw	030h
	fcall	_send_char
	goto	l640
	line	364
	
l639:	
	line	365
	
l640:	
	return
	opt stack 0
GLOBAL	__end_of_send_dec
	__end_of_send_dec:
;; =============== function _send_dec ends ============

	signat	_send_dec,8312
	global	_send_string
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function _send_string *****************
;; Defined at:
;;		line 396 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_14(16), STR_13(8), STR_12(15), STR_11(8), 
;;		 -> STR_10(14), STR_9(15), STR_8(18), STR_7(8), 
;;		 -> STR_6(16), STR_5(17), STR_4(14), STR_3(15), 
;;		 -> STR_2(10), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_14(16), STR_13(8), STR_12(15), STR_11(8), 
;;		 -> STR_10(14), STR_9(15), STR_8(18), STR_7(8), 
;;		 -> STR_6(16), STR_5(17), STR_4(14), STR_3(15), 
;;		 -> STR_2(10), STR_1(11), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	396
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 4
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	397
	
l2682:	
;PR25.c: 397: while (s && *s)send_char (*s++);
	goto	l2688
	
l655:	
	
l2684:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2686:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l2688
	
l654:	
	
l2688:	
	movf	(send_string@s),w
	skipz
	goto	u3050
	goto	l659
u3050:
	
l2690:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l2684
u3060:
	goto	l659
	
l657:	
	goto	l659
	
l658:	
	line	398
	
l659:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 376 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text253
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	376
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	377
	
l2674:	
;PR25.c: 377: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l2678
u3040:
	line	379
	
l2676:	
;PR25.c: 378: {
;PR25.c: 379: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	380
;PR25.c: 380: }
	goto	l648
	line	381
	
l646:	
	line	383
	
l2678:	
;PR25.c: 381: else
;PR25.c: 382: {
;PR25.c: 383: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	384
	
l2680:	
;PR25.c: 384: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l648
	line	385
	
l647:	
	line	386
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 390 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text254
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	390
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 4
; Regs used in _lcd_clr: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	391
	
l2672:	
;PR25.c: 391: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	392
;PR25.c: 392: delay(350);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	05Eh
	movwf	(?_delay)

	fcall	_delay
	line	393
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_init
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _init *****************
;; Defined at:
;;		line 267 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text255
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	267
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 4
; Regs used in _init: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	269
	
l2648:	
;PR25.c: 269: ADCON1 = 0X06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	272
;PR25.c: 272: TRISA = 0b00111100;
	movlw	(03Ch)
	movwf	(133)^080h	;volatile
	line	273
	
l2650:	
;PR25.c: 273: TRISB = 0b00000000;
	clrf	(134)^080h	;volatile
	line	274
	
l2652:	
;PR25.c: 274: TRISC = 0b00000111;
	movlw	(07h)
	movwf	(135)^080h	;volatile
	line	277
	
l2654:	
;PR25.c: 277: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	278
	
l2656:	
;PR25.c: 278: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	279
	
l2658:	
;PR25.c: 279: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	280
	
l2660:	
;PR25.c: 280: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	281
	
l2662:	
;PR25.c: 281: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	283
	
l2664:	
;PR25.c: 283: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	284
	
l2666:	
;PR25.c: 284: delay(5000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	013h
	movwf	(?_delay+1)
	movlw	088h
	movwf	(?_delay)

	fcall	_delay
	line	285
	
l2668:	
;PR25.c: 285: RC3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	286
	
l2670:	
;PR25.c: 286: RA1=0;
	bcf	(41/8),(41)&7
	line	287
	
l616:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_send_char
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:

;; *************** function _send_char *****************
;; Defined at:
;;		line 306 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_e_pulse
;; This function is called by:
;;		_send_dec
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text256
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	306
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 4
; Regs used in _send_char: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	307
	
l2640:	
;PR25.c: 307: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	308
	
l2642:	
;PR25.c: 308: PORTB = data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	309
	
l2644:	
;PR25.c: 309: delay(400);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	090h
	movwf	(?_delay)

	fcall	_delay
	line	310
	
l2646:	
;PR25.c: 310: e_pulse();
	fcall	_e_pulse
	line	311
	
l627:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:

;; *************** function _send_config *****************
;; Defined at:
;;		line 298 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_e_pulse
;; This function is called by:
;;		_init
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text257
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	298
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 4
; Regs used in _send_config: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	299
	
l2632:	
;PR25.c: 299: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	300
	
l2634:	
;PR25.c: 300: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	301
	
l2636:	
;PR25.c: 301: delay(400);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	090h
	movwf	(?_delay)

	fcall	_delay
	line	302
	
l2638:	
;PR25.c: 302: e_pulse();
	fcall	_e_pulse
	line	303
	
l624:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_e_pulse
psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:

;; *************** function _e_pulse *****************
;; Defined at:
;;		line 368 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_send_config
;;		_send_char
;; This function uses a non-reentrant model
;;
psect	text258
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	368
	global	__size_of_e_pulse
	__size_of_e_pulse	equ	__end_of_e_pulse-_e_pulse
	
_e_pulse:	
	opt	stack 4
; Regs used in _e_pulse: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	369
	
l2626:	
;PR25.c: 369: RC5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	370
	
l2628:	
;PR25.c: 370: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	371
	
l2630:	
;PR25.c: 371: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	372
;PR25.c: 372: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	373
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_e_pulse
	__end_of_e_pulse:
;; =============== function _e_pulse ends ============

	signat	_e_pulse,88
	global	___lldiv
psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text259
	file	"C:\Program Files\HI-TECH Software\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l2602:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l2622
u2970:
	line	11
	
l2604:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l2608
	
l842:	
	line	13
	
l2606:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2985:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2985
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l2608
	line	15
	
l841:	
	line	12
	
l2608:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2606
u2990:
	goto	l2610
	
l843:	
	goto	l2610
	line	16
	
l844:	
	line	17
	
l2610:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3005:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3005
	line	18
	
l2612:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3015
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3015
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3015
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3015:
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l2618
u3010:
	line	19
	
l2614:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l2616:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l2618
	line	21
	
l845:	
	line	22
	
l2618:	
	movlw	01h
u3025:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3025

	line	23
	
l2620:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l2610
u3030:
	goto	l2622
	
l846:	
	goto	l2622
	line	24
	
l840:	
	line	25
	
l2622:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l847
	
l2624:	
	line	26
	
l847:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___llmod
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text260
	file	"C:\Program Files\HI-TECH Software\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l2582:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l2598
u2910:
	line	9
	
l2584:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l2588
	
l823:	
	line	11
	
l2586:	
	movlw	01h
	movwf	(??___llmod+0)+0
u2925:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u2925
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l2588
	line	13
	
l822:	
	line	10
	
l2588:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l2586
u2930:
	goto	l2590
	
l824:	
	goto	l2590
	line	14
	
l825:	
	line	15
	
l2590:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2945
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2945
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2945
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2945:
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2594
u2940:
	line	16
	
l2592:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l2594
	
l826:	
	line	17
	
l2594:	
	movlw	01h
u2955:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u2955

	line	18
	
l2596:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l2590
u2960:
	goto	l2598
	
l827:	
	goto	l2598
	line	19
	
l821:	
	line	20
	
l2598:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l828
	
l2600:	
	line	21
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	_delay
psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:

;; *************** function _delay *****************
;; Defined at:
;;		line 292 in file "C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  i               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_init
;;		_send_config
;;		_send_char
;;		_e_pulse
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text261
	file	"C:\Users\Phang\Desktop\9.80\PR 25\PR25.c"
	line	292
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	294
	
l2572:	
;PR25.c: 293: int i;
;PR25.c: 294: for( i = data; i>0; i--);
	movf	(delay@data+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@data),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l2574:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2895
	movlw	low(01h)
	subwf	(delay@i),w
u2895:

	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l2578
u2890:
	goto	l621
	
l2576:	
	goto	l621
	
l619:	
	
l2578:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l2580:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2905
	movlw	low(01h)
	subwf	(delay@i),w
u2905:

	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l2578
u2900:
	goto	l621
	
l620:	
	line	295
	
l621:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
