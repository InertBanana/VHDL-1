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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_1083196461_3212880686_init();
    work_a_3286999509_3212880686_init();
    work_a_4091849496_3212880686_init();
    work_a_4146650477_3212880686_init();
    work_a_3716055735_3212880686_init();
    work_a_3384528190_3212880686_init();
    work_a_3055065811_3212880686_init();
    work_a_0437168233_3212880686_init();
    work_a_3115129110_3212880686_init();
    work_a_0338498747_3212880686_init();
    work_a_0138148340_3212880686_init();
    work_a_3048852228_3212880686_init();
    work_a_0184032802_3212880686_init();
    work_a_3975788594_3212880686_init();
    work_a_1219647623_3212880686_init();
    work_a_3430011751_3212880686_init();
    work_a_2983766586_3212880686_init();
    work_a_2248049426_3212880686_init();
    work_a_1530140783_3212880686_init();
    work_a_0424131810_3212880686_init();
    work_a_2931810328_3212880686_init();
    work_a_2718735050_3212880686_init();
    work_a_1640669797_3212880686_init();
    work_a_1600815965_2372691052_init();


    xsi_register_tops("work_a_1600815965_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
