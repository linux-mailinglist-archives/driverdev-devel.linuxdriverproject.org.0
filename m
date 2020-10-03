Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 426992820C0
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Oct 2020 05:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 166692043C;
	Sat,  3 Oct 2020 03:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VpdmFZHixF3u; Sat,  3 Oct 2020 03:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF07720390;
	Sat,  3 Oct 2020 03:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7D261BF867
 for <devel@linuxdriverproject.org>; Sat,  3 Oct 2020 03:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B61F220364
 for <devel@linuxdriverproject.org>; Sat,  3 Oct 2020 03:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Rt7rnAkn8DO for <devel@linuxdriverproject.org>;
 Sat,  3 Oct 2020 03:17:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 6537D20363
 for <devel@driverdev.osuosl.org>; Sat,  3 Oct 2020 03:17:53 +0000 (UTC)
IronPort-SDR: jdV1914SzfUrJgHIj42iSYtxbOjjJo9x9J/LSXl/pPwcToiQLWGob4vBD31G8weT3GdWe7WN5K
 n2Mr3vVcVoww==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="247878658"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="247878658"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:17:50 -0700
IronPort-SDR: wYQaDC1EbiT9ogyEOHq88rivgANkpGCylXo1TcLKJ+5JIPe12+3BBjyqNfsbtWuEfbJmJLrZRG
 EaOWJNt/52vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="346652095"
Received: from lkp-server02.sh.intel.com (HELO 404f47266ee4) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 02 Oct 2020 20:17:48 -0700
Received: from kbuild by 404f47266ee4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kOY3Q-0000Dc-1r; Sat, 03 Oct 2020 03:17:48 +0000
Date: Sat, 03 Oct 2020 11:17:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 ee4906770ee931394179bcd42cabb196bc952276
Message-ID: <5f77ed55.CIy3DwbBHqQzEUMX%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: ee4906770ee931394179bcd42cabb196bc952276  regmap: debugfs: use semicolons rather than commas to separate statements

elapsed time: 725m

configs tested: 136
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          moxart_defconfig
mips                           ip32_defconfig
arm                       spear13xx_defconfig
arm                       imx_v4_v5_defconfig
powerpc                    klondike_defconfig
mips                          malta_defconfig
arc                        nsim_700_defconfig
arm                          badge4_defconfig
sh                        sh7763rdp_defconfig
powerpc                      ppc44x_defconfig
arm                         lpc18xx_defconfig
powerpc                      ep88xc_defconfig
powerpc                      ppc64e_defconfig
arm                   milbeaut_m10v_defconfig
arm                          ep93xx_defconfig
arm                         palmz72_defconfig
m68k                       m5475evb_defconfig
sh                   secureedge5410_defconfig
arm                           tegra_defconfig
sh                           se7619_defconfig
mips                       lemote2f_defconfig
mips                 decstation_r4k_defconfig
powerpc                 mpc8540_ads_defconfig
mips                     decstation_defconfig
arm64                            alldefconfig
arm                         lpc32xx_defconfig
arm                         assabet_defconfig
arm                            zeus_defconfig
powerpc                     tqm8555_defconfig
sh                           se7343_defconfig
powerpc                        cell_defconfig
m68k                        stmark2_defconfig
arm                         axm55xx_defconfig
powerpc                     tqm5200_defconfig
mips                     loongson1b_defconfig
sh                          sdk7786_defconfig
arm                     am200epdkit_defconfig
arm                            lart_defconfig
mips                           jazz_defconfig
c6x                         dsk6455_defconfig
arm                        mini2440_defconfig
c6x                        evmc6474_defconfig
arm                          imote2_defconfig
sh                           se7750_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      mgcoge_defconfig
powerpc                       ebony_defconfig
arm                       omap2plus_defconfig
sh                          rsk7264_defconfig
mips                        bcm47xx_defconfig
powerpc                 canyonlands_defconfig
arm                        multi_v7_defconfig
mips                            ar7_defconfig
arm                            dove_defconfig
powerpc                     stx_gp3_defconfig
powerpc                     mpc512x_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20201002
x86_64               randconfig-a001-20201002
x86_64               randconfig-a002-20201002
x86_64               randconfig-a005-20201002
x86_64               randconfig-a003-20201002
x86_64               randconfig-a006-20201002
i386                 randconfig-a006-20201002
i386                 randconfig-a005-20201002
i386                 randconfig-a001-20201002
i386                 randconfig-a004-20201002
i386                 randconfig-a003-20201002
i386                 randconfig-a002-20201002
i386                 randconfig-a006-20201003
i386                 randconfig-a005-20201003
i386                 randconfig-a001-20201003
i386                 randconfig-a004-20201003
i386                 randconfig-a003-20201003
i386                 randconfig-a002-20201003
i386                 randconfig-a014-20201002
i386                 randconfig-a013-20201002
i386                 randconfig-a015-20201002
i386                 randconfig-a016-20201002
i386                 randconfig-a011-20201002
i386                 randconfig-a012-20201002
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20201002
x86_64               randconfig-a015-20201002
x86_64               randconfig-a014-20201002
x86_64               randconfig-a013-20201002
x86_64               randconfig-a011-20201002
x86_64               randconfig-a016-20201002

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
