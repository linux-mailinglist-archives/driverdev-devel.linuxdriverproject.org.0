Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D621A68F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 17:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC1C2203E8;
	Mon, 13 Apr 2020 15:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GiiHC+lUbRde; Mon, 13 Apr 2020 15:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84E2E20468;
	Mon, 13 Apr 2020 15:35:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 838FE1BF318
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 15:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EAF986D41
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 15:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IdtLeLWHfYgR for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99AB2864EF
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 15:35:03 +0000 (UTC)
IronPort-SDR: 1Qoc9/7imJ1qA/4Livmt4sI/RxS6u4+q6sOgzHjPq+G09a0IC2i19L+FhdLHx1zx44zjj/vuKv
 PEIeYfMNtbjg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 08:35:00 -0700
IronPort-SDR: 0HolRLgz+WRRyffWuUxilGqDeoBzEbP+gSOL17BBmg0mMh2DhLmlymH4ZprATzqPe0AomPIP0j
 jdSpAO+3Pjtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="276935074"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 13 Apr 2020 08:34:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jO16v-000GxT-OM; Mon, 13 Apr 2020 23:34:57 +0800
Date: Mon, 13 Apr 2020 23:33:54 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 73a6e90041ce80d5683f62bee0eaf7226ce73392
Message-ID: <5e948662.T8Q5c6luY0FME7u2%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: 73a6e90041ce80d5683f62bee0eaf7226ce73392  staging: rtl8723bs: hal: Correct misspelled symbolic name

elapsed time: 508m

configs tested: 166
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
openrisc                    or1ksim_defconfig
powerpc                       ppc64_defconfig
h8300                    h8300h-sim_defconfig
sparc64                          allmodconfig
parisc                generic-32bit_defconfig
csky                                defconfig
parisc                generic-64bit_defconfig
ia64                                defconfig
powerpc                             defconfig
parisc                            allnoconfig
sh                                allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                               defconfig
nds32                             allnoconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200413
x86_64               randconfig-a002-20200413
x86_64               randconfig-a003-20200413
i386                 randconfig-a001-20200413
i386                 randconfig-a002-20200413
i386                 randconfig-a003-20200413
mips                 randconfig-a001-20200413
nds32                randconfig-a001-20200413
m68k                 randconfig-a001-20200413
parisc               randconfig-a001-20200413
alpha                randconfig-a001-20200413
riscv                randconfig-a001-20200413
c6x                  randconfig-a001-20200413
h8300                randconfig-a001-20200413
microblaze           randconfig-a001-20200413
nios2                randconfig-a001-20200413
sparc64              randconfig-a001-20200413
s390                 randconfig-a001-20200413
xtensa               randconfig-a001-20200413
sh                   randconfig-a001-20200413
openrisc             randconfig-a001-20200413
csky                 randconfig-a001-20200413
x86_64               randconfig-b002-20200413
i386                 randconfig-b001-20200413
x86_64               randconfig-b001-20200413
x86_64               randconfig-b003-20200413
i386                 randconfig-b003-20200413
i386                 randconfig-b002-20200413
x86_64               randconfig-c003-20200413
i386                 randconfig-c003-20200413
i386                 randconfig-c002-20200413
x86_64               randconfig-c002-20200413
i386                 randconfig-c001-20200413
x86_64               randconfig-c001-20200413
x86_64               randconfig-d001-20200413
x86_64               randconfig-d002-20200413
x86_64               randconfig-d003-20200413
i386                 randconfig-d001-20200413
i386                 randconfig-d002-20200413
i386                 randconfig-d003-20200413
x86_64               randconfig-e001-20200413
i386                 randconfig-e002-20200413
i386                 randconfig-e001-20200413
x86_64               randconfig-e002-20200413
i386                 randconfig-e003-20200413
x86_64               randconfig-e003-20200413
x86_64               randconfig-f003-20200413
x86_64               randconfig-f001-20200413
x86_64               randconfig-f002-20200413
i386                 randconfig-f001-20200413
i386                 randconfig-f003-20200413
i386                 randconfig-f002-20200413
x86_64               randconfig-g001-20200413
x86_64               randconfig-g002-20200413
x86_64               randconfig-g003-20200413
i386                 randconfig-g001-20200413
i386                 randconfig-g002-20200413
i386                 randconfig-g003-20200413
x86_64               randconfig-h001-20200413
x86_64               randconfig-h002-20200413
x86_64               randconfig-h003-20200413
i386                 randconfig-h001-20200413
i386                 randconfig-h002-20200413
i386                 randconfig-h003-20200413
ia64                 randconfig-a001-20200413
arc                  randconfig-a001-20200413
arm                  randconfig-a001-20200413
sparc                randconfig-a001-20200413
arm64                randconfig-a001-20200413
powerpc              randconfig-a001-20200413
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
