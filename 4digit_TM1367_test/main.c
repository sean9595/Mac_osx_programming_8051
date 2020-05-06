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
void rtc_2_tm1367();
void tm1367_byteWrite();

/* main */
void main()
{
  DIO = 1;
  DCLK = 1;
  while (1)
  {
    rtc_2_tm1367();
    tm1367_byteWrite(); //Data를 1ms 마다 가져 올 수 있게 하는 것이 좋을 듯. Time interval은 실험적으로 조정.
                        //1ms는 timer interrupt 사용. counter를 이용하여 1sec마다 : 조정.
                        //Ext. interrupt와의 우선순위는 timer interrupt가 상위로.
  }
}

void rtc_2_tm1367()
{
  //hr_disp = (byte_read(0x85))|0x1f;
  //take 5 bits only.
  hr_disp = 0x12; //this code is for test.
  //min_disp = byte_read(0x83);
  min_disp = 0x50; //this code is for test

  /*num[]안에 const. value여야한다.*/
  digit01 = num[(hr_disp>>4)];
  digit02 = num[(hr_disp|0x0f)];
  digit03 = num[(min_disp>>4)];
  digit04 = num[(min_disp|0x0f)];
  return;
}

int tm1367_byteWrite()
{
  DIO = 0; //Writing SRAM Data initiate.

  unsigned char i = 0;

  C1 = 0x40; //Normal, auto increment 1 mode, write data to display.
  C2 = 0xC0; //Base address
  C3 = 0x8f; //Display ON, Brightness 8 (1~8)

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
