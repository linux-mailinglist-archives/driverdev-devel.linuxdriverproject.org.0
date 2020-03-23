Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A9A18F849
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 16:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0E3F85F5C;
	Mon, 23 Mar 2020 15:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7n0xOrxLbMZN; Mon, 23 Mar 2020 15:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5953985F87;
	Mon, 23 Mar 2020 15:10:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2CA1BF3EF
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 15:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0AA558819B
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 15:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2mBtD3wb+ma for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 15:10:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B63BD88134
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 15:10:28 +0000 (UTC)
IronPort-SDR: FeW0betZf5O5QerV+VB0Rgl/eQnibXpx7L4SLdsGWX1mVqk4iC048EDvzEpJMZYxKyD0PR63zo
 PDmiKeKLElAQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 08:10:28 -0700
IronPort-SDR: QIcDkOKCDzqbWvVqm7wPjPHLFVdHsWby8/VBlNvRfGkWyScF+5KDAcovXTPGN1F/sSJNKZaYY0
 MNDcJp0KMEhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="239952573"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Mar 2020 08:10:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jGOie-0009WK-RI; Mon, 23 Mar 2020 23:10:24 +0800
Date: Mon, 23 Mar 2020 23:09:34 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 6203da9803017701da5782998157d9826215059d
Message-ID: <5e78d12e.3Vnjosdh6ZRRrjUK%lkp@intel.com>
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
branch HEAD: 6203da9803017701da5782998157d9826215059d  Merge 5.6-rc7 into staging-next

elapsed time: 484m

configs tested: 170
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
ia64                                defconfig
powerpc                             defconfig
i386                              allnoconfig
ia64                             allyesconfig
riscv                               defconfig
s390                              allnoconfig
i386                             allyesconfig
m68k                       m5475evb_defconfig
i386                             alldefconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             alldefconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200323
x86_64               randconfig-a002-20200323
x86_64               randconfig-a003-20200323
i386                 randconfig-a001-20200323
i386                 randconfig-a002-20200323
i386                 randconfig-a003-20200323
x86_64               randconfig-a001-20200322
x86_64               randconfig-a002-20200322
x86_64               randconfig-a003-20200322
i386                 randconfig-a001-20200322
i386                 randconfig-a002-20200322
i386                 randconfig-a003-20200322
alpha                randconfig-a001-20200323
m68k                 randconfig-a001-20200323
mips                 randconfig-a001-20200323
nds32                randconfig-a001-20200323
parisc               randconfig-a001-20200323
riscv                randconfig-a001-20200323
c6x                  randconfig-a001-20200323
h8300                randconfig-a001-20200323
microblaze           randconfig-a001-20200323
nios2                randconfig-a001-20200323
sparc64              randconfig-a001-20200323
s390                 randconfig-a001-20200323
xtensa               randconfig-a001-20200323
csky                 randconfig-a001-20200323
openrisc             randconfig-a001-20200323
sh                   randconfig-a001-20200323
x86_64               randconfig-b003-20200323
x86_64               randconfig-b002-20200323
x86_64               randconfig-b001-20200323
i386                 randconfig-b003-20200323
i386                 randconfig-b001-20200323
i386                 randconfig-b002-20200323
x86_64               randconfig-c001-20200323
x86_64               randconfig-c002-20200323
x86_64               randconfig-c003-20200323
i386                 randconfig-c001-20200323
i386                 randconfig-c002-20200323
i386                 randconfig-c003-20200323
x86_64               randconfig-d001-20200323
x86_64               randconfig-d002-20200323
x86_64               randconfig-d003-20200323
i386                 randconfig-d001-20200323
i386                 randconfig-d002-20200323
i386                 randconfig-d003-20200323
x86_64               randconfig-e001-20200323
x86_64               randconfig-e002-20200323
x86_64               randconfig-e003-20200323
i386                 randconfig-e001-20200323
i386                 randconfig-e002-20200323
i386                 randconfig-e003-20200323
x86_64               randconfig-f001-20200323
x86_64               randconfig-f002-20200323
x86_64               randconfig-f003-20200323
i386                 randconfig-f001-20200323
i386                 randconfig-f002-20200323
i386                 randconfig-f003-20200323
i386                 randconfig-g003-20200323
i386                 randconfig-g001-20200323
i386                 randconfig-g002-20200323
x86_64               randconfig-g001-20200323
x86_64               randconfig-g003-20200323
x86_64               randconfig-g002-20200323
x86_64               randconfig-h001-20200323
x86_64               randconfig-h002-20200323
x86_64               randconfig-h003-20200323
i386                 randconfig-h001-20200323
i386                 randconfig-h002-20200323
i386                 randconfig-h003-20200323
arc                  randconfig-a001-20200323
arm                  randconfig-a001-20200323
arm64                randconfig-a001-20200323
ia64                 randconfig-a001-20200323
powerpc              randconfig-a001-20200323
sparc                randconfig-a001-20200323
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sh                               allmodconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
