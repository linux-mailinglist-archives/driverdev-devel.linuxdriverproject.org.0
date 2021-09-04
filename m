Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1529400CE0
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Sep 2021 22:04:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D083180E2C;
	Sat,  4 Sep 2021 20:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDsWyeCzP2Yw; Sat,  4 Sep 2021 20:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D79C080DE5;
	Sat,  4 Sep 2021 20:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65C971BF31B
 for <devel@linuxdriverproject.org>; Sat,  4 Sep 2021 20:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55C5B6064F
 for <devel@linuxdriverproject.org>; Sat,  4 Sep 2021 20:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tzMveHkl57RA for <devel@linuxdriverproject.org>;
 Sat,  4 Sep 2021 20:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E03E605EF
 for <devel@driverdev.osuosl.org>; Sat,  4 Sep 2021 20:04:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10097"; a="206906284"
X-IronPort-AV: E=Sophos;i="5.85,268,1624345200"; d="scan'208";a="206906284"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2021 13:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,268,1624345200"; d="scan'208";a="544744138"
Received: from lkp-server01.sh.intel.com (HELO 2115029a3e5c) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2021 13:04:13 -0700
Received: from kbuild by 2115029a3e5c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mMbtc-0001uv-CZ; Sat, 04 Sep 2021 20:04:12 +0000
Date: Sun, 05 Sep 2021 04:03:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 fde4862d1ac7100028da4371d92454fec6cf3f4f
Message-ID: <6133d123.JrfIpJozWsm6XeV8%lkp@intel.com>
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
branch HEAD: fde4862d1ac7100028da4371d92454fec6cf3f4f  staging: r8188eu: remove useless memset

elapsed time: 721m

configs tested: 170
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210904
m68k                       m5208evb_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                     rainier_defconfig
m68k                        m5272c3_defconfig
arm                          pxa910_defconfig
sh                           se7343_defconfig
um                               alldefconfig
powerpc                     kilauea_defconfig
powerpc                     tqm8541_defconfig
powerpc                      ep88xc_defconfig
powerpc                   lite5200b_defconfig
arc                        nsimosci_defconfig
sh                          rsk7201_defconfig
arm                         axm55xx_defconfig
powerpc                 mpc834x_itx_defconfig
mips                         tb0226_defconfig
mips                        bcm63xx_defconfig
arm                         socfpga_defconfig
arm                        spear6xx_defconfig
powerpc                 mpc8560_ads_defconfig
m68k                         amcore_defconfig
sparc                       sparc64_defconfig
powerpc                   motionpro_defconfig
mips                            ar7_defconfig
xtensa                              defconfig
arm                          simpad_defconfig
arm                        trizeps4_defconfig
riscv                    nommu_k210_defconfig
sh                             sh03_defconfig
powerpc                        fsp2_defconfig
mips                 decstation_r4k_defconfig
riscv                            allmodconfig
h8300                     edosk2674_defconfig
powerpc                      pasemi_defconfig
s390                             allmodconfig
powerpc                     mpc83xx_defconfig
powerpc                      makalu_defconfig
sh                          urquell_defconfig
microblaze                      mmu_defconfig
xtensa                  nommu_kc705_defconfig
sh                          rsk7203_defconfig
arc                 nsimosci_hs_smp_defconfig
ia64                        generic_defconfig
powerpc                   microwatt_defconfig
h8300                               defconfig
mips                         rt305x_defconfig
mips                        maltaup_defconfig
arm                         s5pv210_defconfig
arm                           viper_defconfig
nds32                            alldefconfig
powerpc                          g5_defconfig
arm                         lubbock_defconfig
h8300                    h8300h-sim_defconfig
openrisc                 simple_smp_defconfig
arm                       imx_v4_v5_defconfig
arc                     haps_hs_smp_defconfig
arm                          ep93xx_defconfig
mips                        nlm_xlr_defconfig
sh                           se7722_defconfig
arm                         at91_dt_defconfig
sh                ecovec24-romimage_defconfig
m68k                       bvme6000_defconfig
arm                        keystone_defconfig
xtensa                  cadence_csp_defconfig
mips                  cavium_octeon_defconfig
powerpc                    amigaone_defconfig
powerpc                   currituck_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
powerpc                      mgcoge_defconfig
sparc64                          alldefconfig
arm                            mps2_defconfig
powerpc                     akebono_defconfig
sh                         microdev_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc85xx_cds_defconfig
nios2                            alldefconfig
mips                     loongson2k_defconfig
powerpc                    adder875_defconfig
arm                       imx_v6_v7_defconfig
sh                   sh7770_generic_defconfig
mips                        nlm_xlp_defconfig
arm                  randconfig-c002-20210904
i386                 randconfig-c001-20210905
arm                  randconfig-c002-20210905
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
x86_64               randconfig-a006-20210904
x86_64               randconfig-a004-20210904
x86_64               randconfig-a003-20210904
x86_64               randconfig-a005-20210904
x86_64               randconfig-a001-20210904
x86_64               randconfig-a002-20210904
i386                 randconfig-a005-20210904
i386                 randconfig-a004-20210904
i386                 randconfig-a006-20210904
i386                 randconfig-a002-20210904
i386                 randconfig-a003-20210904
i386                 randconfig-a001-20210904
arc                  randconfig-r043-20210904
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
s390                 randconfig-c005-20210904
mips                 randconfig-c004-20210904
powerpc              randconfig-c003-20210904
x86_64               randconfig-c007-20210904
i386                 randconfig-c001-20210904
arm                  randconfig-c002-20210904
riscv                randconfig-c006-20210904
x86_64               randconfig-a011-20210904
x86_64               randconfig-a016-20210904
x86_64               randconfig-a012-20210904
x86_64               randconfig-a015-20210904
x86_64               randconfig-a014-20210904
x86_64               randconfig-a013-20210904
i386                 randconfig-a012-20210904
i386                 randconfig-a015-20210904
i386                 randconfig-a011-20210904
i386                 randconfig-a013-20210904
i386                 randconfig-a014-20210904
i386                 randconfig-a016-20210904
riscv                randconfig-r042-20210904
hexagon              randconfig-r045-20210904
s390                 randconfig-r044-20210904
hexagon              randconfig-r041-20210904

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
