/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/MEMORY_M_512x16.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1083196461_3212880686_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t6 = (15 - 8);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 8;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 8);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t9);
    t11 = (t0 + 2408U);
    t15 = *((char **)t11);
    t11 = (t15 + 0);
    *((int *)t11) = t14;
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 2288U);
    t10 = *((char **)t1);
    t1 = (t0 + 2408U);
    t11 = *((char **)t1);
    t12 = *((int *)t11);
    t14 = (t12 - 511);
    t6 = (t14 * -1);
    xsi_vhdl_check_range_of_index(511, 0, -1, t12);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t1 = (t10 + t8);
    memcpy(t1, t5, 16U);
    goto LAB6;

LAB8:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t0 + 2408U);
    t10 = *((char **)t1);
    t12 = *((int *)t10);
    t14 = (t12 - 511);
    t6 = (t14 * -1);
    xsi_vhdl_check_range_of_index(511, 0, -1, t12);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t11 = (t0 + 4056);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB6;

}

static void work_a_1083196461_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3976);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 4120);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB5:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 4120);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}


extern void work_a_1083196461_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1083196461_3212880686_p_0,(void *)work_a_1083196461_3212880686_p_1};
	xsi_register_didat("work_a_1083196461_3212880686", "isim/PROCESSOR_TB_isim_beh.exe.sim/work/a_1083196461_3212880686.didat");
	xsi_register_executes(pe);
}
