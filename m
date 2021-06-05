Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F05139C504
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Jun 2021 04:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 982AF415F2;
	Sat,  5 Jun 2021 02:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BYTM5A2P6Wft; Sat,  5 Jun 2021 02:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64E594159D;
	Sat,  5 Jun 2021 02:20:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CA361BF5F8
 for <devel@linuxdriverproject.org>; Sat,  5 Jun 2021 02:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C7F0403A0
 for <devel@linuxdriverproject.org>; Sat,  5 Jun 2021 02:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwEtMET_auMQ for <devel@linuxdriverproject.org>;
 Sat,  5 Jun 2021 02:20:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17C7140388
 for <devel@driverdev.osuosl.org>; Sat,  5 Jun 2021 02:20:34 +0000 (UTC)
IronPort-SDR: 8H1P1rlppebj8fclYT44vg8DIDSvK5rBWYkIhzDWYnby8rZIE9xiGlo64vrQXLnIGr2Y0jpisb
 MUsKz+8XaCYA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184770318"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="184770318"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 19:20:32 -0700
IronPort-SDR: 4YZqAfEgFmPf/SCgxcuL3ufuOERWAzgbQC3iubeIMxLGCQuzfboworLzon+3Z2qpih0O5VvI1z
 pnLE8aeGW4Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="417937660"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 04 Jun 2021 19:20:31 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lpLvK-0007DY-Fz; Sat, 05 Jun 2021 02:20:30 +0000
Date: Sat, 05 Jun 2021 10:19:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 f501b6a2312e27fffe671d461770426fe5162184
Message-ID: <60badf45.CtUPB3KOJRHGqusU%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: f501b6a2312e27fffe671d461770426fe5162184  debugfs: Fix debugfs_read_file_str()

elapsed time: 728m

