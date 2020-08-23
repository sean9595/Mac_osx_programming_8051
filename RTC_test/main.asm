;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _byte_write_PARM_2
	.globl _T_int_01
	.globl _main
	.globl _RST
	.globl _IO
	.globl _SCLK
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _min
	.globl _hr
	.globl _num
	.globl _d
	.globl _c
	.globl _b
	.globl _a
	.globl _min_bcd
	.globl _hr_bcd
	.globl _day_bcd
	.globl _date_bcd
	.globl _mnth_bcd
	.globl _year_bcd
	.globl _count_01
	.globl _T_int_flag_01
	.globl _sys_init
	.globl _delay
	.globl _byte_write
	.globl _byte_read
	.globl _display
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_SCLK	=	0x0092
_IO	=	0x0093
_RST	=	0x0094
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_T_int_flag_01::
	.ds 1
_count_01::
	.ds 1
_year_bcd::
	.ds 1
_mnth_bcd::
	.ds 1
_date_bcd::
	.ds 1
_day_bcd::
	.ds 1
_hr_bcd::
	.ds 1
_min_bcd::
	.ds 1
_a::
	.ds 1
_b::
	.ds 1
_c::
	.ds 1
_d::
	.ds 1
_num::
	.ds 10
_hr::
	.ds 1
_min::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_byte_write_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_T_int_01
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:23: unsigned char T_int_flag_01 = 0;
	mov	_T_int_flag_01,#0x00
;	main.c:24: unsigned char count_01 = 0;
	mov	_count_01,#0x00
;	main.c:26: unsigned char year_bcd = 0x20; //0~99 range이므로 20은 따로 적어야한다.
	mov	_year_bcd,#0x20
;	main.c:27: unsigned char mnth_bcd = 0x01;
	mov	_mnth_bcd,#0x01
;	main.c:28: unsigned char date_bcd = 0x01;
	mov	_date_bcd,#0x01
;	main.c:29: unsigned char day_bcd = 0x01;
	mov	_day_bcd,#0x01
;	main.c:30: unsigned char hr_bcd = 0x80; //Default setting is the 12hour set.
	mov	_hr_bcd,#0x80
;	main.c:31: unsigned char min_bcd = 0x00;
	mov	_min_bcd,#0x00
;	main.c:33: unsigned char a = 0, b = 0, c = 0, d = 0;
	mov	_a,#0x00
;	main.c:33: unsigned char num[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};
	mov	_b,#0x00
;	main.c:33: unsigned char a = 0, b = 0, c = 0, d = 0;
	mov	_c,#0x00
;	main.c:33: unsigned char num[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};
	mov	_d,#0x00
;	main.c:34: //7-segment common cathod.
	mov	_num,#0x40
	mov	(_num + 0x0001),#0x79
	mov	(_num + 0x0002),#0x24
	mov	(_num + 0x0003),#0x30
	mov	(_num + 0x0004),#0x19
	mov	(_num + 0x0005),#0x12
	mov	(_num + 0x0006),#0x02
	mov	(_num + 0x0007),#0x78
	mov	(_num + 0x0008),#0x00
	mov	(_num + 0x0009),#0x10
;	main.c:37: unsigned char hr = 0;
	mov	_hr,#0x00
;	main.c:38: unsigned char min = 0;
	mov	_min,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:41: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:43: sys_init();
	lcall	_sys_init
;	main.c:45: while (1) //infinite loop
00104$:
;	main.c:47: if (T_int_flag_01)
	mov	a,_T_int_flag_01
	jz	00104$
;	main.c:49: display();
	lcall	_display
;	main.c:52: }
	sjmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'sys_init'
;------------------------------------------------------------
;	main.c:55: void sys_init() //여기에 기본 interrupt 설정과 application 초기화를 위한 함수가 배치됨.
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
;	main.c:58: RST = 0;
;	assignBit
	clr	_RST
;	main.c:59: IO = 0;
;	assignBit
	clr	_IO
;	main.c:60: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:62: TMOD = 0x01; //GATE = 0, C/T = 0, Timer/counter mode 1, Use timer/counter 0 & 1.
	mov	_TMOD,#0x01
;	main.c:63: TF0 = 0;     // Timer/counter 0 interrupt flag clear
;	assignBit
	clr	_TF0
;	main.c:64: TH0 = 0xec;
	mov	_TH0,#0xec
;	main.c:65: TL0 = 0x78; // TI0 occurs every 5 ms
	mov	_TL0,#0x78
;	main.c:67: IE = 0x82;  // 0b1000 0010 IE -> interrupt enable reg. Timer interrupt enables & entire interrupt enable.
	mov	_IE,#0x82
