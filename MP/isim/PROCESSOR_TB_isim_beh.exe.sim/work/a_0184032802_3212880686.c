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
static const char *ng0 = "C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/ALU_CCV_MUX_1b.vhd";
extern char *IEEE_P_3620187407;



static void work_a_0184032802_3212880686_p_0(char *t0)
{
    char t6[16];
    char t12[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
    unsigned char t16;
    int64 t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    int64 t32;
    char *t33;
    char *t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    int64 t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 4;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (3 - 4);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 4887);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (1 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:    t25 = (t0 + 1352U);
    t26 = *((char **)t25);
    t27 = (4 - 4);
    t10 = (t27 * -1);
    t28 = (1U * t10);
    t29 = (0 + t28);
    t25 = (t26 + t29);
    t30 = *((unsigned char *)t25);
    t31 = (t30 == (unsigned char)3);
    if (t31 != 0)
        goto LAB5;

LAB6:
LAB7:    t41 = (5 * 1000LL);
    t42 = (t0 + 3072);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    *((unsigned char *)t46) = (unsigned char)2;
    xsi_driver_first_trans_delta(t42, 0U, 1, t41);
    t47 = (t0 + 3072);
    xsi_driver_intertial_reject(t47, t41, t41);

LAB2:    t48 = (t0 + 2992);
    *((int *)t48) = 1;

LAB1:    return;
LAB3:    t17 = (5 * 1000LL);
    t14 = (t0 + 1032U);
    t18 = *((char **)t14);
    t19 = *((unsigned char *)t18);
    t14 = (t0 + 3072);
    t20 = (t14 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t19;
    xsi_driver_first_trans_delta(t14, 0U, 1, t17);
    t24 = (t0 + 3072);
    xsi_driver_intertial_reject(t24, t17, t17);
    goto LAB2;

LAB5:    t32 = (5 * 1000LL);
    t33 = (t0 + 1192U);
    t34 = *((char **)t33);
    t35 = *((unsigned char *)t34);
    t33 = (t0 + 3072);
    t36 = (t33 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    *((unsigned char *)t39) = t35;
    xsi_driver_first_trans_delta(t33, 0U, 1, t32);
    t40 = (t0 + 3072);
    xsi_driver_intertial_reject(t40, t32, t32);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_0184032802_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0184032802_3212880686_p_0};
	xsi_register_didat("work_a_0184032802_3212880686", "isim/PROCESSOR_TB_isim_beh.exe.sim/work/a_0184032802_3212880686.didat");
	xsi_register_executes(pe);
}
