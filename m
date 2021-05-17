Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA86E386B0F
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 22:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33E0460B24;
	Mon, 17 May 2021 20:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmF1AS16WJIG; Mon, 17 May 2021 20:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 380AF60B0E;
	Mon, 17 May 2021 20:13:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34AA01BF348
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 20:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30F1A83EEB
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 20:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bGDvb8i_6zC4 for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 20:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAACD83ED0
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 20:13:12 +0000 (UTC)
IronPort-SDR: KYmEbN8f9J81Hd3FF0DaAyQ3I9oNeFHHMzN+AuZ5hwEMTYjVrsyWhstm3XggoMMULItmW2XYC0
 FC5pIJiPLMYA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198608743"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="198608743"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:13:12 -0700
IronPort-SDR: MGBITUS6At8YhKdF8TGNclZUDnuoMLkp61xey0tlRtHQAOJ+0HUne8b3/3nmgnJWVdryGtfawV
 nmlTHfSN3+4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="626788431"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 17 May 2021 13:13:10 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lijby-0001se-AP; Mon, 17 May 2021 20:13:10 +0000
Date: Tue, 18 May 2021 04:12:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS WITH WARNING
 d8218b0de51f36f01ed67731ccf174059a33bb1e
Message-ID: <60a2ce48.G47zkbFzjEdyhHmw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: d8218b0de51f36f01ed67731ccf174059a33bb1e  Merge 5.13-rc2 into staging-next

possible Warning in current branch:

drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2134:6: warning: variable 'u4Tmp' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2135:17: warning: variable 'u1Tmpb' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2135:5: warning: variable 'u1Tmpa' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3895:18: warning: variable 'ra_info2' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3895:8: warning: variable 'ra_info1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- alpha-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arc-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arm-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arm-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- h8300-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- i386-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- ia64-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- ia64-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- mips-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- mips-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- nds32-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- parisc-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- powerpc-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- powerpc-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- sh-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- sparc-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
`-- xtensa-allyesconfig
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
    `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used

elapsed time: 722m

configs tested: 109
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          moxart_defconfig
openrisc                         alldefconfig
m68k                          multi_defconfig
sh                        edosk7705_defconfig
nds32                             allnoconfig
arm                       cns3420vb_defconfig
powerpc                        warp_defconfig
arm                          badge4_defconfig
arm                         cm_x300_defconfig
sh                           se7750_defconfig
powerpc                    ge_imp3a_defconfig
sh                                  defconfig
sh                           se7712_defconfig
mips                           ip32_defconfig
mips                         rt305x_defconfig
arc                          axs101_defconfig
nios2                         3c120_defconfig
arm                         lpc18xx_defconfig
sh                         apsh4a3a_defconfig
sh                           sh2007_defconfig
s390                       zfcpdump_defconfig
arm                            zeus_defconfig
ia64                          tiger_defconfig
csky                             alldefconfig
xtensa                       common_defconfig
m68k                          amiga_defconfig
m68k                       m5249evb_defconfig
sh                            titan_defconfig
m68k                            mac_defconfig
arm                            mps2_defconfig
mips                         cobalt_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210517
i386                 randconfig-a001-20210517
i386                 randconfig-a004-20210517
i386                 randconfig-a005-20210517
i386                 randconfig-a002-20210517
i386                 randconfig-a006-20210517
x86_64               randconfig-a012-20210517
x86_64               randconfig-a015-20210517
x86_64               randconfig-a011-20210517
x86_64               randconfig-a013-20210517
x86_64               randconfig-a016-20210517
x86_64               randconfig-a014-20210517
i386                 randconfig-a016-20210517
i386                 randconfig-a014-20210517
i386                 randconfig-a011-20210517
i386                 randconfig-a012-20210517
i386                 randconfig-a015-20210517
i386                 randconfig-a013-20210517
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210517
x86_64               randconfig-a003-20210517
x86_64               randconfig-a001-20210517
x86_64               randconfig-a005-20210517
x86_64               randconfig-a002-20210517
x86_64               randconfig-a006-20210517

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
