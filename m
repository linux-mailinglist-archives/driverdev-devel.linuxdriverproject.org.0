Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B3F33E2EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 01:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AD47431E0;
	Wed, 17 Mar 2021 00:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5m9XDUdyYZx; Wed, 17 Mar 2021 00:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B311A43070;
	Wed, 17 Mar 2021 00:42:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9BF1BF393
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 00:42:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE277605E8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 00:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXHUpa65feAJ for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 00:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F11AE6058C
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 00:42:09 +0000 (UTC)
IronPort-SDR: 9VRLWQNVG0ddDNIY3CIYZU+Z8nagVaFh9dsi+nVuMFJ2R8esRvKxhP6f01M6bvmxTy5s/4uu/J
 fjOeba5YrZzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="250721325"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="250721325"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 17:42:08 -0700
IronPort-SDR: 56uQG5gefnnOTTt2Ct4+nsEz3jA6BnONX1//ZzUTCbskJtFXLeafRXBtsI2oPNXpXknylg29se
 OZpHNU0+15EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="411261250"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 16 Mar 2021 17:42:07 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lMKGE-0000PN-Dx; Wed, 17 Mar 2021 00:42:06 +0000
Date: Wed, 17 Mar 2021 08:41:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 d2d106fe3badfc3bf0dd3899d1c3f210c7203eab
Message-ID: <60515048.CUf7IX7eZwWGrqOK%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: d2d106fe3badfc3bf0dd3899d1c3f210c7203eab  staging: comedi: cb_pcidas64: fix request_irq() warn

elapsed time: 723m

configs tested: 140
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
arm                         socfpga_defconfig
m68k                        mvme16x_defconfig
sparc                            alldefconfig
powerpc                   currituck_defconfig
arm                        multi_v5_defconfig
sh                           se7780_defconfig
powerpc                     tqm8541_defconfig
arm                     eseries_pxa_defconfig
m68k                            q40_defconfig
m68k                        m5407c3_defconfig
mips                             allmodconfig
arm                    vt8500_v6_v7_defconfig
sh                           se7722_defconfig
m68k                         apollo_defconfig
sh                             espt_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
arm                         hackkit_defconfig
arc                              allyesconfig
arm                          gemini_defconfig
sh                               j2_defconfig
arm                         vf610m4_defconfig
powerpc                      pmac32_defconfig
sh                           se7750_defconfig
h8300                     edosk2674_defconfig
openrisc                    or1ksim_defconfig
sh                           se7705_defconfig
h8300                       h8s-sim_defconfig
mips                        bcm47xx_defconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
parisc                generic-32bit_defconfig
powerpc                      ppc6xx_defconfig
microblaze                      mmu_defconfig
mips                           gcw0_defconfig
mips                     decstation_defconfig
arm                           omap1_defconfig
powerpc                       ppc64_defconfig
powerpc                 mpc834x_mds_defconfig
arm                            mps2_defconfig
powerpc                      pcm030_defconfig
arm                         bcm2835_defconfig
mips                          rm200_defconfig
ia64                          tiger_defconfig
arm                        keystone_defconfig
sh                          rsk7201_defconfig
sh                          sdk7786_defconfig
sh                           se7712_defconfig
powerpc                  storcenter_defconfig
powerpc                 mpc8315_rdb_defconfig
xtensa                generic_kc705_defconfig
sh                        edosk7760_defconfig
openrisc                            defconfig
powerpc                      bamboo_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                mpc7448_hpc2_defconfig
riscv                          rv32_defconfig
arm                       aspeed_g4_defconfig
i386                             alldefconfig
powerpc                 mpc8540_ads_defconfig
um                             i386_defconfig
s390                       zfcpdump_defconfig
arc                      axs103_smp_defconfig
powerpc                          g5_defconfig
mips                    maltaup_xpa_defconfig
mips                 decstation_r4k_defconfig
powerpc                      makalu_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210316
i386                 randconfig-a005-20210316
i386                 randconfig-a002-20210316
i386                 randconfig-a003-20210316
i386                 randconfig-a004-20210316
i386                 randconfig-a006-20210316
x86_64               randconfig-a011-20210316
x86_64               randconfig-a016-20210316
x86_64               randconfig-a013-20210316
x86_64               randconfig-a014-20210316
x86_64               randconfig-a015-20210316
x86_64               randconfig-a012-20210316
i386                 randconfig-a013-20210316
i386                 randconfig-a016-20210316
i386                 randconfig-a011-20210316
i386                 randconfig-a012-20210316
i386                 randconfig-a015-20210316
i386                 randconfig-a014-20210316
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210316
x86_64               randconfig-a001-20210316
x86_64               randconfig-a005-20210316
x86_64               randconfig-a004-20210316
x86_64               randconfig-a003-20210316
x86_64               randconfig-a002-20210316

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