;	main.c:68: IP = 0x02;  // IP -> interrupt priority. Set timer interrupt 0 as the highest priority.
	mov	_IP,#0x02
;	main.c:71: TR0 = 1;    // Timer interrupt 0 RUN.
;	assignBit
	setb	_TR0
;	main.c:73: delay(1); //pause for 1ms.
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:76: byte_write(0x82, min_bcd);
	mov	_byte_write_PARM_2,_min_bcd
	mov	dpl,#0x82
	lcall	_byte_write
;	main.c:77: byte_write(0x84, hr_bcd);
	mov	_byte_write_PARM_2,_hr_bcd
	mov	dpl,#0x84
	lcall	_byte_write
;	main.c:78: byte_write(0x86, date_bcd);
	mov	_byte_write_PARM_2,_date_bcd
	mov	dpl,#0x86
	lcall	_byte_write
;	main.c:79: byte_write(0x88, mnth_bcd);
	mov	_byte_write_PARM_2,_mnth_bcd
	mov	dpl,#0x88
	lcall	_byte_write
;	main.c:80: byte_write(0x8a, day_bcd);
	mov	_byte_write_PARM_2,_day_bcd
	mov	dpl,#0x8a
	lcall	_byte_write
;	main.c:81: byte_write(0x8c, year_bcd);
	mov	_byte_write_PARM_2,_year_bcd
	mov	dpl,#0x8c
;	main.c:83: return;
;	main.c:84: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:86: void delay(unsigned int ms)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:89: for (i = 1; i <= ms; i++)
	mov	r4,#0x01
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00109$
;	main.c:91: for (j = 1; j <= 125; j++)
	mov	r2,#0x7d
	mov	r3,#0x00
