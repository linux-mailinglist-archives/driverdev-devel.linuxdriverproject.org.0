Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FD246C854
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Dec 2021 00:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 420D641D93;
	Tue,  7 Dec 2021 23:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1OT0e4KGzRQ; Tue,  7 Dec 2021 23:41:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B3C541D75;
	Tue,  7 Dec 2021 23:41:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B2FC61BF404
 for <devel@linuxdriverproject.org>; Tue,  7 Dec 2021 23:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2C5D83F3B
 for <devel@linuxdriverproject.org>; Tue,  7 Dec 2021 23:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lU_9CyTAhV_b for <devel@linuxdriverproject.org>;
 Tue,  7 Dec 2021 23:41:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AA7083F34
 for <devel@driverdev.osuosl.org>; Tue,  7 Dec 2021 23:41:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236453911"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="236453911"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 15:41:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="542997790"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 07 Dec 2021 15:41:16 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1muk5D-000N54-Vn; Tue, 07 Dec 2021 23:41:15 +0000
Date: Wed, 08 Dec 2021 07:40:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 aa483f3ce655ed9ee4f32d050d1822eec2d20ada
Message-ID: <61aff0f5.Jcu+459q2TdtmUuu%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: aa483f3ce655ed9ee4f32d050d1822eec2d20ada  topology/sysfs: get rid of htmldoc warning

elapsed time: 730m

configs tested: 197
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                                 defconfig
arm                              allmodconfig
i386                 randconfig-c001-20211207
arm                         axm55xx_defconfig
sh                         microdev_defconfig
mips                     loongson1c_defconfig
s390                             allmodconfig
sh                     sh7710voipgw_defconfig
powerpc                  iss476-smp_defconfig
arm                       omap2plus_defconfig
sh                                  defconfig
sh                             sh03_defconfig
arm                       cns3420vb_defconfig
powerpc                     skiroot_defconfig
m68k                             alldefconfig
arc                           tb10x_defconfig
arm                           tegra_defconfig
powerpc                 mpc837x_rdb_defconfig
csky                                defconfig
powerpc                 mpc836x_rdk_defconfig
m68k                            q40_defconfig
riscv                            alldefconfig
arm                           u8500_defconfig
mips                        workpad_defconfig
m68k                        m5307c3_defconfig
m68k                         apollo_defconfig
m68k                          atari_defconfig
arm                       multi_v4t_defconfig
xtensa                  nommu_kc705_defconfig
h8300                            allyesconfig
h8300                     edosk2674_defconfig
mips                           rs90_defconfig
mips                      maltasmvp_defconfig
nds32                            alldefconfig
powerpc                     redwood_defconfig
sh                          sdk7786_defconfig
arm                           h5000_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                     ppa8548_defconfig
arm                         bcm2835_defconfig
sh                        apsh4ad0a_defconfig
arm                         vf610m4_defconfig
sh                          lboxre2_defconfig
sh                           se7705_defconfig
mips                           xway_defconfig
powerpc                      cm5200_defconfig
sparc64                             defconfig
powerpc                         wii_defconfig
arm                         lpc32xx_defconfig
h8300                    h8300h-sim_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                   motionpro_defconfig
parisc                           alldefconfig
arm                           h3600_defconfig
mips                      loongson3_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                           ip22_defconfig
arm                        shmobile_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                       imx_v4_v5_defconfig
arm                           sama7_defconfig
arm                           omap1_defconfig
powerpc                       holly_defconfig
arm                      pxa255-idp_defconfig
openrisc                         alldefconfig
powerpc                   lite5200b_defconfig
mips                         mpc30x_defconfig
sh                             espt_defconfig
arm                      footbridge_defconfig
powerpc                      acadia_defconfig
sh                           se7721_defconfig
arc                         haps_hs_defconfig
sparc                            alldefconfig
arm                         s5pv210_defconfig
powerpc                     stx_gp3_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                         ecovec24_defconfig
arm                         orion5x_defconfig
sh                           se7780_defconfig
arm                        mvebu_v7_defconfig
xtensa                generic_kc705_defconfig
xtensa                  audio_kc705_defconfig
sh                              ul2_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                   microwatt_defconfig
mips                         tb0226_defconfig
arm                          pxa910_defconfig
powerpc                     pq2fads_defconfig
arm                        keystone_defconfig
arm                        cerfcube_defconfig
i386                             allyesconfig
mips                         db1xxx_defconfig
arc                            hsdk_defconfig
powerpc                      katmai_defconfig
s390                                defconfig
powerpc                      tqm8xx_defconfig
arm                          pcm027_defconfig
m68k                          sun3x_defconfig
m68k                        m5272c3_defconfig
mips                     decstation_defconfig
powerpc                        fsp2_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     powernv_defconfig
arc                      axs103_smp_defconfig
mips                     cu1000-neo_defconfig
arm                  colibri_pxa270_defconfig
sh                           se7722_defconfig
arm                          moxart_defconfig
nds32                             allnoconfig
powerpc                     tqm8548_defconfig
sh                        sh7757lcr_defconfig
sh                   sh7770_generic_defconfig
arm                      jornada720_defconfig
sh                 kfr2r09-romimage_defconfig
arm                         at91_dt_defconfig
sparc                               defconfig
mips                       rbtx49xx_defconfig
mips                          ath79_defconfig
arm                  randconfig-c002-20211207
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
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211207
x86_64               randconfig-a005-20211207
x86_64               randconfig-a001-20211207
x86_64               randconfig-a002-20211207
x86_64               randconfig-a004-20211207
x86_64               randconfig-a003-20211207
i386                 randconfig-a001-20211207
i386                 randconfig-a005-20211207
i386                 randconfig-a002-20211207
i386                 randconfig-a003-20211207
i386                 randconfig-a006-20211207
i386                 randconfig-a004-20211207
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c007-20211207
arm                  randconfig-c002-20211207
riscv                randconfig-c006-20211207
mips                 randconfig-c004-20211207
i386                 randconfig-c001-20211207
powerpc              randconfig-c003-20211207
s390                 randconfig-c005-20211207
x86_64               randconfig-a016-20211207
x86_64               randconfig-a011-20211207
x86_64               randconfig-a013-20211207
x86_64               randconfig-a014-20211207
x86_64               randconfig-a015-20211207
x86_64               randconfig-a012-20211207
i386                 randconfig-a016-20211207
i386                 randconfig-a013-20211207
i386                 randconfig-a011-20211207
i386                 randconfig-a014-20211207
i386                 randconfig-a012-20211207
i386                 randconfig-a015-20211207
hexagon              randconfig-r045-20211207
s390                 randconfig-r044-20211207
riscv                randconfig-r042-20211207
hexagon              randconfig-r041-20211207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
