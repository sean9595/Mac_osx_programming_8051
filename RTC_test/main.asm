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
;	main.c:39: unsigned char btn_int_flag = 0; //원래 Flag는 bit로 선언해야한다.
	mov	_btn_int_flag,#0x00
;	main.c:40: unsigned char count_01 = 0;
	mov	_count_01,#0x00
;	main.c:42: unsigned char year_bcd = 0x20; //0~99 range이므로 20은 따로 적어야한다.
	mov	_year_bcd,#0x20
;	main.c:43: unsigned char mnth_bcd = 0x01;
	mov	_mnth_bcd,#0x01
;	main.c:44: unsigned char date_bcd = 0x01;
	mov	_date_bcd,#0x01
;	main.c:45: unsigned char day_bcd = 0x01;
	mov	_day_bcd,#0x01
;	main.c:46: unsigned char hr_bcd = 0x80; //Default setting is the 12hour set.
	mov	_hr_bcd,#0x80
;	main.c:47: unsigned char min_bcd = 0x00;
	mov	_min_bcd,#0x00
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
;	main.c:49: void main()
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
;	main.c:52: while (1) //infinite loop
00133$:
;	main.c:54: if(btn_int_flag)
	mov	a,_btn_int_flag
	jz	00133$
;	main.c:56: byte_write(0x8e, 0x00); //쓰기금지 disable
	mov	_byte_write_PARM_2,#0x00
	mov	dpl,#0x8e
	lcall	_byte_write
;	main.c:57: byte_write(0x80, 0x80); //Clock halt
	mov	_byte_write_PARM_2,#0x80
	mov	dpl,#0x80
	lcall	_byte_write
;	main.c:58: if(btn_01)
	jnb	_btn_01,00133$
;	main.c:60: switch (count_01)
	mov	a,_count_01
	add	a,#0xff - 0x05
	jc	00127$
	mov	a,_count_01
	mov	b,#0x03
	mul	ab
	mov	dptr,#00188$
	jmp	@a+dptr
00188$:
	ljmp	00102$
	ljmp	00106$
	ljmp	00110$
	ljmp	00114$
	ljmp	00118$
	ljmp	00122$
;	main.c:63: while(btn_02) //Since I use Schmitt trigger, there will be no error for checking btn_02.
00102$:
	jnb	_btn_02,00127$
;	main.c:65: year_set();
	lcall	_year_set
;	main.c:70: while(btn_02) 
	sjmp	00102$
00106$:
	jnb	_btn_02,00127$
;	main.c:72: mnth_set();
	lcall	_mnth_set
;	main.c:77: while(btn_02) 
	sjmp	00106$
00110$:
	jnb	_btn_02,00127$
;	main.c:79: date_set();
	lcall	_date_set
;	main.c:84: while(btn_02) 
	sjmp	00110$
00114$:
	jnb	_btn_02,00127$
;	main.c:86: day_set();
	lcall	_day_set
;	main.c:91: while(btn_02) 
	sjmp	00114$
00118$:
	jnb	_btn_02,00127$
;	main.c:93: hr_set();
	lcall	_hr_set
;	main.c:98: while(btn_02) 
	sjmp	00118$
00122$:
	jnb	_btn_02,00124$
;	main.c:100: min_set();
	lcall	_min_set
;	main.c:102: break;
00124$:
;	main.c:104: count_01++;
	inc	_count_01
;	main.c:105: if(count_01<<6) count_01 = 0;
	mov	r6,_count_01
	clr	a
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	orl	a,r6
	jz	00127$
	mov	_count_01,#0x00
;	main.c:106: }
00127$:
;	main.c:107: byte_write(0x80, 0x00); //Clock resume
	mov	_byte_write_PARM_2,#0x00
	mov	dpl,#0x80
	lcall	_byte_write
;	main.c:108: byte_write(0x8e, 0x80); //쓰기금지 enable
	mov	_byte_write_PARM_2,#0x80
	mov	dpl,#0x8e
	lcall	_byte_write
;	main.c:114: }
	ljmp	00133$
;------------------------------------------------------------
;Allocation info for local variables in function 'sys_init'
;------------------------------------------------------------
;	main.c:119: void sys_init() 	//여기에 기본 interrupt 설정과 application 초기화를 위한 함수가 배치됨.
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
;	main.c:121: btn_01 = 0;
;	assignBit
	clr	_btn_01
;	main.c:122: btn_02 = 0;
;	assignBit
	clr	_btn_02
;	main.c:123: btn_03 = 0;
;	assignBit
	clr	_btn_03
;	main.c:125: delay(1); //pause for 1ms.
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:127: TCON = 0x01;
	mov	_TCON,#0x01
;	main.c:128: EX0 = 1;
;	assignBit
	setb	_EX0
