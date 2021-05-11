Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B83037AF40
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 May 2021 21:20:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86D3D60D77;
	Tue, 11 May 2021 19:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jxadw_WSuP7A; Tue, 11 May 2021 19:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E30DA60D78;
	Tue, 11 May 2021 19:20:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BBB1F1BF3C9
 for <devel@linuxdriverproject.org>; Tue, 11 May 2021 19:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9EE1405B6
 for <devel@linuxdriverproject.org>; Tue, 11 May 2021 19:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5u9PyeeTRru for <devel@linuxdriverproject.org>;
 Tue, 11 May 2021 19:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 675634054D
 for <devel@driverdev.osuosl.org>; Tue, 11 May 2021 19:20:37 +0000 (UTC)
IronPort-SDR: EjynRm7ymgvj24HFqJY8O7IxD7w1ane6d9tj0y4tAPyLT6IgDuaF2s/Dzq/xMY6MvTWimhpMhI
 uTkSiwsSeD2g==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199591190"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="199591190"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 12:20:28 -0700
IronPort-SDR: dRj9xom7AaXww+MgFyK93bOTy5N/ydskg926S/oTwNR7LTHjr/UrBG2twBfGyUomTqEL0eIAJd
 oB0Yznd17J7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="609610539"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 11 May 2021 12:20:26 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgXvd-0000qC-FB; Tue, 11 May 2021 19:20:25 +0000
Date: Wed, 12 May 2021 03:19:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 bb4031b8af804244a7e4349d38f6624f68664bd6
Message-ID: <609ad8bf.AiJ29EqkOlC9NEA+%lkp@intel.com>
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
branch HEAD: bb4031b8af804244a7e4349d38f6624f68664bd6  clk: Skip clk provider registration when np is NULL

elapsed time: 728m

configs tested: 189
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
powerpc                    amigaone_defconfig
nios2                            allyesconfig
mips                      malta_kvm_defconfig
arm                           u8500_defconfig
sh                            hp6xx_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     pseries_defconfig
powerpc                  storcenter_defconfig
arm                      footbridge_defconfig
mips                            gpr_defconfig
sh                           se7705_defconfig
mips                        workpad_defconfig
arm                        shmobile_defconfig
arm                  colibri_pxa270_defconfig
arm                         axm55xx_defconfig
m68k                       m5475evb_defconfig
sparc                       sparc64_defconfig
powerpc                   currituck_defconfig
m68k                        mvme147_defconfig
sh                             shx3_defconfig
mips                        qi_lb60_defconfig
parisc                generic-32bit_defconfig
powerpc                     tqm8548_defconfig
powerpc64                           defconfig
powerpc                     ep8248e_defconfig
mips                      bmips_stb_defconfig
mips                         tb0226_defconfig
arm                         hackkit_defconfig
m68k                        m5407c3_defconfig
arm                        multi_v5_defconfig
xtensa                              defconfig
openrisc                    or1ksim_defconfig
mips                     loongson1c_defconfig
arm                        mvebu_v5_defconfig
mips                          ath25_defconfig
sh                            migor_defconfig
mips                     decstation_defconfig
arm                            xcep_defconfig
h8300                     edosk2674_defconfig
powerpc                        fsp2_defconfig
xtensa                           alldefconfig
powerpc                     tqm8560_defconfig
powerpc                     ppa8548_defconfig
arm                        multi_v7_defconfig
arm                       mainstone_defconfig
mips                            ar7_defconfig
powerpc                      bamboo_defconfig
arm                        mvebu_v7_defconfig
sh                               alldefconfig
arc                    vdk_hs38_smp_defconfig
powerpc                       holly_defconfig
sh                        apsh4ad0a_defconfig
mips                       lemote2f_defconfig
xtensa                generic_kc705_defconfig
arc                                 defconfig
arm                             mxs_defconfig
arm                           tegra_defconfig
ia64                             alldefconfig
arm                        spear3xx_defconfig
arm                              alldefconfig
sh                          lboxre2_defconfig
powerpc                       maple_defconfig
xtensa                         virt_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                        edosk7760_defconfig
mips                       capcella_defconfig
powerpc                  mpc866_ads_defconfig
sh                 kfr2r09-romimage_defconfig
riscv                             allnoconfig
s390                                defconfig
m68k                       m5208evb_defconfig
sh                        sh7763rdp_defconfig
sh                             espt_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                    ge_imp3a_defconfig
arc                        vdk_hs38_defconfig
arm                         socfpga_defconfig
m68k                          amiga_defconfig
arm                          pcm027_defconfig
nios2                         3c120_defconfig
arm                           stm32_defconfig
sh                        dreamcast_defconfig
sh                           se7780_defconfig
arm                       imx_v4_v5_defconfig
sh                                  defconfig
sh                          rsk7264_defconfig
sh                          urquell_defconfig
sh                          r7785rp_defconfig
arm                          exynos_defconfig
mips                           ip32_defconfig
powerpc                     pq2fads_defconfig
arm                           sama5_defconfig
powerpc                   lite5200b_defconfig
powerpc                         ps3_defconfig
powerpc                     tqm8541_defconfig
mips                        omega2p_defconfig
powerpc                     tqm8540_defconfig
arm                          imote2_defconfig
arm                      pxa255-idp_defconfig
arm                          iop32x_defconfig
arm                         assabet_defconfig
riscv                               defconfig
powerpc                     kilauea_defconfig
mips                        bcm63xx_defconfig
arm                             pxa_defconfig
powerpc                   bluestone_defconfig
arm                         bcm2835_defconfig
arm                         at91_dt_defconfig
sh                            titan_defconfig
x86_64                           alldefconfig
powerpc                      chrp32_defconfig
arm                      tct_hammer_defconfig
arm                     am200epdkit_defconfig
um                            kunit_defconfig
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
i386                 randconfig-a003-20210511
i386                 randconfig-a001-20210511
i386                 randconfig-a005-20210511
i386                 randconfig-a004-20210511
i386                 randconfig-a002-20210511
i386                 randconfig-a006-20210511
x86_64               randconfig-a012-20210511
x86_64               randconfig-a015-20210511
x86_64               randconfig-a011-20210511
x86_64               randconfig-a013-20210511
x86_64               randconfig-a016-20210511
x86_64               randconfig-a014-20210511
i386                 randconfig-a016-20210511
i386                 randconfig-a014-20210511
i386                 randconfig-a011-20210511
i386                 randconfig-a015-20210511
i386                 randconfig-a012-20210511
i386                 randconfig-a013-20210511
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
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
x86_64               randconfig-a003-20210511
x86_64               randconfig-a004-20210511
x86_64               randconfig-a001-20210511
x86_64               randconfig-a005-20210511
x86_64               randconfig-a002-20210511
x86_64               randconfig-a006-20210511

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
