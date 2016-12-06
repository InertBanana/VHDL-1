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
static const char *ng0 = "C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/ALU_MUX_OUT_16b.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);


static void work_a_3048852228_3212880686_p_0(char *t0)
{
    char t5[16];
    char t22[16];
    char t38[16];
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t23;
    char *t24;
    int t25;
    unsigned char t26;
    int64 t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t39;
    char *t40;
    int t41;
    unsigned char t42;
    int64 t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    int64 t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5152U);
    t3 = (t0 + 5242);
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

LAB4:    t18 = (t0 + 1512U);
    t19 = *((char **)t18);
    t18 = (t0 + 5152U);
    t20 = (t0 + 5244);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 1;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (1 - 0);
    t9 = (t25 * 1);
    t9 = (t9 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t9;
    t26 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t19, t18, t20, t22);
    if (t26 != 0)
        goto LAB5;

LAB6:    t34 = (t0 + 1512U);
    t35 = *((char **)t34);
    t34 = (t0 + 5152U);
    t36 = (t0 + 5246);
    t39 = (t38 + 0U);
    t40 = (t39 + 0U);
    *((int *)t40) = 0;
    t40 = (t39 + 4U);
    *((int *)t40) = 1;
    t40 = (t39 + 8U);
    *((int *)t40) = 1;
    t41 = (1 - 0);
    t9 = (t41 * 1);
    t9 = (t9 + 1);
    t40 = (t39 + 12U);
    *((unsigned int *)t40) = t9;
    t42 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t35, t34, t36, t38);
    if (t42 != 0)
        goto LAB7;

LAB8:
LAB9:    t50 = (5 * 1000LL);
    t51 = (t0 + 5248);
    t53 = (t0 + 3232);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memcpy(t57, t51, 16U);
    xsi_driver_first_trans_delta(t53, 0U, 16U, t50);
    t58 = (t0 + 3232);
    xsi_driver_intertial_reject(t58, t50, t50);

LAB2:    t59 = (t0 + 3152);
    *((int *)t59) = 1;

LAB1:    return;
LAB3:    t11 = (5 * 1000LL);
    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t7 = (t0 + 3232);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 16U);
    xsi_driver_first_trans_delta(t7, 0U, 16U, t11);
    t17 = (t0 + 3232);
    xsi_driver_intertial_reject(t17, t11, t11);
    goto LAB2;

LAB5:    t27 = (5 * 1000LL);
    t24 = (t0 + 1192U);
    t28 = *((char **)t24);
    t24 = (t0 + 3232);
    t29 = (t24 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 16U);
    xsi_driver_first_trans_delta(t24, 0U, 16U, t27);
    t33 = (t0 + 3232);
    xsi_driver_intertial_reject(t33, t27, t27);
    goto LAB2;

LAB7:    t43 = (5 * 1000LL);
    t40 = (t0 + 1352U);
    t44 = *((char **)t40);
    t40 = (t0 + 3232);
    t45 = (t40 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t44, 16U);
    xsi_driver_first_trans_delta(t40, 0U, 16U, t43);
    t49 = (t0 + 3232);
    xsi_driver_intertial_reject(t49, t43, t43);
    goto LAB2;

LAB10:    goto LAB2;

}


extern void work_a_3048852228_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3048852228_3212880686_p_0};
	xsi_register_didat("work_a_3048852228_3212880686", "isim/PROCESSOR_TB_isim_beh.exe.sim/work/a_3048852228_3212880686.didat");
	xsi_register_executes(pe);
}
