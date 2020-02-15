Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ADE16010A
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Feb 2020 00:08:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A908B875B6;
	Sat, 15 Feb 2020 23:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0-EbXphLRok; Sat, 15 Feb 2020 23:08:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B110D864E6;
	Sat, 15 Feb 2020 23:08:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E69F71BF853
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 23:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB6FC875B3
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 23:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NSDJVCmJsCk7 for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 23:08:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89EEA864E6
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 23:08:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Feb 2020 15:08:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,446,1574150400"; d="scan'208";a="407377227"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 15 Feb 2020 15:08:27 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j36Xz-0007ke-8h; Sun, 16 Feb 2020 07:08:27 +0800
Date: Sun, 16 Feb 2020 07:08:00 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 8ef0c4f06432b5b2f4e32f37b81708eae1e20c8c
Message-ID: <5e4879d0.0kOSgLjZGu/wP0lP%lkp@intel.com>
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
branch HEAD: 8ef0c4f06432b5b2f4e32f37b81708eae1e20c8c  Revert "staging/octeon: Mark Ethernet driver as BROKEN"

elapsed time: 4047m

configs tested: 255
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
sparc                            allyesconfig
c6x                              allyesconfig
xtensa                          iss_defconfig
powerpc                             defconfig
riscv                               defconfig
sh                  sh7785lcr_32bit_defconfig
alpha                               defconfig
csky                                defconfig
riscv                    nommu_virt_defconfig
arc                              allyesconfig
sparc64                           allnoconfig
arc                                 defconfig
ia64                                defconfig
s390                                defconfig
um                           x86_64_defconfig
microblaze                      mmu_defconfig
parisc                           allyesconfig
um                             i386_defconfig
riscv                             allnoconfig
openrisc                 simple_smp_defconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
sparc64                          allyesconfig
sparc64                             defconfig
mips                              allnoconfig
nds32                             allnoconfig
s390                             alldefconfig
nds32                               defconfig
m68k                          multi_defconfig
nios2                         3c120_defconfig
ia64                             alldefconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              allnoconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
openrisc                    or1ksim_defconfig
xtensa                       common_defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200214
x86_64               randconfig-a002-20200214
x86_64               randconfig-a003-20200214
i386                 randconfig-a001-20200214
i386                 randconfig-a002-20200214
i386                 randconfig-a003-20200214
i386                 randconfig-a003-20200213
x86_64               randconfig-a003-20200213
i386                 randconfig-a001-20200213
x86_64               randconfig-a002-20200213
i386                 randconfig-a002-20200213
x86_64               randconfig-a001-20200213
x86_64               randconfig-a001-20200215
x86_64               randconfig-a002-20200215
x86_64               randconfig-a003-20200215
i386                 randconfig-a001-20200215
i386                 randconfig-a002-20200215
i386                 randconfig-a003-20200215
alpha                randconfig-a001-20200214
m68k                 randconfig-a001-20200214
mips                 randconfig-a001-20200214
nds32                randconfig-a001-20200214
parisc               randconfig-a001-20200214
c6x                  randconfig-a001-20200213
h8300                randconfig-a001-20200213
microblaze           randconfig-a001-20200213
nios2                randconfig-a001-20200213
sparc64              randconfig-a001-20200213
c6x                  randconfig-a001-20200214
h8300                randconfig-a001-20200214
microblaze           randconfig-a001-20200214
nios2                randconfig-a001-20200214
sparc64              randconfig-a001-20200214
c6x                  randconfig-a001-20200215
h8300                randconfig-a001-20200215
microblaze           randconfig-a001-20200215
nios2                randconfig-a001-20200215
sparc64              randconfig-a001-20200215
csky                 randconfig-a001-20200214
openrisc             randconfig-a001-20200214
s390                 randconfig-a001-20200214
sh                   randconfig-a001-20200214
xtensa               randconfig-a001-20200214
openrisc             randconfig-a001-20200213
sh                   randconfig-a001-20200213
csky                 randconfig-a001-20200213
s390                 randconfig-a001-20200213
xtensa               randconfig-a001-20200213
csky                 randconfig-a001-20200215
openrisc             randconfig-a001-20200215
s390                 randconfig-a001-20200215
sh                   randconfig-a001-20200215
xtensa               randconfig-a001-20200215
x86_64               randconfig-b001-20200213
x86_64               randconfig-b002-20200213
x86_64               randconfig-b003-20200213
i386                 randconfig-b001-20200213
i386                 randconfig-b002-20200213
i386                 randconfig-b003-20200213
x86_64               randconfig-b001-20200214
x86_64               randconfig-b002-20200214
x86_64               randconfig-b003-20200214
i386                 randconfig-b001-20200214
i386                 randconfig-b002-20200214
i386                 randconfig-b003-20200214
x86_64               randconfig-c001-20200213
x86_64               randconfig-c002-20200213
x86_64               randconfig-c003-20200213
i386                 randconfig-c001-20200213
i386                 randconfig-c002-20200213
i386                 randconfig-c003-20200213
x86_64               randconfig-c001-20200214
x86_64               randconfig-c002-20200214
x86_64               randconfig-c003-20200214
i386                 randconfig-c001-20200214
i386                 randconfig-c002-20200214
i386                 randconfig-c003-20200214
x86_64               randconfig-d001-20200213
x86_64               randconfig-d002-20200213
x86_64               randconfig-d003-20200213
i386                 randconfig-d001-20200213
i386                 randconfig-d002-20200213
i386                 randconfig-d003-20200213
x86_64               randconfig-d001-20200214
x86_64               randconfig-d002-20200214
x86_64               randconfig-d003-20200214
i386                 randconfig-d001-20200214
i386                 randconfig-d002-20200214
i386                 randconfig-d003-20200214
x86_64               randconfig-e001-20200213
x86_64               randconfig-e002-20200213
x86_64               randconfig-e003-20200213
i386                 randconfig-e001-20200213
i386                 randconfig-e002-20200213
i386                 randconfig-e003-20200213
x86_64               randconfig-e001-20200214
x86_64               randconfig-e002-20200214
x86_64               randconfig-e003-20200214
i386                 randconfig-e001-20200214
i386                 randconfig-e002-20200214
i386                 randconfig-e003-20200214
x86_64               randconfig-f001-20200214
x86_64               randconfig-f002-20200214
x86_64               randconfig-f003-20200214
i386                 randconfig-f001-20200214
i386                 randconfig-f002-20200214
i386                 randconfig-f003-20200214
x86_64               randconfig-f001-20200213
x86_64               randconfig-f002-20200213
x86_64               randconfig-f003-20200213
i386                 randconfig-f001-20200213
i386                 randconfig-f002-20200213
i386                 randconfig-f003-20200213
x86_64               randconfig-g001-20200214
x86_64               randconfig-g002-20200214
x86_64               randconfig-g003-20200214
i386                 randconfig-g001-20200214
i386                 randconfig-g002-20200214
i386                 randconfig-g003-20200214
x86_64               randconfig-g001-20200213
x86_64               randconfig-g002-20200213
x86_64               randconfig-g003-20200213
i386                 randconfig-g001-20200213
i386                 randconfig-g002-20200213
i386                 randconfig-g003-20200213
x86_64               randconfig-g001-20200215
x86_64               randconfig-g002-20200215
x86_64               randconfig-g003-20200215
i386                 randconfig-g001-20200215
i386                 randconfig-g002-20200215
i386                 randconfig-g003-20200215
x86_64               randconfig-h001-20200214
x86_64               randconfig-h002-20200214
x86_64               randconfig-h003-20200214
i386                 randconfig-h001-20200214
i386                 randconfig-h002-20200214
i386                 randconfig-h003-20200214
x86_64               randconfig-h001-20200213
x86_64               randconfig-h002-20200213
x86_64               randconfig-h003-20200213
i386                 randconfig-h001-20200213
i386                 randconfig-h002-20200213
i386                 randconfig-h003-20200213
arc                  randconfig-a001-20200213
arm                  randconfig-a001-20200213
arm64                randconfig-a001-20200213
ia64                 randconfig-a001-20200213
powerpc              randconfig-a001-20200213
sparc                randconfig-a001-20200213
arc                  randconfig-a001-20200215
arm                  randconfig-a001-20200215
arm64                randconfig-a001-20200215
ia64                 randconfig-a001-20200215
powerpc              randconfig-a001-20200215
sparc                randconfig-a001-20200215
arc                  randconfig-a001-20200214
arm                  randconfig-a001-20200214
arm64                randconfig-a001-20200214
ia64                 randconfig-a001-20200214
powerpc              randconfig-a001-20200214
sparc                randconfig-a001-20200214
riscv                            allmodconfig
riscv                            allyesconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
um                                  defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
