Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 238BE2D8AA4
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 00:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C3E4A2E100;
	Sat, 12 Dec 2020 23:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ry6vUuBZRKS5; Sat, 12 Dec 2020 23:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A827D20418;
	Sat, 12 Dec 2020 23:37:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5DF31BF3F2
 for <devel@linuxdriverproject.org>; Sat, 12 Dec 2020 23:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B885A203D7
 for <devel@linuxdriverproject.org>; Sat, 12 Dec 2020 23:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9sfi+1Ta1-5U for <devel@linuxdriverproject.org>;
 Sat, 12 Dec 2020 23:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id D475A2001F
 for <devel@driverdev.osuosl.org>; Sat, 12 Dec 2020 23:37:00 +0000 (UTC)
IronPort-SDR: WT6W5mNHee+Gox+/G8bn5jSywhHUe27CjntFSdFutotaq0+qdQOtxpn7peYO44WXsdMADN0z9O
 lGsAyiu6dx7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9833"; a="173808881"
X-IronPort-AV: E=Sophos;i="5.78,415,1599548400"; d="scan'208";a="173808881"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2020 15:37:00 -0800
IronPort-SDR: 3Im5hAx/TSbU0n1jl22Q3gcWpoEEvDa4oU+tWEssZzvGQ9D+lzjqUmWmMAFPpiSem7iwlBEtS8
 EMK6hBpOzxhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,415,1599548400"; d="scan'208";a="366302119"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 12 Dec 2020 15:36:58 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1koERe-0001ZY-2e; Sat, 12 Dec 2020 23:36:58 +0000
Date: Sun, 13 Dec 2020 07:36:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 2ab695aa8eb8f3226f68a2b91fc6103b56fcb57d
Message-ID: <5fd553ec.K/SjVK8kl3Oi1ybN%lkp@intel.com>
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
branch HEAD: 2ab695aa8eb8f3226f68a2b91fc6103b56fcb57d  ACPI: Use fwnode_init() to set up fwnode

elapsed time: 721m

