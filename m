Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE23B7A9D
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Jun 2021 01:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DCDF403AA;
	Tue, 29 Jun 2021 23:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMfewl9r5m4e; Tue, 29 Jun 2021 23:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 850F74010C;
	Tue, 29 Jun 2021 23:09:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B57111BF5EA
 for <devel@linuxdriverproject.org>; Tue, 29 Jun 2021 23:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3C7A4010C
 for <devel@linuxdriverproject.org>; Tue, 29 Jun 2021 23:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFsKLKBHyZE7 for <devel@linuxdriverproject.org>;
 Tue, 29 Jun 2021 23:09:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9964D400E4
 for <devel@driverdev.osuosl.org>; Tue, 29 Jun 2021 23:09:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195549501"
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="195549501"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 16:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="641496047"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jun 2021 16:08:36 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lyMqJ-0009Pt-EG; Tue, 29 Jun 2021 23:08:35 +0000
Date: Wed, 30 Jun 2021 07:07:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 c1b2b651550a154d89ed80e7d290e52a45d6f066
Message-ID: <60dba7bc.CNlBVPMg8NRSnqW9%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: c1b2b651550a154d89ed80e7d290e52a45d6f066  spi: remove spi_set_cs_timing()

elapsed time: 725m

configs tested: 195
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7750_defconfig
arm                         palmz72_defconfig
powerpc                         wii_defconfig
m68k                        stmark2_defconfig
arm                  colibri_pxa300_defconfig
powerpc64                           defconfig
mips                            gpr_defconfig
powerpc                      ppc44x_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                 xes_mpc85xx_defconfig
sh                           se7724_defconfig
sh                          sdk7786_defconfig
powerpc                     taishan_defconfig
powerpc                      pcm030_defconfig
arm                            qcom_defconfig
arm                           sama5_defconfig
sh                            titan_defconfig
mips                     loongson1c_defconfig
ia64                        generic_defconfig
arm                         hackkit_defconfig
m68k                        m5307c3_defconfig
powerpc                      mgcoge_defconfig
powerpc                     skiroot_defconfig
arm                      integrator_defconfig
arc                          axs101_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                    gamecube_defconfig
arm                           sunxi_defconfig
powerpc                      chrp32_defconfig
parisc                              defconfig
arm                            mmp2_defconfig
powerpc                     stx_gp3_defconfig
powerpc                      ep88xc_defconfig
ia64                          tiger_defconfig
arm                      pxa255-idp_defconfig
powerpc                     tqm8548_defconfig
arm                      jornada720_defconfig
powerpc                      bamboo_defconfig
x86_64                           alldefconfig
mips                           ci20_defconfig
arc                     nsimosci_hs_defconfig
arm                         nhk8815_defconfig
powerpc                  mpc885_ads_defconfig
arm                            zeus_defconfig
riscv                    nommu_k210_defconfig
arc                         haps_hs_defconfig
powerpc                     tqm8540_defconfig
arm                     eseries_pxa_defconfig
powerpc               mpc834x_itxgp_defconfig
nios2                            allyesconfig
arm                          exynos_defconfig
arm                       spear13xx_defconfig
arm                     davinci_all_defconfig
sh                      rts7751r2d1_defconfig
openrisc                  or1klitex_defconfig
alpha                            alldefconfig
sh                           se7619_defconfig
mips                           gcw0_defconfig
powerpc                    amigaone_defconfig
arm                            lart_defconfig
mips                            ar7_defconfig
riscv                    nommu_virt_defconfig
sh                          urquell_defconfig
powerpc                    socrates_defconfig
powerpc                       ppc64_defconfig
arm                          pxa910_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                  decstation_64_defconfig
arm                          collie_defconfig
mips                      maltaaprp_defconfig
powerpc                       maple_defconfig
arc                     haps_hs_smp_defconfig
m68k                       bvme6000_defconfig
xtensa                              defconfig
arm                       mainstone_defconfig
openrisc                            defconfig
arm                           tegra_defconfig
mips                      loongson3_defconfig
mips                         tb0226_defconfig
h8300                            alldefconfig
arm                         shannon_defconfig
arm                          moxart_defconfig
mips                      pic32mzda_defconfig
mips                          rm200_defconfig
arm                           h5000_defconfig
openrisc                 simple_smp_defconfig
nios2                            alldefconfig
powerpc                 mpc8540_ads_defconfig
sh                          kfr2r09_defconfig
mips                        workpad_defconfig
powerpc                      pasemi_defconfig
sparc                       sparc32_defconfig
sh                           se7780_defconfig
sh                         ap325rxa_defconfig
powerpc                     tqm5200_defconfig
microblaze                      mmu_defconfig
powerpc                  iss476-smp_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                         microdev_defconfig
powerpc                      ppc6xx_defconfig
mips                         mpc30x_defconfig
m68k                        mvme147_defconfig
arm                         socfpga_defconfig
arm                           h3600_defconfig
s390                             alldefconfig
arm                  colibri_pxa270_defconfig
arm                          lpd270_defconfig
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
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
i386                 randconfig-a001-20210628
i386                 randconfig-a002-20210628
i386                 randconfig-a003-20210628
i386                 randconfig-a006-20210628
i386                 randconfig-a005-20210628
i386                 randconfig-a004-20210628
i386                 randconfig-a002-20210629
i386                 randconfig-a001-20210629
i386                 randconfig-a003-20210629
i386                 randconfig-a006-20210629
i386                 randconfig-a005-20210629
i386                 randconfig-a004-20210629
x86_64               randconfig-a012-20210628
x86_64               randconfig-a016-20210628
x86_64               randconfig-a015-20210628
x86_64               randconfig-a013-20210628
x86_64               randconfig-a014-20210628
x86_64               randconfig-a011-20210628
i386                 randconfig-a011-20210628
i386                 randconfig-a014-20210628
i386                 randconfig-a013-20210628
i386                 randconfig-a015-20210628
i386                 randconfig-a016-20210628
i386                 randconfig-a012-20210628
x86_64               randconfig-a002-20210629
x86_64               randconfig-a005-20210629
x86_64               randconfig-a001-20210629
x86_64               randconfig-a003-20210629
x86_64               randconfig-a004-20210629
x86_64               randconfig-a006-20210629
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210628
x86_64               randconfig-a002-20210628
x86_64               randconfig-a005-20210628
x86_64               randconfig-a001-20210628
x86_64               randconfig-a003-20210628
x86_64               randconfig-a004-20210628
x86_64               randconfig-a006-20210628

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
