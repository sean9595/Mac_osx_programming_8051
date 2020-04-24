/*
 * Title: RTC_test
 * File name: main.h
 * Author: Sean K.
 * Date: 04.22.20
 * Updated: 04.23.20
 */

#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
exturn "C" {
#endif

/*includes*/
#include "at89x52.h"

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


#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */