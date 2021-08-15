Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3FF3EC8F5
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Aug 2021 14:26:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C44744038D;
	Sun, 15 Aug 2021 12:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfK97d_7Nzwo; Sun, 15 Aug 2021 12:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC7B84028C;
	Sun, 15 Aug 2021 12:25:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1B7D1BF232
 for <devel@linuxdriverproject.org>; Sun, 15 Aug 2021 12:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9059280D8C
 for <devel@linuxdriverproject.org>; Sun, 15 Aug 2021 12:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rB2jNLyWUyWi for <devel@linuxdriverproject.org>;
 Sun, 15 Aug 2021 12:25:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F55D80D6D
 for <devel@driverdev.osuosl.org>; Sun, 15 Aug 2021 12:25:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="202895857"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="202895857"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 05:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="678641355"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2021 05:25:39 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mFFCs-000Poq-Q5; Sun, 15 Aug 2021 12:25:38 +0000
Date: Sun, 15 Aug 2021 20:25:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS WITH WARNING
 3b35f2a6a625126c57475aa56b5357d8e80b404c
Message-ID: <611907a6.aMYOV9pNpC/lNmv+%lkp@intel.com>
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
branch HEAD: 3b35f2a6a625126c57475aa56b5357d8e80b404c  bitmap: extend comment to bitmap_print_bitmask/list_to_buf

Warning reports:

https://lore.kernel.org/lkml/202108141955.XlQXw3y4-lkp@intel.com

Warning in current branch:

WARNING: modpost: vmlinux.o(.text.unlikely+0x156c): Section mismatch in reference from the function bitmap_equal() to the variable .init.data:initcall_level_names

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- xtensa-randconfig-r004-20210814
    `-- Section-mismatch-in-reference-from-the-function-bitmap_equal()-to-the-variable-.init.data:initcall_level_names

elapsed time: 3092m

configs tested: 271
configs skipped: 4

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210814
i386                 randconfig-c001-20210812
i386                 randconfig-c001-20210815
i386                 randconfig-c001-20210813
powerpc                     mpc5200_defconfig
m68k                          hp300_defconfig
sh                        edosk7760_defconfig
powerpc                     asp8347_defconfig
arm                     am200epdkit_defconfig
powerpc                     tqm8541_defconfig
m68k                          amiga_defconfig
mips                        bcm47xx_defconfig
xtensa                           alldefconfig
sh                              ul2_defconfig
powerpc                 mpc8540_ads_defconfig
ia64                                defconfig
arm                       imx_v6_v7_defconfig
mips                           rs90_defconfig
parisc                generic-32bit_defconfig
mips                            ar7_defconfig
arm64                            alldefconfig
arm                            pleb_defconfig
powerpc                       ppc64_defconfig
sh                   sh7770_generic_defconfig
openrisc                  or1klitex_defconfig
m68k                        m5407c3_defconfig
powerpc                    klondike_defconfig
mips                     loongson1c_defconfig
arm                          ep93xx_defconfig
arm                          iop32x_defconfig
h8300                       h8s-sim_defconfig
riscv                    nommu_k210_defconfig
arm                        clps711x_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                  maltasmvp_eva_defconfig
mips                         bigsur_defconfig
powerpc64                           defconfig
powerpc                        cell_defconfig
arm                         at91_dt_defconfig
powerpc                      mgcoge_defconfig
m68k                          sun3x_defconfig
xtensa                          iss_defconfig
arm                      jornada720_defconfig
arm                     davinci_all_defconfig
mips                        workpad_defconfig
arm                       omap2plus_defconfig
powerpc                     pq2fads_defconfig
h8300                            alldefconfig
mips                     cu1830-neo_defconfig
sparc                            alldefconfig
arm                          lpd270_defconfig
arm                          simpad_defconfig
m68k                        stmark2_defconfig
sh                          lboxre2_defconfig
powerpc                     tqm5200_defconfig
powerpc                      walnut_defconfig
mips                      bmips_stb_defconfig
sh                           se7619_defconfig
arm                         orion5x_defconfig
xtensa                           allyesconfig
arm                       imx_v4_v5_defconfig
powerpc                      ep88xc_defconfig
powerpc                     rainier_defconfig
sh                            shmin_defconfig
h8300                               defconfig
sh                          rsk7269_defconfig
ia64                          tiger_defconfig
arm                             rpc_defconfig
powerpc                      ppc40x_defconfig
powerpc                      ppc6xx_defconfig
powerpc                 mpc837x_mds_defconfig
ia64                             alldefconfig
sh                        edosk7705_defconfig
sh                           se7750_defconfig
powerpc                    socrates_defconfig
riscv                             allnoconfig
powerpc                     ksi8560_defconfig
sh                               alldefconfig
arm                         s3c6400_defconfig
arm                             mxs_defconfig
sparc                       sparc32_defconfig
arm                        multi_v5_defconfig
powerpc                      makalu_defconfig
powerpc                       maple_defconfig
powerpc                         wii_defconfig
i386                                defconfig
powerpc                 mpc8272_ads_defconfig
m68k                          atari_defconfig
arm                         s5pv210_defconfig
powerpc                     tqm8560_defconfig
h8300                            allyesconfig
sh                           se7206_defconfig
sh                                  defconfig
arm                           corgi_defconfig
xtensa                  audio_kc705_defconfig
powerpc                      pasemi_defconfig
mips                         db1xxx_defconfig
arm                           stm32_defconfig
arm                         mv78xx0_defconfig
powerpc                        icon_defconfig
arm                       aspeed_g4_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                       lemote2f_defconfig
mips                          rm200_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
sh                          urquell_defconfig
mips                     decstation_defconfig
arm                          exynos_defconfig
riscv                    nommu_virt_defconfig
sh                        sh7785lcr_defconfig
sh                           se7705_defconfig
mips                      pic32mzda_defconfig
arm                            hisi_defconfig
openrisc                    or1ksim_defconfig
powerpc                     redwood_defconfig
mips                         tb0226_defconfig
mips                           ip27_defconfig
powerpc                      obs600_defconfig
m68k                       bvme6000_defconfig
riscv                               defconfig
arm                         axm55xx_defconfig
powerpc                    amigaone_defconfig
mips                  decstation_64_defconfig
powerpc                 canyonlands_defconfig
arm                          pxa3xx_defconfig
mips                         cobalt_defconfig
mips                        nlm_xlp_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                         tb0219_defconfig
arm                      tct_hammer_defconfig
um                             i386_defconfig
arm                      integrator_defconfig
arm                          pxa910_defconfig
sh                          kfr2r09_defconfig
powerpc                     ep8248e_defconfig
arm                       spear13xx_defconfig
arm                         lpc18xx_defconfig
arm                        cerfcube_defconfig
sh                           sh2007_defconfig
powerpc                    ge_imp3a_defconfig
xtensa                         virt_defconfig
arm                            mmp2_defconfig
m68k                        mvme147_defconfig
openrisc                 simple_smp_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210812
x86_64               randconfig-a004-20210812
x86_64               randconfig-a003-20210812
x86_64               randconfig-a005-20210812
x86_64               randconfig-a002-20210812
x86_64               randconfig-a001-20210812
x86_64               randconfig-a004-20210814
x86_64               randconfig-a006-20210814
x86_64               randconfig-a003-20210814
x86_64               randconfig-a001-20210814
x86_64               randconfig-a005-20210814
x86_64               randconfig-a002-20210814
i386                 randconfig-a004-20210814
i386                 randconfig-a002-20210814
i386                 randconfig-a001-20210814
i386                 randconfig-a003-20210814
i386                 randconfig-a006-20210814
i386                 randconfig-a005-20210814
i386                 randconfig-a004-20210815
i386                 randconfig-a001-20210815
i386                 randconfig-a002-20210815
i386                 randconfig-a003-20210815
i386                 randconfig-a006-20210815
i386                 randconfig-a005-20210815
x86_64               randconfig-a011-20210813
x86_64               randconfig-a013-20210813
x86_64               randconfig-a012-20210813
x86_64               randconfig-a016-20210813
x86_64               randconfig-a015-20210813
x86_64               randconfig-a014-20210813
x86_64               randconfig-a013-20210815
x86_64               randconfig-a011-20210815
x86_64               randconfig-a016-20210815
x86_64               randconfig-a012-20210815
x86_64               randconfig-a014-20210815
x86_64               randconfig-a015-20210815
x86_64               randconfig-a013-20210814
x86_64               randconfig-a011-20210814
x86_64               randconfig-a016-20210814
x86_64               randconfig-a012-20210814
x86_64               randconfig-a014-20210814
x86_64               randconfig-a015-20210814
i386                 randconfig-a011-20210815
i386                 randconfig-a015-20210815
i386                 randconfig-a014-20210815
i386                 randconfig-a013-20210815
i386                 randconfig-a016-20210815
i386                 randconfig-a012-20210815
i386                 randconfig-a011-20210813
i386                 randconfig-a015-20210813
i386                 randconfig-a014-20210813
i386                 randconfig-a013-20210813
i386                 randconfig-a016-20210813
i386                 randconfig-a012-20210813
i386                 randconfig-a011-20210814
i386                 randconfig-a015-20210814
i386                 randconfig-a013-20210814
i386                 randconfig-a014-20210814
i386                 randconfig-a016-20210814
i386                 randconfig-a012-20210814
riscv                            allyesconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210813
x86_64               randconfig-c001-20210814
x86_64               randconfig-c001-20210815
x86_64               randconfig-a004-20210815
x86_64               randconfig-a006-20210815
x86_64               randconfig-a003-20210815
x86_64               randconfig-a001-20210815
x86_64               randconfig-a002-20210815
x86_64               randconfig-a005-20210815
x86_64               randconfig-a006-20210813
x86_64               randconfig-a004-20210813
x86_64               randconfig-a003-20210813
x86_64               randconfig-a002-20210813
x86_64               randconfig-a005-20210813
x86_64               randconfig-a001-20210813
x86_64               randconfig-a013-20210814
x86_64               randconfig-a011-20210814
x86_64               randconfig-a016-20210814
x86_64               randconfig-a012-20210814
x86_64               randconfig-a014-20210814
x86_64               randconfig-a015-20210814
x86_64               randconfig-a011-20210812
x86_64               randconfig-a013-20210812
x86_64               randconfig-a012-20210812
x86_64               randconfig-a016-20210812
x86_64               randconfig-a015-20210812
x86_64               randconfig-a014-20210812

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