00105$:
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	main.c:89: for (i = 1; i <= ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T_int_01'
;------------------------------------------------------------
;	main.c:97: void T_int_01() __interrupt 1 // void [user name]() interrupt [vector num.]
;	-----------------------------------------
;	 function T_int_01
;	-----------------------------------------
_T_int_01:
	push	acc
	push	psw
;	main.c:100: T_int_flag_01 = 1;
	mov	_T_int_flag_01,#0x01
;	main.c:102: count_01++;
	inc	_count_01
;	main.c:103: if (count_01 > 3)
	mov	a,_count_01
	add	a,#0xff - 0x03
	jnc	00102$
;	main.c:105: count_01 = 0; //count increment & count initialization have to be placed at the same place.
	mov	_count_01,#0x00
00102$:
;	main.c:107: TH0 = 0xec;
	mov	_TH0,#0xec
;	main.c:108: TL0 = 0x78; // Reset of these two register is necessary for periodic interrupt since it is mode 1.
	mov	_TL0,#0x78
;	main.c:109: EA = 1;     // Interrupt enables
;	assignBit
	setb	_EA
;	main.c:110: return;
;	main.c:111: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'byte_write'
;------------------------------------------------------------
;w_data                    Allocated with name '_byte_write_PARM_2'
;w_addr                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:115: void byte_write(unsigned char w_addr, unsigned char w_data)
;	-----------------------------------------
;	 function byte_write
;	-----------------------------------------
_byte_write:
	mov	r7,dpl
;	main.c:119: RST = 1;
;	assignBit
	setb	_RST
;	main.c:121: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00109$:
;	main.c:123: if (w_addr & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
;	main.c:125: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00103$
00102$:
;	main.c:129: IO = 0;
;	assignBit
	clr	_IO
00103$:
;	main.c:131: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:132: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:133: w_addr >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:121: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00142$
00142$:
	jc	00109$
;	main.c:136: for (i = 0; i < 8; i++)
	mov	r7,#0x00
00111$:
;	main.c:138: if (w_data & 0x01)
	mov	a,_byte_write_PARM_2
	jnb	acc.0,00106$
;	main.c:140: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00107$
00106$:
;	main.c:144: IO = 0;
;	assignBit
	clr	_IO
00107$:
;	main.c:146: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:147: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:148: w_data >>= 1;
	mov	a,_byte_write_PARM_2
	clr	c
	rrc	a
	mov	_byte_write_PARM_2,a
;	main.c:136: for (i = 0; i < 8; i++)
	inc	r7
	cjne	r7,#0x08,00145$
00145$:
	jc	00111$
;	main.c:151: RST = 0;
;	assignBit
	clr	_RST
;	main.c:152: return;
;	main.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'byte_read'
;------------------------------------------------------------
;r_addr                    Allocated to registers r7 
;i                         Allocated to registers r6 
;r_data                    Allocated to registers r4 
;tmp                       Allocated to registers r5 
;------------------------------------------------------------
;	main.c:155: unsigned char byte_read(unsigned char r_addr) //read data on RTC.
;	-----------------------------------------
;	 function byte_read
;	-----------------------------------------
_byte_read:
	mov	r7,dpl
;	main.c:159: RST = 1; //rst pin high for data access.
;	assignBit
	setb	_RST
;	main.c:161: for (i = 0; i < 7; i++)
	mov	r6,#0x00
00109$:
;	main.c:163: if (r_addr & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
;	main.c:165: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00103$
00102$:
;	main.c:169: IO = 0;
;	assignBit
	clr	_IO
00103$:
;	main.c:171: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:172: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:173: r_addr >>= 1; //Right shifting for 1 bit.
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:161: for (i = 0; i < 7; i++)
	inc	r6
	cjne	r6,#0x07,00148$
00148$:
	jc	00109$
;	main.c:176: if (r_addr & 0x01)
	mov	a,r7
	jnb	acc.0,00106$
;	main.c:178: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00107$
00106$:
;	main.c:182: IO = 0;
;	assignBit
	clr	_IO
00107$:
;	main.c:185: SCLK = 1; //
;	assignBit
	setb	_SCLK
;	main.c:187: r_data = 0x00;
	mov	r7,#0x00
;	main.c:189: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00111$:
;	main.c:191: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:192: tmp = IO;
	mov	c,_IO
	clr	a
	rlc	a
;	main.c:193: tmp <<= 7;
	rr	a
	anl	a,#0x80
	mov	r5,a
;	main.c:194: r_data >>= 1;
	mov	a,r7
	clr	c
	rrc	a
;	main.c:195: r_data |= tmp;
	orl	a,r5
	mov	r7,a
;	main.c:196: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:189: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00151$
00151$:
	jc	00111$
;	main.c:199: RST = 0;
;	assignBit
	clr	_RST
;	main.c:201: return r_data;
	mov	dpl,r7
;	main.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	main.c:204: void display()
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	main.c:207: if (count_01 == 0)
	mov	a,_count_01
	jnz	00110$
;	main.c:209: hr = byte_read(0x85);
	mov	dpl,#0x85
	lcall	_byte_read
;	main.c:210: a = ((hr >> 4) & 0x01);
	mov	a,dpl
	mov	_hr,a
	swap	a
	anl	a,#0x01
;	main.c:211: P0 = 0x0e;
;	main.c:212: P1 = num[a];
	mov	_a,a
	mov	_P0,#0x0e
	add	a,#_num
	mov	r1,a
	mov	_P1,@r1
	ret
00110$:
;	main.c:215: else if (count_01 == 1)
	mov	a,#0x01
	cjne	a,_count_01,00107$
;	main.c:217: hr = byte_read(0x85);
	mov	dpl,#0x85
	lcall	_byte_read
;	main.c:218: b = (hr & 0x0f);
	mov	a,dpl
	mov	_hr,a
	anl	a,#0x0f
;	main.c:219: P0 = 0x0d;
;	main.c:220: P1 = num[b];
	mov	_b,a
	mov	_P0,#0x0d
	add	a,#_num
	mov	r1,a
	mov	_P1,@r1
	ret
00107$:
;	main.c:223: else if (count_01 == 2)
	mov	a,#0x02
	cjne	a,_count_01,00104$
;	main.c:225: min = byte_read(0x83);
	mov	dpl,#0x83
	lcall	_byte_read
;	main.c:226: c = ((min>>4) & 0x07);
	mov	a,dpl
	mov	_min,a
	swap	a
	anl	a,#0x0f
	mov	r7,a
	mov	a,#0x07
	anl	a,r7
;	main.c:227: P0 = 0x0b;
;	main.c:228: P1 = num[c];
	mov	_c,a
	mov	_P0,#0x0b
	add	a,#_num
	mov	r1,a
	mov	_P1,@r1
	ret
00104$:
;	main.c:231: else if (count_01 == 3)
	mov	a,#0x03
	cjne	a,_count_01,00111$
;	main.c:233: min = byte_read(0x83);
	mov	dpl,#0x83
	lcall	_byte_read
;	main.c:234: d = (min & 0x0f);
	mov	a,dpl
	mov	_min,a
	anl	a,#0x0f
;	main.c:235: P0 = 0x07;
;	main.c:236: P1 = num[d];
	mov	_d,a
	mov	_P0,#0x07
	add	a,#_num
	mov	r1,a
	mov	_P1,@r1
00111$:
;	main.c:239: return;
;	main.c:240: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
