/*
 * Title: RTC_test
 * File name: main.c
 * Author: Sean K.
 * Date: 08.23.20
 * Updated: 
 */

#include "at89x52.h"
#include "main.h"

__sbit __at 0x92 SCLK;
__sbit __at 0x93 IO;
__sbit __at 0x94 RST;

void sys_init();
void delay(unsigned int ms);
void byte_write(unsigned char w_addr, unsigned char w_data);
unsigned char byte_read(unsigned char r_addr);
void display();

/*variables*/
unsigned char T_int_flag_01 = 0;
unsigned char count_01 = 0;

unsigned char year_bcd = 0x20; //0~99 range이므로 20은 따로 적어야한다.
unsigned char mnth_bcd = 0x01;
unsigned char date_bcd = 0x01;
unsigned char day_bcd = 0x01;
unsigned char hr_bcd = 0x80; //Default setting is the 12hour set.
unsigned char min_bcd = 0x00;

unsigned char a = 0, b = 0, c = 0, d = 0;
unsigned char num[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};
//7-segment common cathod.
//Use PNP TR for suppling proper amount of current.
unsigned char hr = 0;
unsigned char min = 0;

/* main function */
void main()
{
    sys_init();

    while (1) //infinite loop
    {
        if (T_int_flag_01)
        {
            display();
        }
    }
}

/*personal func.*/
void sys_init() //여기에 기본 interrupt 설정과 application 초기화를 위한 함수가 배치됨.
{

    RST = 0;
    IO = 0;
    SCLK = 0;

    TMOD = 0x01; //GATE = 0, C/T = 0, Timer/counter mode 1, Use timer/counter 0 & 1.
    TF0 = 0;     // Timer/counter 0 interrupt flag clear
    TH0 = 0xec;
    TL0 = 0x78; // TI0 occurs every 5 ms
                // 1us/MC -> (0xffff-0xec78) = 5,000
    IE = 0x82;  // 0b1000 0010 IE -> interrupt enable reg. Timer interrupt enables & entire interrupt enable.
    IP = 0x02;  // IP -> interrupt priority. Set timer interrupt 0 as the highest priority.
                // Should have to consider which register(btw IE & IP) comes first.
                //This code is unnecessary, since the priority of TI0 is higher than the priority of TI1(by internal polling).
    TR0 = 1;    // Timer interrupt 0 RUN.

    delay(1); //pause for 1ms.

    /*application intialization*/
    byte_write(0x82, min_bcd);
    byte_write(0x84, hr_bcd);
    byte_write(0x86, date_bcd);
    byte_write(0x88, mnth_bcd);
    byte_write(0x8a, day_bcd);
    byte_write(0x8c, year_bcd);

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

/* Timer interrupt */
void T_int_01() __interrupt 1 // void [user name]() interrupt [vector num.]
{

    T_int_flag_01 = 1;

    count_01++;
    if (count_01 > 3)
    {
        count_01 = 0; //count increment & count initialization have to be placed at the same place.
    }
    TH0 = 0xec;
    TL0 = 0x78; // Reset of these two register is necessary for periodic interrupt since it is mode 1.
    EA = 1;     // Interrupt enables
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

void display()
{
    /* a,b->hour, c,d->minute */
    if (count_01 == 0)
    {
        hr = byte_read(0x85);
        a = ((hr >> 4) & 0x01);
        P0 = 0x0e;
        P1 = num[a];
    }

    else if (count_01 == 1)
    {
        hr = byte_read(0x85);
        b = (hr & 0x0f);
        P0 = 0x0d;
        P1 = num[b];
    }

    else if (count_01 == 2)
    {
        min = byte_read(0x83);
        c = ((min>>4) & 0x07);
        P0 = 0x0b;
        P1 = num[c];
    }

    else if (count_01 == 3)
    {
        min = byte_read(0x83);
        d = (min & 0x0f);
        P0 = 0x07;
        P1 = num[d];
    }

    return;
}