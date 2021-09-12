Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CB3407BFB
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Sep 2021 07:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F1B8415F3;
	Sun, 12 Sep 2021 05:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1506DNyTF0b; Sun, 12 Sep 2021 05:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7373C415EB;
	Sun, 12 Sep 2021 05:45:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 948AF1BF5DC
 for <devel@linuxdriverproject.org>; Sun, 12 Sep 2021 05:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83DB4608DA
 for <devel@linuxdriverproject.org>; Sun, 12 Sep 2021 05:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qG_3_q3rB0kk for <devel@linuxdriverproject.org>;
 Sun, 12 Sep 2021 05:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D78F606C9
 for <devel@driverdev.osuosl.org>; Sun, 12 Sep 2021 05:45:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10104"; a="221069751"
X-IronPort-AV: E=Sophos;i="5.85,285,1624345200"; d="scan'208";a="221069751"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2021 22:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,285,1624345200"; d="scan'208";a="527179642"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Sep 2021 22:45:44 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mPIJD-0006Iy-K2; Sun, 12 Sep 2021 05:45:43 +0000
Date: Sun, 12 Sep 2021 13:45:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 f1d570ef83c04ea60d22bbeafac5c053e7d92011
Message-ID: <613d93ed.2wvrds0G6GzdwdCL%lkp@intel.com>
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
branch HEAD: f1d570ef83c04ea60d22bbeafac5c053e7d92011  staging: r8188eu: remove rtw_IOL_append_LLT_cmd()

elapsed time: 2286m

configs tested: 205
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
powerpc              randconfig-c003-20210911
i386                 randconfig-c001-20210911
i386                 randconfig-c001-20210910
i386                 randconfig-c001-20210912
xtensa                    xip_kc705_defconfig
mips                        bcm47xx_defconfig
powerpc                     tqm8548_defconfig
arm                      jornada720_defconfig
arm                          imote2_defconfig
powerpc                   bluestone_defconfig
um                             i386_defconfig
arm                         s5pv210_defconfig
powerpc                 mpc837x_rdb_defconfig
i386                             allyesconfig
openrisc                  or1klitex_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                     sequoia_defconfig
arm                      integrator_defconfig
powerpc                     akebono_defconfig
nios2                         3c120_defconfig
sh                         ap325rxa_defconfig
m68k                          atari_defconfig
h8300                    h8300h-sim_defconfig
m68k                          multi_defconfig
arm                         s3c6400_defconfig
xtensa                    smp_lx200_defconfig
powerpc                    gamecube_defconfig
sh                            migor_defconfig
microblaze                      mmu_defconfig
arm                         at91_dt_defconfig
nios2                         10m50_defconfig
powerpc                     ppa8548_defconfig
mips                        nlm_xlp_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     mpc5200_defconfig
arm                        mini2440_defconfig
arm                        cerfcube_defconfig
mips                         tb0226_defconfig
sh                            hp6xx_defconfig
sh                          rsk7264_defconfig
arc                    vdk_hs38_smp_defconfig
arm                           stm32_defconfig
arm                         assabet_defconfig
mips                       rbtx49xx_defconfig
s390                       zfcpdump_defconfig
mips                      pic32mzda_defconfig
mips                         db1xxx_defconfig
xtensa                  cadence_csp_defconfig
arm                        multi_v7_defconfig
m68k                       m5475evb_defconfig
powerpc                          g5_defconfig
arm                         lubbock_defconfig
sh                   sh7770_generic_defconfig
arm                          pxa910_defconfig
mips                         tb0287_defconfig
h8300                       h8s-sim_defconfig
mips                           ip27_defconfig
powerpc                     ksi8560_defconfig
sh                           se7712_defconfig
powerpc                     tqm8541_defconfig
m68k                             alldefconfig
powerpc                   microwatt_defconfig
mips                          ath25_defconfig
arm                            zeus_defconfig
arm                      tct_hammer_defconfig
arm                        magician_defconfig
powerpc                     tqm8540_defconfig
microblaze                          defconfig
arm                  colibri_pxa300_defconfig
arm                        clps711x_defconfig
s390                             alldefconfig
ia64                      gensparse_defconfig
arm                         lpc18xx_defconfig
powerpc                      bamboo_defconfig
um                                  defconfig
arm                          badge4_defconfig
ia64                             alldefconfig
mips                      maltasmvp_defconfig
arm                          collie_defconfig
powerpc                    adder875_defconfig
parisc                              defconfig
sh                          r7785rp_defconfig
arm                          ep93xx_defconfig
arm                           h5000_defconfig
mips                        workpad_defconfig
arm                         palmz72_defconfig
arm                       versatile_defconfig
x86_64               randconfig-c001-20210912
arm                  randconfig-c002-20210912
x86_64               randconfig-c001-20210910
arm                  randconfig-c002-20210910
x86_64               randconfig-c001-20210911
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
x86_64               randconfig-a002-20210911
x86_64               randconfig-a003-20210911
x86_64               randconfig-a004-20210911
x86_64               randconfig-a006-20210911
x86_64               randconfig-a005-20210911
x86_64               randconfig-a001-20210911
i386                 randconfig-a004-20210911
i386                 randconfig-a005-20210911
i386                 randconfig-a002-20210911
i386                 randconfig-a006-20210911
i386                 randconfig-a001-20210911
i386                 randconfig-a003-20210911
x86_64               randconfig-a013-20210910
x86_64               randconfig-a016-20210910
x86_64               randconfig-a012-20210910
x86_64               randconfig-a011-20210910
x86_64               randconfig-a014-20210910
x86_64               randconfig-a015-20210910
x86_64               randconfig-a016-20210912
x86_64               randconfig-a013-20210912
x86_64               randconfig-a012-20210912
x86_64               randconfig-a011-20210912
x86_64               randconfig-a014-20210912
x86_64               randconfig-a015-20210912
i386                 randconfig-a016-20210910
i386                 randconfig-a011-20210910
i386                 randconfig-a012-20210910
i386                 randconfig-a013-20210910
i386                 randconfig-a014-20210910
riscv                randconfig-r042-20210910
s390                 randconfig-r044-20210910
arc                  randconfig-r043-20210910
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-c007-20210910
mips                 randconfig-c004-20210910
powerpc              randconfig-c003-20210910
i386                 randconfig-c001-20210910
s390                 randconfig-c005-20210910
x86_64               randconfig-c007-20210911
mips                 randconfig-c004-20210911
powerpc              randconfig-c003-20210911
i386                 randconfig-c001-20210911
s390                 randconfig-c005-20210911
x86_64               randconfig-a002-20210910
x86_64               randconfig-a003-20210910
x86_64               randconfig-a004-20210910
x86_64               randconfig-a006-20210910
x86_64               randconfig-a001-20210910
x86_64               randconfig-a005-20210910
i386                 randconfig-a004-20210910
i386                 randconfig-a005-20210910
i386                 randconfig-a002-20210910
i386                 randconfig-a006-20210910
i386                 randconfig-a001-20210910
i386                 randconfig-a003-20210910
x86_64               randconfig-a013-20210911
x86_64               randconfig-a016-20210911
x86_64               randconfig-a012-20210911
x86_64               randconfig-a011-20210911
x86_64               randconfig-a014-20210911
x86_64               randconfig-a015-20210911
i386                 randconfig-a016-20210911
i386                 randconfig-a011-20210911
i386                 randconfig-a015-20210911
i386                 randconfig-a012-20210911
i386                 randconfig-a013-20210911
i386                 randconfig-a014-20210911
hexagon              randconfig-r045-20210910
hexagon              randconfig-r041-20210910

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
