Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A95E3FF5C7
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Sep 2021 23:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF5AF8367B;
	Thu,  2 Sep 2021 21:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQ7rImKg1ydg; Thu,  2 Sep 2021 21:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8384182965;
	Thu,  2 Sep 2021 21:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 018BA1BF5DC
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 21:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4F1A80E94
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 21:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id haxaR_MLEqLK for <devel@linuxdriverproject.org>;
 Thu,  2 Sep 2021 21:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA52280E8F
 for <devel@driverdev.osuosl.org>; Thu,  2 Sep 2021 21:45:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="241537535"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="241537535"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 14:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="521363765"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 02 Sep 2021 14:45:44 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mLuWl-0009JX-C4; Thu, 02 Sep 2021 21:45:43 +0000
Date: Fri, 03 Sep 2021 05:45:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 9b8b68ae4356029f9672c2cfba24f3674a64fcfd
Message-ID: <613145fe.Lb382cC/qfptXDEK%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 9b8b68ae4356029f9672c2cfba24f3674a64fcfd  staging: r8188eu: remove unnecessary parentheses

elapsed time: 726m

configs tested: 224
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210831
i386                 randconfig-c001-20210903
i386                 randconfig-c001-20210902
h8300                            allyesconfig
powerpc                 mpc832x_rdb_defconfig
arc                           tb10x_defconfig
mips                      loongson3_defconfig
openrisc                 simple_smp_defconfig
powerpc                     kilauea_defconfig
arm                         shannon_defconfig
powerpc                    mvme5100_defconfig
powerpc                       ppc64_defconfig
m68k                        m5272c3_defconfig
xtensa                              defconfig
um                                  defconfig
m68k                         apollo_defconfig
arm                           h3600_defconfig
powerpc                    klondike_defconfig
sh                            titan_defconfig
powerpc                      ppc40x_defconfig
riscv                    nommu_k210_defconfig
powerpc                 mpc8540_ads_defconfig
sh                          sdk7786_defconfig
arm                            xcep_defconfig
arm                          ep93xx_defconfig
arc                          axs101_defconfig
powerpc                   motionpro_defconfig
mips                          malta_defconfig
mips                          ath25_defconfig
mips                      fuloong2e_defconfig
s390                             alldefconfig
powerpc                       eiger_defconfig
sh                        dreamcast_defconfig
arm                           viper_defconfig
openrisc                            defconfig
arm                     am200epdkit_defconfig
powerpc                     ppa8548_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         lpc18xx_defconfig
x86_64                           alldefconfig
arm                      integrator_defconfig
arm                         cm_x300_defconfig
arm                           corgi_defconfig
mips                           jazz_defconfig
powerpc                      acadia_defconfig
powerpc                   microwatt_defconfig
arm                       multi_v4t_defconfig
sh                            hp6xx_defconfig
arm                          moxart_defconfig
sh                        edosk7760_defconfig
riscv                            alldefconfig
arm                          pxa168_defconfig
sh                        edosk7705_defconfig
mips                   sb1250_swarm_defconfig
powerpc                      pasemi_defconfig
powerpc                      obs600_defconfig
arm                           sama7_defconfig
h8300                            alldefconfig
nios2                            alldefconfig
arm                         assabet_defconfig
arm                           tegra_defconfig
arm                        trizeps4_defconfig
x86_64                           allyesconfig
arm                         at91_dt_defconfig
m68k                       bvme6000_defconfig
csky                                defconfig
x86_64                            allnoconfig
mips                      maltaaprp_defconfig
powerpc                      tqm8xx_defconfig
xtensa                generic_kc705_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                        sh7785lcr_defconfig
powerpc                      pcm030_defconfig
sh                   sh7770_generic_defconfig
arm                         lpc32xx_defconfig
xtensa                       common_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                      rts7751r2d1_defconfig
powerpc                     kmeter1_defconfig
mips                         cobalt_defconfig
arm                     davinci_all_defconfig
mips                           gcw0_defconfig
sh                           se7724_defconfig
arm                          pcm027_defconfig
arm                         s3c6400_defconfig
sh                             sh03_defconfig
m68k                          multi_defconfig
powerpc                     tqm5200_defconfig
riscv                    nommu_virt_defconfig
arm                           h5000_defconfig
arc                              alldefconfig
sh                              ul2_defconfig
arc                        vdk_hs38_defconfig
sparc                       sparc32_defconfig
mips                       lemote2f_defconfig
arm                     eseries_pxa_defconfig
powerpc                     redwood_defconfig
arm                         s3c2410_defconfig
sh                           se7619_defconfig
nios2                            allyesconfig
arm                         axm55xx_defconfig
arm                       mainstone_defconfig
mips                          ath79_defconfig
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
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210831
x86_64               randconfig-a001-20210831
x86_64               randconfig-a003-20210831
x86_64               randconfig-a002-20210831
x86_64               randconfig-a004-20210831
x86_64               randconfig-a006-20210831
i386                 randconfig-a005-20210831
i386                 randconfig-a002-20210831
i386                 randconfig-a003-20210831
i386                 randconfig-a006-20210831
i386                 randconfig-a004-20210831
i386                 randconfig-a001-20210831
i386                 randconfig-a005-20210902
i386                 randconfig-a004-20210902
i386                 randconfig-a006-20210902
i386                 randconfig-a002-20210902
i386                 randconfig-a001-20210902
i386                 randconfig-a003-20210902
x86_64               randconfig-a016-20210903
x86_64               randconfig-a011-20210903
x86_64               randconfig-a012-20210903
x86_64               randconfig-a015-20210903
x86_64               randconfig-a014-20210903
x86_64               randconfig-a013-20210903
i386                 randconfig-a012-20210903
i386                 randconfig-a015-20210903
i386                 randconfig-a011-20210903
i386                 randconfig-a013-20210903
i386                 randconfig-a014-20210903
i386                 randconfig-a016-20210903
arc                  randconfig-r043-20210902
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
s390                 randconfig-c005-20210901
mips                 randconfig-c004-20210901
x86_64               randconfig-c007-20210901
powerpc              randconfig-c003-20210901
i386                 randconfig-c001-20210901
arm                  randconfig-c002-20210901
riscv                randconfig-c006-20210901
i386                 randconfig-c001-20210831
s390                 randconfig-c005-20210831
riscv                randconfig-c006-20210831
powerpc              randconfig-c003-20210831
mips                 randconfig-c004-20210831
arm                  randconfig-c002-20210831
x86_64               randconfig-c007-20210831
x86_64               randconfig-a004-20210903
x86_64               randconfig-a006-20210903
x86_64               randconfig-a003-20210903
x86_64               randconfig-a005-20210903
x86_64               randconfig-a001-20210903
x86_64               randconfig-a002-20210903
i386                 randconfig-a005-20210903
i386                 randconfig-a004-20210903
i386                 randconfig-a006-20210903
i386                 randconfig-a002-20210903
i386                 randconfig-a001-20210903
i386                 randconfig-a003-20210903
x86_64               randconfig-a014-20210831
x86_64               randconfig-a015-20210831
x86_64               randconfig-a013-20210831
x86_64               randconfig-a016-20210831
x86_64               randconfig-a012-20210831
x86_64               randconfig-a011-20210831
i386                 randconfig-a016-20210831
i386                 randconfig-a011-20210831
i386                 randconfig-a015-20210831
i386                 randconfig-a014-20210831
i386                 randconfig-a012-20210831
i386                 randconfig-a013-20210831
hexagon              randconfig-r045-20210901
hexagon              randconfig-r041-20210901
hexagon              randconfig-r045-20210903
hexagon              randconfig-r041-20210903
riscv                randconfig-r042-20210902
hexagon              randconfig-r045-20210902
s390                 randconfig-r044-20210902
hexagon              randconfig-r041-20210902

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
