Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FE6274994
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 21:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3261A86FC3;
	Tue, 22 Sep 2020 19:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOt2lF5VhQb9; Tue, 22 Sep 2020 19:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2DC3869FE;
	Tue, 22 Sep 2020 19:56:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E24581BF34A
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 19:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF194869FE
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 19:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gso9q4bMx3dQ for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 19:56:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3BA2F869D8
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 19:56:22 +0000 (UTC)
IronPort-SDR: t2YLCZFldRUizwopSX4Ar6i+v4UqjvrZbz9T5cVFLjvheSpjlIVfa4iodqOSgECRCf3MqqkKCj
 GLQuoEyLFuWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="245533819"
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="245533819"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 12:56:21 -0700
IronPort-SDR: 4t/g7O9z/1FBtUupFx5bG6e7IuyrGku3vehL1aaapBbS7wwWg+7U/0Xqhg6evigR/vyC1h03fT
 qwIHHNrDj/ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="342165075"
Received: from lkp-server01.sh.intel.com (HELO 928d8e596b58) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 22 Sep 2020 12:56:20 -0700
Received: from kbuild by 928d8e596b58 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kKoOh-0000cu-SU; Tue, 22 Sep 2020 19:56:19 +0000
Date: Wed, 23 Sep 2020 03:55:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 69fea2b4e59c52844cf5196c9c81157792d194fb
Message-ID: <5f6a56c1.WyH7+842yv1eynad%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: 69fea2b4e59c52844cf5196c9c81157792d194fb  staging: r8188eu: replace WIFI_REASON_CODE enum with native ieee80211_reasoncode

elapsed time: 721m

configs tested: 184
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7712_defconfig
arm                        mvebu_v5_defconfig
arm                        mvebu_v7_defconfig
arm                          lpd270_defconfig
sh                        sh7757lcr_defconfig
arm                     eseries_pxa_defconfig
arm                            xcep_defconfig
powerpc                      acadia_defconfig
mips                 decstation_r4k_defconfig
arc                     nsimosci_hs_defconfig
mips                malta_kvm_guest_defconfig
mips                           gcw0_defconfig
sh                             sh03_defconfig
arm                             ezx_defconfig
mips                      pistachio_defconfig
arm                  colibri_pxa300_defconfig
arm                          pxa3xx_defconfig
um                           x86_64_defconfig
m68k                         amcore_defconfig
arm                       versatile_defconfig
parisc                           alldefconfig
powerpc                      mgcoge_defconfig
arm                         palmz72_defconfig
arm                          pxa168_defconfig
powerpc                     kilauea_defconfig
arm                           sunxi_defconfig
arm                           efm32_defconfig
powerpc                      walnut_defconfig
arm                        spear6xx_defconfig
parisc                generic-64bit_defconfig
arm                      integrator_defconfig
powerpc                      makalu_defconfig
sh                      rts7751r2d1_defconfig
sh                          sdk7786_defconfig
mips                          rb532_defconfig
arm                         lpc32xx_defconfig
mips                            e55_defconfig
um                            kunit_defconfig
powerpc                  mpc866_ads_defconfig
arm                        clps711x_defconfig
ia64                            zx1_defconfig
powerpc                 xes_mpc85xx_defconfig
arc                            hsdk_defconfig
arm                      footbridge_defconfig
m68k                        mvme147_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
arc                        nsim_700_defconfig
sh                            hp6xx_defconfig
mips                  cavium_octeon_defconfig
arm                         lpc18xx_defconfig
sh                          rsk7203_defconfig
arm                         s5pv210_defconfig
arm                       aspeed_g5_defconfig
mips                      loongson3_defconfig
powerpc                 mpc836x_mds_defconfig
m68k                             alldefconfig
arm                            pleb_defconfig
mips                        nlm_xlr_defconfig
c6x                        evmc6474_defconfig
powerpc                     pq2fads_defconfig
mips                           jazz_defconfig
m68k                       bvme6000_defconfig
microblaze                          defconfig
m68k                          atari_defconfig
powerpc                     ksi8560_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
mips                         tb0219_defconfig
mips                  maltasmvp_eva_defconfig
mips                           xway_defconfig
arm                           u8500_defconfig
sh                          lboxre2_defconfig
mips                       bmips_be_defconfig
arm                          exynos_defconfig
powerpc                     tqm8548_defconfig
sh                        edosk7760_defconfig
powerpc                       eiger_defconfig
arm                          pxa910_defconfig
mips                        vocore2_defconfig
sh                     magicpanelr2_defconfig
sh                          sdk7780_defconfig
arm                          prima2_defconfig
x86_64                              defconfig
powerpc                    gamecube_defconfig
h8300                            alldefconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                 randconfig-a002-20200920
i386                 randconfig-a006-20200920
i386                 randconfig-a003-20200920
i386                 randconfig-a004-20200920
i386                 randconfig-a005-20200920
i386                 randconfig-a001-20200920
i386                 randconfig-a002-20200921
i386                 randconfig-a006-20200921
i386                 randconfig-a003-20200921
i386                 randconfig-a004-20200921
i386                 randconfig-a005-20200921
i386                 randconfig-a001-20200921
i386                 randconfig-a012-20200921
i386                 randconfig-a014-20200921
i386                 randconfig-a016-20200921
i386                 randconfig-a013-20200921
i386                 randconfig-a011-20200921
i386                 randconfig-a015-20200921
i386                 randconfig-a012-20200920
i386                 randconfig-a014-20200920
i386                 randconfig-a016-20200920
i386                 randconfig-a013-20200920
i386                 randconfig-a011-20200920
i386                 randconfig-a015-20200920
x86_64               randconfig-a005-20200920
x86_64               randconfig-a003-20200920
x86_64               randconfig-a004-20200920
x86_64               randconfig-a002-20200920
x86_64               randconfig-a006-20200920
x86_64               randconfig-a001-20200920
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20200921
x86_64               randconfig-a003-20200921
x86_64               randconfig-a004-20200921
x86_64               randconfig-a002-20200921
x86_64               randconfig-a006-20200921
x86_64               randconfig-a001-20200921
x86_64               randconfig-a011-20200922
x86_64               randconfig-a013-20200922
x86_64               randconfig-a014-20200922
x86_64               randconfig-a015-20200922
x86_64               randconfig-a012-20200922
x86_64               randconfig-a016-20200922
x86_64               randconfig-a011-20200920
x86_64               randconfig-a013-20200920
x86_64               randconfig-a014-20200920
x86_64               randconfig-a015-20200920
x86_64               randconfig-a012-20200920
x86_64               randconfig-a016-20200920

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
