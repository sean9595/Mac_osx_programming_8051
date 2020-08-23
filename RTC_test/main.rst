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
                                     11 	.globl _byte_write_PARM_2
                                     12 	.globl _T_int_01
                                     13 	.globl _main
                                     14 	.globl _RST
                                     15 	.globl _IO
                                     16 	.globl _SCLK
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _FL
                                     24 	.globl _P
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _T2EX
                                     87 	.globl _T2
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _A
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _min
                                    141 	.globl _hr
                                    142 	.globl _num
                                    143 	.globl _d
                                    144 	.globl _c
                                    145 	.globl _b
                                    146 	.globl _a
                                    147 	.globl _min_bcd
                                    148 	.globl _hr_bcd
                                    149 	.globl _day_bcd
                                    150 	.globl _date_bcd
                                    151 	.globl _mnth_bcd
                                    152 	.globl _year_bcd
                                    153 	.globl _count_01
                                    154 	.globl _T_int_flag_01
                                    155 	.globl _sys_init
                                    156 	.globl _delay
                                    157 	.globl _byte_write
                                    158 	.globl _byte_read
                                    159 	.globl _display
                                    160 ;--------------------------------------------------------
                                    161 ; special function registers
                                    162 ;--------------------------------------------------------
                                    163 	.area RSEG    (ABS,DATA)
      000000                        164 	.org 0x0000
                           000080   165 _P0	=	0x0080
                           000081   166 _SP	=	0x0081
                           000082   167 _DPL	=	0x0082
                           000083   168 _DPH	=	0x0083
                           000087   169 _PCON	=	0x0087
                           000088   170 _TCON	=	0x0088
                           000089   171 _TMOD	=	0x0089
                           00008A   172 _TL0	=	0x008a
                           00008B   173 _TL1	=	0x008b
                           00008C   174 _TH0	=	0x008c
                           00008D   175 _TH1	=	0x008d
                           000090   176 _P1	=	0x0090
                           000098   177 _SCON	=	0x0098
                           000099   178 _SBUF	=	0x0099
                           0000A0   179 _P2	=	0x00a0
                           0000A8   180 _IE	=	0x00a8
                           0000B0   181 _P3	=	0x00b0
                           0000B8   182 _IP	=	0x00b8
                           0000C8   183 _T2CON	=	0x00c8
                           0000C9   184 _T2MOD	=	0x00c9
                           0000CA   185 _RCAP2L	=	0x00ca
                           0000CB   186 _RCAP2H	=	0x00cb
                           0000CC   187 _TL2	=	0x00cc
                           0000CD   188 _TH2	=	0x00cd
                           0000D0   189 _PSW	=	0x00d0
                           0000E0   190 _ACC	=	0x00e0
                           0000E0   191 _A	=	0x00e0
                           0000F0   192 _B	=	0x00f0
                                    193 ;--------------------------------------------------------
                                    194 ; special function bits
                                    195 ;--------------------------------------------------------
                                    196 	.area RSEG    (ABS,DATA)
      000000                        197 	.org 0x0000
                           000080   198 _P0_0	=	0x0080
                           000081   199 _P0_1	=	0x0081
                           000082   200 _P0_2	=	0x0082
                           000083   201 _P0_3	=	0x0083
                           000084   202 _P0_4	=	0x0084
                           000085   203 _P0_5	=	0x0085
                           000086   204 _P0_6	=	0x0086
                           000087   205 _P0_7	=	0x0087
                           000088   206 _IT0	=	0x0088
                           000089   207 _IE0	=	0x0089
                           00008A   208 _IT1	=	0x008a
                           00008B   209 _IE1	=	0x008b
                           00008C   210 _TR0	=	0x008c
                           00008D   211 _TF0	=	0x008d
                           00008E   212 _TR1	=	0x008e
                           00008F   213 _TF1	=	0x008f
                           000090   214 _P1_0	=	0x0090
                           000091   215 _P1_1	=	0x0091
                           000092   216 _P1_2	=	0x0092
                           000093   217 _P1_3	=	0x0093
                           000094   218 _P1_4	=	0x0094
                           000095   219 _P1_5	=	0x0095
                           000096   220 _P1_6	=	0x0096
                           000097   221 _P1_7	=	0x0097
                           000090   222 _T2	=	0x0090
                           000091   223 _T2EX	=	0x0091
                           000098   224 _RI	=	0x0098
                           000099   225 _TI	=	0x0099
                           00009A   226 _RB8	=	0x009a
                           00009B   227 _TB8	=	0x009b
                           00009C   228 _REN	=	0x009c
                           00009D   229 _SM2	=	0x009d
                           00009E   230 _SM1	=	0x009e
                           00009F   231 _SM0	=	0x009f
                           0000A0   232 _P2_0	=	0x00a0
                           0000A1   233 _P2_1	=	0x00a1
                           0000A2   234 _P2_2	=	0x00a2
                           0000A3   235 _P2_3	=	0x00a3
                           0000A4   236 _P2_4	=	0x00a4
                           0000A5   237 _P2_5	=	0x00a5
                           0000A6   238 _P2_6	=	0x00a6
                           0000A7   239 _P2_7	=	0x00a7
                           0000A8   240 _EX0	=	0x00a8
                           0000A9   241 _ET0	=	0x00a9
                           0000AA   242 _EX1	=	0x00aa
                           0000AB   243 _ET1	=	0x00ab
                           0000AC   244 _ES	=	0x00ac
                           0000AD   245 _ET2	=	0x00ad
                           0000AF   246 _EA	=	0x00af
                           0000B0   247 _P3_0	=	0x00b0
                           0000B1   248 _P3_1	=	0x00b1
                           0000B2   249 _P3_2	=	0x00b2
                           0000B3   250 _P3_3	=	0x00b3
                           0000B4   251 _P3_4	=	0x00b4
                           0000B5   252 _P3_5	=	0x00b5
                           0000B6   253 _P3_6	=	0x00b6
                           0000B7   254 _P3_7	=	0x00b7
                           0000B0   255 _RXD	=	0x00b0
                           0000B1   256 _TXD	=	0x00b1
                           0000B2   257 _INT0	=	0x00b2
                           0000B3   258 _INT1	=	0x00b3
                           0000B4   259 _T0	=	0x00b4
                           0000B5   260 _T1	=	0x00b5
                           0000B6   261 _WR	=	0x00b6
                           0000B7   262 _RD	=	0x00b7
                           0000B8   263 _PX0	=	0x00b8
                           0000B9   264 _PT0	=	0x00b9
                           0000BA   265 _PX1	=	0x00ba
                           0000BB   266 _PT1	=	0x00bb
                           0000BC   267 _PS	=	0x00bc
                           0000BD   268 _PT2	=	0x00bd
                           0000C8   269 _T2CON_0	=	0x00c8
                           0000C9   270 _T2CON_1	=	0x00c9
                           0000CA   271 _T2CON_2	=	0x00ca
                           0000CB   272 _T2CON_3	=	0x00cb
                           0000CC   273 _T2CON_4	=	0x00cc
                           0000CD   274 _T2CON_5	=	0x00cd
                           0000CE   275 _T2CON_6	=	0x00ce
                           0000CF   276 _T2CON_7	=	0x00cf
                           0000C8   277 _CP_RL2	=	0x00c8
                           0000C9   278 _C_T2	=	0x00c9
                           0000CA   279 _TR2	=	0x00ca
                           0000CB   280 _EXEN2	=	0x00cb
                           0000CC   281 _TCLK	=	0x00cc
                           0000CD   282 _RCLK	=	0x00cd
                           0000CE   283 _EXF2	=	0x00ce
                           0000CF   284 _TF2	=	0x00cf
                           0000D0   285 _P	=	0x00d0
                           0000D1   286 _FL	=	0x00d1
                           0000D2   287 _OV	=	0x00d2
                           0000D3   288 _RS0	=	0x00d3
                           0000D4   289 _RS1	=	0x00d4
                           0000D5   290 _F0	=	0x00d5
                           0000D6   291 _AC	=	0x00d6
                           0000D7   292 _CY	=	0x00d7
                           000092   293 _SCLK	=	0x0092
                           000093   294 _IO	=	0x0093
                           000094   295 _RST	=	0x0094
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable register banks
                                    298 ;--------------------------------------------------------
                                    299 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        300 	.ds 8
                                    301 ;--------------------------------------------------------
                                    302 ; internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area DSEG    (DATA)
      000008                        305 _T_int_flag_01::
      000008                        306 	.ds 1
      000009                        307 _count_01::
      000009                        308 	.ds 1
      00000A                        309 _year_bcd::
      00000A                        310 	.ds 1
      00000B                        311 _mnth_bcd::
      00000B                        312 	.ds 1
      00000C                        313 _date_bcd::
      00000C                        314 	.ds 1
      00000D                        315 _day_bcd::
      00000D                        316 	.ds 1
      00000E                        317 _hr_bcd::
      00000E                        318 	.ds 1
      00000F                        319 _min_bcd::
      00000F                        320 	.ds 1
      000010                        321 _a::
      000010                        322 	.ds 1
      000011                        323 _b::
      000011                        324 	.ds 1
      000012                        325 _c::
      000012                        326 	.ds 1
      000013                        327 _d::
      000013                        328 	.ds 1
      000014                        329 _num::
      000014                        330 	.ds 10
      00001E                        331 _hr::
      00001E                        332 	.ds 1
      00001F                        333 _min::
      00001F                        334 	.ds 1
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable items in internal ram 
                                    337 ;--------------------------------------------------------
                                    338 	.area	OSEG    (OVR,DATA)
                                    339 	.area	OSEG    (OVR,DATA)
      000020                        340 _byte_write_PARM_2:
      000020                        341 	.ds 1
                                    342 	.area	OSEG    (OVR,DATA)
                                    343 ;--------------------------------------------------------
                                    344 ; Stack segment in internal ram 
                                    345 ;--------------------------------------------------------
                                    346 	.area	SSEG
      000021                        347 __start__stack:
      000021                        348 	.ds	1
                                    349 
                                    350 ;--------------------------------------------------------
                                    351 ; indirectly addressable internal ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area ISEG    (DATA)
                                    354 ;--------------------------------------------------------
                                    355 ; absolute internal ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area IABS    (ABS,DATA)
                                    358 	.area IABS    (ABS,DATA)
                                    359 ;--------------------------------------------------------
                                    360 ; bit data
                                    361 ;--------------------------------------------------------
                                    362 	.area BSEG    (BIT)
                                    363 ;--------------------------------------------------------
                                    364 ; paged external ram data
                                    365 ;--------------------------------------------------------
                                    366 	.area PSEG    (PAG,XDATA)
                                    367 ;--------------------------------------------------------
                                    368 ; external ram data
                                    369 ;--------------------------------------------------------
                                    370 	.area XSEG    (XDATA)
                                    371 ;--------------------------------------------------------
                                    372 ; absolute external ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area XABS    (ABS,XDATA)
                                    375 ;--------------------------------------------------------
                                    376 ; external initialized ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area XISEG   (XDATA)
                                    379 	.area HOME    (CODE)
                                    380 	.area GSINIT0 (CODE)
                                    381 	.area GSINIT1 (CODE)
                                    382 	.area GSINIT2 (CODE)
                                    383 	.area GSINIT3 (CODE)
                                    384 	.area GSINIT4 (CODE)
                                    385 	.area GSINIT5 (CODE)
                                    386 	.area GSINIT  (CODE)
                                    387 	.area GSFINAL (CODE)
                                    388 	.area CSEG    (CODE)
                                    389 ;--------------------------------------------------------
                                    390 ; interrupt vector 
                                    391 ;--------------------------------------------------------
                                    392 	.area HOME    (CODE)
      000000                        393 __interrupt_vect:
      000000 02 00 11         [24]  394 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  395 	reti
      000004                        396 	.ds	7
      00000B 02 01 41         [24]  397 	ljmp	_T_int_01
                                    398 ;--------------------------------------------------------
                                    399 ; global & static initialisations
                                    400 ;--------------------------------------------------------
                                    401 	.area HOME    (CODE)
                                    402 	.area GSINIT  (CODE)
                                    403 	.area GSFINAL (CODE)
                                    404 	.area GSINIT  (CODE)
                                    405 	.globl __sdcc_gsinit_startup
                                    406 	.globl __sdcc_program_startup
                                    407 	.globl __start__stack
                                    408 	.globl __mcs51_genXINIT
                                    409 	.globl __mcs51_genXRAMCLEAR
                                    410 	.globl __mcs51_genRAMCLEAR
                                    411 ;	main.c:23: unsigned char T_int_flag_01 = 0;
      00006A 75 08 00         [24]  412 	mov	_T_int_flag_01,#0x00
                                    413 ;	main.c:24: unsigned char count_01 = 0;
      00006D 75 09 00         [24]  414 	mov	_count_01,#0x00
                                    415 ;	main.c:26: unsigned char year_bcd = 0x20; //0~99 range이므로 20은 따로 적어야한다.
      000070 75 0A 20         [24]  416 	mov	_year_bcd,#0x20
                                    417 ;	main.c:27: unsigned char mnth_bcd = 0x01;
      000073 75 0B 01         [24]  418 	mov	_mnth_bcd,#0x01
                                    419 ;	main.c:28: unsigned char date_bcd = 0x01;
      000076 75 0C 01         [24]  420 	mov	_date_bcd,#0x01
                                    421 ;	main.c:29: unsigned char day_bcd = 0x01;
      000079 75 0D 01         [24]  422 	mov	_day_bcd,#0x01
                                    423 ;	main.c:30: unsigned char hr_bcd = 0x80; //Default setting is the 12hour set.
      00007C 75 0E 80         [24]  424 	mov	_hr_bcd,#0x80
                                    425 ;	main.c:31: unsigned char min_bcd = 0x00;
      00007F 75 0F 00         [24]  426 	mov	_min_bcd,#0x00
                                    427 ;	main.c:33: unsigned char a = 0, b = 0, c = 0, d = 0;
      000082 75 10 00         [24]  428 	mov	_a,#0x00
                                    429 ;	main.c:33: unsigned char num[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};
      000085 75 11 00         [24]  430 	mov	_b,#0x00
                                    431 ;	main.c:33: unsigned char a = 0, b = 0, c = 0, d = 0;
      000088 75 12 00         [24]  432 	mov	_c,#0x00
                                    433 ;	main.c:33: unsigned char num[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};
      00008B 75 13 00         [24]  434 	mov	_d,#0x00
                                    435 ;	main.c:34: //7-segment common cathod.
      00008E 75 14 40         [24]  436 	mov	_num,#0x40
      000091 75 15 79         [24]  437 	mov	(_num + 0x0001),#0x79
      000094 75 16 24         [24]  438 	mov	(_num + 0x0002),#0x24
      000097 75 17 30         [24]  439 	mov	(_num + 0x0003),#0x30
      00009A 75 18 19         [24]  440 	mov	(_num + 0x0004),#0x19
      00009D 75 19 12         [24]  441 	mov	(_num + 0x0005),#0x12
      0000A0 75 1A 02         [24]  442 	mov	(_num + 0x0006),#0x02
      0000A3 75 1B 78         [24]  443 	mov	(_num + 0x0007),#0x78
      0000A6 75 1C 00         [24]  444 	mov	(_num + 0x0008),#0x00
      0000A9 75 1D 10         [24]  445 	mov	(_num + 0x0009),#0x10
                                    446 ;	main.c:37: unsigned char hr = 0;
      0000AC 75 1E 00         [24]  447 	mov	_hr,#0x00
                                    448 ;	main.c:38: unsigned char min = 0;
      0000AF 75 1F 00         [24]  449 	mov	_min,#0x00
                                    450 	.area GSFINAL (CODE)
      0000B2 02 00 0E         [24]  451 	ljmp	__sdcc_program_startup
                                    452 ;--------------------------------------------------------
                                    453 ; Home
                                    454 ;--------------------------------------------------------
                                    455 	.area HOME    (CODE)
                                    456 	.area HOME    (CODE)
      00000E                        457 __sdcc_program_startup:
      00000E 02 00 B5         [24]  458 	ljmp	_main
                                    459 ;	return from main will return to caller
                                    460 ;--------------------------------------------------------
                                    461 ; code
                                    462 ;--------------------------------------------------------
                                    463 	.area CSEG    (CODE)
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'main'
                                    466 ;------------------------------------------------------------
                                    467 ;	main.c:41: void main()
                                    468 ;	-----------------------------------------
                                    469 ;	 function main
                                    470 ;	-----------------------------------------
      0000B5                        471 _main:
                           000007   472 	ar7 = 0x07
                           000006   473 	ar6 = 0x06
                           000005   474 	ar5 = 0x05
                           000004   475 	ar4 = 0x04
                           000003   476 	ar3 = 0x03
                           000002   477 	ar2 = 0x02
                           000001   478 	ar1 = 0x01
                           000000   479 	ar0 = 0x00
                                    480 ;	main.c:43: sys_init();
      0000B5 12 00 C1         [24]  481 	lcall	_sys_init
                                    482 ;	main.c:45: while (1) //infinite loop
      0000B8                        483 00104$:
                                    484 ;	main.c:47: if (T_int_flag_01)
      0000B8 E5 08            [12]  485 	mov	a,_T_int_flag_01
      0000BA 60 FC            [24]  486 	jz	00104$
                                    487 ;	main.c:49: display();
      0000BC 12 01 E8         [24]  488 	lcall	_display
                                    489 ;	main.c:52: }
      0000BF 80 F7            [24]  490 	sjmp	00104$
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'sys_init'
                                    493 ;------------------------------------------------------------
                                    494 ;	main.c:55: void sys_init() //여기에 기본 interrupt 설정과 application 초기화를 위한 함수가 배치됨.
                                    495 ;	-----------------------------------------
                                    496 ;	 function sys_init
                                    497 ;	-----------------------------------------
      0000C1                        498 _sys_init:
                                    499 ;	main.c:58: RST = 0;
                                    500 ;	assignBit
      0000C1 C2 94            [12]  501 	clr	_RST
                                    502 ;	main.c:59: IO = 0;
                                    503 ;	assignBit
      0000C3 C2 93            [12]  504 	clr	_IO
                                    505 ;	main.c:60: SCLK = 0;
                                    506 ;	assignBit
      0000C5 C2 92            [12]  507 	clr	_SCLK
                                    508 ;	main.c:62: TMOD = 0x01; //GATE = 0, C/T = 0, Timer/counter mode 1, Use timer/counter 0 & 1.
      0000C7 75 89 01         [24]  509 	mov	_TMOD,#0x01
                                    510 ;	main.c:63: TF0 = 0;     // Timer/counter 0 interrupt flag clear
                                    511 ;	assignBit
      0000CA C2 8D            [12]  512 	clr	_TF0
                                    513 ;	main.c:64: TH0 = 0xec;
      0000CC 75 8C EC         [24]  514 	mov	_TH0,#0xec
                                    515 ;	main.c:65: TL0 = 0x78; // TI0 occurs every 5 ms
      0000CF 75 8A 78         [24]  516 	mov	_TL0,#0x78
                                    517 ;	main.c:67: IE = 0x82;  // 0b1000 0010 IE -> interrupt enable reg. Timer interrupt enables & entire interrupt enable.
      0000D2 75 A8 82         [24]  518 	mov	_IE,#0x82
                                    519 ;	main.c:68: IP = 0x02;  // IP -> interrupt priority. Set timer interrupt 0 as the highest priority.
      0000D5 75 B8 02         [24]  520 	mov	_IP,#0x02
                                    521 ;	main.c:71: TR0 = 1;    // Timer interrupt 0 RUN.
                                    522 ;	assignBit
      0000D8 D2 8C            [12]  523 	setb	_TR0
                                    524 ;	main.c:73: delay(1); //pause for 1ms.
      0000DA 90 00 01         [24]  525 	mov	dptr,#0x0001
      0000DD 12 01 16         [24]  526 	lcall	_delay
                                    527 ;	main.c:76: byte_write(0x82, min_bcd);
      0000E0 85 0F 20         [24]  528 	mov	_byte_write_PARM_2,_min_bcd
      0000E3 75 82 82         [24]  529 	mov	dpl,#0x82
      0000E6 12 01 60         [24]  530 	lcall	_byte_write
                                    531 ;	main.c:77: byte_write(0x84, hr_bcd);
      0000E9 85 0E 20         [24]  532 	mov	_byte_write_PARM_2,_hr_bcd
      0000EC 75 82 84         [24]  533 	mov	dpl,#0x84
      0000EF 12 01 60         [24]  534 	lcall	_byte_write
                                    535 ;	main.c:78: byte_write(0x86, date_bcd);
      0000F2 85 0C 20         [24]  536 	mov	_byte_write_PARM_2,_date_bcd
      0000F5 75 82 86         [24]  537 	mov	dpl,#0x86
      0000F8 12 01 60         [24]  538 	lcall	_byte_write
                                    539 ;	main.c:79: byte_write(0x88, mnth_bcd);
      0000FB 85 0B 20         [24]  540 	mov	_byte_write_PARM_2,_mnth_bcd
      0000FE 75 82 88         [24]  541 	mov	dpl,#0x88
      000101 12 01 60         [24]  542 	lcall	_byte_write
                                    543 ;	main.c:80: byte_write(0x8a, day_bcd);
      000104 85 0D 20         [24]  544 	mov	_byte_write_PARM_2,_day_bcd
      000107 75 82 8A         [24]  545 	mov	dpl,#0x8a
      00010A 12 01 60         [24]  546 	lcall	_byte_write
                                    547 ;	main.c:81: byte_write(0x8c, year_bcd);
      00010D 85 0A 20         [24]  548 	mov	_byte_write_PARM_2,_year_bcd
      000110 75 82 8C         [24]  549 	mov	dpl,#0x8c
                                    550 ;	main.c:83: return;
                                    551 ;	main.c:84: }
      000113 02 01 60         [24]  552 	ljmp	_byte_write
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'delay'
                                    555 ;------------------------------------------------------------
                                    556 ;ms                        Allocated to registers r6 r7 
                                    557 ;i                         Allocated to registers r4 r5 
                                    558 ;j                         Allocated to registers r2 r3 
                                    559 ;------------------------------------------------------------
                                    560 ;	main.c:86: void delay(unsigned int ms)
                                    561 ;	-----------------------------------------
                                    562 ;	 function delay
                                    563 ;	-----------------------------------------
      000116                        564 _delay:
      000116 AE 82            [24]  565 	mov	r6,dpl
      000118 AF 83            [24]  566 	mov	r7,dph
                                    567 ;	main.c:89: for (i = 1; i <= ms; i++)
      00011A 7C 01            [12]  568 	mov	r4,#0x01
      00011C 7D 00            [12]  569 	mov	r5,#0x00
      00011E                        570 00107$:
      00011E C3               [12]  571 	clr	c
      00011F EE               [12]  572 	mov	a,r6
      000120 9C               [12]  573 	subb	a,r4
      000121 EF               [12]  574 	mov	a,r7
      000122 9D               [12]  575 	subb	a,r5
      000123 40 1B            [24]  576 	jc	00109$
                                    577 ;	main.c:91: for (j = 1; j <= 125; j++)
      000125 7A 7D            [12]  578 	mov	r2,#0x7d
      000127 7B 00            [12]  579 	mov	r3,#0x00
      000129                        580 00105$:
      000129 EA               [12]  581 	mov	a,r2
      00012A 24 FF            [12]  582 	add	a,#0xff
      00012C F8               [12]  583 	mov	r0,a
      00012D EB               [12]  584 	mov	a,r3
      00012E 34 FF            [12]  585 	addc	a,#0xff
      000130 F9               [12]  586 	mov	r1,a
      000131 88 02            [24]  587 	mov	ar2,r0
      000133 89 03            [24]  588 	mov	ar3,r1
      000135 E8               [12]  589 	mov	a,r0
      000136 49               [12]  590 	orl	a,r1
      000137 70 F0            [24]  591 	jnz	00105$
                                    592 ;	main.c:89: for (i = 1; i <= ms; i++)
      000139 0C               [12]  593 	inc	r4
      00013A BC 00 E1         [24]  594 	cjne	r4,#0x00,00107$
      00013D 0D               [12]  595 	inc	r5
      00013E 80 DE            [24]  596 	sjmp	00107$
      000140                        597 00109$:
                                    598 ;	main.c:94: }
      000140 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'T_int_01'
                                    602 ;------------------------------------------------------------
                                    603 ;	main.c:97: void T_int_01() __interrupt 1 // void [user name]() interrupt [vector num.]
                                    604 ;	-----------------------------------------
                                    605 ;	 function T_int_01
                                    606 ;	-----------------------------------------
      000141                        607 _T_int_01:
      000141 C0 E0            [24]  608 	push	acc
      000143 C0 D0            [24]  609 	push	psw
                                    610 ;	main.c:100: T_int_flag_01 = 1;
      000145 75 08 01         [24]  611 	mov	_T_int_flag_01,#0x01
                                    612 ;	main.c:102: count_01++;
      000148 05 09            [12]  613 	inc	_count_01
                                    614 ;	main.c:103: if (count_01 > 3)
      00014A E5 09            [12]  615 	mov	a,_count_01
      00014C 24 FC            [12]  616 	add	a,#0xff - 0x03
      00014E 50 03            [24]  617 	jnc	00102$
                                    618 ;	main.c:105: count_01 = 0; //count increment & count initialization have to be placed at the same place.
      000150 75 09 00         [24]  619 	mov	_count_01,#0x00
      000153                        620 00102$:
                                    621 ;	main.c:107: TH0 = 0xec;
      000153 75 8C EC         [24]  622 	mov	_TH0,#0xec
                                    623 ;	main.c:108: TL0 = 0x78; // Reset of these two register is necessary for periodic interrupt since it is mode 1.
      000156 75 8A 78         [24]  624 	mov	_TL0,#0x78
                                    625 ;	main.c:109: EA = 1;     // Interrupt enables
                                    626 ;	assignBit
      000159 D2 AF            [12]  627 	setb	_EA
                                    628 ;	main.c:110: return;
                                    629 ;	main.c:111: }
      00015B D0 D0            [24]  630 	pop	psw
      00015D D0 E0            [24]  631 	pop	acc
      00015F 32               [24]  632 	reti
                                    633 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    634 ;	eliminated unneeded push/pop dpl
                                    635 ;	eliminated unneeded push/pop dph
                                    636 ;	eliminated unneeded push/pop b
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'byte_write'
                                    639 ;------------------------------------------------------------
                                    640 ;w_data                    Allocated with name '_byte_write_PARM_2'
                                    641 ;w_addr                    Allocated to registers r7 
                                    642 ;i                         Allocated to registers r6 
                                    643 ;------------------------------------------------------------
                                    644 ;	main.c:115: void byte_write(unsigned char w_addr, unsigned char w_data)
                                    645 ;	-----------------------------------------
                                    646 ;	 function byte_write
                                    647 ;	-----------------------------------------
      000160                        648 _byte_write:
      000160 AF 82            [24]  649 	mov	r7,dpl
                                    650 ;	main.c:119: RST = 1;
                                    651 ;	assignBit
      000162 D2 94            [12]  652 	setb	_RST
                                    653 ;	main.c:121: for (i = 0; i < 8; i++)
      000164 7E 00            [12]  654 	mov	r6,#0x00
      000166                        655 00109$:
                                    656 ;	main.c:123: if (w_addr & 0x01)
      000166 EF               [12]  657 	mov	a,r7
      000167 30 E0 04         [24]  658 	jnb	acc.0,00102$
                                    659 ;	main.c:125: IO = 1;
                                    660 ;	assignBit
      00016A D2 93            [12]  661 	setb	_IO
      00016C 80 02            [24]  662 	sjmp	00103$
      00016E                        663 00102$:
                                    664 ;	main.c:129: IO = 0;
                                    665 ;	assignBit
      00016E C2 93            [12]  666 	clr	_IO
      000170                        667 00103$:
                                    668 ;	main.c:131: SCLK = 1;
                                    669 ;	assignBit
      000170 D2 92            [12]  670 	setb	_SCLK
                                    671 ;	main.c:132: SCLK = 0;
                                    672 ;	assignBit
      000172 C2 92            [12]  673 	clr	_SCLK
                                    674 ;	main.c:133: w_addr >>= 1;
      000174 EF               [12]  675 	mov	a,r7
      000175 C3               [12]  676 	clr	c
      000176 13               [12]  677 	rrc	a
      000177 FF               [12]  678 	mov	r7,a
                                    679 ;	main.c:121: for (i = 0; i < 8; i++)
      000178 0E               [12]  680 	inc	r6
      000179 BE 08 00         [24]  681 	cjne	r6,#0x08,00142$
      00017C                        682 00142$:
      00017C 40 E8            [24]  683 	jc	00109$
                                    684 ;	main.c:136: for (i = 0; i < 8; i++)
      00017E 7F 00            [12]  685 	mov	r7,#0x00
      000180                        686 00111$:
                                    687 ;	main.c:138: if (w_data & 0x01)
      000180 E5 20            [12]  688 	mov	a,_byte_write_PARM_2
      000182 30 E0 04         [24]  689 	jnb	acc.0,00106$
                                    690 ;	main.c:140: IO = 1;
                                    691 ;	assignBit
      000185 D2 93            [12]  692 	setb	_IO
      000187 80 02            [24]  693 	sjmp	00107$
      000189                        694 00106$:
                                    695 ;	main.c:144: IO = 0;
                                    696 ;	assignBit
      000189 C2 93            [12]  697 	clr	_IO
      00018B                        698 00107$:
                                    699 ;	main.c:146: SCLK = 1;
                                    700 ;	assignBit
      00018B D2 92            [12]  701 	setb	_SCLK
                                    702 ;	main.c:147: SCLK = 0;
                                    703 ;	assignBit
      00018D C2 92            [12]  704 	clr	_SCLK
                                    705 ;	main.c:148: w_data >>= 1;
      00018F E5 20            [12]  706 	mov	a,_byte_write_PARM_2
      000191 C3               [12]  707 	clr	c
      000192 13               [12]  708 	rrc	a
      000193 F5 20            [12]  709 	mov	_byte_write_PARM_2,a
                                    710 ;	main.c:136: for (i = 0; i < 8; i++)
      000195 0F               [12]  711 	inc	r7
      000196 BF 08 00         [24]  712 	cjne	r7,#0x08,00145$
      000199                        713 00145$:
      000199 40 E5            [24]  714 	jc	00111$
                                    715 ;	main.c:151: RST = 0;
                                    716 ;	assignBit
      00019B C2 94            [12]  717 	clr	_RST
                                    718 ;	main.c:152: return;
                                    719 ;	main.c:153: }
      00019D 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'byte_read'
                                    723 ;------------------------------------------------------------
                                    724 ;r_addr                    Allocated to registers r7 
                                    725 ;i                         Allocated to registers r6 
                                    726 ;r_data                    Allocated to registers r4 
                                    727 ;tmp                       Allocated to registers r5 
                                    728 ;------------------------------------------------------------
                                    729 ;	main.c:155: unsigned char byte_read(unsigned char r_addr) //read data on RTC.
                                    730 ;	-----------------------------------------
                                    731 ;	 function byte_read
                                    732 ;	-----------------------------------------
      00019E                        733 _byte_read:
      00019E AF 82            [24]  734 	mov	r7,dpl
                                    735 ;	main.c:159: RST = 1; //rst pin high for data access.
                                    736 ;	assignBit
      0001A0 D2 94            [12]  737 	setb	_RST
                                    738 ;	main.c:161: for (i = 0; i < 7; i++)
      0001A2 7E 00            [12]  739 	mov	r6,#0x00
      0001A4                        740 00109$:
                                    741 ;	main.c:163: if (r_addr & 0x01)
      0001A4 EF               [12]  742 	mov	a,r7
      0001A5 30 E0 04         [24]  743 	jnb	acc.0,00102$
                                    744 ;	main.c:165: IO = 1;
                                    745 ;	assignBit
      0001A8 D2 93            [12]  746 	setb	_IO
      0001AA 80 02            [24]  747 	sjmp	00103$
      0001AC                        748 00102$:
                                    749 ;	main.c:169: IO = 0;
                                    750 ;	assignBit
      0001AC C2 93            [12]  751 	clr	_IO
      0001AE                        752 00103$:
                                    753 ;	main.c:171: SCLK = 1;
                                    754 ;	assignBit
      0001AE D2 92            [12]  755 	setb	_SCLK
                                    756 ;	main.c:172: SCLK = 0;
                                    757 ;	assignBit
      0001B0 C2 92            [12]  758 	clr	_SCLK
                                    759 ;	main.c:173: r_addr >>= 1; //Right shifting for 1 bit.
      0001B2 EF               [12]  760 	mov	a,r7
      0001B3 C3               [12]  761 	clr	c
      0001B4 13               [12]  762 	rrc	a
      0001B5 FF               [12]  763 	mov	r7,a
                                    764 ;	main.c:161: for (i = 0; i < 7; i++)
      0001B6 0E               [12]  765 	inc	r6
      0001B7 BE 07 00         [24]  766 	cjne	r6,#0x07,00148$
      0001BA                        767 00148$:
      0001BA 40 E8            [24]  768 	jc	00109$
                                    769 ;	main.c:176: if (r_addr & 0x01)
      0001BC EF               [12]  770 	mov	a,r7
      0001BD 30 E0 04         [24]  771 	jnb	acc.0,00106$
                                    772 ;	main.c:178: IO = 1;
                                    773 ;	assignBit
      0001C0 D2 93            [12]  774 	setb	_IO
      0001C2 80 02            [24]  775 	sjmp	00107$
      0001C4                        776 00106$:
                                    777 ;	main.c:182: IO = 0;
                                    778 ;	assignBit
      0001C4 C2 93            [12]  779 	clr	_IO
      0001C6                        780 00107$:
                                    781 ;	main.c:185: SCLK = 1; //
                                    782 ;	assignBit
      0001C6 D2 92            [12]  783 	setb	_SCLK
                                    784 ;	main.c:187: r_data = 0x00;
      0001C8 7F 00            [12]  785 	mov	r7,#0x00
                                    786 ;	main.c:189: for (i = 0; i < 8; i++)
      0001CA 7E 00            [12]  787 	mov	r6,#0x00
      0001CC                        788 00111$:
                                    789 ;	main.c:191: SCLK = 1;
                                    790 ;	assignBit
      0001CC D2 92            [12]  791 	setb	_SCLK
                                    792 ;	main.c:192: tmp = IO;
      0001CE A2 93            [12]  793 	mov	c,_IO
      0001D0 E4               [12]  794 	clr	a
      0001D1 33               [12]  795 	rlc	a
                                    796 ;	main.c:193: tmp <<= 7;
      0001D2 03               [12]  797 	rr	a
      0001D3 54 80            [12]  798 	anl	a,#0x80
      0001D5 FD               [12]  799 	mov	r5,a
                                    800 ;	main.c:194: r_data >>= 1;
      0001D6 EF               [12]  801 	mov	a,r7
      0001D7 C3               [12]  802 	clr	c
      0001D8 13               [12]  803 	rrc	a
                                    804 ;	main.c:195: r_data |= tmp;
      0001D9 4D               [12]  805 	orl	a,r5
      0001DA FF               [12]  806 	mov	r7,a
                                    807 ;	main.c:196: SCLK = 0;
                                    808 ;	assignBit
      0001DB C2 92            [12]  809 	clr	_SCLK
                                    810 ;	main.c:189: for (i = 0; i < 8; i++)
      0001DD 0E               [12]  811 	inc	r6
      0001DE BE 08 00         [24]  812 	cjne	r6,#0x08,00151$
      0001E1                        813 00151$:
      0001E1 40 E9            [24]  814 	jc	00111$
                                    815 ;	main.c:199: RST = 0;
                                    816 ;	assignBit
      0001E3 C2 94            [12]  817 	clr	_RST
                                    818 ;	main.c:201: return r_data;
      0001E5 8F 82            [24]  819 	mov	dpl,r7
                                    820 ;	main.c:202: }
      0001E7 22               [24]  821 	ret
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'display'
                                    824 ;------------------------------------------------------------
                                    825 ;	main.c:204: void display()
                                    826 ;	-----------------------------------------
                                    827 ;	 function display
                                    828 ;	-----------------------------------------
      0001E8                        829 _display:
                                    830 ;	main.c:207: if (count_01 == 0)
      0001E8 E5 09            [12]  831 	mov	a,_count_01
      0001EA 70 18            [24]  832 	jnz	00110$
                                    833 ;	main.c:209: hr = byte_read(0x85);
      0001EC 75 82 85         [24]  834 	mov	dpl,#0x85
      0001EF 12 01 9E         [24]  835 	lcall	_byte_read
                                    836 ;	main.c:210: a = ((hr >> 4) & 0x01);
      0001F2 E5 82            [12]  837 	mov	a,dpl
      0001F4 F5 1E            [12]  838 	mov	_hr,a
      0001F6 C4               [12]  839 	swap	a
      0001F7 54 01            [12]  840 	anl	a,#0x01
                                    841 ;	main.c:211: P0 = 0x0e;
                                    842 ;	main.c:212: P1 = num[a];
      0001F9 F5 10            [12]  843 	mov	_a,a
      0001FB 75 80 0E         [24]  844 	mov	_P0,#0x0e
      0001FE 24 14            [12]  845 	add	a,#_num
      000200 F9               [12]  846 	mov	r1,a
      000201 87 90            [24]  847 	mov	_P1,@r1
      000203 22               [24]  848 	ret
      000204                        849 00110$:
                                    850 ;	main.c:215: else if (count_01 == 1)
      000204 74 01            [12]  851 	mov	a,#0x01
      000206 B5 09 17         [24]  852 	cjne	a,_count_01,00107$
                                    853 ;	main.c:217: hr = byte_read(0x85);
      000209 75 82 85         [24]  854 	mov	dpl,#0x85
      00020C 12 01 9E         [24]  855 	lcall	_byte_read
                                    856 ;	main.c:218: b = (hr & 0x0f);
      00020F E5 82            [12]  857 	mov	a,dpl
      000211 F5 1E            [12]  858 	mov	_hr,a
      000213 54 0F            [12]  859 	anl	a,#0x0f
                                    860 ;	main.c:219: P0 = 0x0d;
                                    861 ;	main.c:220: P1 = num[b];
      000215 F5 11            [12]  862 	mov	_b,a
      000217 75 80 0D         [24]  863 	mov	_P0,#0x0d
      00021A 24 14            [12]  864 	add	a,#_num
      00021C F9               [12]  865 	mov	r1,a
      00021D 87 90            [24]  866 	mov	_P1,@r1
      00021F 22               [24]  867 	ret
      000220                        868 00107$:
                                    869 ;	main.c:223: else if (count_01 == 2)
      000220 74 02            [12]  870 	mov	a,#0x02
      000222 B5 09 1C         [24]  871 	cjne	a,_count_01,00104$
                                    872 ;	main.c:225: min = byte_read(0x83);
      000225 75 82 83         [24]  873 	mov	dpl,#0x83
      000228 12 01 9E         [24]  874 	lcall	_byte_read
                                    875 ;	main.c:226: c = ((min>>4) & 0x07);
      00022B E5 82            [12]  876 	mov	a,dpl
      00022D F5 1F            [12]  877 	mov	_min,a
      00022F C4               [12]  878 	swap	a
      000230 54 0F            [12]  879 	anl	a,#0x0f
      000232 FF               [12]  880 	mov	r7,a
      000233 74 07            [12]  881 	mov	a,#0x07
      000235 5F               [12]  882 	anl	a,r7
                                    883 ;	main.c:227: P0 = 0x0b;
                                    884 ;	main.c:228: P1 = num[c];
      000236 F5 12            [12]  885 	mov	_c,a
      000238 75 80 0B         [24]  886 	mov	_P0,#0x0b
      00023B 24 14            [12]  887 	add	a,#_num
      00023D F9               [12]  888 	mov	r1,a
      00023E 87 90            [24]  889 	mov	_P1,@r1
      000240 22               [24]  890 	ret
      000241                        891 00104$:
                                    892 ;	main.c:231: else if (count_01 == 3)
      000241 74 03            [12]  893 	mov	a,#0x03
      000243 B5 09 16         [24]  894 	cjne	a,_count_01,00111$
                                    895 ;	main.c:233: min = byte_read(0x83);
      000246 75 82 83         [24]  896 	mov	dpl,#0x83
      000249 12 01 9E         [24]  897 	lcall	_byte_read
                                    898 ;	main.c:234: d = (min & 0x0f);
      00024C E5 82            [12]  899 	mov	a,dpl
      00024E F5 1F            [12]  900 	mov	_min,a
      000250 54 0F            [12]  901 	anl	a,#0x0f
                                    902 ;	main.c:235: P0 = 0x07;
                                    903 ;	main.c:236: P1 = num[d];
      000252 F5 13            [12]  904 	mov	_d,a
      000254 75 80 07         [24]  905 	mov	_P0,#0x07
      000257 24 14            [12]  906 	add	a,#_num
      000259 F9               [12]  907 	mov	r1,a
      00025A 87 90            [24]  908 	mov	_P1,@r1
      00025C                        909 00111$:
                                    910 ;	main.c:239: return;
                                    911 ;	main.c:240: }
      00025C 22               [24]  912 	ret
                                    913 	.area CSEG    (CODE)
                                    914 	.area CONST   (CODE)
                                    915 	.area XINIT   (CODE)
                                    916 	.area CABS    (ABS,CODE)
