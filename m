Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B4738039D
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 May 2021 08:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC31D60712;
	Fri, 14 May 2021 06:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fhCF254zLFXb; Fri, 14 May 2021 06:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4A9B60661;
	Fri, 14 May 2021 06:24:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8101BF3AA
 for <devel@linuxdriverproject.org>; Fri, 14 May 2021 06:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FB0540162
 for <devel@linuxdriverproject.org>; Fri, 14 May 2021 06:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id afJaywJhbklh for <devel@linuxdriverproject.org>;
 Fri, 14 May 2021 06:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7C3540125
 for <devel@driverdev.osuosl.org>; Fri, 14 May 2021 06:24:02 +0000 (UTC)
IronPort-SDR: zR4HTRhpcSxwOK62cU7URmqjxIXK/87IpYwULmNeflcQVnzBevYn30w7mVLT70vv9eoTMgh6gv
 u/QGhq+vEJrw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="198166237"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="198166237"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 23:24:00 -0700
IronPort-SDR: Y/L93MfhJ4yEMyyJRYfbXfYdH8pHOIm4U7Gqe7QumrhGYg+GeVQ1raXk3eTgVh5kCv51z+mkZn
 Vl4wnuCktHRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="409893102"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 13 May 2021 23:23:58 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lhREr-0000bZ-RX; Fri, 14 May 2021 06:23:57 +0000
Date: Fri, 14 May 2021 14:23:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 5f8e9aff1a116c8cc7c58d174d7e2ed172ba8993
Message-ID: <609e174b.M5Z7td8O3DXhKbz1%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 5f8e9aff1a116c8cc7c58d174d7e2ed172ba8993  staging: rtl8723bs: remove unused argument 'msg'

Warning in current branch:

drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

possible Warning in current branch:

drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2134:6: warning: variable 'u4Tmp' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2135:17: warning: variable 'u1Tmpb' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2135:5: warning: variable 'u1Tmpa' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c:1632:30: warning: variable 'RegEAC' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c:1632:62: warning: variable 'RegECC' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c:1649:8: warning: variable 'ProgressingTime' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3895:18: warning: variable 'ra_info2' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3895:8: warning: variable 'ra_info1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- parisc-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- s390-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
`-- x86_64-allyesconfig
    |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
    `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used

elapsed time: 723m

configs tested: 133
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                         tb0219_defconfig
ia64                          tiger_defconfig
powerpc                      acadia_defconfig
powerpc                 mpc836x_mds_defconfig
sparc                            allyesconfig
mips                        workpad_defconfig
powerpc                 linkstation_defconfig
mips                malta_qemu_32r6_defconfig
um                             i386_defconfig
arm                         lpc32xx_defconfig
mips                  maltasmvp_eva_defconfig
riscv                    nommu_virt_defconfig
powerpc                     taishan_defconfig
riscv             nommu_k210_sdcard_defconfig
arc                              alldefconfig
m68k                                defconfig
arm                       mainstone_defconfig
powerpc                      mgcoge_defconfig
arm                          exynos_defconfig
powerpc                     ppa8548_defconfig
sh                     magicpanelr2_defconfig
riscv                    nommu_k210_defconfig
powerpc                   lite5200b_defconfig
sh                   sh7770_generic_defconfig
powerpc                    gamecube_defconfig
arm                          simpad_defconfig
powerpc                      ppc44x_defconfig
powerpc                         ps3_defconfig
m68k                        m5307c3_defconfig
m68k                       m5275evb_defconfig
arm                          iop32x_defconfig
powerpc                 mpc8315_rdb_defconfig
sh                          landisk_defconfig
m68k                         amcore_defconfig
sh                        apsh4ad0a_defconfig
arm                        keystone_defconfig
um                               alldefconfig
sh                        edosk7705_defconfig
sh                         ap325rxa_defconfig
arm                          gemini_defconfig
mips                     cu1000-neo_defconfig
mips                       capcella_defconfig
mips                      maltasmvp_defconfig
nios2                            alldefconfig
powerpc                      pcm030_defconfig
arm                        spear6xx_defconfig
m68k                       m5249evb_defconfig
arm                           h5000_defconfig
powerpc                     sequoia_defconfig
powerpc                      makalu_defconfig
powerpc                        icon_defconfig
xtensa                  cadence_csp_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210513
i386                 randconfig-a001-20210513
i386                 randconfig-a005-20210513
i386                 randconfig-a004-20210513
i386                 randconfig-a002-20210513
i386                 randconfig-a006-20210513
i386                 randconfig-a003-20210514
i386                 randconfig-a001-20210514
i386                 randconfig-a004-20210514
i386                 randconfig-a005-20210514
i386                 randconfig-a002-20210514
i386                 randconfig-a006-20210514
x86_64               randconfig-a012-20210513
x86_64               randconfig-a015-20210513
x86_64               randconfig-a011-20210513
x86_64               randconfig-a013-20210513
x86_64               randconfig-a016-20210513
x86_64               randconfig-a014-20210513
i386                 randconfig-a016-20210513
i386                 randconfig-a014-20210513
i386                 randconfig-a011-20210513
i386                 randconfig-a015-20210513
i386                 randconfig-a012-20210513
i386                 randconfig-a013-20210513
riscv                            allyesconfig
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
x86_64               randconfig-a003-20210513
x86_64               randconfig-a004-20210513
x86_64               randconfig-a001-20210513
x86_64               randconfig-a005-20210513
x86_64               randconfig-a002-20210513
x86_64               randconfig-a006-20210513

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
