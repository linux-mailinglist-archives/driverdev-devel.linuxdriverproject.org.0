Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAB833AA28
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 04:54:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CA564B59B;
	Mon, 15 Mar 2021 03:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UcB5ncJ6JwHP; Mon, 15 Mar 2021 03:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F24B748CE3;
	Mon, 15 Mar 2021 03:54:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DCF01BF966
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 03:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D3F46F492
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 03:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cO5BAWXGDbp0 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 03:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B77A6F48F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:54:26 +0000 (UTC)
IronPort-SDR: orMT5nCkd5dQXMtq7klYGz74xnlEe6H20600hMMR2M8rLxw6f4rzs/yY6GcH6kQNrzq49LNO2K
 6uq9fKXc3+mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="186652993"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="186652993"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2021 20:54:21 -0700
IronPort-SDR: 6AY/T9QruaoIACMBG/tRmoVkEp76BDZo/1sVEYAHhccV0cR345udq1qAw1nnGzqRP21t2ikHxi
 q14RPpu4aeJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="604705526"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 14 Mar 2021 20:54:19 -0700
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lLeJ8-0000OA-Qt; Mon, 15 Mar 2021 03:54:18 +0000
Date: Mon, 15 Mar 2021 11:54:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 7a49a9e3b030ca76ddcbc3fa7012770fb25fa08c
Message-ID: <604eda66.F0ZRpQXmv/Ih8BeH%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: 7a49a9e3b030ca76ddcbc3fa7012770fb25fa08c  x86/tools/relocs: add __printf attribute to die()

elapsed time: 720m

configs tested: 126
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
nios2                         3c120_defconfig
mips                     decstation_defconfig
mips                         db1xxx_defconfig
mips                        maltaup_defconfig
powerpc                      makalu_defconfig
arm                              alldefconfig
mips                         tb0287_defconfig
powerpc                 mpc8272_ads_defconfig
arm                        realview_defconfig
arm                           tegra_defconfig
sh                            migor_defconfig
powerpc                      pmac32_defconfig
sh                      rts7751r2d1_defconfig
arm                          moxart_defconfig
arm                          iop32x_defconfig
arm                       versatile_defconfig
arm                    vt8500_v6_v7_defconfig
arm                       aspeed_g4_defconfig
arm                         bcm2835_defconfig
powerpc                      ppc40x_defconfig
powerpc                     mpc512x_defconfig
arm                      integrator_defconfig
sh                            titan_defconfig
m68k                          sun3x_defconfig
mips                        jmr3927_defconfig
sh                         ecovec24_defconfig
arc                      axs103_smp_defconfig
mips                           rs90_defconfig
h8300                    h8300h-sim_defconfig
arm                            qcom_defconfig
ia64                                defconfig
mips                            gpr_defconfig
mips                  decstation_64_defconfig
openrisc                         alldefconfig
powerpc                      ep88xc_defconfig
mips                      fuloong2e_defconfig
powerpc                     taishan_defconfig
powerpc                    gamecube_defconfig
sh                     magicpanelr2_defconfig
parisc                              defconfig
openrisc                            defconfig
powerpc                  storcenter_defconfig
csky                                defconfig
microblaze                      mmu_defconfig
mips                           ip22_defconfig
mips                malta_kvm_guest_defconfig
sh                           se7712_defconfig
arc                     nsimosci_hs_defconfig
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
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allmodconfig
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
i386                 randconfig-a001-20210314
i386                 randconfig-a005-20210314
i386                 randconfig-a003-20210314
i386                 randconfig-a002-20210314
i386                 randconfig-a004-20210314
i386                 randconfig-a006-20210314
x86_64               randconfig-a011-20210314
x86_64               randconfig-a016-20210314
x86_64               randconfig-a013-20210314
x86_64               randconfig-a015-20210314
x86_64               randconfig-a014-20210314
x86_64               randconfig-a012-20210314
i386                 randconfig-a013-20210314
i386                 randconfig-a016-20210314
i386                 randconfig-a011-20210314
i386                 randconfig-a012-20210314
i386                 randconfig-a014-20210314
i386                 randconfig-a015-20210314
i386                 randconfig-a013-20210315
i386                 randconfig-a016-20210315
i386                 randconfig-a011-20210315
i386                 randconfig-a012-20210315
i386                 randconfig-a014-20210315
i386                 randconfig-a015-20210315
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210314
x86_64               randconfig-a001-20210314
x86_64               randconfig-a005-20210314
x86_64               randconfig-a004-20210314
x86_64               randconfig-a002-20210314
x86_64               randconfig-a003-20210314

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
