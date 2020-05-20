;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _T_int
	.globl _main
	.globl _DCLK
	.globl _DIO
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
	.globl _digit04
	.globl _digit03
	.globl _digit02
	.globl _digit01
	.globl _C3
	.globl _C2
	.globl _C1
	.globl _count_time
	.globl _T_int_flag
	.globl _min_disp
	.globl _hr_disp
	.globl _num
	.globl _sys_tim_init
	.globl _rtc_2_tm1367
	.globl _tm1367_byteWrite
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
_DIO	=	0x00a6
_DCLK	=	0x00a5
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_num::
	.ds 10
_hr_disp::
	.ds 1
_min_disp::
	.ds 1
_T_int_flag::
	.ds 2
_count_time::
	.ds 2
_C1::
	.ds 1
_C2::
	.ds 1
_C3::
	.ds 1
_digit01::
	.ds 1
_digit02::
	.ds 1
_digit03::
	.ds 1
_digit04::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_tm1367_byteWrite_i_65536_8:
	.ds 2
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
	ljmp	_T_int
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
;	main.c:13: unsigned char num[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x67, 0x6d, 0x7d, 0x07, 0x7f, 0x6f}; //0~9
	mov	_num,#0x3f
	mov	(_num + 0x0001),#0x06
	mov	(_num + 0x0002),#0x5b
	mov	(_num + 0x0003),#0x4f
	mov	(_num + 0x0004),#0x67
	mov	(_num + 0x0005),#0x6d
	mov	(_num + 0x0006),#0x7d
	mov	(_num + 0x0007),#0x07
	mov	(_num + 0x0008),#0x7f
	mov	(_num + 0x0009),#0x6f
;	main.c:14: unsigned char hr_disp = 0x00;
	mov	_hr_disp,#0x00
;	main.c:15: unsigned char min_disp = 0x00;
	mov	_min_disp,#0x00
;	main.c:17: volatile int T_int_flag = 0;
	clr	a
	mov	_T_int_flag,a
	mov	(_T_int_flag + 1),a
;	main.c:18: volatile int count_time = 0;
	mov	_count_time,a
	mov	(_count_time + 1),a
;	main.c:20: unsigned char C1 = 0x00;
;	1-genFromRTrack replaced	mov	_C1,#0x00
	mov	_C1,a
;	main.c:21: unsigned char C2 = 0x00;
;	1-genFromRTrack replaced	mov	_C2,#0x00
	mov	_C2,a
;	main.c:22: unsigned char C3 = 0x00;
;	1-genFromRTrack replaced	mov	_C3,#0x00
	mov	_C3,a
;	main.c:23: unsigned char digit01 = 0;
;	1-genFromRTrack replaced	mov	_digit01,#0x00
	mov	_digit01,a
;	main.c:24: unsigned char digit02 = 0;
;	1-genFromRTrack replaced	mov	_digit02,#0x00
	mov	_digit02,a
;	main.c:25: unsigned char digit03 = 0;
;	1-genFromRTrack replaced	mov	_digit03,#0x00
	mov	_digit03,a
;	main.c:26: unsigned char digit04 = 0;
;	1-genFromRTrack replaced	mov	_digit04,#0x00
	mov	_digit04,a
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
;	main.c:37: void main()
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
;	main.c:39: DIO = 1;
;	assignBit
	setb	_DIO
;	main.c:40: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:41: sys_tim_init();
	lcall	_sys_tim_init
;	main.c:42: while (1)
00106$:
;	main.c:44: if (T_int_flag)
	mov	a,_T_int_flag
	orl	a,(_T_int_flag + 1)
	jz	00106$
;	main.c:46: rtc_2_tm1367();
	lcall	_rtc_2_tm1367
;	main.c:47: if (count_time == 500) //0.5sec는 on, 0.5sec는 off.
	mov	a,#0xf4
	cjne	a,_count_time,00102$
	mov	a,#0x01
	cjne	a,(_count_time + 1),00102$
;	main.c:50: digit02 ^= 0x80; //XOR연산. MSB가 1이면 0으로, 0이면 1로 나머지는 0과 연산이므로 그대로 유지.
	mov	r6,_digit02
	mov	r7,#0x00
	xrl	ar6,#0x80
	mov	_digit02,r6
;	main.c:51: count_time = 0;
	clr	a
	mov	_count_time,a
	mov	(_count_time + 1),a
00102$:
;	main.c:53: tm1367_byteWrite(); //Data를 1ms 마다 가져 올 수 있게 하는 것이 좋을 듯. Time interval은 실험적으로 조정.
	lcall	_tm1367_byteWrite
;	main.c:57: T_int_flag = !(T_int_flag);
	mov	a,_T_int_flag
	orl	a,(_T_int_flag + 1)
	cjne	a,#0x01,00125$
00125$:
	clr	a
	rlc	a
	mov	r7,a
	mov	_T_int_flag,r7
	rlc	a
	subb	a,acc
	mov	(_T_int_flag + 1),a
