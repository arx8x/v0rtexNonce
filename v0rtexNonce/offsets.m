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
char *iPhone7plus_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_T8010";
char *iPhone7plus_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:55 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_T8010";

char *iPhone6_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_T7000";
char *iPhone6_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_T7000";
char *iPhone6_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_T7000";

char *iPhone6plus_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_T7000";
char *iPhone6plus_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_T7000";
char *iPhone6plus_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_T7000";

char *iPhone6s_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_S8000";
char *iPhone6s_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S8000";
char *iPhone6s_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_S8000";

char *iPhone6splus_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_S8000";
char *iPhone6splus_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S8000";
char *iPhone6splus_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_S8000";

char *iPhoneSE_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:36 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_S8000";
char *iPhoneSE_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S8000";
char *iPhoneSE_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_S8000";

char *iPhone5s_1033 = "Darwin Kernel Version 16.7.0: Thu Jun 15 18:33:35 PDT 2017; root:xnu-3789.70.16~4/RELEASE_ARM64_S5L8960X";
char *iPhone5s_1032 = "Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:35 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S5L8960X";
char *iPhone5s_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_S5L8960X";

char *iPadmini2_1033 = "";
char *iPadmini2_1032 = "";
char *iPadmini2_1031 = "Darwin Kernel Version 16.5.0: Thu Feb 23 23:22:54 PST 2017; root:xnu-3789.52.2~7/RELEASE_ARM64_S5L8960X";

