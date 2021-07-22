Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8093D2724
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jul 2021 17:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E646063D;
	Thu, 22 Jul 2021 15:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBimjXRXvrnu; Thu, 22 Jul 2021 15:58:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A310260585;
	Thu, 22 Jul 2021 15:58:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEB911BF3F4
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 15:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB003405D5
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 15:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IFkFzp8MG40i for <devel@linuxdriverproject.org>;
 Thu, 22 Jul 2021 15:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4403B405D4
 for <devel@driverdev.osuosl.org>; Thu, 22 Jul 2021 15:57:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211737739"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="211737739"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 08:57:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="433175056"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jul 2021 08:57:55 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m6b58-0000TW-DS; Thu, 22 Jul 2021 15:57:54 +0000
Date: Thu, 22 Jul 2021 23:57:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 cb7abd1db6e5f99a05f1a00b65be29029a6a152a
Message-ID: <60f9957d.K0EKihr4qT1nb2Yd%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: cb7abd1db6e5f99a05f1a00b65be29029a6a152a  staging: rtl8723bs: select CONFIG_CRYPTO_LIB_ARC4

elapsed time: 1394m

configs tested: 161
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210720
i386                 randconfig-c001-20210722
um                           x86_64_defconfig
riscv                            allyesconfig
mips                             allyesconfig
um                             i386_defconfig
mips                             allmodconfig
riscv                            allmodconfig
arc                              allyesconfig
nios2                            allyesconfig
alpha                            allyesconfig
powerpc                       ebony_defconfig
powerpc                      bamboo_defconfig
arm                      integrator_defconfig
arm                        multi_v7_defconfig
mips                           jazz_defconfig
sh                          sdk7786_defconfig
arm                           stm32_defconfig
arm                           viper_defconfig
mips                        vocore2_defconfig
sh                          rsk7201_defconfig
powerpc                         ps3_defconfig
m68k                         apollo_defconfig
sparc                            alldefconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
arm                           sama5_defconfig
arm                             mxs_defconfig
arm                       aspeed_g5_defconfig
powerpc                      ppc64e_defconfig
arm                            xcep_defconfig
powerpc                 mpc834x_mds_defconfig
mips                         tb0287_defconfig
sh                            titan_defconfig
arc                        nsim_700_defconfig
riscv                          rv32_defconfig
m68k                        m5407c3_defconfig
arm                        realview_defconfig
arm                            dove_defconfig
arm                  colibri_pxa270_defconfig
openrisc                 simple_smp_defconfig
arm                           u8500_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
arm                              alldefconfig
powerpc                  mpc866_ads_defconfig
nds32                               defconfig
m68k                       m5475evb_defconfig
arm                        spear6xx_defconfig
powerpc                   currituck_defconfig
nds32                            alldefconfig
arm                             pxa_defconfig
mips                           ip27_defconfig
sh                           se7751_defconfig
mips                           xway_defconfig
arm                        mvebu_v7_defconfig
arm                       omap2plus_defconfig
arm                            qcom_defconfig
arm                           h3600_defconfig
arm                         lpc32xx_defconfig
arm                       spear13xx_defconfig
microblaze                          defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
x86_64                            allnoconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210720
x86_64               randconfig-a006-20210720
x86_64               randconfig-a001-20210720
x86_64               randconfig-a005-20210720
x86_64               randconfig-a004-20210720
x86_64               randconfig-a002-20210720
x86_64               randconfig-a003-20210722
x86_64               randconfig-a006-20210722
x86_64               randconfig-a001-20210722
x86_64               randconfig-a005-20210722
x86_64               randconfig-a004-20210722
x86_64               randconfig-a002-20210722
i386                 randconfig-a005-20210722
i386                 randconfig-a003-20210722
i386                 randconfig-a004-20210722
i386                 randconfig-a002-20210722
i386                 randconfig-a001-20210722
i386                 randconfig-a006-20210722
i386                 randconfig-a005-20210720
i386                 randconfig-a003-20210720
i386                 randconfig-a004-20210720
i386                 randconfig-a002-20210720
i386                 randconfig-a001-20210720
i386                 randconfig-a006-20210720
i386                 randconfig-a005-20210719
i386                 randconfig-a004-20210719
i386                 randconfig-a006-20210719
i386                 randconfig-a001-20210719
i386                 randconfig-a003-20210719
i386                 randconfig-a002-20210719
i386                 randconfig-a016-20210722
i386                 randconfig-a013-20210722
i386                 randconfig-a012-20210722
i386                 randconfig-a011-20210722
i386                 randconfig-a014-20210722
i386                 randconfig-a015-20210722
i386                 randconfig-a016-20210720
i386                 randconfig-a013-20210720
i386                 randconfig-a012-20210720
i386                 randconfig-a014-20210720
i386                 randconfig-a011-20210720
i386                 randconfig-a015-20210720
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                      rhel-8.3-kbuiltin

clang tested configs:
x86_64               randconfig-c001-20210722
x86_64               randconfig-b001-20210720
x86_64               randconfig-b001-20210722
x86_64               randconfig-a011-20210722
x86_64               randconfig-a016-20210722
x86_64               randconfig-a013-20210722
x86_64               randconfig-a014-20210722
x86_64               randconfig-a012-20210722
x86_64               randconfig-a015-20210722
x86_64               randconfig-a003-20210721
x86_64               randconfig-a006-20210721
x86_64               randconfig-a001-20210721
x86_64               randconfig-a005-20210721
x86_64               randconfig-a004-20210721
x86_64               randconfig-a002-20210721

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
