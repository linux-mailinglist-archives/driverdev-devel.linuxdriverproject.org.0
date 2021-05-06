Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B0C375D19
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 May 2021 00:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5689A40557;
	Thu,  6 May 2021 22:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 22S-vD0Jy0K5; Thu,  6 May 2021 22:12:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D69140555;
	Thu,  6 May 2021 22:12:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16B6F1BF8A8
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 22:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0584783DB4
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 22:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tZ5NmVrFit5 for <devel@linuxdriverproject.org>;
 Thu,  6 May 2021 22:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23FC183CF2
 for <devel@driverdev.osuosl.org>; Thu,  6 May 2021 22:12:13 +0000 (UTC)
IronPort-SDR: 4/EYmRsqY3C0tmwnmlgMbN6TPMtUWFbLu51+V/0oueeaJ1BOu+ZHtJkhIUljbCQNZ03p3NRPGX
 94Up1Xjn+A8w==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="195474642"
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="195474642"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 15:12:12 -0700
IronPort-SDR: UnX4HE9P1593PDC2KL/5QOHGwA4yJbghvBQq/knCCaPZvyXFML7T7IyMb9oOXFPi3hO6pxm2ml
 RoFLevwSczkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="619850355"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 06 May 2021 15:12:11 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lemE6-000Au3-TO; Thu, 06 May 2021 22:12:10 +0000
Date: Fri, 07 May 2021 06:11:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kbuild] BUILD SUCCESS
 9eb7055796f1a1b1e7a237b426d2d54c12801e10
Message-ID: <60946983.ZZuUj52rSAKkULIB%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kbuild
branch HEAD: 9eb7055796f1a1b1e7a237b426d2d54c12801e10  kbuild: allow arches to have their own "bootloader.sh"

elapsed time: 721m

configs tested: 146
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                     cu1830-neo_defconfig
x86_64                           alldefconfig
mips                        jmr3927_defconfig
sparc                       sparc64_defconfig
arm                       mainstone_defconfig
powerpc                     pq2fads_defconfig
arm                        keystone_defconfig
um                               alldefconfig
s390                                defconfig
powerpc                    ge_imp3a_defconfig
sh                          rsk7203_defconfig
sh                          polaris_defconfig
arm                        shmobile_defconfig
mips                        nlm_xlr_defconfig
arm                          lpd270_defconfig
s390                          debug_defconfig
mips                      malta_kvm_defconfig
h8300                    h8300h-sim_defconfig
powerpc                        cell_defconfig
powerpc                     tqm8560_defconfig
mips                      maltasmvp_defconfig
mips                        omega2p_defconfig
sh                     sh7710voipgw_defconfig
m68k                          multi_defconfig
sh                          lboxre2_defconfig
sh                           se7751_defconfig
riscv                            alldefconfig
powerpc                      ppc40x_defconfig
mips                          ath25_defconfig
sh                                  defconfig
arm                         at91_dt_defconfig
xtensa                    smp_lx200_defconfig
mips                           ip22_defconfig
powerpc                     redwood_defconfig
arm                       cns3420vb_defconfig
arm                         mv78xx0_defconfig
arm                          exynos_defconfig
sparc                       sparc32_defconfig
sh                ecovec24-romimage_defconfig
arm                          pcm027_defconfig
microblaze                          defconfig
mips                        bcm63xx_defconfig
powerpc                     tqm8541_defconfig
powerpc                       ebony_defconfig
powerpc                     taishan_defconfig
powerpc                     ksi8560_defconfig
powerpc                     powernv_defconfig
powerpc                     asp8347_defconfig
mips                      loongson3_defconfig
mips                       rbtx49xx_defconfig
sh                           se7343_defconfig
powerpc                 mpc834x_mds_defconfig
arm                            mps2_defconfig
sh                           se7705_defconfig
arm                        clps711x_defconfig
m68k                       bvme6000_defconfig
arm                     am200epdkit_defconfig
mips                         tb0219_defconfig
mips                malta_qemu_32r6_defconfig
mips                        bcm47xx_defconfig
mips                       lemote2f_defconfig
sh                   rts7751r2dplus_defconfig
arm                  colibri_pxa300_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                        mvebu_v5_defconfig
mips                    maltaup_xpa_defconfig
xtensa                  audio_kc705_defconfig
arm                          pxa168_defconfig
x86_64                            allnoconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210506
i386                 randconfig-a006-20210506
i386                 randconfig-a001-20210506
i386                 randconfig-a005-20210506
i386                 randconfig-a004-20210506
i386                 randconfig-a002-20210506
x86_64               randconfig-a014-20210506
x86_64               randconfig-a015-20210506
x86_64               randconfig-a012-20210506
x86_64               randconfig-a013-20210506
x86_64               randconfig-a011-20210506
x86_64               randconfig-a016-20210506
i386                 randconfig-a015-20210506
i386                 randconfig-a013-20210506
i386                 randconfig-a016-20210506
i386                 randconfig-a014-20210506
i386                 randconfig-a012-20210506
i386                 randconfig-a011-20210506
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210506
x86_64               randconfig-a003-20210506
x86_64               randconfig-a005-20210506
x86_64               randconfig-a002-20210506
x86_64               randconfig-a006-20210506
x86_64               randconfig-a004-20210506

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
