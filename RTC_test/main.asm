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
	.globl _btn_int
	.globl _main
	.globl _btn_03
	.globl _btn_02
	.globl _btn_01
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
	.globl _min_bcd
	.globl _hr_bcd
	.globl _day_bcd
	.globl _date_bcd
	.globl _mnth_bcd
	.globl _year_bcd
	.globl _count_01
	.globl _btn_int_flag
	.globl _sys_init
	.globl _delay
	.globl _byte_write
	.globl _byte_read
	.globl _year_set
	.globl _mnth_set
	.globl _date_set
	.globl _day_set
	.globl _hr_set
	.globl _min_set
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
_btn_01	=	0x00b3
_btn_02	=	0x00b4
_btn_03	=	0x00b5
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_btn_int_flag::
	.ds 1
_count_01::
	.ds 2
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
_main_count_196609_10:
	.ds 2
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
	ljmp	_btn_int
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
;	main.c:31: unsigned char btn_int_flag = 0; //원래 Flag는 bit로 선언해야한다.
	mov	_btn_int_flag,#0x00
;	main.c:32: volatile int count_01 = 0;
	clr	a
	mov	_count_01,a
	mov	(_count_01 + 1),a
;	main.c:34: unsigned char year_bcd = 0x20; //0~99 range이므로 20은 따로 적어야한다.
	mov	_year_bcd,#0x20
;	main.c:35: unsigned char mnth_bcd = 0x01;
	mov	_mnth_bcd,#0x01
;	main.c:36: unsigned char date_bcd = 0x01;
	mov	_date_bcd,#0x01
;	main.c:37: unsigned char day_bcd = 0x01;
	mov	_day_bcd,#0x01
;	main.c:38: unsigned char hr_bcd = 0x80; //Default setting is the 12hour set.
	mov	_hr_bcd,#0x80
;	main.c:39: unsigned char min_bcd = 0x00;
;	1-genFromRTrack replaced	mov	_min_bcd,#0x00
	mov	_min_bcd,a
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
;count                     Allocated with name '_main_count_196609_10'
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
00135$:
;	main.c:47: if (btn_int_flag)
	mov	a,_btn_int_flag
	jz	00135$
;	main.c:49: byte_write(0x8e, 0x00); //쓰기금지 disable
	mov	_byte_write_PARM_2,#0x00
	mov	dpl,#0x8e
	lcall	_byte_write
;	main.c:50: byte_write(0x80, 0x80); //Clock halt
	mov	_byte_write_PARM_2,#0x80
	mov	dpl,#0x80
	lcall	_byte_write
;	main.c:52: volatile int count = 5000;
	mov	_main_count_196609_10,#0x88
	mov	(_main_count_196609_10 + 1),#0x13
;	main.c:54: while (count != 0) //
00129$:
	mov	a,_main_count_196609_10
	orl	a,(_main_count_196609_10 + 1)
	jnz	00224$
	ljmp	00131$
