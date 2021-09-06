Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E906540216B
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Sep 2021 01:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E191260B90;
	Mon,  6 Sep 2021 23:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r9mTEJmFmftX; Mon,  6 Sep 2021 23:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2811260B58;
	Mon,  6 Sep 2021 23:12:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3E491BF2E5
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 23:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B00AD60B58
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 23:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HuVT4I9ghUGX for <devel@linuxdriverproject.org>;
 Mon,  6 Sep 2021 23:11:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8346260AC7
 for <devel@driverdev.osuosl.org>; Mon,  6 Sep 2021 23:11:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="220079589"
X-IronPort-AV: E=Sophos;i="5.85,273,1624345200"; d="scan'208";a="220079589"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 16:11:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,273,1624345200"; d="scan'208";a="464290975"
Received: from lkp-server01.sh.intel.com (HELO 53c23d017ad5) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 06 Sep 2021 16:11:46 -0700
Received: from kbuild by 53c23d017ad5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mNNmE-0001C1-8V; Mon, 06 Sep 2021 23:11:46 +0000
Date: Tue, 07 Sep 2021 07:11:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 c56d21ec612bf71af8cb6446a26cf845a4d63644
Message-ID: <6136a00f.tmnNZnfj1CJtoDsO%lkp@intel.com>
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
branch HEAD: c56d21ec612bf71af8cb6446a26cf845a4d63644  staging: r8188eu: remove c2h_id_filter_ccx from struct hal_ops

elapsed time: 722m

configs tested: 125
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210906
riscv             nommu_k210_sdcard_defconfig
powerpc                 canyonlands_defconfig
arc                          axs103_defconfig
mips                         rt305x_defconfig
sh                           se7722_defconfig
mips                           jazz_defconfig
powerpc                     stx_gp3_defconfig
mips                        bcm63xx_defconfig
mips                        nlm_xlr_defconfig
sh                           se7780_defconfig
h8300                       h8s-sim_defconfig
sh                   sh7724_generic_defconfig
sh                               alldefconfig
powerpc                     mpc83xx_defconfig
mips                        nlm_xlp_defconfig
arm                            zeus_defconfig
arm                           h3600_defconfig
arm                            pleb_defconfig
arm                           h5000_defconfig
microblaze                      mmu_defconfig
powerpc                    klondike_defconfig
powerpc                      bamboo_defconfig
sparc                       sparc64_defconfig
powerpc                        warp_defconfig
mips                       rbtx49xx_defconfig
powerpc                    sam440ep_defconfig
sh                           se7751_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                             sh03_defconfig
mips                  decstation_64_defconfig
powerpc                     tqm8540_defconfig
arm                         cm_x300_defconfig
arc                          axs101_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc64                           defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                    ge_imp3a_defconfig
arm                         s3c6400_defconfig
arm                            lart_defconfig
m68k                       m5249evb_defconfig
xtensa                    smp_lx200_defconfig
s390                             alldefconfig
mips                          ath79_defconfig
arm                  randconfig-c002-20210906
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
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
arc                                 defconfig
s390                             allmodconfig
s390                                defconfig
parisc                              defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210906
i386                 randconfig-a004-20210906
i386                 randconfig-a006-20210906
i386                 randconfig-a002-20210906
i386                 randconfig-a003-20210906
i386                 randconfig-a001-20210906
x86_64               randconfig-a006-20210906
x86_64               randconfig-a003-20210906
x86_64               randconfig-a005-20210906
x86_64               randconfig-a002-20210906
x86_64               randconfig-a004-20210906
x86_64               randconfig-a001-20210906
arc                  randconfig-r043-20210906
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3

clang tested configs:
s390                 randconfig-c005-20210906
mips                 randconfig-c004-20210906
powerpc              randconfig-c003-20210906
i386                 randconfig-c001-20210906
arm                  randconfig-c002-20210906
x86_64               randconfig-a015-20210906
i386                 randconfig-a012-20210906
i386                 randconfig-a015-20210906
i386                 randconfig-a011-20210906
i386                 randconfig-a013-20210906
i386                 randconfig-a014-20210906
i386                 randconfig-a016-20210906
riscv                randconfig-r042-20210906
hexagon              randconfig-r045-20210906
s390                 randconfig-r044-20210906
hexagon              randconfig-r041-20210906

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
