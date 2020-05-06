/*
 * Title: RTC_test
 * File name: main.c
 * Author: Sean K.
 * Date: 04.22.20
 * Updated: 04.28.20
 */

#include "at89x52.h"
#include "main.h"

__sbit __at 0x92 SCLK;
__sbit __at 0x93 IO;
__sbit __at 0x94 RST;
__sbit __at 0xB3 btn_01;
__sbit __at 0xB4 btn_02;
__sbit __at 0xB5 btn_03;

void sys_init();
void delay(unsigned int ms);
void byte_write(unsigned char w_addr, unsigned char w_data);
unsigned char byte_read(unsigned char r_addr);
void year_set();
void mnth_set();
void date_set();
void day_set();
void hr_set();
void min_set();

/*variables*/
unsigned char btn_int_flag = 0; //원래 Flag는 bit로 선언해야한다.
volatile int count_01 = 0;

unsigned char year_bcd = 0x20; //0~99 range이므로 20은 따로 적어야한다.
unsigned char mnth_bcd = 0x01;
unsigned char date_bcd = 0x01;
unsigned char day_bcd = 0x01;
unsigned char hr_bcd = 0x80; //Default setting is the 12hour set.
unsigned char min_bcd = 0x00;

void main()
{
    sys_init();

    while (1) //infinite loop
    {
        if (btn_int_flag)
        {
            byte_write(0x8e, 0x00); //쓰기금지 disable
            byte_write(0x80, 0x80); //Clock halt

            volatile int count = 5000;

            while (count != 0) //
            {
                count--;
                if (btn_01)
                {
                    count_01 = 6;
                    while (count_01 == 0)
                    {
                        if (btn_01)
                        {
                            count_01--;
                        }

                        if (btn_02)
                        {
                            switch (count_01)
                            {
                            case 6:
                                if (btn_02)
                                {
                                    year_set();
                                }
                                break;
                            case 5:
                                if (btn_02)
                                {
                                    mnth_set();
                                }
                                break;
                            case 4:
                                if (btn_02)
                                {
                                    date_set();
                                }
                                break;
                            case 3:
                                if (btn_02)
                                {
                                    day_set();
                                }
                                break;
                            case 2:
                                if (btn_02)
                                {
                                    hr_set();
                                }
                                break;
                            case 1:
                                if (btn_02)
                                {
                                    min_set();
                                }
                                break;
                            }
                        }
                    }
                }
            }
            byte_write(0x80, 0x00); //Clock resume
            byte_write(0x8e, 0x80); //쓰기금지 enable
            btn_int_flag != btn_int_flag;
            count = 0;
        }
    }
}
/*personal func.*/
void sys_init() //여기에 기본 interrupt 설정과 application 초기화를 위한 함수가 배치됨.
{
    btn_01 = 0;
    btn_02 = 0;
    btn_03 = 0;
    RST = 0;
    IO = 0;
    SCLK = 0;

    delay(1); //pause for 1ms.

    /*external interrupt setting*/
    TCON = 0x01;
    EX0 = 1;
    EA = 1;
    PX0 = 1;

    /*application intialization*/
    return;
}

void delay(unsigned int ms)
{
    unsigned int i, j;
    for (i = 1; i <= ms; i++)
    {
        for (j = 1; j <= 125; j++)
            ;
    }
}

/*interrupt func.*/
void btn_int() __interrupt(0) //external interrupt 0 ISR
                              //SDCC에서는 interrupt 처리함수를 이렇게 처리
{
    EA = 0;
    btn_int_flag = 1;
    delay(1);
    EA = 1; // Interrupt enables
    return;
}

/*RTC*/

void byte_write(unsigned char w_addr, unsigned char w_data)
{
    unsigned char i = 0;

    RST = 1;

    for (i = 0; i < 8; i++)
    {
        if (w_addr & 0x01)
        {
            IO = 1;
        }
        else
        {
            IO = 0;
        }
        SCLK = 1;
        SCLK = 0;
        w_addr >>= 1;
    }

    for (i = 0; i < 8; i++)
    {
        if (w_data & 0x01)
        {
            IO = 1;
        }
        else
        {
            IO = 0;
        }
        SCLK = 1;
        SCLK = 0;
        w_data >>= 1;
    }

    RST = 0;
    return;
}