;	main.c:60: }
	sjmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'sys_tim_init'
;------------------------------------------------------------
;	main.c:62: void sys_tim_init()
;	-----------------------------------------
;	 function sys_tim_init
;	-----------------------------------------
_sys_tim_init:
;	main.c:64: TMOD = 0x01; //GATE = 0, C/T = 0, Timer/counter mode 1
	mov	_TMOD,#0x01
;	main.c:65: TF0 = 0;     // Timer/counter 0 interrupt flag clear
;	assignBit
	clr	_TF0
;	main.c:66: TL0 = 0xfc;
	mov	_TL0,#0xfc
;	main.c:67: TH0 = 0x17; //Time const. to generate 1ms //0xffff-0xfc17 = 1000. //1MC = 1us.
	mov	_TH0,#0x17
;	main.c:68: IE = 0x82;  // IE -> interrupt enable reg. Timer interrupt enables & entire interrupt enable.
	mov	_IE,#0x82
;	main.c:69: IP = 0x02;  // IP -> interrupt priority. Set timer interrupt 0 as the highest priority.
	mov	_IP,#0x02
;	main.c:72: TR0 = 1; // Timer interrupt 0 RUN.
;	assignBit
	setb	_TR0
;	main.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T_int'
;------------------------------------------------------------
;	main.c:76: void T_int() __interrupt(1) // void [user name]() interrupt [vector num.]
;	-----------------------------------------
;	 function T_int
;	-----------------------------------------
_T_int:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:78: T_int_flag = 1;
	mov	_T_int_flag,#0x01
	mov	(_T_int_flag + 1),#0x00
;	main.c:80: count_time++;
	mov	r6,_count_time
	mov	r7,(_count_time + 1)
	mov	a,#0x01
	add	a,r6
	mov	_count_time,a
	clr	a
	addc	a,r7
	mov	(_count_time + 1),a
;	main.c:82: TL0 = 0xfc;
	mov	_TL0,#0xfc
;	main.c:83: TH0 = 0x17; // Reset of these two register is necessary for periodic interrupt since it is mode 1.
	mov	_TH0,#0x17
;	main.c:84: EA = 1;     // Interrupt enables
;	assignBit
	setb	_EA
;	main.c:85: return;
;	main.c:86: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_2_tm1367'
;------------------------------------------------------------
;	main.c:88: void rtc_2_tm1367()
;	-----------------------------------------
;	 function rtc_2_tm1367
;	-----------------------------------------
_rtc_2_tm1367:
;	main.c:92: hr_disp = 0x12; //this code is for test.
	mov	_hr_disp,#0x12
;	main.c:94: min_disp = 0x50; //this code is for test
	mov	_min_disp,#0x50
;	main.c:96: digit01 = num[(hr_disp >> 4)];
	mov	_digit01,(_num + 0x0001)
;	main.c:97: digit02 = num[(hr_disp | 0x0f)];
	mov	_digit02,(_num + 0x001f)
;	main.c:98: digit03 = num[(min_disp >> 4)];
	mov	_digit03,(_num + 0x0005)
;	main.c:99: digit04 = num[(min_disp | 0x0f)];
	mov	_digit04,(_num + 0x005f)
;	main.c:100: return;
;	main.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tm1367_byteWrite'
;------------------------------------------------------------
;i                         Allocated with name '_tm1367_byteWrite_i_65536_8'
;------------------------------------------------------------
;	main.c:104: void tm1367_byteWrite()
;	-----------------------------------------
;	 function tm1367_byteWrite
;	-----------------------------------------
_tm1367_byteWrite:
;	main.c:107: DIO = 0; //Writing SRAM Data initiate.
;	assignBit
	clr	_DIO
;	main.c:109: C1 = 0x40; //Normal, auto increment 1 mode, write data to display.
	mov	_C1,#0x40
;	main.c:110: C2 = 0xC0; //Base address
	mov	_C2,#0xc0
;	main.c:111: C3 = 0x8f; //Display ON, Brightness 8 (1~8)
	mov	_C3,#0x8f