00224$:
;	main.c:56: count--;
	mov	r6,_main_count_196609_10
	mov	r7,(_main_count_196609_10 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_main_count_196609_10,a
	mov	a,r7
	addc	a,#0xff
	mov	(_main_count_196609_10 + 1),a
;	main.c:57: if (btn_01)
	jnb	_btn_01,00129$
;	main.c:59: count_01 = 6;
	mov	_count_01,#0x06
	mov	(_count_01 + 1),#0x00
;	main.c:60: while (count_01 == 0)
00124$:
	mov	a,_count_01
	orl	a,(_count_01 + 1)
	jnz	00129$
;	main.c:62: if (btn_01)
	jnb	_btn_01,00102$
;	main.c:64: count_01--;
	mov	r6,_count_01
	mov	r7,(_count_01 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_count_01,a
	mov	a,r7
	addc	a,#0xff
	mov	(_count_01 + 1),a
00102$:
;	main.c:67: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:69: switch (count_01)
	mov	r6,_count_01
	mov	r7,(_count_01 + 1)
	cjne	r6,#0x01,00229$
	cjne	r7,#0x00,00229$
	sjmp	00118$
00229$:
	cjne	r6,#0x02,00230$
	cjne	r7,#0x00,00230$
	sjmp	00115$
00230$:
	cjne	r6,#0x03,00231$
	cjne	r7,#0x00,00231$
	sjmp	00112$
00231$:
	cjne	r6,#0x04,00232$
	cjne	r7,#0x00,00232$
	sjmp	00109$
00232$:
	cjne	r6,#0x05,00233$
	cjne	r7,#0x00,00233$
	sjmp	00106$
00233$:
	cjne	r6,#0x06,00124$
	cjne	r7,#0x00,00124$
;	main.c:72: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:74: year_set();
	lcall	_year_set
;	main.c:76: break;
;	main.c:77: case 5:
	sjmp	00124$
00106$:
;	main.c:78: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:80: mnth_set();
	lcall	_mnth_set
;	main.c:82: break;
;	main.c:83: case 4:
	sjmp	00124$
00109$:
;	main.c:84: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:86: date_set();
	lcall	_date_set
;	main.c:88: break;
;	main.c:89: case 3:
	sjmp	00124$
00112$:
;	main.c:90: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:92: day_set();
	lcall	_day_set
;	main.c:94: break;
;	main.c:95: case 2:
	sjmp	00124$
00115$:
;	main.c:96: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:98: hr_set();
	lcall	_hr_set
;	main.c:100: break;
;	main.c:101: case 1:
	sjmp	00124$
00118$:
;	main.c:102: if (btn_02)
	jnb	_btn_02,00124$
;	main.c:104: min_set();
	lcall	_min_set
;	main.c:107: }
	ljmp	00124$
00131$:
;	main.c:112: byte_write(0x80, 0x00); //Clock resume
	mov	_byte_write_PARM_2,#0x00
	mov	dpl,#0x80
	lcall	_byte_write
;	main.c:113: byte_write(0x8e, 0x80); //쓰기금지 enable
	mov	_byte_write_PARM_2,#0x80
	mov	dpl,#0x8e
	lcall	_byte_write
;	main.c:114: btn_int_flag = !(btn_int_flag);
	mov	a,_btn_int_flag
	cjne	a,#0x01,00242$
00242$:
	clr	a
	rlc	a
	mov	r7,a
	mov	_btn_int_flag,r7
;	main.c:115: count = 0;
	clr	a
	mov	_main_count_196609_10,a
	mov	(_main_count_196609_10 + 1),a
;	main.c:118: }
	ljmp	00135$
;------------------------------------------------------------
;Allocation info for local variables in function 'sys_init'
;------------------------------------------------------------
;	main.c:120: void sys_init() //여기에 기본 interrupt 설정과 application 초기화를 위한 함수가 배치됨.
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
;	main.c:122: btn_01 = 0;
;	assignBit
	clr	_btn_01
;	main.c:123: btn_02 = 0;
;	assignBit
	clr	_btn_02
;	main.c:124: btn_03 = 0;
;	assignBit
	clr	_btn_03
;	main.c:125: RST = 0;
;	assignBit
	clr	_RST
;	main.c:126: IO = 0;
;	assignBit
	clr	_IO
;	main.c:127: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:129: delay(1); //pause for 1ms.
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:132: TCON = 0x01;
	mov	_TCON,#0x01
;	main.c:133: EX0 = 1;
;	assignBit
	setb	_EX0
;	main.c:134: EA = 1;
;	assignBit
	setb	_EA
;	main.c:135: PX0 = 1;
;	assignBit
	setb	_PX0