configs tested: 232
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      tqm8xx_defconfig
sh                                  defconfig
parisc                              defconfig
m68k                        m5407c3_defconfig
arm                        vexpress_defconfig
sh                             shx3_defconfig
openrisc                            defconfig
arm                            pleb_defconfig
arm                          collie_defconfig
arm                           sunxi_defconfig
parisc                generic-32bit_defconfig
m68k                       m5275evb_defconfig
arm                          exynos_defconfig
sh                           se7343_defconfig
arm                      integrator_defconfig
nios2                            alldefconfig
sh                          polaris_defconfig
m68k                        mvme16x_defconfig
mips                        qi_lb60_defconfig
arm                           tegra_defconfig
arm                        mvebu_v5_defconfig
powerpc                         wii_defconfig
arm                        cerfcube_defconfig
mips                        nlm_xlr_defconfig
arm                        spear3xx_defconfig
arm                        spear6xx_defconfig
arm                          iop32x_defconfig
sh                          lboxre2_defconfig
nds32                            alldefconfig
powerpc                    amigaone_defconfig
mips                      fuloong2e_defconfig
mips                      bmips_stb_defconfig
arm                      footbridge_defconfig
mips                          ath79_defconfig
powerpc                     tqm8541_defconfig
sh                          landisk_defconfig
powerpc                       holly_defconfig
mips                          rm200_defconfig
sh                               j2_defconfig
powerpc                     pseries_defconfig
mips                        bcm63xx_defconfig
mips                        nlm_xlp_defconfig
powerpc                 mpc832x_rdb_defconfig
xtensa                    smp_lx200_defconfig
arm                        mvebu_v7_defconfig
powerpc                         ps3_defconfig
mips                           ip28_defconfig
arm                           stm32_defconfig
m68k                           sun3_defconfig
arm                        multi_v7_defconfig
arm                         socfpga_defconfig
arm                          moxart_defconfig
arc                                 defconfig
arm                         s3c6400_defconfig
mips                     cu1000-neo_defconfig
powerpc                  mpc885_ads_defconfig
arm                     davinci_all_defconfig
sh                        edosk7705_defconfig
arm                       aspeed_g4_defconfig
arc                         haps_hs_defconfig
powerpc                        warp_defconfig
sh                           se7724_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     tqm8540_defconfig
mips                      loongson3_defconfig
arm                          simpad_defconfig
nios2                         10m50_defconfig
parisc                generic-64bit_defconfig
powerpc                      bamboo_defconfig
powerpc                     ppa8548_defconfig
arm                          gemini_defconfig
sh                             sh03_defconfig
powerpc                      pcm030_defconfig
m68k                          atari_defconfig
powerpc                       ebony_defconfig
x86_64                              defconfig
mips                      maltasmvp_defconfig
alpha                            allyesconfig
parisc                           alldefconfig
ia64                                defconfig
powerpc                    klondike_defconfig
powerpc                 mpc8560_ads_defconfig
arm                         assabet_defconfig
mips                           xway_defconfig
powerpc                      cm5200_defconfig
mips                      pistachio_defconfig
mips                      maltaaprp_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                   currituck_defconfig
arm                          pxa910_defconfig
arm                          imote2_defconfig
s390                          debug_defconfig
powerpc                    ge_imp3a_defconfig
arm                         lubbock_defconfig
powerpc                      ep88xc_defconfig
riscv                               defconfig
sh                     sh7710voipgw_defconfig
mips                       lemote2f_defconfig
sh                               allmodconfig
mips                           rs90_defconfig
sh                        apsh4ad0a_defconfig
riscv                             allnoconfig
powerpc                 mpc8315_rdb_defconfig
xtensa                         virt_defconfig
xtensa                generic_kc705_defconfig
powerpc                          g5_defconfig
m68k                       bvme6000_defconfig
mips                         tb0287_defconfig
mips                        maltaup_defconfig
ia64                      gensparse_defconfig
powerpc                     powernv_defconfig
sh                        sh7763rdp_defconfig
arm                        realview_defconfig
arm                         mv78xx0_defconfig
sh                  sh7785lcr_32bit_defconfig
xtensa                           allyesconfig
mips                         rt305x_defconfig
h8300                       h8s-sim_defconfig
m68k                          amiga_defconfig
ia64                          tiger_defconfig
c6x                                 defconfig
sh                   secureedge5410_defconfig
sh                            hp6xx_defconfig
m68k                                defconfig
nios2                         3c120_defconfig
sh                          urquell_defconfig
mips                           ip27_defconfig
riscv                    nommu_virt_defconfig
sparc64                          alldefconfig
arm                       multi_v4t_defconfig
sh                         ecovec24_defconfig
csky                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
h8300                            allyesconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
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
x86_64               randconfig-a003-20201213
x86_64               randconfig-a006-20201213
x86_64               randconfig-a002-20201213
x86_64               randconfig-a005-20201213
x86_64               randconfig-a004-20201213
x86_64               randconfig-a001-20201213
i386                 randconfig-a001-20201212
i386                 randconfig-a004-20201212
i386                 randconfig-a003-20201212
i386                 randconfig-a002-20201212
i386                 randconfig-a005-20201212
i386                 randconfig-a006-20201212
i386                 randconfig-a001-20201213
i386                 randconfig-a004-20201213
i386                 randconfig-a003-20201213
i386                 randconfig-a002-20201213
i386                 randconfig-a005-20201213
i386                 randconfig-a006-20201213
i386                 randconfig-a004-20201209
i386                 randconfig-a005-20201209
i386                 randconfig-a001-20201209
i386                 randconfig-a002-20201209
i386                 randconfig-a006-20201209
i386                 randconfig-a003-20201209
x86_64               randconfig-a016-20201212
x86_64               randconfig-a013-20201212
x86_64               randconfig-a015-20201212
x86_64               randconfig-a014-20201212
x86_64               randconfig-a011-20201212
x86_64               randconfig-a012-20201212
i386                 randconfig-a014-20201212
i386                 randconfig-a013-20201212
i386                 randconfig-a012-20201212
i386                 randconfig-a011-20201212
i386                 randconfig-a016-20201212
i386                 randconfig-a015-20201212
i386                 randconfig-a014-20201213
i386                 randconfig-a013-20201213
i386                 randconfig-a012-20201213
i386                 randconfig-a011-20201213
i386                 randconfig-a016-20201213
i386                 randconfig-a015-20201213
i386                 randconfig-a013-20201209
i386                 randconfig-a014-20201209
i386                 randconfig-a011-20201209
i386                 randconfig-a015-20201209
i386                 randconfig-a012-20201209
i386                 randconfig-a016-20201209
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20201212
x86_64               randconfig-a006-20201212
x86_64               randconfig-a002-20201212
x86_64               randconfig-a005-20201212
x86_64               randconfig-a004-20201212
x86_64               randconfig-a001-20201212
x86_64               randconfig-a016-20201213
x86_64               randconfig-a012-20201213
x86_64               randconfig-a013-20201213
x86_64               randconfig-a015-20201213
x86_64               randconfig-a014-20201213
x86_64               randconfig-a011-20201213

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