;	main.c:129: EA = 1;
;	assignBit
	setb	_EA
;	main.c:130: PX0 = 1;
;	assignBit
	setb	_PX0
;	main.c:133: return;
;	main.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:136: void delay(unsigned int ms)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:139: for(i=1;i<=ms;i++)
	mov	r4,#0x01
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00109$
;	main.c:141: for(j=1;j<=125;j++);
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
;	main.c:139: for(i=1;i<=ms;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:143: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btn_int'
;------------------------------------------------------------
;	main.c:146: void btn_int() __interrupt (0) //external interrupt 0 ISR
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
;	main.c:149: EA = 0; 
;	assignBit
	clr	_EA
;	main.c:150: btn_int_flag = 1;
	mov	_btn_int_flag,#0x01
;	main.c:151: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:152: EA = 1; // Interrupt enables
;	assignBit
	setb	_EA
;	main.c:153: return;
;	main.c:154: }
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
;	main.c:158: void byte_write(unsigned char w_addr, unsigned char w_data)
;	-----------------------------------------
;	 function byte_write
;	-----------------------------------------
_byte_write:
	mov	r7,dpl
;	main.c:162: RST = 1;
;	assignBit
	setb	_RST
;	main.c:164: for(i=0;i<8;i++) 
	mov	r6,#0x00
00109$:
;	main.c:166: if(w_addr&0x01) IO = 1;
	mov	a,r7
	jnb	acc.0,00102$
;	assignBit
	setb	_IO
	sjmp	00103$
00102$:
;	main.c:167: else IO = 0;
;	assignBit
	clr	_IO
00103$:
;	main.c:168: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:169: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:170: w_addr>>=1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:164: for(i=0;i<8;i++) 
	inc	r6
	cjne	r6,#0x08,00142$
00142$:
	jc	00109$
;	main.c:173: for(i=0;i<8;i++)
	mov	r7,#0x00
00111$:
;	main.c:175: if(w_data&0x01) IO = 1;
	mov	a,_byte_write_PARM_2
	jnb	acc.0,00106$
;	assignBit
	setb	_IO
	sjmp	00107$
00106$:
;	main.c:176: else IO = 0;
;	assignBit
	clr	_IO
00107$:
;	main.c:177: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:178: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:179: w_data>>=1;
	mov	a,_byte_write_PARM_2
	clr	c
	rrc	a
	mov	_byte_write_PARM_2,a
;	main.c:173: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00145$
00145$:
	jc	00111$
;	main.c:182: RST = 0;
;	assignBit
	clr	_RST
;	main.c:183: return;
;	main.c:184: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'byte_read'
;------------------------------------------------------------
;r_addr                    Allocated to registers r7 
;i                         Allocated to registers r6 
;r_data                    Allocated to registers r4 
;tmp                       Allocated to registers r5 
;------------------------------------------------------------
;	main.c:186: unsigned char byte_read(unsigned char r_addr) //read data on RTC.
;	-----------------------------------------
;	 function byte_read
;	-----------------------------------------
_byte_read:
	mov	r7,dpl
;	main.c:190: RST = 1; //rst pin high for data access.
;	assignBit
	setb	_RST
;	main.c:192: for(i=0;i<7;i++)
	mov	r6,#0x00
00109$:
;	main.c:194: if(r_addr&0x01) IO = 1;
	mov	a,r7
	jnb	acc.0,00102$
;	assignBit
	setb	_IO
	sjmp	00103$
00102$:
;	main.c:195: else IO = 0;
;	assignBit
	clr	_IO
00103$:
;	main.c:196: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:197: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:198: r_addr>>=1; //Right shifting for 1 bit.
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:192: for(i=0;i<7;i++)
	inc	r6
	cjne	r6,#0x07,00148$
00148$:
	jc	00109$
;	main.c:201: if(r_addr&0x01) IO = 1;
	mov	a,r7
	jnb	acc.0,00106$
;	assignBit
	setb	_IO
	sjmp	00107$
00106$:
;	main.c:202: else IO = 0;
;	assignBit
	clr	_IO
00107$:
;	main.c:204: SCLK = 1; //
;	assignBit
	setb	_SCLK
;	main.c:206: r_data = 0x00;
	mov	r7,#0x00
;	main.c:208: for(i=0;i<8;i++)
	mov	r6,#0x00
00111$:
;	main.c:210: SCLK = 1;
;	assignBit
	setb	_SCLK
;	main.c:211: tmp = IO;
	mov	c,_IO
	clr	a
	rlc	a
;	main.c:212: tmp<<=7;
	rr	a
	anl	a,#0x80
	mov	r5,a
;	main.c:213: r_data>>=1;
	mov	a,r7
	clr	c
	rrc	a