;	main.c:116: for (i = 0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00144$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	main.c:118: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:119: if (C1 & 0x01)
	mov	a,_C1
	jnb	acc.0,00102$
;	main.c:121: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00103$
00102$:
;	main.c:125: DIO = 0;
;	assignBit
	clr	_DIO
00103$:
;	main.c:128: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:129: C1 >>= 1;
	mov	a,_C1
	clr	c
	rrc	a
	mov	_C1,a
;	main.c:116: for (i = 0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00144$
00104$:
;	main.c:133: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:134: if (DIO != 0)
	jnb	_DIO,00106$
;	main.c:136: return;
	ret
00106$:
;	main.c:138: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:143: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:144: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:145: DIO = 1;
;	assignBit
	setb	_DIO
;	main.c:146: DIO = 0;
;	assignBit
	clr	_DIO
;	main.c:149: for (i=0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00147$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00110$
;	main.c:151: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:152: if (C2 & 0x01)
	mov	a,_C2
	jnb	acc.0,00108$
;	main.c:154: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00109$
00108$:
;	main.c:158: DIO = 0;
;	assignBit
	clr	_DIO
00109$:
;	main.c:161: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:162: C2 >>= 1;
	mov	a,_C2
	clr	c
	rrc	a
	mov	_C2,a
;	main.c:149: for (i=0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00147$
00110$:
;	main.c:166: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:167: if (DIO != 0)
	jnb	_DIO,00112$
;	main.c:169: return;
	ret
00112$:
;	main.c:174: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:177: for (i=0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00150$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00116$
;	main.c:179: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:180: if (digit01 & 0x01)
	mov	a,_digit01
	jnb	acc.0,00114$
;	main.c:182: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00115$
00114$:
;	main.c:186: DIO = 0;
;	assignBit
	clr	_DIO
00115$:
;	main.c:189: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:190: digit01 >>= 1;
	mov	a,_digit01
	clr	c
	rrc	a
	mov	_digit01,a
;	main.c:177: for (i=0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00150$
00116$:
;	main.c:194: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:195: if (DIO != 0)
	jnb	_DIO,00118$
;	main.c:197: return;
	ret
00118$:
;	main.c:202: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:205: for (i=0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00153$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00122$
;	main.c:207: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:208: if (digit02 & 0x01)
	mov	a,_digit02
	jnb	acc.0,00120$
;	main.c:210: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00121$
00120$:
;	main.c:214: DIO = 0;
;	assignBit
	clr	_DIO
00121$:
;	main.c:217: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:218: digit02 >>= 1;
	mov	a,_digit02
	clr	c
	rrc	a
	mov	_digit02,a
;	main.c:205: for (i=0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00153$
00122$:
;	main.c:222: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:223: if (DIO != 0)
	jnb	_DIO,00124$
;	main.c:225: return;
	ret
00124$:
;	main.c:230: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:233: for (i=0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00156$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00128$
;	main.c:235: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:236: if (digit03 & 0x01)
	mov	a,_digit03
	jnb	acc.0,00126$
;	main.c:238: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00127$
00126$:
;	main.c:242: DIO = 0;
;	assignBit
	clr	_DIO
00127$:
;	main.c:245: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:246: digit03 >>= 1;
	mov	a,_digit03
	clr	c
	rrc	a
	mov	_digit03,a
;	main.c:233: for (i=0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00156$
00128$:
;	main.c:250: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:251: if (DIO != 0)
	jnb	_DIO,00130$
;	main.c:253: return;
	ret
00130$:
;	main.c:258: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:261: for (i=0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00159$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00134$
;	main.c:263: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:264: if (digit04 & 0x01)
	mov	a,_digit04
	jnb	acc.0,00132$
;	main.c:266: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00133$
00132$:
;	main.c:270: DIO = 0;
;	assignBit
	clr	_DIO
00133$:
;	main.c:273: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:274: digit04 >>= 1;
	mov	a,_digit04
	clr	c
	rrc	a
	mov	_digit04,a
;	main.c:261: for (i=0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00159$
00134$:
;	main.c:278: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:279: if (DIO != 0)
	jnb	_DIO,00136$
;	main.c:281: return;
	ret
00136$:
;	main.c:286: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:289: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:290: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:291: DIO = 1;
;	assignBit
	setb	_DIO
;	main.c:292: DIO = 0;
;	assignBit
	clr	_DIO
;	main.c:294: for (i=0; i < 8; i++)
	clr	a
	mov	_tm1367_byteWrite_i_65536_8,a
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
00162$:
	clr	c
	mov	a,_tm1367_byteWrite_i_65536_8
	subb	a,#0x08
	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00140$
;	main.c:296: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:297: if (C3 & 0x01)
	mov	a,_C3
	jnb	acc.0,00138$
;	main.c:299: DIO = 1;
;	assignBit
	setb	_DIO
	sjmp	00139$
00138$:
;	main.c:303: DIO = 0;
;	assignBit
	clr	_DIO
00139$:
;	main.c:306: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:307: C3 >>= 1;
	mov	a,_C3
	clr	c
	rrc	a
	mov	_C3,a
;	main.c:294: for (i=0; i < 8; i++)
	mov	r6,_tm1367_byteWrite_i_65536_8
	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tm1367_byteWrite_i_65536_8,a
	clr	a
	addc	a,r7
	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
	sjmp	00162$
00140$:
;	main.c:311: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:312: if (DIO != 0)
	jnb	_DIO,00142$
;	main.c:314: return;
	ret
00142$:
;	main.c:319: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:322: DCLK = 0;
;	assignBit
	clr	_DCLK
;	main.c:323: DCLK = 1;
;	assignBit
	setb	_DCLK
;	main.c:324: DIO = 1;
;	assignBit
	setb	_DIO
;	main.c:326: return;
;	main.c:327: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
