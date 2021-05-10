Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3750379954
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 May 2021 23:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D0334067A;
	Mon, 10 May 2021 21:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 43E9UxMkT4RU; Mon, 10 May 2021 21:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2610405F1;
	Mon, 10 May 2021 21:40:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 960561BF574
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 21:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84ED4608DF
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 21:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NN2A79gXwpJU for <devel@linuxdriverproject.org>;
 Mon, 10 May 2021 21:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 771BD6080F
 for <devel@driverdev.osuosl.org>; Mon, 10 May 2021 21:39:43 +0000 (UTC)
IronPort-SDR: dr5kJIr3tscGmRotLaQT91+IvGbtxofKJKaD6AN79PJSmazTHTqVT+OPTL0PkV35YiQHMaJGtH
 Gb7fcRTsm8pA==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="220246942"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="220246942"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 14:39:41 -0700
IronPort-SDR: kz5z2IS4a2Rn8DWRGmxvnN4RW3IiLnLxEaf7gFiueJaH5gpiZhrGJO66K3V6c//NuepLmHPCbD
 zg13S6b0CK8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="433994872"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 10 May 2021 14:39:39 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgDcp-0000NY-1D; Mon, 10 May 2021 21:39:39 +0000
Date: Tue, 11 May 2021 05:39:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 06c7950e4336c58d26612c5c4ec6385f18795215
Message-ID: <6099a7fa.q3IlQ62xrQncp3rm%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts
branch HEAD: 06c7950e4336c58d26612c5c4ec6385f18795215  cdrom: gdrom: initialize global variable at init time

elapsed time: 721m

configs tested: 197
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
arm                           spitz_defconfig
h8300                            alldefconfig
sh                          lboxre2_defconfig
nds32                               defconfig
m68k                                defconfig
sh                          urquell_defconfig
arm                         at91_dt_defconfig
arc                         haps_hs_defconfig
mips                       capcella_defconfig
arm                         shannon_defconfig
mips                         tb0219_defconfig
powerpc                 mpc8272_ads_defconfig
s390                             alldefconfig
arm                            dove_defconfig
sh                        sh7785lcr_defconfig
powerpc                      obs600_defconfig
arm64                            alldefconfig
powerpc                mpc7448_hpc2_defconfig
arm                           tegra_defconfig
arm                            mps2_defconfig
openrisc                  or1klitex_defconfig
ia64                          tiger_defconfig
sh                           se7619_defconfig
arm                         nhk8815_defconfig
arm                       aspeed_g4_defconfig
mips                        workpad_defconfig
arm                       aspeed_g5_defconfig
arm                           u8500_defconfig
arm                          iop32x_defconfig
mips                          ath25_defconfig
m68k                        mvme16x_defconfig
mips                           xway_defconfig
powerpc                  storcenter_defconfig
mips                           ip32_defconfig
sh                           se7343_defconfig
openrisc                    or1ksim_defconfig
xtensa                  nommu_kc705_defconfig
riscv                    nommu_k210_defconfig
mips                     cu1830-neo_defconfig
ia64                        generic_defconfig
sh                   sh7770_generic_defconfig
mips                       lemote2f_defconfig
sh                               alldefconfig
arm                            lart_defconfig
openrisc                            defconfig
arm                            pleb_defconfig
powerpc                 mpc837x_mds_defconfig
nios2                            alldefconfig
powerpc64                           defconfig
mips                        omega2p_defconfig
arm                         lpc32xx_defconfig
sparc                       sparc32_defconfig
mips                          rm200_defconfig
powerpc                     tqm8555_defconfig
arm                             ezx_defconfig
powerpc                 mpc834x_mds_defconfig
mips                        bcm63xx_defconfig
mips                      maltaaprp_defconfig
powerpc                      chrp32_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                    gamecube_defconfig
arm                        trizeps4_defconfig
x86_64                           alldefconfig
mips                        bcm47xx_defconfig
mips                         tb0226_defconfig
sh                                  defconfig
m68k                          amiga_defconfig
powerpc                      ppc64e_defconfig
sh                           sh2007_defconfig
powerpc                  iss476-smp_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                     decstation_defconfig
arm                         mv78xx0_defconfig
ia64                             alldefconfig
arc                          axs101_defconfig
sh                      rts7751r2d1_defconfig
sh                   secureedge5410_defconfig
ia64                             allyesconfig
arc                        vdk_hs38_defconfig
csky                                defconfig
mips                          ath79_defconfig
mips                  cavium_octeon_defconfig
powerpc                    klondike_defconfig
sh                              ul2_defconfig
powerpc                      pmac32_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                       rbtx49xx_defconfig
nios2                               defconfig
arm                         cm_x300_defconfig
arm                       imx_v6_v7_defconfig
mips                         tb0287_defconfig
sh                          sdk7786_defconfig
arm                        mvebu_v5_defconfig
mips                        qi_lb60_defconfig
sh                          rsk7269_defconfig
powerpc                     skiroot_defconfig
mips                         cobalt_defconfig
arc                          axs103_defconfig
sh                           se7724_defconfig
mips                        maltaup_defconfig
powerpc                        icon_defconfig
arm                        multi_v7_defconfig
nios2                         10m50_defconfig
arm                      pxa255-idp_defconfig
x86_64                              defconfig
arm                           h5000_defconfig
sh                         microdev_defconfig
powerpc                          g5_defconfig
arm                        multi_v5_defconfig
mips                           ci20_defconfig
arm                          pxa3xx_defconfig
sh                               j2_defconfig
powerpc                   currituck_defconfig
mips                            gpr_defconfig
arm                          ixp4xx_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                 linkstation_defconfig
mips                      bmips_stb_defconfig
powerpc                   motionpro_defconfig
h8300                    h8300h-sim_defconfig
riscv                            alldefconfig
powerpc                     rainier_defconfig
xtensa                       common_defconfig
m68k                        stmark2_defconfig
sh                          rsk7201_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210510
x86_64               randconfig-a004-20210510
x86_64               randconfig-a001-20210510
x86_64               randconfig-a005-20210510
x86_64               randconfig-a002-20210510
x86_64               randconfig-a006-20210510
i386                 randconfig-a003-20210510
i386                 randconfig-a001-20210510
i386                 randconfig-a005-20210510
i386                 randconfig-a004-20210510
i386                 randconfig-a002-20210510
i386                 randconfig-a006-20210510
i386                 randconfig-a016-20210510
i386                 randconfig-a014-20210510
i386                 randconfig-a011-20210510
i386                 randconfig-a015-20210510
i386                 randconfig-a012-20210510
i386                 randconfig-a013-20210510
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210510
x86_64               randconfig-a012-20210510
x86_64               randconfig-a011-20210510
x86_64               randconfig-a013-20210510
x86_64               randconfig-a016-20210510
x86_64               randconfig-a014-20210510

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
