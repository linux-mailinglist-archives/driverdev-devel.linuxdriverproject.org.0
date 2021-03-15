Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA39A33C7BD
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 21:32:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92D816F59F;
	Mon, 15 Mar 2021 20:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xv4NOeTw-CZm; Mon, 15 Mar 2021 20:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D86606F52F;
	Mon, 15 Mar 2021 20:32:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A68B71BF30A
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 20:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 93A196F580
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 20:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjB7mT5wVI9H for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 20:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92E206F52F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 20:31:54 +0000 (UTC)
IronPort-SDR: z1hkpW09B4e86Xrtk69vSdi9utpdsCjJG/TasA51dotus4lZPrTWtQa+XJyKk/iSJ8MSPhYb4z
 TdSkxU7sW+Bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="186773131"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="186773131"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 13:31:51 -0700
IronPort-SDR: 7hLjIrOwv1OS6K9fXQWURvZejqTmeLtjwzJ/fEv7OF6QoxVT1O4sQP7VhZ1S2bbFBHMnO3zVXV
 7708SNIKwnLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="410776603"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 15 Mar 2021 13:31:48 -0700
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lLtsR-0000du-R3; Mon, 15 Mar 2021 20:31:47 +0000
Date: Tue, 16 Mar 2021 04:31:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 b927f68718ad932968b335981efa03f9960bf542
Message-ID: <604fc408.2fkwdMbZhIICsJ2l%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: b927f68718ad932968b335981efa03f9960bf542  x86/tools/relocs: add __printf attribute to die()

elapsed time: 721m

configs tested: 122
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
x86_64                           allyesconfig
riscv                            allmodconfig
sh                                  defconfig
sh                               alldefconfig
powerpc                     taishan_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                      loongson3_defconfig
m68k                          hp300_defconfig
mips                     cu1830-neo_defconfig
mips                        jmr3927_defconfig
arm                           h5000_defconfig
arm                          exynos_defconfig
arc                      axs103_smp_defconfig
m68k                       m5208evb_defconfig
arm                           h3600_defconfig
arc                 nsimosci_hs_smp_defconfig
sparc                       sparc32_defconfig
mips                   sb1250_swarm_defconfig
arm                       mainstone_defconfig
nios2                            allyesconfig
arm                           omap1_defconfig
arm                           spitz_defconfig
arm                       omap2plus_defconfig
powerpc                    socrates_defconfig
powerpc                       ebony_defconfig
sparc                       sparc64_defconfig
arm                         vf610m4_defconfig
m68k                        m5272c3_defconfig
mips                           xway_defconfig
arc                    vdk_hs38_smp_defconfig
sparc64                          alldefconfig
alpha                               defconfig
sh                           se7780_defconfig
sh                          urquell_defconfig
xtensa                           alldefconfig
sh                        sh7757lcr_defconfig
s390                                defconfig
sh                           se7206_defconfig
mips                         mpc30x_defconfig
mips                  decstation_64_defconfig
sh                            migor_defconfig
microblaze                      mmu_defconfig
xtensa                  cadence_csp_defconfig
xtensa                generic_kc705_defconfig
parisc                           alldefconfig
sh                            titan_defconfig
arm                         assabet_defconfig
mips                           ip32_defconfig
arm                        multi_v7_defconfig
h8300                       h8s-sim_defconfig
sh                          r7785rp_defconfig
mips                        maltaup_defconfig
sh                        apsh4ad0a_defconfig
sh                           se7721_defconfig
powerpc                     mpc5200_defconfig
powerpc                      chrp32_defconfig
powerpc                      ppc40x_defconfig
sh                          lboxre2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210315
i386                 randconfig-a005-20210315
i386                 randconfig-a003-20210315
i386                 randconfig-a002-20210315
i386                 randconfig-a004-20210315
i386                 randconfig-a006-20210315
x86_64               randconfig-a006-20210315
x86_64               randconfig-a001-20210315
x86_64               randconfig-a005-20210315
x86_64               randconfig-a004-20210315
x86_64               randconfig-a002-20210315
x86_64               randconfig-a003-20210315
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20210315
x86_64               randconfig-a016-20210315
x86_64               randconfig-a013-20210315
x86_64               randconfig-a015-20210315
x86_64               randconfig-a014-20210315
x86_64               randconfig-a012-20210315

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