configs tested: 224
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
um                           x86_64_defconfig
riscv                            allyesconfig
mips                             allyesconfig
um                             i386_defconfig
mips                             allmodconfig
riscv                            allmodconfig
powerpc                          allyesconfig
s390                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nios2                            allyesconfig
alpha                            allyesconfig
arm                         hackkit_defconfig
h8300                               defconfig
ia64                      gensparse_defconfig
mips                           ci20_defconfig
s390                                defconfig
powerpc                 mpc837x_rdb_defconfig
mips                     cu1830-neo_defconfig
arm                        clps711x_defconfig
arc                         haps_hs_defconfig
mips                          rb532_defconfig
arm                          collie_defconfig
xtensa                generic_kc705_defconfig
powerpc                      mgcoge_defconfig
mips                          rm200_defconfig
powerpc                        fsp2_defconfig
arm                           stm32_defconfig
arm                      integrator_defconfig
powerpc                 mpc8540_ads_defconfig
arc                            hsdk_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                  colibri_pxa270_defconfig
powerpc                    adder875_defconfig
powerpc                       ebony_defconfig
sh                        apsh4ad0a_defconfig
arm                        keystone_defconfig
powerpc                    gamecube_defconfig
mips                      maltasmvp_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                           gcw0_defconfig
powerpc                      obs600_defconfig
arm                           sama5_defconfig
mips                    maltaup_xpa_defconfig
powerpc                       eiger_defconfig
powerpc                      chrp32_defconfig
arm                           corgi_defconfig
um                               alldefconfig
powerpc                  iss476-smp_defconfig
mips                     loongson2k_defconfig
mips                  maltasmvp_eva_defconfig
m68k                         apollo_defconfig
m68k                        mvme16x_defconfig
mips                      maltaaprp_defconfig
nios2                               defconfig
mips                           xway_defconfig
arm                             pxa_defconfig
arm                         s3c6400_defconfig
arm                     am200epdkit_defconfig
arc                              alldefconfig
riscv                    nommu_virt_defconfig
arm                           tegra_defconfig
sh                           sh2007_defconfig
mips                         tb0287_defconfig
arm                            mmp2_defconfig
sparc                            alldefconfig
mips                           rs90_defconfig
i386                                defconfig
sh                        edosk7705_defconfig
arm                         shannon_defconfig
arm                       omap2plus_defconfig
mips                        qi_lb60_defconfig
powerpc                        warp_defconfig
mips                 decstation_r4k_defconfig
sparc64                             defconfig
arm                       versatile_defconfig
arm                        multi_v5_defconfig
m68k                           sun3_defconfig
powerpc                           allnoconfig
openrisc                            defconfig
arc                        nsim_700_defconfig
mips                        bcm47xx_defconfig
mips                            gpr_defconfig
ia64                                defconfig
powerpc                     taishan_defconfig
sh                          urquell_defconfig
sh                           se7724_defconfig
mips                        maltaup_defconfig
arm                         lpc32xx_defconfig
m68k                          multi_defconfig
powerpc                 xes_mpc85xx_defconfig
sh                         apsh4a3a_defconfig
powerpc                      ppc40x_defconfig
h8300                    h8300h-sim_defconfig
powerpc                 canyonlands_defconfig
arm                          pxa168_defconfig
arm                         at91_dt_defconfig
mips                           jazz_defconfig
sh                           se7619_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                        dreamcast_defconfig
arm                            mps2_defconfig
arm                          simpad_defconfig
powerpc                       maple_defconfig
nds32                             allnoconfig
sh                          r7780mp_defconfig
mips                           mtx1_defconfig
arm                            xcep_defconfig
arm                            qcom_defconfig
arc                 nsimosci_hs_smp_defconfig
riscv                            alldefconfig
powerpc                      katmai_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                 mpc834x_mds_defconfig
sh                         ap325rxa_defconfig
sh                            titan_defconfig
powerpc                     stx_gp3_defconfig
sh                          rsk7201_defconfig
powerpc                    klondike_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     sbc8548_defconfig
arm                   milbeaut_m10v_defconfig
sh                               allmodconfig
powerpc                      tqm8xx_defconfig
xtensa                         virt_defconfig
sh                          sdk7780_defconfig
arm                            lart_defconfig
arm                          pxa910_defconfig
arc                        nsimosci_defconfig
mips                           ip28_defconfig
powerpc                       holly_defconfig
xtensa                              defconfig
powerpc                     kmeter1_defconfig
mips                         cobalt_defconfig
powerpc                   motionpro_defconfig
m68k                            q40_defconfig
powerpc                     ppa8548_defconfig
powerpc                     kilauea_defconfig
mips                           ip22_defconfig
alpha                            alldefconfig
arm                         mv78xx0_defconfig
xtensa                          iss_defconfig
mips                       lemote2f_defconfig
nios2                         3c120_defconfig
sparc                       sparc32_defconfig
sh                        sh7785lcr_defconfig
arm                        multi_v7_defconfig
m68k                                defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
x86_64               randconfig-a002-20210604
x86_64               randconfig-a004-20210604
x86_64               randconfig-a003-20210604
x86_64               randconfig-a006-20210604
x86_64               randconfig-a005-20210604
x86_64               randconfig-a001-20210604
i386                 randconfig-a003-20210604
i386                 randconfig-a006-20210604
i386                 randconfig-a004-20210604
i386                 randconfig-a001-20210604
i386                 randconfig-a005-20210604
i386                 randconfig-a002-20210604
i386                 randconfig-a003-20210603
i386                 randconfig-a006-20210603
i386                 randconfig-a004-20210603
i386                 randconfig-a001-20210603
i386                 randconfig-a002-20210603
i386                 randconfig-a005-20210603
x86_64               randconfig-a015-20210603
x86_64               randconfig-a011-20210603
x86_64               randconfig-a012-20210603
x86_64               randconfig-a014-20210603
x86_64               randconfig-a016-20210603
x86_64               randconfig-a013-20210603
i386                 randconfig-a015-20210604
i386                 randconfig-a013-20210604
i386                 randconfig-a016-20210604
i386                 randconfig-a011-20210604
i386                 randconfig-a014-20210604
i386                 randconfig-a012-20210604
i386                 randconfig-a015-20210603
i386                 randconfig-a013-20210603
i386                 randconfig-a011-20210603
i386                 randconfig-a016-20210603
i386                 randconfig-a014-20210603
i386                 randconfig-a012-20210603
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210604
x86_64               randconfig-a015-20210604
x86_64               randconfig-a011-20210604
x86_64               randconfig-a014-20210604
x86_64               randconfig-a012-20210604
x86_64               randconfig-a016-20210604
x86_64               randconfig-a013-20210604

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
