                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _T_int
                                     12 	.globl _main
                                     13 	.globl _DCLK
                                     14 	.globl _DIO
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _FL
                                     22 	.globl _P
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ET2
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _T2EX
                                     85 	.globl _T2
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _B
                                    111 	.globl _A
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2MOD
                                    119 	.globl _T2CON
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _digit04
                                    139 	.globl _digit03
                                    140 	.globl _digit02
                                    141 	.globl _digit01
                                    142 	.globl _C3
                                    143 	.globl _C2
                                    144 	.globl _C1
                                    145 	.globl _count_time
                                    146 	.globl _T_int_flag
                                    147 	.globl _min_disp
                                    148 	.globl _hr_disp
                                    149 	.globl _num
                                    150 	.globl _sys_tim_init
                                    151 	.globl _rtc_2_tm1367
                                    152 	.globl _tm1367_byteWrite
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000C8   176 _T2CON	=	0x00c8
                           0000C9   177 _T2MOD	=	0x00c9
                           0000CA   178 _RCAP2L	=	0x00ca
                           0000CB   179 _RCAP2H	=	0x00cb
                           0000CC   180 _TL2	=	0x00cc
                           0000CD   181 _TH2	=	0x00cd
                           0000D0   182 _PSW	=	0x00d0
                           0000E0   183 _ACC	=	0x00e0
                           0000E0   184 _A	=	0x00e0
                           0000F0   185 _B	=	0x00f0
                                    186 ;--------------------------------------------------------
                                    187 ; special function bits
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           000080   191 _P0_0	=	0x0080
                           000081   192 _P0_1	=	0x0081
                           000082   193 _P0_2	=	0x0082
                           000083   194 _P0_3	=	0x0083
                           000084   195 _P0_4	=	0x0084
                           000085   196 _P0_5	=	0x0085
                           000086   197 _P0_6	=	0x0086
                           000087   198 _P0_7	=	0x0087
                           000088   199 _IT0	=	0x0088
                           000089   200 _IE0	=	0x0089
                           00008A   201 _IT1	=	0x008a
                           00008B   202 _IE1	=	0x008b
                           00008C   203 _TR0	=	0x008c
                           00008D   204 _TF0	=	0x008d
                           00008E   205 _TR1	=	0x008e
                           00008F   206 _TF1	=	0x008f
                           000090   207 _P1_0	=	0x0090
                           000091   208 _P1_1	=	0x0091
                           000092   209 _P1_2	=	0x0092
                           000093   210 _P1_3	=	0x0093
                           000094   211 _P1_4	=	0x0094
                           000095   212 _P1_5	=	0x0095
                           000096   213 _P1_6	=	0x0096
                           000097   214 _P1_7	=	0x0097
                           000090   215 _T2	=	0x0090
                           000091   216 _T2EX	=	0x0091
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AD   238 _ET2	=	0x00ad
                           0000AF   239 _EA	=	0x00af
                           0000B0   240 _P3_0	=	0x00b0
                           0000B1   241 _P3_1	=	0x00b1
                           0000B2   242 _P3_2	=	0x00b2
                           0000B3   243 _P3_3	=	0x00b3
                           0000B4   244 _P3_4	=	0x00b4
                           0000B5   245 _P3_5	=	0x00b5
                           0000B6   246 _P3_6	=	0x00b6
                           0000B7   247 _P3_7	=	0x00b7
                           0000B0   248 _RXD	=	0x00b0
                           0000B1   249 _TXD	=	0x00b1
                           0000B2   250 _INT0	=	0x00b2
                           0000B3   251 _INT1	=	0x00b3
                           0000B4   252 _T0	=	0x00b4
                           0000B5   253 _T1	=	0x00b5
                           0000B6   254 _WR	=	0x00b6
                           0000B7   255 _RD	=	0x00b7
                           0000B8   256 _PX0	=	0x00b8
                           0000B9   257 _PT0	=	0x00b9
                           0000BA   258 _PX1	=	0x00ba
                           0000BB   259 _PT1	=	0x00bb
                           0000BC   260 _PS	=	0x00bc
                           0000BD   261 _PT2	=	0x00bd
                           0000C8   262 _T2CON_0	=	0x00c8
                           0000C9   263 _T2CON_1	=	0x00c9
                           0000CA   264 _T2CON_2	=	0x00ca
                           0000CB   265 _T2CON_3	=	0x00cb
                           0000CC   266 _T2CON_4	=	0x00cc
                           0000CD   267 _T2CON_5	=	0x00cd
                           0000CE   268 _T2CON_6	=	0x00ce
                           0000CF   269 _T2CON_7	=	0x00cf
                           0000C8   270 _CP_RL2	=	0x00c8
                           0000C9   271 _C_T2	=	0x00c9
                           0000CA   272 _TR2	=	0x00ca
                           0000CB   273 _EXEN2	=	0x00cb
                           0000CC   274 _TCLK	=	0x00cc
                           0000CD   275 _RCLK	=	0x00cd
                           0000CE   276 _EXF2	=	0x00ce
                           0000CF   277 _TF2	=	0x00cf
                           0000D0   278 _P	=	0x00d0
                           0000D1   279 _FL	=	0x00d1
                           0000D2   280 _OV	=	0x00d2
                           0000D3   281 _RS0	=	0x00d3
                           0000D4   282 _RS1	=	0x00d4
                           0000D5   283 _F0	=	0x00d5
                           0000D6   284 _AC	=	0x00d6
                           0000D7   285 _CY	=	0x00d7
                           0000A6   286 _DIO	=	0x00a6
                           0000A5   287 _DCLK	=	0x00a5
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable register banks
                                    290 ;--------------------------------------------------------
                                    291 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        292 	.ds 8
                                    293 ;--------------------------------------------------------
                                    294 ; internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area DSEG    (DATA)
      000008                        297 _num::
      000008                        298 	.ds 10
      000012                        299 _hr_disp::
      000012                        300 	.ds 1
      000013                        301 _min_disp::
      000013                        302 	.ds 1
      000014                        303 _T_int_flag::
      000014                        304 	.ds 2
      000016                        305 _count_time::
      000016                        306 	.ds 2
      000018                        307 _C1::
      000018                        308 	.ds 1
      000019                        309 _C2::
      000019                        310 	.ds 1
      00001A                        311 _C3::
      00001A                        312 	.ds 1
      00001B                        313 _digit01::
      00001B                        314 	.ds 1
      00001C                        315 _digit02::
      00001C                        316 	.ds 1
      00001D                        317 _digit03::
      00001D                        318 	.ds 1
      00001E                        319 _digit04::
      00001E                        320 	.ds 1
                                    321 ;--------------------------------------------------------
                                    322 ; overlayable items in internal ram 
                                    323 ;--------------------------------------------------------
                                    324 	.area	OSEG    (OVR,DATA)
      00001F                        325 _tm1367_byteWrite_i_65536_8:
      00001F                        326 	.ds 2
                                    327 ;--------------------------------------------------------
                                    328 ; Stack segment in internal ram 
                                    329 ;--------------------------------------------------------
                                    330 	.area	SSEG
      000021                        331 __start__stack:
      000021                        332 	.ds	1
                                    333 
                                    334 ;--------------------------------------------------------
                                    335 ; indirectly addressable internal ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area ISEG    (DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; absolute internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area IABS    (ABS,DATA)
                                    342 	.area IABS    (ABS,DATA)
                                    343 ;--------------------------------------------------------
                                    344 ; bit data
                                    345 ;--------------------------------------------------------
                                    346 	.area BSEG    (BIT)
                                    347 ;--------------------------------------------------------
                                    348 ; paged external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area PSEG    (PAG,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XSEG    (XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; absolute external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XABS    (ABS,XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; external initialized ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XISEG   (XDATA)
                                    363 	.area HOME    (CODE)
                                    364 	.area GSINIT0 (CODE)
                                    365 	.area GSINIT1 (CODE)
                                    366 	.area GSINIT2 (CODE)
                                    367 	.area GSINIT3 (CODE)
                                    368 	.area GSINIT4 (CODE)
                                    369 	.area GSINIT5 (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area CSEG    (CODE)
                                    373 ;--------------------------------------------------------
                                    374 ; interrupt vector 
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
      000000                        377 __interrupt_vect:
      000000 02 00 11         [24]  378 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  379 	reti
      000004                        380 	.ds	7
      00000B 02 00 FA         [24]  381 	ljmp	_T_int
                                    382 ;--------------------------------------------------------
                                    383 ; global & static initialisations
                                    384 ;--------------------------------------------------------
                                    385 	.area HOME    (CODE)
                                    386 	.area GSINIT  (CODE)
                                    387 	.area GSFINAL (CODE)
                                    388 	.area GSINIT  (CODE)
                                    389 	.globl __sdcc_gsinit_startup
                                    390 	.globl __sdcc_program_startup
                                    391 	.globl __start__stack
                                    392 	.globl __mcs51_genXINIT
                                    393 	.globl __mcs51_genXRAMCLEAR
                                    394 	.globl __mcs51_genRAMCLEAR
                                    395 ;	main.c:13: unsigned char num[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x67, 0x6d, 0x7d, 0x07, 0x7f, 0x6f}; //0~9
      00006A 75 08 3F         [24]  396 	mov	_num,#0x3f
      00006D 75 09 06         [24]  397 	mov	(_num + 0x0001),#0x06
      000070 75 0A 5B         [24]  398 	mov	(_num + 0x0002),#0x5b
      000073 75 0B 4F         [24]  399 	mov	(_num + 0x0003),#0x4f
      000076 75 0C 67         [24]  400 	mov	(_num + 0x0004),#0x67
      000079 75 0D 6D         [24]  401 	mov	(_num + 0x0005),#0x6d
      00007C 75 0E 7D         [24]  402 	mov	(_num + 0x0006),#0x7d
      00007F 75 0F 07         [24]  403 	mov	(_num + 0x0007),#0x07
      000082 75 10 7F         [24]  404 	mov	(_num + 0x0008),#0x7f
      000085 75 11 6F         [24]  405 	mov	(_num + 0x0009),#0x6f
                                    406 ;	main.c:14: unsigned char hr_disp = 0x00;
      000088 75 12 00         [24]  407 	mov	_hr_disp,#0x00
                                    408 ;	main.c:15: unsigned char min_disp = 0x00;
      00008B 75 13 00         [24]  409 	mov	_min_disp,#0x00
                                    410 ;	main.c:17: volatile int T_int_flag = 0;
      00008E E4               [12]  411 	clr	a
      00008F F5 14            [12]  412 	mov	_T_int_flag,a
      000091 F5 15            [12]  413 	mov	(_T_int_flag + 1),a
                                    414 ;	main.c:18: volatile int count_time = 0;
      000093 F5 16            [12]  415 	mov	_count_time,a
      000095 F5 17            [12]  416 	mov	(_count_time + 1),a
                                    417 ;	main.c:20: unsigned char C1 = 0x00;
                                    418 ;	1-genFromRTrack replaced	mov	_C1,#0x00
      000097 F5 18            [12]  419 	mov	_C1,a
                                    420 ;	main.c:21: unsigned char C2 = 0x00;
                                    421 ;	1-genFromRTrack replaced	mov	_C2,#0x00
      000099 F5 19            [12]  422 	mov	_C2,a
                                    423 ;	main.c:22: unsigned char C3 = 0x00;
                                    424 ;	1-genFromRTrack replaced	mov	_C3,#0x00
      00009B F5 1A            [12]  425 	mov	_C3,a
                                    426 ;	main.c:23: unsigned char digit01 = 0;
                                    427 ;	1-genFromRTrack replaced	mov	_digit01,#0x00
      00009D F5 1B            [12]  428 	mov	_digit01,a
                                    429 ;	main.c:24: unsigned char digit02 = 0;
                                    430 ;	1-genFromRTrack replaced	mov	_digit02,#0x00
      00009F F5 1C            [12]  431 	mov	_digit02,a
                                    432 ;	main.c:25: unsigned char digit03 = 0;
                                    433 ;	1-genFromRTrack replaced	mov	_digit03,#0x00
      0000A1 F5 1D            [12]  434 	mov	_digit03,a
                                    435 ;	main.c:26: unsigned char digit04 = 0;
                                    436 ;	1-genFromRTrack replaced	mov	_digit04,#0x00
      0000A3 F5 1E            [12]  437 	mov	_digit04,a
                                    438 	.area GSFINAL (CODE)
      0000A5 02 00 0E         [24]  439 	ljmp	__sdcc_program_startup
                                    440 ;--------------------------------------------------------
                                    441 ; Home
                                    442 ;--------------------------------------------------------
                                    443 	.area HOME    (CODE)
                                    444 	.area HOME    (CODE)
      00000E                        445 __sdcc_program_startup:
      00000E 02 00 A8         [24]  446 	ljmp	_main
                                    447 ;	return from main will return to caller
                                    448 ;--------------------------------------------------------
                                    449 ; code
                                    450 ;--------------------------------------------------------
                                    451 	.area CSEG    (CODE)
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'main'
                                    454 ;------------------------------------------------------------
                                    455 ;	main.c:37: void main()
                                    456 ;	-----------------------------------------
                                    457 ;	 function main
                                    458 ;	-----------------------------------------
      0000A8                        459 _main:
                           000007   460 	ar7 = 0x07
                           000006   461 	ar6 = 0x06
                           000005   462 	ar5 = 0x05
                           000004   463 	ar4 = 0x04
                           000003   464 	ar3 = 0x03
                           000002   465 	ar2 = 0x02
                           000001   466 	ar1 = 0x01
                           000000   467 	ar0 = 0x00
                                    468 ;	main.c:39: DIO = 1;
                                    469 ;	assignBit
      0000A8 D2 A6            [12]  470 	setb	_DIO
                                    471 ;	main.c:40: DCLK = 1;
                                    472 ;	assignBit
      0000AA D2 A5            [12]  473 	setb	_DCLK
                                    474 ;	main.c:41: sys_tim_init();
      0000AC 12 00 E6         [24]  475 	lcall	_sys_tim_init
                                    476 ;	main.c:42: while (1)
      0000AF                        477 00106$:
                                    478 ;	main.c:44: if (T_int_flag)
      0000AF E5 14            [12]  479 	mov	a,_T_int_flag
      0000B1 45 15            [12]  480 	orl	a,(_T_int_flag + 1)
      0000B3 60 FA            [24]  481 	jz	00106$
                                    482 ;	main.c:46: rtc_2_tm1367();
      0000B5 12 01 29         [24]  483 	lcall	_rtc_2_tm1367
                                    484 ;	main.c:47: if (count_time == 500) //0.5sec는 on, 0.5sec는 off.
      0000B8 74 F4            [12]  485 	mov	a,#0xf4
      0000BA B5 16 13         [24]  486 	cjne	a,_count_time,00102$
      0000BD 74 01            [12]  487 	mov	a,#0x01
      0000BF B5 17 0E         [24]  488 	cjne	a,(_count_time + 1),00102$
                                    489 ;	main.c:50: digit02 ^= 0x80; //XOR연산. MSB가 1이면 0으로, 0이면 1로 나머지는 0과 연산이므로 그대로 유지.
      0000C2 AE 1C            [24]  490 	mov	r6,_digit02
      0000C4 7F 00            [12]  491 	mov	r7,#0x00
      0000C6 63 06 80         [24]  492 	xrl	ar6,#0x80
      0000C9 8E 1C            [24]  493 	mov	_digit02,r6
                                    494 ;	main.c:51: count_time = 0;
      0000CB E4               [12]  495 	clr	a
      0000CC F5 16            [12]  496 	mov	_count_time,a
      0000CE F5 17            [12]  497 	mov	(_count_time + 1),a
      0000D0                        498 00102$:
                                    499 ;	main.c:53: tm1367_byteWrite(); //Data를 1ms 마다 가져 올 수 있게 하는 것이 좋을 듯. Time interval은 실험적으로 조정.
      0000D0 12 01 3C         [24]  500 	lcall	_tm1367_byteWrite
                                    501 ;	main.c:57: T_int_flag = !(T_int_flag);
      0000D3 E5 14            [12]  502 	mov	a,_T_int_flag
      0000D5 45 15            [12]  503 	orl	a,(_T_int_flag + 1)
      0000D7 B4 01 00         [24]  504 	cjne	a,#0x01,00125$
      0000DA                        505 00125$:
      0000DA E4               [12]  506 	clr	a
      0000DB 33               [12]  507 	rlc	a
      0000DC FF               [12]  508 	mov	r7,a
      0000DD 8F 14            [24]  509 	mov	_T_int_flag,r7
      0000DF 33               [12]  510 	rlc	a
      0000E0 95 E0            [12]  511 	subb	a,acc
      0000E2 F5 15            [12]  512 	mov	(_T_int_flag + 1),a
                                    513 ;	main.c:60: }
      0000E4 80 C9            [24]  514 	sjmp	00106$
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'sys_tim_init'
                                    517 ;------------------------------------------------------------
                                    518 ;	main.c:62: void sys_tim_init()
                                    519 ;	-----------------------------------------
                                    520 ;	 function sys_tim_init
                                    521 ;	-----------------------------------------
      0000E6                        522 _sys_tim_init:
                                    523 ;	main.c:64: TMOD = 0x01; //GATE = 0, C/T = 0, Timer/counter mode 1
      0000E6 75 89 01         [24]  524 	mov	_TMOD,#0x01
                                    525 ;	main.c:65: TF0 = 0;     // Timer/counter 0 interrupt flag clear
                                    526 ;	assignBit
      0000E9 C2 8D            [12]  527 	clr	_TF0
                                    528 ;	main.c:66: TL0 = 0xfc;
      0000EB 75 8A FC         [24]  529 	mov	_TL0,#0xfc
                                    530 ;	main.c:67: TH0 = 0x17; //Time const. to generate 1ms //0xffff-0xfc17 = 1000. //1MC = 1us.
      0000EE 75 8C 17         [24]  531 	mov	_TH0,#0x17
                                    532 ;	main.c:68: IE = 0x82;  // IE -> interrupt enable reg. Timer interrupt enables & entire interrupt enable.
      0000F1 75 A8 82         [24]  533 	mov	_IE,#0x82
                                    534 ;	main.c:69: IP = 0x02;  // IP -> interrupt priority. Set timer interrupt 0 as the highest priority.
      0000F4 75 B8 02         [24]  535 	mov	_IP,#0x02
                                    536 ;	main.c:72: TR0 = 1; // Timer interrupt 0 RUN.
                                    537 ;	assignBit
      0000F7 D2 8C            [12]  538 	setb	_TR0
                                    539 ;	main.c:73: }
      0000F9 22               [24]  540 	ret
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'T_int'
                                    543 ;------------------------------------------------------------
                                    544 ;	main.c:76: void T_int() __interrupt(1) // void [user name]() interrupt [vector num.]
                                    545 ;	-----------------------------------------
                                    546 ;	 function T_int
                                    547 ;	-----------------------------------------
      0000FA                        548 _T_int:
      0000FA C0 E0            [24]  549 	push	acc
      0000FC C0 07            [24]  550 	push	ar7
      0000FE C0 06            [24]  551 	push	ar6
      000100 C0 D0            [24]  552 	push	psw
      000102 75 D0 00         [24]  553 	mov	psw,#0x00
                                    554 ;	main.c:78: T_int_flag = 1;
      000105 75 14 01         [24]  555 	mov	_T_int_flag,#0x01
      000108 75 15 00         [24]  556 	mov	(_T_int_flag + 1),#0x00
                                    557 ;	main.c:80: count_time++;
      00010B AE 16            [24]  558 	mov	r6,_count_time
      00010D AF 17            [24]  559 	mov	r7,(_count_time + 1)
      00010F 74 01            [12]  560 	mov	a,#0x01
      000111 2E               [12]  561 	add	a,r6
      000112 F5 16            [12]  562 	mov	_count_time,a
      000114 E4               [12]  563 	clr	a
      000115 3F               [12]  564 	addc	a,r7
      000116 F5 17            [12]  565 	mov	(_count_time + 1),a
                                    566 ;	main.c:82: TL0 = 0xfc;
      000118 75 8A FC         [24]  567 	mov	_TL0,#0xfc
                                    568 ;	main.c:83: TH0 = 0x17; // Reset of these two register is necessary for periodic interrupt since it is mode 1.
      00011B 75 8C 17         [24]  569 	mov	_TH0,#0x17
                                    570 ;	main.c:84: EA = 1;     // Interrupt enables
                                    571 ;	assignBit
      00011E D2 AF            [12]  572 	setb	_EA
                                    573 ;	main.c:85: return;
                                    574 ;	main.c:86: }
      000120 D0 D0            [24]  575 	pop	psw
      000122 D0 06            [24]  576 	pop	ar6
      000124 D0 07            [24]  577 	pop	ar7
      000126 D0 E0            [24]  578 	pop	acc
      000128 32               [24]  579 	reti
                                    580 ;	eliminated unneeded push/pop dpl
                                    581 ;	eliminated unneeded push/pop dph
                                    582 ;	eliminated unneeded push/pop b
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'rtc_2_tm1367'
                                    585 ;------------------------------------------------------------
                                    586 ;	main.c:88: void rtc_2_tm1367()
                                    587 ;	-----------------------------------------
                                    588 ;	 function rtc_2_tm1367
                                    589 ;	-----------------------------------------
      000129                        590 _rtc_2_tm1367:
                                    591 ;	main.c:92: hr_disp = 0x12; //this code is for test.
      000129 75 12 12         [24]  592 	mov	_hr_disp,#0x12
                                    593 ;	main.c:94: min_disp = 0x50; //this code is for test
      00012C 75 13 50         [24]  594 	mov	_min_disp,#0x50
                                    595 ;	main.c:96: digit01 = num[(hr_disp >> 4)];
      00012F 85 09 1B         [24]  596 	mov	_digit01,(_num + 0x0001)
                                    597 ;	main.c:97: digit02 = num[(hr_disp | 0x0f)];
      000132 85 27 1C         [24]  598 	mov	_digit02,(_num + 0x001f)
                                    599 ;	main.c:98: digit03 = num[(min_disp >> 4)];
      000135 85 0D 1D         [24]  600 	mov	_digit03,(_num + 0x0005)
                                    601 ;	main.c:99: digit04 = num[(min_disp | 0x0f)];
      000138 85 67 1E         [24]  602 	mov	_digit04,(_num + 0x005f)
                                    603 ;	main.c:100: return;
                                    604 ;	main.c:101: }
      00013B 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'tm1367_byteWrite'
                                    608 ;------------------------------------------------------------
                                    609 ;i                         Allocated with name '_tm1367_byteWrite_i_65536_8'
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:104: void tm1367_byteWrite()
                                    612 ;	-----------------------------------------
                                    613 ;	 function tm1367_byteWrite
                                    614 ;	-----------------------------------------
      00013C                        615 _tm1367_byteWrite:
                                    616 ;	main.c:107: DIO = 0; //Writing SRAM Data initiate.
                                    617 ;	assignBit
      00013C C2 A6            [12]  618 	clr	_DIO
                                    619 ;	main.c:109: C1 = 0x40; //Normal, auto increment 1 mode, write data to display.
      00013E 75 18 40         [24]  620 	mov	_C1,#0x40
                                    621 ;	main.c:110: C2 = 0xC0; //Base address
      000141 75 19 C0         [24]  622 	mov	_C2,#0xc0
                                    623 ;	main.c:111: C3 = 0x8f; //Display ON, Brightness 8 (1~8)
      000144 75 1A 8F         [24]  624 	mov	_C3,#0x8f
                                    625 ;	main.c:116: for (i = 0; i < 8; i++)
      000147 E4               [12]  626 	clr	a
      000148 F5 1F            [12]  627 	mov	_tm1367_byteWrite_i_65536_8,a
      00014A F5 20            [12]  628 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00014C                        629 00144$:
      00014C C3               [12]  630 	clr	c
      00014D E5 1F            [12]  631 	mov	a,_tm1367_byteWrite_i_65536_8
      00014F 94 08            [12]  632 	subb	a,#0x08
      000151 E5 20            [12]  633 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      000153 64 80            [12]  634 	xrl	a,#0x80
      000155 94 80            [12]  635 	subb	a,#0x80
      000157 50 24            [24]  636 	jnc	00104$
                                    637 ;	main.c:118: DCLK = 0;
                                    638 ;	assignBit
      000159 C2 A5            [12]  639 	clr	_DCLK
                                    640 ;	main.c:119: if (C1 & 0x01)
      00015B E5 18            [12]  641 	mov	a,_C1
      00015D 30 E0 04         [24]  642 	jnb	acc.0,00102$
                                    643 ;	main.c:121: DIO = 1;
                                    644 ;	assignBit
      000160 D2 A6            [12]  645 	setb	_DIO
      000162 80 02            [24]  646 	sjmp	00103$
      000164                        647 00102$:
                                    648 ;	main.c:125: DIO = 0;
                                    649 ;	assignBit
      000164 C2 A6            [12]  650 	clr	_DIO
      000166                        651 00103$:
                                    652 ;	main.c:128: DCLK = 1;
                                    653 ;	assignBit
      000166 D2 A5            [12]  654 	setb	_DCLK
                                    655 ;	main.c:129: C1 >>= 1;
      000168 E5 18            [12]  656 	mov	a,_C1
      00016A C3               [12]  657 	clr	c
      00016B 13               [12]  658 	rrc	a
      00016C F5 18            [12]  659 	mov	_C1,a
                                    660 ;	main.c:116: for (i = 0; i < 8; i++)
      00016E AE 1F            [24]  661 	mov	r6,_tm1367_byteWrite_i_65536_8
      000170 AF 20            [24]  662 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      000172 74 01            [12]  663 	mov	a,#0x01
      000174 2E               [12]  664 	add	a,r6
      000175 F5 1F            [12]  665 	mov	_tm1367_byteWrite_i_65536_8,a
      000177 E4               [12]  666 	clr	a
      000178 3F               [12]  667 	addc	a,r7
      000179 F5 20            [12]  668 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00017B 80 CF            [24]  669 	sjmp	00144$
      00017D                        670 00104$:
                                    671 ;	main.c:133: DCLK = 0;
                                    672 ;	assignBit
      00017D C2 A5            [12]  673 	clr	_DCLK
                                    674 ;	main.c:134: if (DIO != 0)
      00017F 30 A6 01         [24]  675 	jnb	_DIO,00106$
                                    676 ;	main.c:136: return;
      000182 22               [24]  677 	ret
      000183                        678 00106$:
                                    679 ;	main.c:138: DCLK = 1;
                                    680 ;	assignBit
      000183 D2 A5            [12]  681 	setb	_DCLK
                                    682 ;	main.c:143: DCLK = 0;
                                    683 ;	assignBit
      000185 C2 A5            [12]  684 	clr	_DCLK
                                    685 ;	main.c:144: DCLK = 1;
                                    686 ;	assignBit
      000187 D2 A5            [12]  687 	setb	_DCLK
                                    688 ;	main.c:145: DIO = 1;
                                    689 ;	assignBit
      000189 D2 A6            [12]  690 	setb	_DIO
                                    691 ;	main.c:146: DIO = 0;
                                    692 ;	assignBit
      00018B C2 A6            [12]  693 	clr	_DIO
                                    694 ;	main.c:149: for (i=0; i < 8; i++)
      00018D E4               [12]  695 	clr	a
      00018E F5 1F            [12]  696 	mov	_tm1367_byteWrite_i_65536_8,a
      000190 F5 20            [12]  697 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      000192                        698 00147$:
      000192 C3               [12]  699 	clr	c
      000193 E5 1F            [12]  700 	mov	a,_tm1367_byteWrite_i_65536_8
      000195 94 08            [12]  701 	subb	a,#0x08
      000197 E5 20            [12]  702 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      000199 64 80            [12]  703 	xrl	a,#0x80
      00019B 94 80            [12]  704 	subb	a,#0x80
      00019D 50 24            [24]  705 	jnc	00110$
                                    706 ;	main.c:151: DCLK = 0;
                                    707 ;	assignBit
      00019F C2 A5            [12]  708 	clr	_DCLK
                                    709 ;	main.c:152: if (C2 & 0x01)
      0001A1 E5 19            [12]  710 	mov	a,_C2
      0001A3 30 E0 04         [24]  711 	jnb	acc.0,00108$
                                    712 ;	main.c:154: DIO = 1;
                                    713 ;	assignBit
      0001A6 D2 A6            [12]  714 	setb	_DIO
      0001A8 80 02            [24]  715 	sjmp	00109$
      0001AA                        716 00108$:
                                    717 ;	main.c:158: DIO = 0;
                                    718 ;	assignBit
      0001AA C2 A6            [12]  719 	clr	_DIO
      0001AC                        720 00109$:
                                    721 ;	main.c:161: DCLK = 1;
                                    722 ;	assignBit
      0001AC D2 A5            [12]  723 	setb	_DCLK
                                    724 ;	main.c:162: C2 >>= 1;
      0001AE E5 19            [12]  725 	mov	a,_C2
      0001B0 C3               [12]  726 	clr	c
      0001B1 13               [12]  727 	rrc	a
      0001B2 F5 19            [12]  728 	mov	_C2,a
                                    729 ;	main.c:149: for (i=0; i < 8; i++)
      0001B4 AE 1F            [24]  730 	mov	r6,_tm1367_byteWrite_i_65536_8
      0001B6 AF 20            [24]  731 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      0001B8 74 01            [12]  732 	mov	a,#0x01
      0001BA 2E               [12]  733 	add	a,r6
      0001BB F5 1F            [12]  734 	mov	_tm1367_byteWrite_i_65536_8,a
      0001BD E4               [12]  735 	clr	a
      0001BE 3F               [12]  736 	addc	a,r7
      0001BF F5 20            [12]  737 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      0001C1 80 CF            [24]  738 	sjmp	00147$
      0001C3                        739 00110$:
                                    740 ;	main.c:166: DCLK = 0;
                                    741 ;	assignBit
      0001C3 C2 A5            [12]  742 	clr	_DCLK
                                    743 ;	main.c:167: if (DIO != 0)
      0001C5 30 A6 01         [24]  744 	jnb	_DIO,00112$
                                    745 ;	main.c:169: return;
      0001C8 22               [24]  746 	ret
      0001C9                        747 00112$:
                                    748 ;	main.c:174: DCLK = 1;
                                    749 ;	assignBit
      0001C9 D2 A5            [12]  750 	setb	_DCLK
                                    751 ;	main.c:177: for (i=0; i < 8; i++)
      0001CB E4               [12]  752 	clr	a
      0001CC F5 1F            [12]  753 	mov	_tm1367_byteWrite_i_65536_8,a
      0001CE F5 20            [12]  754 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      0001D0                        755 00150$:
      0001D0 C3               [12]  756 	clr	c
      0001D1 E5 1F            [12]  757 	mov	a,_tm1367_byteWrite_i_65536_8
      0001D3 94 08            [12]  758 	subb	a,#0x08
      0001D5 E5 20            [12]  759 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      0001D7 64 80            [12]  760 	xrl	a,#0x80
      0001D9 94 80            [12]  761 	subb	a,#0x80
      0001DB 50 24            [24]  762 	jnc	00116$
                                    763 ;	main.c:179: DCLK = 0;
                                    764 ;	assignBit
      0001DD C2 A5            [12]  765 	clr	_DCLK
                                    766 ;	main.c:180: if (digit01 & 0x01)
      0001DF E5 1B            [12]  767 	mov	a,_digit01
      0001E1 30 E0 04         [24]  768 	jnb	acc.0,00114$
                                    769 ;	main.c:182: DIO = 1;
                                    770 ;	assignBit
      0001E4 D2 A6            [12]  771 	setb	_DIO
      0001E6 80 02            [24]  772 	sjmp	00115$
      0001E8                        773 00114$:
                                    774 ;	main.c:186: DIO = 0;
                                    775 ;	assignBit
      0001E8 C2 A6            [12]  776 	clr	_DIO
      0001EA                        777 00115$:
                                    778 ;	main.c:189: DCLK = 1;
                                    779 ;	assignBit
      0001EA D2 A5            [12]  780 	setb	_DCLK
                                    781 ;	main.c:190: digit01 >>= 1;
      0001EC E5 1B            [12]  782 	mov	a,_digit01
      0001EE C3               [12]  783 	clr	c
      0001EF 13               [12]  784 	rrc	a
      0001F0 F5 1B            [12]  785 	mov	_digit01,a
                                    786 ;	main.c:177: for (i=0; i < 8; i++)
      0001F2 AE 1F            [24]  787 	mov	r6,_tm1367_byteWrite_i_65536_8
      0001F4 AF 20            [24]  788 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      0001F6 74 01            [12]  789 	mov	a,#0x01
      0001F8 2E               [12]  790 	add	a,r6
      0001F9 F5 1F            [12]  791 	mov	_tm1367_byteWrite_i_65536_8,a
      0001FB E4               [12]  792 	clr	a
      0001FC 3F               [12]  793 	addc	a,r7
      0001FD F5 20            [12]  794 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      0001FF 80 CF            [24]  795 	sjmp	00150$
      000201                        796 00116$:
                                    797 ;	main.c:194: DCLK = 0;
                                    798 ;	assignBit
      000201 C2 A5            [12]  799 	clr	_DCLK
                                    800 ;	main.c:195: if (DIO != 0)
      000203 30 A6 01         [24]  801 	jnb	_DIO,00118$
                                    802 ;	main.c:197: return;
      000206 22               [24]  803 	ret
      000207                        804 00118$:
                                    805 ;	main.c:202: DCLK = 1;
                                    806 ;	assignBit
      000207 D2 A5            [12]  807 	setb	_DCLK
                                    808 ;	main.c:205: for (i=0; i < 8; i++)
      000209 E4               [12]  809 	clr	a
      00020A F5 1F            [12]  810 	mov	_tm1367_byteWrite_i_65536_8,a
      00020C F5 20            [12]  811 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00020E                        812 00153$:
      00020E C3               [12]  813 	clr	c
      00020F E5 1F            [12]  814 	mov	a,_tm1367_byteWrite_i_65536_8
      000211 94 08            [12]  815 	subb	a,#0x08
      000213 E5 20            [12]  816 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      000215 64 80            [12]  817 	xrl	a,#0x80
      000217 94 80            [12]  818 	subb	a,#0x80
      000219 50 24            [24]  819 	jnc	00122$
                                    820 ;	main.c:207: DCLK = 0;
                                    821 ;	assignBit
      00021B C2 A5            [12]  822 	clr	_DCLK
                                    823 ;	main.c:208: if (digit02 & 0x01)
      00021D E5 1C            [12]  824 	mov	a,_digit02
      00021F 30 E0 04         [24]  825 	jnb	acc.0,00120$
                                    826 ;	main.c:210: DIO = 1;
                                    827 ;	assignBit
      000222 D2 A6            [12]  828 	setb	_DIO
      000224 80 02            [24]  829 	sjmp	00121$
      000226                        830 00120$:
                                    831 ;	main.c:214: DIO = 0;
                                    832 ;	assignBit
      000226 C2 A6            [12]  833 	clr	_DIO
      000228                        834 00121$:
                                    835 ;	main.c:217: DCLK = 1;
                                    836 ;	assignBit
      000228 D2 A5            [12]  837 	setb	_DCLK
                                    838 ;	main.c:218: digit02 >>= 1;
      00022A E5 1C            [12]  839 	mov	a,_digit02
      00022C C3               [12]  840 	clr	c
      00022D 13               [12]  841 	rrc	a
      00022E F5 1C            [12]  842 	mov	_digit02,a
                                    843 ;	main.c:205: for (i=0; i < 8; i++)
      000230 AE 1F            [24]  844 	mov	r6,_tm1367_byteWrite_i_65536_8
      000232 AF 20            [24]  845 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      000234 74 01            [12]  846 	mov	a,#0x01
      000236 2E               [12]  847 	add	a,r6
      000237 F5 1F            [12]  848 	mov	_tm1367_byteWrite_i_65536_8,a
      000239 E4               [12]  849 	clr	a
      00023A 3F               [12]  850 	addc	a,r7
      00023B F5 20            [12]  851 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00023D 80 CF            [24]  852 	sjmp	00153$
      00023F                        853 00122$:
                                    854 ;	main.c:222: DCLK = 0;
                                    855 ;	assignBit
      00023F C2 A5            [12]  856 	clr	_DCLK
                                    857 ;	main.c:223: if (DIO != 0)
      000241 30 A6 01         [24]  858 	jnb	_DIO,00124$
                                    859 ;	main.c:225: return;
      000244 22               [24]  860 	ret
      000245                        861 00124$:
                                    862 ;	main.c:230: DCLK = 1;
                                    863 ;	assignBit
      000245 D2 A5            [12]  864 	setb	_DCLK
                                    865 ;	main.c:233: for (i=0; i < 8; i++)
      000247 E4               [12]  866 	clr	a
      000248 F5 1F            [12]  867 	mov	_tm1367_byteWrite_i_65536_8,a
      00024A F5 20            [12]  868 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00024C                        869 00156$:
      00024C C3               [12]  870 	clr	c
      00024D E5 1F            [12]  871 	mov	a,_tm1367_byteWrite_i_65536_8
      00024F 94 08            [12]  872 	subb	a,#0x08
      000251 E5 20            [12]  873 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      000253 64 80            [12]  874 	xrl	a,#0x80
      000255 94 80            [12]  875 	subb	a,#0x80
      000257 50 24            [24]  876 	jnc	00128$
                                    877 ;	main.c:235: DCLK = 0;
                                    878 ;	assignBit
      000259 C2 A5            [12]  879 	clr	_DCLK
                                    880 ;	main.c:236: if (digit03 & 0x01)
      00025B E5 1D            [12]  881 	mov	a,_digit03
      00025D 30 E0 04         [24]  882 	jnb	acc.0,00126$
                                    883 ;	main.c:238: DIO = 1;
                                    884 ;	assignBit
      000260 D2 A6            [12]  885 	setb	_DIO
      000262 80 02            [24]  886 	sjmp	00127$
      000264                        887 00126$:
                                    888 ;	main.c:242: DIO = 0;
                                    889 ;	assignBit
      000264 C2 A6            [12]  890 	clr	_DIO
      000266                        891 00127$:
                                    892 ;	main.c:245: DCLK = 1;
                                    893 ;	assignBit
      000266 D2 A5            [12]  894 	setb	_DCLK
                                    895 ;	main.c:246: digit03 >>= 1;
      000268 E5 1D            [12]  896 	mov	a,_digit03
      00026A C3               [12]  897 	clr	c
      00026B 13               [12]  898 	rrc	a
      00026C F5 1D            [12]  899 	mov	_digit03,a
                                    900 ;	main.c:233: for (i=0; i < 8; i++)
      00026E AE 1F            [24]  901 	mov	r6,_tm1367_byteWrite_i_65536_8
      000270 AF 20            [24]  902 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      000272 74 01            [12]  903 	mov	a,#0x01
      000274 2E               [12]  904 	add	a,r6
      000275 F5 1F            [12]  905 	mov	_tm1367_byteWrite_i_65536_8,a
      000277 E4               [12]  906 	clr	a
      000278 3F               [12]  907 	addc	a,r7
      000279 F5 20            [12]  908 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00027B 80 CF            [24]  909 	sjmp	00156$
      00027D                        910 00128$:
                                    911 ;	main.c:250: DCLK = 0;
                                    912 ;	assignBit
      00027D C2 A5            [12]  913 	clr	_DCLK
                                    914 ;	main.c:251: if (DIO != 0)
      00027F 30 A6 01         [24]  915 	jnb	_DIO,00130$
                                    916 ;	main.c:253: return;
      000282 22               [24]  917 	ret
      000283                        918 00130$:
                                    919 ;	main.c:258: DCLK = 1;
                                    920 ;	assignBit
      000283 D2 A5            [12]  921 	setb	_DCLK
                                    922 ;	main.c:261: for (i=0; i < 8; i++)
      000285 E4               [12]  923 	clr	a
      000286 F5 1F            [12]  924 	mov	_tm1367_byteWrite_i_65536_8,a
      000288 F5 20            [12]  925 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      00028A                        926 00159$:
      00028A C3               [12]  927 	clr	c
      00028B E5 1F            [12]  928 	mov	a,_tm1367_byteWrite_i_65536_8
      00028D 94 08            [12]  929 	subb	a,#0x08
      00028F E5 20            [12]  930 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      000291 64 80            [12]  931 	xrl	a,#0x80
      000293 94 80            [12]  932 	subb	a,#0x80
      000295 50 24            [24]  933 	jnc	00134$
                                    934 ;	main.c:263: DCLK = 0;
                                    935 ;	assignBit
      000297 C2 A5            [12]  936 	clr	_DCLK
                                    937 ;	main.c:264: if (digit04 & 0x01)
      000299 E5 1E            [12]  938 	mov	a,_digit04
      00029B 30 E0 04         [24]  939 	jnb	acc.0,00132$
                                    940 ;	main.c:266: DIO = 1;
                                    941 ;	assignBit
      00029E D2 A6            [12]  942 	setb	_DIO
      0002A0 80 02            [24]  943 	sjmp	00133$
      0002A2                        944 00132$:
                                    945 ;	main.c:270: DIO = 0;
                                    946 ;	assignBit
      0002A2 C2 A6            [12]  947 	clr	_DIO
      0002A4                        948 00133$:
                                    949 ;	main.c:273: DCLK = 1;
                                    950 ;	assignBit
      0002A4 D2 A5            [12]  951 	setb	_DCLK
                                    952 ;	main.c:274: digit04 >>= 1;
      0002A6 E5 1E            [12]  953 	mov	a,_digit04
      0002A8 C3               [12]  954 	clr	c
      0002A9 13               [12]  955 	rrc	a
      0002AA F5 1E            [12]  956 	mov	_digit04,a
                                    957 ;	main.c:261: for (i=0; i < 8; i++)
      0002AC AE 1F            [24]  958 	mov	r6,_tm1367_byteWrite_i_65536_8
      0002AE AF 20            [24]  959 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      0002B0 74 01            [12]  960 	mov	a,#0x01
      0002B2 2E               [12]  961 	add	a,r6
      0002B3 F5 1F            [12]  962 	mov	_tm1367_byteWrite_i_65536_8,a
      0002B5 E4               [12]  963 	clr	a
      0002B6 3F               [12]  964 	addc	a,r7
      0002B7 F5 20            [12]  965 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      0002B9 80 CF            [24]  966 	sjmp	00159$
      0002BB                        967 00134$:
                                    968 ;	main.c:278: DCLK = 0;
                                    969 ;	assignBit
      0002BB C2 A5            [12]  970 	clr	_DCLK
                                    971 ;	main.c:279: if (DIO != 0)
      0002BD 30 A6 01         [24]  972 	jnb	_DIO,00136$
                                    973 ;	main.c:281: return;
      0002C0 22               [24]  974 	ret
      0002C1                        975 00136$:
                                    976 ;	main.c:286: DCLK = 1;
                                    977 ;	assignBit
      0002C1 D2 A5            [12]  978 	setb	_DCLK
                                    979 ;	main.c:289: DCLK = 0;
                                    980 ;	assignBit
      0002C3 C2 A5            [12]  981 	clr	_DCLK
                                    982 ;	main.c:290: DCLK = 1;
                                    983 ;	assignBit
      0002C5 D2 A5            [12]  984 	setb	_DCLK
                                    985 ;	main.c:291: DIO = 1;
                                    986 ;	assignBit
      0002C7 D2 A6            [12]  987 	setb	_DIO
                                    988 ;	main.c:292: DIO = 0;
                                    989 ;	assignBit
      0002C9 C2 A6            [12]  990 	clr	_DIO
                                    991 ;	main.c:294: for (i=0; i < 8; i++)
      0002CB E4               [12]  992 	clr	a
      0002CC F5 1F            [12]  993 	mov	_tm1367_byteWrite_i_65536_8,a
      0002CE F5 20            [12]  994 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      0002D0                        995 00162$:
      0002D0 C3               [12]  996 	clr	c
      0002D1 E5 1F            [12]  997 	mov	a,_tm1367_byteWrite_i_65536_8
      0002D3 94 08            [12]  998 	subb	a,#0x08
      0002D5 E5 20            [12]  999 	mov	a,(_tm1367_byteWrite_i_65536_8 + 1)
      0002D7 64 80            [12] 1000 	xrl	a,#0x80
      0002D9 94 80            [12] 1001 	subb	a,#0x80
      0002DB 50 24            [24] 1002 	jnc	00140$
                                   1003 ;	main.c:296: DCLK = 0;
                                   1004 ;	assignBit
      0002DD C2 A5            [12] 1005 	clr	_DCLK
                                   1006 ;	main.c:297: if (C3 & 0x01)
      0002DF E5 1A            [12] 1007 	mov	a,_C3
      0002E1 30 E0 04         [24] 1008 	jnb	acc.0,00138$
                                   1009 ;	main.c:299: DIO = 1;
                                   1010 ;	assignBit
      0002E4 D2 A6            [12] 1011 	setb	_DIO
      0002E6 80 02            [24] 1012 	sjmp	00139$
      0002E8                       1013 00138$:
                                   1014 ;	main.c:303: DIO = 0;
                                   1015 ;	assignBit
      0002E8 C2 A6            [12] 1016 	clr	_DIO
      0002EA                       1017 00139$:
                                   1018 ;	main.c:306: DCLK = 1;
                                   1019 ;	assignBit
      0002EA D2 A5            [12] 1020 	setb	_DCLK
                                   1021 ;	main.c:307: C3 >>= 1;
      0002EC E5 1A            [12] 1022 	mov	a,_C3
      0002EE C3               [12] 1023 	clr	c
      0002EF 13               [12] 1024 	rrc	a
      0002F0 F5 1A            [12] 1025 	mov	_C3,a
                                   1026 ;	main.c:294: for (i=0; i < 8; i++)
      0002F2 AE 1F            [24] 1027 	mov	r6,_tm1367_byteWrite_i_65536_8
      0002F4 AF 20            [24] 1028 	mov	r7,(_tm1367_byteWrite_i_65536_8 + 1)
      0002F6 74 01            [12] 1029 	mov	a,#0x01
      0002F8 2E               [12] 1030 	add	a,r6
      0002F9 F5 1F            [12] 1031 	mov	_tm1367_byteWrite_i_65536_8,a
      0002FB E4               [12] 1032 	clr	a
      0002FC 3F               [12] 1033 	addc	a,r7
      0002FD F5 20            [12] 1034 	mov	(_tm1367_byteWrite_i_65536_8 + 1),a
      0002FF 80 CF            [24] 1035 	sjmp	00162$
      000301                       1036 00140$:
                                   1037 ;	main.c:311: DCLK = 0;
                                   1038 ;	assignBit
      000301 C2 A5            [12] 1039 	clr	_DCLK
                                   1040 ;	main.c:312: if (DIO != 0)
      000303 30 A6 01         [24] 1041 	jnb	_DIO,00142$
                                   1042 ;	main.c:314: return;
      000306 22               [24] 1043 	ret
      000307                       1044 00142$:
                                   1045 ;	main.c:319: DCLK = 1;
                                   1046 ;	assignBit
      000307 D2 A5            [12] 1047 	setb	_DCLK
                                   1048 ;	main.c:322: DCLK = 0;
                                   1049 ;	assignBit
      000309 C2 A5            [12] 1050 	clr	_DCLK
                                   1051 ;	main.c:323: DCLK = 1;
                                   1052 ;	assignBit
      00030B D2 A5            [12] 1053 	setb	_DCLK
                                   1054 ;	main.c:324: DIO = 1;
                                   1055 ;	assignBit
      00030D D2 A6            [12] 1056 	setb	_DIO
                                   1057 ;	main.c:326: return;
                                   1058 ;	main.c:327: }
      00030F 22               [24] 1059 	ret
                                   1060 	.area CSEG    (CODE)
                                   1061 	.area CONST   (CODE)
                                   1062 	.area XINIT   (CODE)
                                   1063 	.area CABS    (ABS,CODE)