unsigned char byte_read(unsigned char r_addr) //read data on RTC.
{
    unsigned char i, r_data, tmp;

    RST = 1; //rst pin high for data access.

    for (i = 0; i < 7; i++)
    {
        if (r_addr & 0x01)
        {
            IO = 1;
        }
        else
        {
            IO = 0;
        }
        SCLK = 1;
        SCLK = 0;
        r_addr >>= 1; //Right shifting for 1 bit.
    }                 //After this operation r_addr represents 8th bit(MSB).

    if (r_addr & 0x01)
    {
        IO = 1;
    }
    else
    {
        IO = 0;
    }

    SCLK = 1; //

    r_data = 0x00;

    for (i = 0; i < 8; i++)
    {
        SCLK = 1;
        tmp = IO;
        tmp <<= 7;
        r_data >>= 1;
        r_data |= tmp;
        SCLK = 0;
    }

    RST = 0;

    return r_data;
}

void year_set()
{
    year_bcd++;
    if (year_bcd == 0x0a)
    {
        year_bcd = 0x10;
    }
    else if (year_bcd == 0x1a)
    {
        year_bcd = 0x20;
    }
    else if (year_bcd == 0x2a)
    {
        year_bcd = 0x30;
    }
    else if (year_bcd == 0x3a)
    {
        year_bcd = 0x40;
    }
    else if (year_bcd == 0x4a)
    {
        year_bcd = 0x50;
    }
    else if (year_bcd == 0x5a)
    {
        year_bcd = 0x60;
    }
    else if (year_bcd == 0x6a)
    {
        year_bcd = 0x70;
    }
    else if (year_bcd == 0x7a)
    {
        year_bcd = 0x80;
    }
    else if (year_bcd == 0x8a)
    {
        year_bcd = 0x90;
    }
    else if (year_bcd == 0x9a)
    {
        year_bcd = 0x00;
    }
    byte_write(0x8c, year_bcd);
}

void mnth_set()
{
    mnth_bcd++;
    if (mnth_bcd == 0x0a)
    {
        mnth_bcd = 0x10;
    }
    else if (mnth_bcd == 0x13)
    {
        mnth_bcd = 0x01;
    }
    byte_write(0x88, mnth_bcd);
}

void date_set() //자동으로 mnth마다 설정이 되나?
{
    date_bcd++;
    if (date_bcd == 0x0a)
    {
        date_bcd = 0x10;
    }
    else if (date_bcd == 0x1a)
    {
        date_bcd = 0x20;
    }
    else if (date_bcd == 0x2a)
    {
        date_bcd = 0x30;
    }
    else if (date_bcd == 0x32)
    {
        date_bcd = 0x01;
    }

    byte_write(0x86, date_bcd);
}

void day_set()
{
    day_bcd++;
    if (day_bcd == 0x08)
    {
        day_bcd = 0x01;
    }
    byte_write(0x8a, day_bcd);
}

void hr_set()
{
    hr_bcd++;
    if (hr_bcd == 0x8a)
    {
        hr_bcd = 0x80 | 0x10;
    }
    else if (hr_bcd == 0x93)
    {
        hr_bcd = (0x80 | 0x01) | 0x20;
    } //AM->PM
    else if (hr_bcd == 0xaa)
    {
        hr_bcd = 0xa0 | 0x10;
    }
    else if (hr_bcd == 0xb3)
    {
        hr_bcd = 0x80;
    }
    byte_write(0x84, hr_bcd);
}

void min_set()
{
    min_bcd++;
    if (min_bcd == 0x0a)
    {
        min_bcd = 0x10;
    }
    else if (min_bcd == 0x1a)
    {
        min_bcd = 0x20;
    }
    else if (min_bcd == 0x2a)
    {
        min_bcd = 0x30;
    }
    else if (min_bcd == 0x3a)
    {
        min_bcd = 0x40;
    }
    else if (min_bcd == 0x4a)
    {
        min_bcd = 0x50;
    }
    else if (min_bcd == 0x5a)
    {
        min_bcd = 0x00;
    }
    byte_write(0x82, min_bcd);
}