;	main.c:214: r_data|=tmp;
	orl	a,r5
	mov	r7,a
;	main.c:215: SCLK = 0;
;	assignBit
	clr	_SCLK
;	main.c:208: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00151$
00151$:
	jc	00111$
;	main.c:218: RST = 0;
;	assignBit
	clr	_RST
;	main.c:220: return r_data;
	mov	dpl,r7
;	main.c:221: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'year_set'
;------------------------------------------------------------
;	main.c:224: void year_set()
;	-----------------------------------------
;	 function year_set
;	-----------------------------------------
_year_set:
;	main.c:226: year_bcd++;
	inc	_year_bcd
;	main.c:227: if(year_bcd==0x0a) year_bcd=0x10;
	mov	a,#0x0a
	cjne	a,_year_bcd,00128$
	mov	_year_bcd,#0x10
	ljmp	00129$
00128$:
;	main.c:228: else if(year_bcd==0x1a) year_bcd=0x20;
	mov	a,#0x1a
	cjne	a,_year_bcd,00125$
	mov	_year_bcd,#0x20
	ljmp	00129$
00125$:
;	main.c:229: else if(year_bcd==0x2a) year_bcd=0x30;
	mov	a,#0x2a
	cjne	a,_year_bcd,00122$
	mov	_year_bcd,#0x30
	sjmp	00129$
00122$:
;	main.c:230: else if(year_bcd==0x3a) year_bcd=0x40;
	mov	a,#0x3a
	cjne	a,_year_bcd,00119$
	mov	_year_bcd,#0x40
	sjmp	00129$
00119$:
;	main.c:231: else if(year_bcd==0x4a) year_bcd=0x50;
	mov	a,#0x4a
	cjne	a,_year_bcd,00116$
	mov	_year_bcd,#0x50
	sjmp	00129$
00116$:
;	main.c:232: else if(year_bcd==0x5a) year_bcd=0x60;
	mov	a,#0x5a
	cjne	a,_year_bcd,00113$
	mov	_year_bcd,#0x60
	sjmp	00129$
00113$:
;	main.c:233: else if(year_bcd==0x6a) year_bcd=0x70;
	mov	a,#0x6a
	cjne	a,_year_bcd,00110$
	mov	_year_bcd,#0x70
	sjmp	00129$
00110$:
;	main.c:234: else if(year_bcd==0x7a) year_bcd=0x80;
	mov	a,#0x7a
	cjne	a,_year_bcd,00107$
	mov	_year_bcd,#0x80
	sjmp	00129$
00107$:
;	main.c:235: else if(year_bcd==0x8a) year_bcd=0x90;
	mov	a,#0x8a
	cjne	a,_year_bcd,00104$
	mov	_year_bcd,#0x90
	sjmp	00129$
00104$:
;	main.c:236: else if(year_bcd==0x9a) year_bcd=0x00;
	mov	a,#0x9a
	cjne	a,_year_bcd,00129$
	mov	_year_bcd,#0x00
00129$:
;	main.c:237: byte_write(0x8c, year_bcd);
	mov	_byte_write_PARM_2,_year_bcd
	mov	dpl,#0x8c
;	main.c:238: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'mnth_set'
;------------------------------------------------------------
;	main.c:240: void mnth_set()
;	-----------------------------------------
;	 function mnth_set
;	-----------------------------------------
_mnth_set:
;	main.c:242: mnth_bcd++;
	inc	_mnth_bcd
;	main.c:243: if(mnth_bcd==0x0a) mnth_bcd=0x10;
	mov	a,#0x0a
	cjne	a,_mnth_bcd,00104$
	mov	_mnth_bcd,#0x10
	sjmp	00105$
00104$:
;	main.c:244: else if(mnth_bcd==0x13) mnth_bcd=0x01;
	mov	a,#0x13
	cjne	a,_mnth_bcd,00105$
	mov	_mnth_bcd,#0x01
00105$:
;	main.c:245: byte_write(0x88, mnth_bcd);
	mov	_byte_write_PARM_2,_mnth_bcd
	mov	dpl,#0x88
;	main.c:246: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'date_set'
;------------------------------------------------------------
;	main.c:248: void date_set() //자동으로 mnth마다 설정이 되나?
;	-----------------------------------------
;	 function date_set
;	-----------------------------------------
_date_set:
;	main.c:250: date_bcd++;
	inc	_date_bcd
;	main.c:251: if(date_bcd==0x0a) date_bcd=0x10;
	mov	a,#0x0a
	cjne	a,_date_bcd,00110$
	mov	_date_bcd,#0x10
	sjmp	00111$
00110$:
;	main.c:252: else if(date_bcd==0x1a) date_bcd=0x20;
	mov	a,#0x1a
	cjne	a,_date_bcd,00107$
	mov	_date_bcd,#0x20
	sjmp	00111$
