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
static const char *ng0 = "C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/SINGLE_POS_SHIFTER_16b.vhd";
extern char *IEEE_P_3620187407;



static void work_a_0138148340_3212880686_p_0(char *t0)
{
    char t5[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    int64 t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned char t32;
    int64 t33;
    char *t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(170, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7664U);
    t3 = (t0 + 7724);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t23 = (t0 + 1192U);
    t24 = *((char **)t23);
    t23 = (t0 + 7664U);
    t25 = (t0 + 7726);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 1;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (1 - 0);
    t31 = (t30 * 1);
    t31 = (t31 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t31;
    t32 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t24, t23, t25, t27);
    if (t32 != 0)
        goto LAB5;

LAB6:
LAB7:    t45 = (t0 + 3392);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    *((unsigned char *)t49) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t45);

LAB2:    t50 = (t0 + 3312);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t11 = (5 * 1000LL);
    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t13 = (0 - 15);
    t9 = (t13 * -1);
    t14 = (1U * t9);
    t15 = (0 + t14);
    t7 = (t12 + t15);
    t16 = *((unsigned char *)t7);
    t17 = (t0 + 3392);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_delta(t17, 0U, 1, t11);
    t22 = (t0 + 3392);
    xsi_driver_intertial_reject(t22, t11, t11);
    goto LAB2;

LAB5:    t33 = (5 * 1000LL);
    t29 = (t0 + 1032U);
    t34 = *((char **)t29);
    t35 = (15 - 15);
    t31 = (t35 * -1);
    t36 = (1U * t31);
    t37 = (0 + t36);
    t29 = (t34 + t37);
    t38 = *((unsigned char *)t29);
    t39 = (t0 + 3392);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    *((unsigned char *)t43) = t38;
    xsi_driver_first_trans_delta(t39, 0U, 1, t33);
    t44 = (t0 + 3392);
    xsi_driver_intertial_reject(t44, t33, t33);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_0138148340_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0138148340_3212880686_p_0};
	xsi_register_didat("work_a_0138148340_3212880686", "isim/PROCESSOR_TB_isim_beh.exe.sim/work/a_0138148340_3212880686.didat");
	xsi_register_executes(pe);
}
