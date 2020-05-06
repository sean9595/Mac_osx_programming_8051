//
// Program name: 4 digit 7 segments with TM1367
// File name: main.c
// Author: Sean K.
// Date: 04.29.20
// Edited:
//

#include "main.h"
#include "at89x52.h"

/* variables */
unsigned char num[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x67, 0x6d, 0x7d, 0x07, 0x7f, 0x6f}; //0~9
unsigned char hr_disp = 0x00;
unsigned char min_disp = 0x00;

volatile int T_int_flag = 0;
volatile int count_time = 0; 

unsigned char C1 = 0x00;
unsigned char C2 = 0x00;
unsigned char C3 = 0x00;
unsigned char digit01 = 0;
unsigned char digit02 = 0;
unsigned char digit03 = 0;
unsigned char digit04 = 0;

__sbit __at 0xA6 DIO;
__sbit __at 0xA5 DCLK;

/* functions */
void sys_tim_init();
void rtc_2_tm1367();
void tm1367_byteWrite();

/* main */
void main()
{
  DIO = 1;
  DCLK = 1;
  sys_tim_init();
  while (1)
  {
    if (T_int_flag)
    {
      rtc_2_tm1367();
      if (count_time == 500) //0.5sec는 on, 0.5sec는 off.
      {
        //2digit의 msb를 set/reset
        digit02 ^= 0x80; //XOR연산. MSB가 1이면 0으로, 0이면 1로 나머지는 0과 연산이므로 그대로 유지.
        count_time = 0;
      }
      tm1367_byteWrite(); //Data를 1ms 마다 가져 올 수 있게 하는 것이 좋을 듯. Time interval은 실험적으로 조정.
                          //1ms는 timer interrupt 사용. counter를 이용하여 1sec마다 : 조정.
                          //이는 추후에 RTC와 연동하여 정확한 초 변화도 감지하여 그에 상응하게 변동하게끔 code 작성예정.
                          //Ext. interrupt와의 우선순위는 timer interrupt가 상위로.
    T_int_flag = !(T_int_flag); 
    }
  }
}

void sys_tim_init()
{
  TMOD = 0x01; //GATE = 0, C/T = 0, Timer/counter mode 1
  TF0 = 0;     // Timer/counter 0 interrupt flag clear
  TL0 = 0xfc;
  TH0 = 0x17; //Time const. to generate 1ms //0xffff-0xfc17 = 1000. //1MC = 1us.
  IE = 0x82;  // IE -> interrupt enable reg. Timer interrupt enables & entire interrupt enable.
  IP = 0x02;  // IP -> interrupt priority. Set timer interrupt 0 as the highest priority.
              // Should have to consider which register(btw IE & IP) comes first.

  TR0 = 1; // Timer interrupt 0 RUN.
}

void T_int() __interrupt(1) // void [user name]() interrupt [vector num.]
{
  T_int_flag = 1;

  count_time++;

  TL0 = 0xfc;
  TH0 = 0x17; // Reset of these two register is necessary for periodic interrupt since it is mode 1.
  EA = 1;     // Interrupt enables
  return;
}

void rtc_2_tm1367()
{
  //hr_disp = (byte_read(0x85))|0x1f;
  //take 5 bits only.
  hr_disp = 0x12; //this code is for test.
  //min_disp = byte_read(0x83);
  min_disp = 0x50; //this code is for test

  digit01 = num[(hr_disp >> 4)];
  digit02 = num[(hr_disp | 0x0f)];
  digit03 = num[(min_disp >> 4)];
  digit04 = num[(min_disp | 0x0f)];
  return;
}

/* ACK 체크 code에 문제가 있을 수 있다. */
//Trial version이라서 정상 작동하는지 체크.
int tm1367_byteWrite()
{
  DIO = 0; //Writing SRAM Data initiate.

  unsigned char i = 0;

  C1 = 0x40; //Normal, auto increment 1 mode, write data to display.
  C2 = 0xC0; //Base address
  C3 = 0x8f; //Display ON, Brightness 8 (1~8)

  //1bit of data is sent when the DCLK signal is driven Low->High.

  /* C1 */
  for (i = 0; i < 8; i++)
  {
    DCLK = 0; 
    if (C1 & 0x01)
      DIO = 1;
    else
      DIO = 0;
    DCLK = 1;
    C1 >>= 1;
  }

  /* ACK */
  DCLK = 0;
  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  for (i = 0; i < 10; i++) 
  {
  }

  /* Stop & Start */
  DCLK = 0;
  DCLK = 1;
  DIO = 1;
  DIO = 0;

  /* C2 */
  for (i = 0; i < 8; i++)
  {
    DCLK = 0;
    if (C2 & 0x01)
    {
      DIO = 1;
    }
    else
    {
      DIO = 0;
    }
    DCLK = 1;
    C2 >>= 1;
  }

  DCLK = 0;
  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  /* digit01 */
  for (i = 0; i < 8; i++)
  {
    DCLK = 0;
    if (digit01 & 0x01)
    {
      DIO = 1;
    }
    else
    {
      DIO = 0;
    }
    DCLK = 1;
    digit01 >>= 1;
  }

  DCLK = 0;
  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  /* digit02 */
  for (i = 0; i < 8; i++)
  {
    DCLK = 0;
    if (digit02 & 0x01)
    {
      DIO = 1;
    }
    else
    {
      DIO = 0;
    }
    DCLK = 1;
    digit02 >>= 1;
  }

  DCLK = 0;

  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  /* digit03 */
  for (i = 0; i < 8; i++)
  {
    DCLK = 0;
    if (digit03 & 0x01)
    {
      DIO = 1;
    }
    else
    {
      DIO = 0;
    }
    DCLK = 1;
    digit03 >>= 1;
  }

  DCLK = 0;
  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  /* digit04 */
  for (i = 0; i < 8; i++)
  {
    DCLK = 0;
    if (digit04 & 0x01)
    {
      DIO = 1;
    }
    else
    {
      DIO = 0;
    }
    DCLK = 1;
    digit04 >>= 1;
  }

  DCLK = 0;
  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  /* Stop & Start */
  DCLK = 0;
  DCLK = 1;
  DIO = 1;
  DIO = 0;

  for (i = 0; i < 8; i++)
  {
    DCLK = 0;
    if (C3 & 0x01)
    {
      DIO = 1;
    }
    else
    {
      DIO = 0;
    }
    DCLK = 1;
    C3 >>= 1;
  }
  DCLK = 0;
  if (DIO != 0)
  {
    return 0;
  } //ACK가 automatically LOW되었는지 체크
  else
  {
    DCLK = 1;
  }

  /* Stop */
  DCLK = 0;
  DCLK = 1;
  DIO = 1;

  return 0;
}