;	main.c:138: return;
;	main.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:141: void delay(unsigned int ms)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:144: for (i = 1; i <= ms; i++)
	mov	r4,#0x01
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00109$
;	main.c:146: for (j = 1; j <= 125; j++)
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
;	main.c:144: for (i = 1; i <= ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:149: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btn_int'
;------------------------------------------------------------
;	main.c:152: void btn_int() __interrupt(0) //external interrupt 0 ISR
;	-----------------------------------------
;	 function btn_int
;	-----------------------------------------
_btn_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:155: EA = 0;
;	assignBit
	clr	_EA
;	main.c:156: btn_int_flag = 1;
	mov	_btn_int_flag,#0x01
;	main.c:157: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:158: EA = 1; // Interrupt enables
;	assignBit
	setb	_EA
;	main.c:159: return;
;	main.c:160: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'byte_write'
;------------------------------------------------------------
;w_data                    Allocated with name '_byte_write_PARM_2'
;w_addr                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:164: void byte_write(unsigned char w_addr, unsigned char w_data)
;	-----------------------------------------
;	 function byte_write
;	-----------------------------------------
_byte_write:
	mov	r7,dpl
;	main.c:168: RST = 1;
;	assignBit
	setb	_RST
;	main.c:170: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00109$:
;	main.c:172: if (w_addr & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
;	main.c:174: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00103$
00102$:
;	main.c:178: IO = 0;
;	assignBit
	clr	_IO
00103$:
;	main.c:180: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:181: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:182: w_addr >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:170: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00142$
00142$:
	jc	00109$
;	main.c:185: for (i = 0; i < 8; i++)
	mov	r7,#0x00
00111$:
;	main.c:187: if (w_data & 0x01)
	mov	a,_byte_write_PARM_2
	jnb	acc.0,00106$
;	main.c:189: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00107$
00106$:
;	main.c:193: IO = 0;
;	assignBit
	clr	_IO
00107$:
;	main.c:195: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:196: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:197: w_data >>= 1;
	mov	a,_byte_write_PARM_2
	clr	c
	rrc	a
	mov	_byte_write_PARM_2,a
;	main.c:185: for (i = 0; i < 8; i++)
	inc	r7
	cjne	r7,#0x08,00145$
00145$:
	jc	00111$
;	main.c:200: RST = 0;
;	assignBit
	clr	_RST
;	main.c:201: return;
;	main.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'byte_read'
;------------------------------------------------------------
;r_addr                    Allocated to registers r7 
;i                         Allocated to registers r6 
;r_data                    Allocated to registers r4 
;tmp                       Allocated to registers r5 
;------------------------------------------------------------
;	main.c:204: unsigned char byte_read(unsigned char r_addr) //read data on RTC.
;	-----------------------------------------
;	 function byte_read
;	-----------------------------------------
_byte_read:
	mov	r7,dpl
;	main.c:208: RST = 1; //rst pin high for data access.
;	assignBit
	setb	_RST
;	main.c:210: for (i = 0; i < 7; i++)
	mov	r6,#0x00
00109$:
;	main.c:212: if (r_addr & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
;	main.c:214: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00103$
00102$:
;	main.c:218: IO = 0;
;	assignBit
	clr	_IO
00103$:
;	main.c:220: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:221: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:222: r_addr >>= 1; //Right shifting for 1 bit.
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:210: for (i = 0; i < 7; i++)
	inc	r6
	cjne	r6,#0x07,00148$
00148$:
	jc	00109$
;	main.c:225: if (r_addr & 0x01)
	mov	a,r7
	jnb	acc.0,00106$
;	main.c:227: IO = 1;
;	assignBit
	setb	_IO
	sjmp	00107$
00106$:
;	main.c:231: IO = 0;
;	assignBit
	clr	_IO
00107$:
;	main.c:234: SCLK = 1; //
;	assignBit
	setb	_SCLK
;	main.c:236: r_data = 0x00;
	mov	r7,#0x00
;	main.c:238: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00111$:
;	main.c:240: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:241: tmp = IO;
	mov	c,_IO
	clr	a
	rlc	a
;	main.c:242: tmp <<= 7;
	rr	a
	anl	a,#0x80
	mov	r5,a
;	main.c:243: r_data >>= 1;
	mov	a,r7
	clr	c
	rrc	a
;	main.c:244: r_data |= tmp;
	orl	a,r5
	mov	r7,a
;	main.c:245: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:238: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00151$
00151$:
	jc	00111$
;	main.c:248: RST = 0;
;	assignBit
	clr	_RST
;	main.c:250: return r_data;
	mov	dpl,r7
;	main.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'year_set'
;------------------------------------------------------------
;	main.c:253: void year_set()
;	-----------------------------------------
;	 function year_set
;	-----------------------------------------
_year_set:
;	main.c:255: year_bcd++;
	inc	_year_bcd
;	main.c:256: if (year_bcd == 0x0a)
	mov	a,#0x0a
	cjne	a,_year_bcd,00128$
;	main.c:258: year_bcd = 0x10;
	mov	_year_bcd,#0x10
	ljmp	00129$
00128$:
;	main.c:260: else if (year_bcd == 0x1a)
	mov	a,#0x1a
	cjne	a,_year_bcd,00125$
;	main.c:262: year_bcd = 0x20;
	mov	_year_bcd,#0x20
	ljmp	00129$
00125$:
;	main.c:264: else if (year_bcd == 0x2a)
	mov	a,#0x2a
	cjne	a,_year_bcd,00122$
;	main.c:266: year_bcd = 0x30;
	mov	_year_bcd,#0x30
	sjmp	00129$
00122$:
;	main.c:268: else if (year_bcd == 0x3a)
	mov	a,#0x3a
	cjne	a,_year_bcd,00119$
;	main.c:270: year_bcd = 0x40;
	mov	_year_bcd,#0x40
	sjmp	00129$
00119$:
;	main.c:272: else if (year_bcd == 0x4a)
	mov	a,#0x4a
	cjne	a,_year_bcd,00116$
;	main.c:274: year_bcd = 0x50;
	mov	_year_bcd,#0x50
	sjmp	00129$
00116$:
;	main.c:276: else if (year_bcd == 0x5a)
	mov	a,#0x5a
	cjne	a,_year_bcd,00113$
;	main.c:278: year_bcd = 0x60;
	mov	_year_bcd,#0x60
	sjmp	00129$
00113$:
;	main.c:280: else if (year_bcd == 0x6a)
	mov	a,#0x6a
	cjne	a,_year_bcd,00110$
;	main.c:282: year_bcd = 0x70;
	mov	_year_bcd,#0x70
	sjmp	00129$
00110$:
;	main.c:284: else if (year_bcd == 0x7a)
	mov	a,#0x7a
	cjne	a,_year_bcd,00107$
;	main.c:286: year_bcd = 0x80;
	mov	_year_bcd,#0x80
	sjmp	00129$
00107$:
;	main.c:288: else if (year_bcd == 0x8a)
	mov	a,#0x8a
	cjne	a,_year_bcd,00104$
;	main.c:290: year_bcd = 0x90;
	mov	_year_bcd,#0x90
	sjmp	00129$
00104$:
;	main.c:292: else if (year_bcd == 0x9a)
	mov	a,#0x9a
	cjne	a,_year_bcd,00129$
;	main.c:294: year_bcd = 0x00;
	mov	_year_bcd,#0x00
00129$:
;	main.c:296: byte_write(0x8c, year_bcd);
	mov	_byte_write_PARM_2,_year_bcd
	mov	dpl,#0x8c
;	main.c:297: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'mnth_set'
;------------------------------------------------------------
;	main.c:299: void mnth_set()
;	-----------------------------------------
;	 function mnth_set
;	-----------------------------------------
_mnth_set:
;	main.c:301: mnth_bcd++;
	inc	_mnth_bcd
;	main.c:302: if (mnth_bcd == 0x0a)
	mov	a,#0x0a
	cjne	a,_mnth_bcd,00104$
;	main.c:304: mnth_bcd = 0x10;
	mov	_mnth_bcd,#0x10
	sjmp	00105$
00104$:
;	main.c:306: else if (mnth_bcd == 0x13)
	mov	a,#0x13
	cjne	a,_mnth_bcd,00105$
;	main.c:308: mnth_bcd = 0x01;
	mov	_mnth_bcd,#0x01
00105$:
;	main.c:310: byte_write(0x88, mnth_bcd);
	mov	_byte_write_PARM_2,_mnth_bcd
	mov	dpl,#0x88
;	main.c:311: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'date_set'
;------------------------------------------------------------
;	main.c:313: void date_set() //자동으로 mnth마다 설정이 되나?
;	-----------------------------------------
;	 function date_set
;	-----------------------------------------
_date_set:
;	main.c:315: date_bcd++;
	inc	_date_bcd
;	main.c:316: if (date_bcd == 0x0a)
	mov	a,#0x0a
	cjne	a,_date_bcd,00110$
;	main.c:318: date_bcd = 0x10;
	mov	_date_bcd,#0x10
	sjmp	00111$
00110$:
;	main.c:320: else if (date_bcd == 0x1a)
	mov	a,#0x1a
	cjne	a,_date_bcd,00107$
;	main.c:322: date_bcd = 0x20;
	mov	_date_bcd,#0x20
	sjmp	00111$
00107$:
;	main.c:324: else if (date_bcd == 0x2a)
	mov	a,#0x2a
	cjne	a,_date_bcd,00104$
;	main.c:326: date_bcd = 0x30;
	mov	_date_bcd,#0x30
	sjmp	00111$
00104$:
;	main.c:328: else if (date_bcd == 0x32)
	mov	a,#0x32
	cjne	a,_date_bcd,00111$
;	main.c:330: date_bcd = 0x01;
	mov	_date_bcd,#0x01
00111$:
;	main.c:333: byte_write(0x86, date_bcd);
	mov	_byte_write_PARM_2,_date_bcd
	mov	dpl,#0x86
;	main.c:334: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'day_set'
;------------------------------------------------------------
;	main.c:336: void day_set()
;	-----------------------------------------
;	 function day_set
;	-----------------------------------------
_day_set:
;	main.c:338: day_bcd++;
	inc	_day_bcd
;	main.c:339: if (day_bcd == 0x08)
	mov	a,#0x08
	cjne	a,_day_bcd,00102$
;	main.c:341: day_bcd = 0x01;
	mov	_day_bcd,#0x01
00102$:
;	main.c:343: byte_write(0x8a, day_bcd);
	mov	_byte_write_PARM_2,_day_bcd
	mov	dpl,#0x8a
;	main.c:344: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'hr_set'
;------------------------------------------------------------
;	main.c:346: void hr_set()
;	-----------------------------------------
;	 function hr_set
;	-----------------------------------------
_hr_set:
;	main.c:348: hr_bcd++;
	inc	_hr_bcd
;	main.c:349: if (hr_bcd == 0x8a)
	mov	a,#0x8a
	cjne	a,_hr_bcd,00110$
;	main.c:351: hr_bcd = 0x80 | 0x10;
	mov	_hr_bcd,#0x90
	sjmp	00111$
00110$:
;	main.c:353: else if (hr_bcd == 0x93)
	mov	a,#0x93
	cjne	a,_hr_bcd,00107$
;	main.c:355: hr_bcd = (0x80 | 0x01) | 0x20;
	mov	_hr_bcd,#0xa1
	sjmp	00111$
00107$:
;	main.c:357: else if (hr_bcd == 0xaa)
	mov	a,#0xaa
	cjne	a,_hr_bcd,00104$
;	main.c:359: hr_bcd = 0xa0 | 0x10;
	mov	_hr_bcd,#0xb0
	sjmp	00111$
00104$:
;	main.c:361: else if (hr_bcd == 0xb3)
	mov	a,#0xb3
	cjne	a,_hr_bcd,00111$
;	main.c:363: hr_bcd = 0x80;
	mov	_hr_bcd,#0x80
00111$:
;	main.c:365: byte_write(0x84, hr_bcd);
	mov	_byte_write_PARM_2,_hr_bcd
	mov	dpl,#0x84
;	main.c:366: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'min_set'
;------------------------------------------------------------
;	main.c:368: void min_set()
;	-----------------------------------------
;	 function min_set
;	-----------------------------------------
_min_set:
;	main.c:370: min_bcd++;
	inc	_min_bcd
;	main.c:371: if (min_bcd == 0x0a)
	mov	a,#0x0a
	cjne	a,_min_bcd,00116$
;	main.c:373: min_bcd = 0x10;
	mov	_min_bcd,#0x10
	sjmp	00117$
00116$:
;	main.c:375: else if (min_bcd == 0x1a)
	mov	a,#0x1a
	cjne	a,_min_bcd,00113$
;	main.c:377: min_bcd = 0x20;
	mov	_min_bcd,#0x20
	sjmp	00117$
00113$:
;	main.c:379: else if (min_bcd == 0x2a)
	mov	a,#0x2a
	cjne	a,_min_bcd,00110$
;	main.c:381: min_bcd = 0x30;
	mov	_min_bcd,#0x30
	sjmp	00117$
00110$:
;	main.c:383: else if (min_bcd == 0x3a)
	mov	a,#0x3a
	cjne	a,_min_bcd,00107$
;	main.c:385: min_bcd = 0x40;
	mov	_min_bcd,#0x40
	sjmp	00117$
00107$:
;	main.c:387: else if (min_bcd == 0x4a)
	mov	a,#0x4a
	cjne	a,_min_bcd,00104$
;	main.c:389: min_bcd = 0x50;
	mov	_min_bcd,#0x50
	sjmp	00117$
00104$:
;	main.c:391: else if (min_bcd == 0x5a)
	mov	a,#0x5a
	cjne	a,_min_bcd,00117$
;	main.c:393: min_bcd = 0x00;
	mov	_min_bcd,#0x00
00117$:
;	main.c:395: byte_write(0x82, min_bcd);
	mov	_byte_write_PARM_2,_min_bcd
	mov	dpl,#0x82
;	main.c:396: }
	ljmp	_byte_write
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