void load_offsets(void)
{
    struct utsname sysinfo;
    uname(&sysinfo);
    const char *kern_version = sysinfo.version;

    if(!strcmp(kern_version, iPhone5s_1031))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff00754c478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075a8050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075a8048;
      OFFSET_REALHOST                             = 0xfffffff00752eba0;
      OFFSET_BZERO                                = 0xfffffff007081f80;
      OFFSET_BCOPY                                = 0xfffffff007081dc0;
      OFFSET_COPYIN                               = 0xfffffff007181218;
      OFFSET_COPYOUT                              = 0xfffffff00718140c;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099f7c;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad1d4;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff007099aa0;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006f25538;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006525174;
    }
    if(!strcmp(kern_version, iPhone5s_1032))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff00754c478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075a8050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075a8048;
      OFFSET_REALHOST                             = 0xfffffff00752eba0;
      OFFSET_BZERO                                = 0xfffffff007081f80;
      OFFSET_BCOPY                                = 0xfffffff007081dc0;
      OFFSET_COPYIN                               = 0xfffffff0071811ec;
      OFFSET_COPYOUT                              = 0xfffffff0071813e0;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099f14;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad1ec;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff007099a38;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006f25538;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006526174;
    }
    if(!strcmp(kern_version, iPhone5s_1033))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff00754c478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075a8050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075a8048;
      OFFSET_REALHOST                             = 0xfffffff00752eba0;
      OFFSET_BZERO                                = 0xfffffff007081f80;
      OFFSET_BCOPY                                = 0xfffffff007081dc0;
      OFFSET_COPYIN                               = 0xfffffff007180e98;
      OFFSET_COPYOUT                              = 0xfffffff00718108c;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099f14;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad1ec;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff007099a38;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006f25538;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006522174;
    }
    if(!strcmp(kern_version, iPhone6_1032))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007558478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075b4050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075b4048;
      OFFSET_REALHOST                             = 0xfffffff00753aba0;
      OFFSET_BZERO                                = 0xfffffff00708df80;
      OFFSET_BCOPY                                = 0xfffffff00708ddc0;
      OFFSET_COPYIN                               = 0xfffffff00718d37c;
      OFFSET_COPYOUT                              = 0xfffffff00718d570;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070a60b4;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070b938c;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070a5bd8;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006eee1b8;
      //OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064b2174;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006642c90;
    }
    if(!strcmp(kern_version, iPhone6_1033))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007558478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075b4050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075b4048;
      OFFSET_REALHOST                             = 0xfffffff00753aba0;
      OFFSET_BZERO                                = 0xfffffff00708df80;
      OFFSET_BCOPY                                = 0xfffffff00708ddc0;
      OFFSET_COPYIN                               = 0xfffffff00718d028;
      OFFSET_COPYOUT                              = 0xfffffff00718d21c;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070a60b4;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070b938c;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070a5bd8;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006135000 + 0x1030;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064b2174;
    }
    if(!strcmp(kern_version, iPhone6s_1032))
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

    if(!strcmp(kern_version, iPhone6s_1033))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007548478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075a4050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075a4048;
      OFFSET_REALHOST                             = 0xfffffff00752aba0;
      OFFSET_BZERO                                = 0xfffffff007081f80;
      OFFSET_BCOPY                                = 0xfffffff007081dc0;
      OFFSET_COPYIN                               = 0xfffffff0071803a0;
      OFFSET_COPYOUT                              = 0xfffffff007180594;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099e94;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad16c;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070999b8;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e7c9f8;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006462174;
    }

    
    if(!strcmp(kern_version, iPhone6_1031))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007558478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075b4050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075b4048;
      OFFSET_REALHOST                             = 0xfffffff00753aba0;
      OFFSET_BZERO                                = 0xfffffff00708df80;
      OFFSET_BCOPY                                = 0xfffffff00708ddc0;
      OFFSET_COPYIN                               = 0xfffffff00718d3a8;
      OFFSET_COPYOUT                              = 0xfffffff00718d59c;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070a611c;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070b9374;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070a5c40;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006eed2b8;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064b5174;
    }

    if(!strcmp(kern_version, iPhone7_1031))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007590478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
      OFFSET_REALHOST                             = 0xfffffff007572ba0;
      OFFSET_BZERO                                = 0xfffffff0070c1f80;
      OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
      OFFSET_COPYIN                               = 0xfffffff0071c6134;
      OFFSET_COPYOUT                              = 0xfffffff0071c6414;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070df05c;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22b4;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb80;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e49208 + 0x1030;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064ff0a8;
    }
    if(!strcmp(kern_version, iPhone7_1032))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007590478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
      OFFSET_REALHOST                             = 0xfffffff007572ba0;
      OFFSET_BZERO                                = 0xfffffff0070c1f80;
      OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
      OFFSET_COPYIN                               = 0xfffffff0071c6108;
      OFFSET_COPYOUT                              = 0xfffffff0071c63e8;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070deff4;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22cc;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb18;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e49208 + 0x1030;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0065000a8;
    }
    if(!strcmp(kern_version, iPhone7_1033))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007590478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
      OFFSET_REALHOST                             = 0xfffffff007572ba0;
      OFFSET_BZERO                                = 0xfffffff0070c1f80;
      OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
      OFFSET_COPYIN                               = 0xfffffff0071c5db4;
      OFFSET_COPYOUT                              = 0xfffffff0071c6094;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070deff4;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22cc;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb18;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e49208 + 0x1030;
      // OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0063c5398;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064fb0a8;
    }
    if(!strcmp(kern_version, iPhone7plus_1031))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007590478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
      OFFSET_REALHOST                             = 0xfffffff007572ba0;
      OFFSET_BZERO                                = 0xfffffff0070c1f80;
      OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
      OFFSET_COPYIN                               = 0xfffffff0071c6134;
      OFFSET_COPYOUT                              = 0xfffffff0071c6414;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070df05c;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22b4;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb80;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e49208 + 0x1030;
      // OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0063c9398;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064ff0a8;
    }
    if(!strcmp(kern_version, iPhone7plus_1032))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007590478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
      OFFSET_REALHOST                             = 0xfffffff007572ba0;
      OFFSET_BZERO                                = 0xfffffff0070c1f80;
      OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
      OFFSET_COPYIN                               = 0xfffffff0071c6108;
      OFFSET_COPYOUT                              = 0xfffffff0071c63e8;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070deff4;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22cc;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb18;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e49208 + 0x1030;
      // OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0063ca398;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0065000a8;
    }
    if(!strcmp(kern_version, iPhone7plus_1033))
    {
      OFFSET_ZONE_MAP                             = 0xfffffff007590478;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
      OFFSET_REALHOST                             = 0xfffffff007572ba0;
      OFFSET_BZERO                                = 0xfffffff0070c1f80;
      OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
      OFFSET_COPYIN                               = 0xfffffff0071c5db4;
      OFFSET_COPYOUT                              = 0xfffffff0071c6094;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070deff4;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22cc;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb18;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e49208 + 0x1030;
      // OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0063c5398;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064fb0a8;
    }
    if(!strcmp(kern_version, iPadmini2_1031))
    {
      OFFSET_COPYIN                               = 0xfffffff007181218;
      OFFSET_KERNEL_TASK                          = 0xfffffff0075a8048;
      OFFSET_REALHOST                             = 0xfffffff00752eba0;
      OFFSET_BZERO                                = 0xfffffff007081f80;
      OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad1d4;
      OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064fd174;
      OFFSET_COPYOUT                              = 0xfffffff00718140c;
      OFFSET_ZONE_MAP                             = 0xfffffff00754c478;
      OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099f7c;
      OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006f2e338;
      OFFSET_KERNEL_MAP                           = 0xfffffff0075a8050;
      OFFSET_BCOPY                                = 0xfffffff007081dc0;
      OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff007099aa0;


    LOG("%s", kern_version);
    LOG("test offset x0x0x10gadget: %llx", OFFSET_ROP_ADD_X0_X0_0x10);
}



#endif
