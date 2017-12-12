//
//  offsets.h
//  v0rtexNonce
//
//  Created by ninja on 12/12/17.
//  Copyright © 2017 ninja. All rights reserved.
//
#ifndef OFFSETS_H
#define OFFSETS_H
#include "common.h"
#include "sys/utsname.h"
#include "sys/sysctl.h"




void load_offsets(void);




UInt64 OFFSET_ZONE_MAP;
UInt64 OFFSET_KERNEL_MAP;
UInt64 OFFSET_KERNEL_TASK;
UInt64 OFFSET_REALHOST;
UInt64 OFFSET_BZERO;
UInt64 OFFSET_BCOPY;
UInt64 OFFSET_COPYIN;
UInt64 OFFSET_COPYOUT;
UInt64 OFFSET_IPC_PORT_ALLOC_SPECIAL;
UInt64 OFFSET_IPC_KOBJECT_SET;
UInt64 OFFSET_IPC_PORT_MAKE_SEND;
UInt64 OFFSET_IOSURFACEROOTUSERCLIENT_VTAB;
UInt64 OFFSET_ROP_ADD_X0_X0_0x10;


char *iPhone7_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_T8010";
char * iPhone7_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_T8010";
char *iPhone7_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:55 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_T8010";

char *iPhone7plus_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_T8010";
char *iPhone7plus_1032 = "";
char *iPhone7plus_1031 = "";

char *iPhone6_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_T7000";
char *iPhone6_1032 = "";/****/
char *iPhone6_1031 = "";

char *iPhone6plus_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_T7000";
char *iPhone6plus_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_T7000";
char *iPhone6plus_1031 = "";

char *iPhone6s_1033 = "";
char *iPhone6s_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017 root:xnu-3789.60.24~24/RELEASE_ARM64_S8000";
char *iPhone6s_1031 = "";

char *iPhone6splus_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_S8000";
char *iPhone6splus_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S8000";
char *iPhone6splus_1031 = "";

char *iPhoneSE_1033 = "";
char *iPhoneSE_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S8000";
char *iPhoneSE_1031 = "";

char *iPhone5s_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:35 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_S5L8960X";
char *iPhone5s_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S5L8960X";
char *iPhone5s_1031 = "";


void load_offsets(void)
{
    struct utsname sysinfo;
    uname(&sysinfo);
    const char *kern_version = sysinfo.version;
    
    if(strcmp(kern_version, iPhone6s_1032))
    {
        OFFSET_ZONE_MAP                             = 0xfffffff007548478;
        OFFSET_KERNEL_MAP                           = 0xfffffff0075a4050;
        OFFSET_KERNEL_TASK                          = 0xfffffff0075a4048;
        OFFSET_REALHOST                             = 0xfffffff00752aba0;
        OFFSET_BZERO                                = 0xfffffff007081f80;
        OFFSET_BCOPY                                = 0xfffffff007081dc0;
        OFFSET_COPYIN                               = 0xfffffff0071806f4;
        OFFSET_COPYOUT                              = 0xfffffff0071808e8;
        OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099e94;
        OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad16c;
        OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070999b8;
        OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e7c9f8;
        OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064b1398;
    }
    
    LOG("loaded offsets for %s", kern_version);
}



#endif