00107$:
;	main.c:253: else if(date_bcd==0x2a) date_bcd=0x30;
	mov	a,#0x2a
	cjne	a,_date_bcd,00104$
	mov	_date_bcd,#0x30
	sjmp	00111$
00104$:
;	main.c:254: else if(date_bcd==0x32) date_bcd=0x01;
	mov	a,#0x32
	cjne	a,_date_bcd,00111$
	mov	_date_bcd,#0x01
00111$:
;	main.c:256: byte_write(0x86, date_bcd);
	mov	_byte_write_PARM_2,_date_bcd
	mov	dpl,#0x86
;	main.c:257: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'day_set'
;------------------------------------------------------------
;	main.c:259: void day_set()
;	-----------------------------------------
;	 function day_set
;	-----------------------------------------
_day_set:
;	main.c:261: day_bcd++;
	inc	_day_bcd
;	main.c:262: if(day_bcd==0x08) day_bcd=0x01;
	mov	a,#0x08
	cjne	a,_day_bcd,00102$
	mov	_day_bcd,#0x01
00102$:
;	main.c:263: byte_write(0x8a, day_bcd);
	mov	_byte_write_PARM_2,_day_bcd
	mov	dpl,#0x8a
;	main.c:264: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'hr_set'
;------------------------------------------------------------
;	main.c:266: void hr_set()
;	-----------------------------------------
;	 function hr_set
;	-----------------------------------------
_hr_set:
;	main.c:268: hr_bcd++;
	inc	_hr_bcd
;	main.c:269: if(hr_bcd==0x8a) hr_bcd=0x80|0x10;
	mov	a,#0x8a
	cjne	a,_hr_bcd,00110$
	mov	_hr_bcd,#0x90
	sjmp	00111$
00110$:
;	main.c:270: else if(hr_bcd==0x93) hr_bcd=(0x80|0x01)|0x20; //AM->PM
	mov	a,#0x93
	cjne	a,_hr_bcd,00107$
	mov	_hr_bcd,#0xa1
	sjmp	00111$
00107$:
;	main.c:271: else if(hr_bcd==0xaa) hr_bcd=0xa0|0x10;
	mov	a,#0xaa
	cjne	a,_hr_bcd,00104$
	mov	_hr_bcd,#0xb0
	sjmp	00111$
00104$:
;	main.c:272: else if(hr_bcd==0xb3) hr_bcd=0x80;
	mov	a,#0xb3
	cjne	a,_hr_bcd,00111$
	mov	_hr_bcd,#0x80
00111$:
;	main.c:273: byte_write(0x84, hr_bcd);
	mov	_byte_write_PARM_2,_hr_bcd
	mov	dpl,#0x84
;	main.c:274: }
	ljmp	_byte_write
;------------------------------------------------------------
;Allocation info for local variables in function 'min_set'
;------------------------------------------------------------
;	main.c:276: void min_set()
;	-----------------------------------------
;	 function min_set
;	-----------------------------------------
_min_set:
;	main.c:278: min_bcd++;
	inc	_min_bcd
;	main.c:279: if(min_bcd==0x0a) min_bcd=0x10;
	mov	a,#0x0a
	cjne	a,_min_bcd,00116$
	mov	_min_bcd,#0x10
	sjmp	00117$
00116$:
;	main.c:280: else if(min_bcd==0x1a) min_bcd=0x20;
	mov	a,#0x1a
	cjne	a,_min_bcd,00113$
	mov	_min_bcd,#0x20
	sjmp	00117$
00113$:
;	main.c:281: else if(min_bcd==0x2a) min_bcd=0x30;
	mov	a,#0x2a
	cjne	a,_min_bcd,00110$
	mov	_min_bcd,#0x30
	sjmp	00117$
00110$:
;	main.c:282: else if(min_bcd==0x3a) min_bcd=0x40;
	mov	a,#0x3a
	cjne	a,_min_bcd,00107$
	mov	_min_bcd,#0x40
	sjmp	00117$
00107$:
;	main.c:283: else if(min_bcd==0x4a) min_bcd=0x50;
	mov	a,#0x4a
	cjne	a,_min_bcd,00104$
	mov	_min_bcd,#0x50
	sjmp	00117$
00104$:
;	main.c:284: else if(min_bcd==0x5a) min_bcd=0x00;
	mov	a,#0x5a
	cjne	a,_min_bcd,00117$
	mov	_min_bcd,#0x00
00117$:
;	main.c:285: byte_write(0x82, min_bcd);
	mov	_byte_write_PARM_2,_min_bcd
	mov	dpl,#0x82
;	main.c:286: }
	ljmp	_byte_write
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
