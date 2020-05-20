//
// Program name: 4 digit 7 segments with TM1367
// File name: main.h
// Author: Sean K.
// Date: 04.29.20
// Edited:
//

#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
exturn "C"
{
#endif

/*includes*/
#include "at89x52.h"

    void sys_tim_init();
    void rtc_2_tm1367();
    void tm1367_byteWrite();

#ifdef __cplusplus
}

#endif

#endif /*__MAIN_H*/