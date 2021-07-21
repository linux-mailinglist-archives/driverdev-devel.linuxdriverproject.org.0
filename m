Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B153D1990
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jul 2021 00:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1991240151;
	Wed, 21 Jul 2021 22:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cwOgnbpUpHMX; Wed, 21 Jul 2021 22:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8B9840185;
	Wed, 21 Jul 2021 22:08:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 952B81BF3D4
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 22:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84B38400F3
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 22:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xMPlOI24kCyy for <devel@linuxdriverproject.org>;
 Wed, 21 Jul 2021 22:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3140400E1
 for <devel@driverdev.osuosl.org>; Wed, 21 Jul 2021 22:08:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="208408557"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="208408557"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="662266921"
Received: from lkp-server01.sh.intel.com (HELO b8b92b2878b0) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jul 2021 15:08:38 -0700
Received: from kbuild by b8b92b2878b0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m6KOM-0000dx-8X; Wed, 21 Jul 2021 22:08:38 +0000
Date: Thu, 22 Jul 2021 06:07:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:greybus] BUILD REGRESSION
 4b5f28cff45f83ee9e8b851f0e7ff5852ca13878
Message-ID: <60f89ab6.AsQyhiMKnhLsrsLk%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git greybus
branch HEAD: 4b5f28cff45f83ee9e8b851f0e7ff5852ca13878  staging: greybus: vibrator: rip out custom sysfs api

Error/Warning reports:

https://lore.kernel.org/lkml/202107210115.dvGDuUgI-lkp@intel.com
https://lore.kernel.org/lkml/202107210327.RX2PxgNC-lkp@intel.com

Error/Warning in current branch:

ERROR: modpost: "input_ff_create_memless" [drivers/staging/greybus/gb-vibrator.ko] undefined!
ERROR: modpost: "input_set_capability" [drivers/staging/greybus/gb-vibrator.ko] undefined!
vibrator.c:(.text+0x44b): undefined reference to `input_ff_create_memless'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- csky-randconfig-r011-20210720
|   |-- ERROR:input_ff_create_memless-drivers-staging-greybus-gb-vibrator.ko-undefined
|   `-- ERROR:input_set_capability-drivers-staging-greybus-gb-vibrator.ko-undefined
`-- i386-randconfig-a013-20210720
    `-- vibrator.c:(.text):undefined-reference-to-input_ff_create_memless

clang_recent_errors
`-- x86_64-randconfig-b001-20210720

elapsed time: 2070m

configs tested: 160
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7750_defconfig
sh                          rsk7269_defconfig
mips                      bmips_stb_defconfig
arm                           h5000_defconfig
arm                         lpc18xx_defconfig
x86_64                           allyesconfig
sh                           se7724_defconfig
powerpc                      acadia_defconfig
mips                      pistachio_defconfig
mips                         tb0287_defconfig
arm                         hackkit_defconfig
powerpc                     powernv_defconfig
sh                        sh7763rdp_defconfig
powerpc                     tqm8560_defconfig
powerpc                     skiroot_defconfig
arm                             pxa_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                     tqm8555_defconfig
arm                        keystone_defconfig
riscv                             allnoconfig
m68k                        stmark2_defconfig
powerpc                  storcenter_defconfig
powerpc                     tqm8548_defconfig
arm                        multi_v5_defconfig
mips                          ath25_defconfig
sh                           se7721_defconfig
ia64                             allmodconfig
arm                           corgi_defconfig
powerpc                 linkstation_defconfig
m68k                        m5407c3_defconfig
sh                   secureedge5410_defconfig
powerpc                     sequoia_defconfig
m68k                       m5208evb_defconfig
arm                           sama5_defconfig
mips                       rbtx49xx_defconfig
powerpc                     mpc5200_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                         apsh4a3a_defconfig
arm                             mxs_defconfig
arm                          pcm027_defconfig
arm                           tegra_defconfig
arm                         bcm2835_defconfig
powerpc                      mgcoge_defconfig
ia64                                defconfig
riscv                            alldefconfig
microblaze                          defconfig
m68k                                defconfig
parisc                generic-64bit_defconfig
arm                           stm32_defconfig
arm                         vf610m4_defconfig
x86_64                            allnoconfig
mips                  cavium_octeon_defconfig
powerpc                      chrp32_defconfig
m68k                        mvme16x_defconfig
powerpc                       holly_defconfig
powerpc                      katmai_defconfig
mips                         mpc30x_defconfig
m68k                             alldefconfig
sh                          urquell_defconfig
sh                   sh7724_generic_defconfig
sh                           se7343_defconfig
xtensa                generic_kc705_defconfig
sh                   sh7770_generic_defconfig
arm                        multi_v7_defconfig
powerpc                     rainier_defconfig
xtensa                    smp_lx200_defconfig
riscv                          rv32_defconfig
mips                           ip22_defconfig
arm                           spitz_defconfig
powerpc                        warp_defconfig
powerpc                     tqm8540_defconfig
arm                          simpad_defconfig
sh                          landisk_defconfig
arm                         socfpga_defconfig
powerpc64                           defconfig
powerpc                      cm5200_defconfig
arm                         palmz72_defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210720
x86_64               randconfig-a006-20210720
x86_64               randconfig-a001-20210720
x86_64               randconfig-a005-20210720
x86_64               randconfig-a004-20210720
x86_64               randconfig-a002-20210720
i386                 randconfig-a005-20210720
i386                 randconfig-a003-20210720
i386                 randconfig-a004-20210720
i386                 randconfig-a002-20210720
i386                 randconfig-a001-20210720
i386                 randconfig-a006-20210720
i386                 randconfig-a004-20210719
i386                 randconfig-a006-20210719
i386                 randconfig-a003-20210719
i386                 randconfig-a002-20210719
i386                 randconfig-a001-20210719
i386                 randconfig-a005-20210719
i386                 randconfig-a016-20210720
i386                 randconfig-a013-20210720
i386                 randconfig-a012-20210720
i386                 randconfig-a014-20210720
i386                 randconfig-a011-20210720
i386                 randconfig-a015-20210720
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210720
x86_64               randconfig-a003-20210721
x86_64               randconfig-a006-20210721
x86_64               randconfig-a001-20210721
x86_64               randconfig-a005-20210721
x86_64               randconfig-a004-20210721
x86_64               randconfig-a002-20210721
x86_64               randconfig-a011-20210720
x86_64               randconfig-a016-20210720
x86_64               randconfig-a013-20210720
x86_64               randconfig-a014-20210720
x86_64               randconfig-a012-20210720
x86_64               randconfig-a015-20210720

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
