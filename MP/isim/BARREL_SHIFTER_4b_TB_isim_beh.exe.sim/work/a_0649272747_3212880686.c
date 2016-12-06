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
static const char *ng0 = "C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/MUX_4_1_1b.vhd";



static void work_a_0649272747_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    int64 t24;
    char *t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t36;
    unsigned int t37;
    char *t38;
    char *t39;
    int64 t40;
    char *t41;
    char *t42;
    unsigned char t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned char t52;
    unsigned int t53;
    char *t54;
    char *t55;
    int64 t56;
    char *t57;
    char *t58;
    unsigned char t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    int64 t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5242);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 1672U);
    t18 = *((char **)t17);
    t17 = (t0 + 5244);
    t20 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t20 = 0;

LAB15:    if (t20 != 0)
        goto LAB11;

LAB12:    t33 = (t0 + 1672U);
    t34 = *((char **)t33);
    t33 = (t0 + 5246);
    t36 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t36 = 0;

LAB23:    if (t36 != 0)
        goto LAB19;

LAB20:    t49 = (t0 + 1672U);
    t50 = *((char **)t49);
    t49 = (t0 + 5248);
    t52 = 1;
    if (2U == 2U)
        goto LAB29;

LAB30:    t52 = 0;

LAB31:    if (t52 != 0)
        goto LAB27;

LAB28:
LAB35:    t65 = (5 * 1000LL);
    t66 = (t0 + 3392);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    *((unsigned char *)t70) = (unsigned char)2;
    xsi_driver_first_trans_delta(t66, 0U, 1, t65);
    t71 = (t0 + 3392);
    xsi_driver_intertial_reject(t71, t65, t65);

LAB2:    t72 = (t0 + 3312);
    *((int *)t72) = 1;

LAB1:    return;
LAB3:    t8 = (5 * 1000LL);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t9 = (t0 + 3392);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_delta(t9, 0U, 1, t8);
    t16 = (t0 + 3392);
    xsi_driver_intertial_reject(t16, t8, t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    t24 = (5 * 1000LL);
    t25 = (t0 + 1192U);
    t26 = *((char **)t25);
    t27 = *((unsigned char *)t26);
    t25 = (t0 + 3392);
    t28 = (t25 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = t27;
    xsi_driver_first_trans_delta(t25, 0U, 1, t24);
    t32 = (t0 + 3392);
    xsi_driver_intertial_reject(t32, t24, t24);
    goto LAB2;

LAB13:    t21 = 0;

LAB16:    if (t21 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t22 = (t18 + t21);
    t23 = (t17 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB14;

LAB18:    t21 = (t21 + 1);
    goto LAB16;

LAB19:    t40 = (5 * 1000LL);
    t41 = (t0 + 1352U);
    t42 = *((char **)t41);
    t43 = *((unsigned char *)t42);
    t41 = (t0 + 3392);
    t44 = (t41 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    *((unsigned char *)t47) = t43;
    xsi_driver_first_trans_delta(t41, 0U, 1, t40);
    t48 = (t0 + 3392);
    xsi_driver_intertial_reject(t48, t40, t40);
    goto LAB2;

LAB21:    t37 = 0;

LAB24:    if (t37 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t38 = (t34 + t37);
    t39 = (t33 + t37);
    if (*((unsigned char *)t38) != *((unsigned char *)t39))
        goto LAB22;

LAB26:    t37 = (t37 + 1);
    goto LAB24;

LAB27:    t56 = (5 * 1000LL);
    t57 = (t0 + 1512U);
    t58 = *((char **)t57);
    t59 = *((unsigned char *)t58);
    t57 = (t0 + 3392);
    t60 = (t57 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    *((unsigned char *)t63) = t59;
    xsi_driver_first_trans_delta(t57, 0U, 1, t56);
    t64 = (t0 + 3392);
    xsi_driver_intertial_reject(t64, t56, t56);
    goto LAB2;

LAB29:    t53 = 0;

LAB32:    if (t53 < 2U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t54 = (t50 + t53);
    t55 = (t49 + t53);
    if (*((unsigned char *)t54) != *((unsigned char *)t55))
        goto LAB30;

LAB34:    t53 = (t53 + 1);
    goto LAB32;

LAB36:    goto LAB2;

}


extern void work_a_0649272747_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0649272747_3212880686_p_0};
	xsi_register_didat("work_a_0649272747_3212880686", "isim/BARREL_SHIFTER_4b_TB_isim_beh.exe.sim/work/a_0649272747_3212880686.didat");
	xsi_register_executes(pe);
}
