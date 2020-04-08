Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB631A1C3D
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 09:04:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 357DA87BC8;
	Wed,  8 Apr 2020 07:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQeNEacHB6bb; Wed,  8 Apr 2020 07:04:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35B7687B6D;
	Wed,  8 Apr 2020 07:04:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD1941BF589
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 07:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7FDB86E26
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 07:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4F12dCRUXpRf for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 07:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A8C286DCA
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 07:04:35 +0000 (UTC)
IronPort-SDR: kheQHEtNid7W177hW3E+JifWlvWxX1GIBYdgc1qbkMSxZvBzgPKg8PGCuLJr7eKPI4VdgygAk9
 9LZ4iwrcdA6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 00:04:35 -0700
IronPort-SDR: SdwrOf3xXppg8Onbg6Ph7IBpFVm1bekHr+fcKJt38ytlbU2kAnpz1r3Nzby7uwluGPFQock6iN
 1Qug3BzOpMhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="330456776"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 08 Apr 2020 00:04:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jM4lF-000E9z-65; Wed, 08 Apr 2020 15:04:33 +0800
Date: Wed, 08 Apr 2020 15:03:45 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 597e9c3a8e339d8286376a615a3b18cdf3a07101
Message-ID: <5e8d7751.l/K0PRFEQ5wmTC1k%lkp@intel.com>
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
branch HEAD: 597e9c3a8e339d8286376a615a3b18cdf3a07101  staging: rtl8723bs: hal: Correct misspelled symbolic name

elapsed time: 819m

configs tested: 192
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
ia64                              allnoconfig
mips                      malta_kvm_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
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
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a003-20200408
i386                 randconfig-a002-20200408
x86_64               randconfig-a001-20200408
x86_64               randconfig-a002-20200408
i386                 randconfig-a003-20200408
i386                 randconfig-a001-20200408
alpha                randconfig-a001-20200408
m68k                 randconfig-a001-20200408
mips                 randconfig-a001-20200408
nds32                randconfig-a001-20200408
parisc               randconfig-a001-20200408
riscv                randconfig-a001-20200408
c6x                  randconfig-a001-20200408
h8300                randconfig-a001-20200408
microblaze           randconfig-a001-20200408
nios2                randconfig-a001-20200408
sparc64              randconfig-a001-20200408
sparc64              randconfig-a001-20200407
h8300                randconfig-a001-20200407
nios2                randconfig-a001-20200407
microblaze           randconfig-a001-20200407
c6x                  randconfig-a001-20200407
s390                 randconfig-a001-20200407
xtensa               randconfig-a001-20200407
csky                 randconfig-a001-20200407
openrisc             randconfig-a001-20200407
sh                   randconfig-a001-20200407
csky                 randconfig-a001-20200408
openrisc             randconfig-a001-20200408
s390                 randconfig-a001-20200408
sh                   randconfig-a001-20200408
xtensa               randconfig-a001-20200408
x86_64               randconfig-b001-20200408
x86_64               randconfig-b002-20200408
x86_64               randconfig-b003-20200408
i386                 randconfig-b001-20200408
i386                 randconfig-b002-20200408
i386                 randconfig-b003-20200408
x86_64               randconfig-c001-20200408
x86_64               randconfig-c002-20200408
x86_64               randconfig-c003-20200408
i386                 randconfig-c001-20200408
i386                 randconfig-c002-20200408
i386                 randconfig-c003-20200408
i386                 randconfig-c003-20200407
i386                 randconfig-c001-20200407
x86_64               randconfig-c002-20200407
x86_64               randconfig-c003-20200407
i386                 randconfig-c002-20200407
x86_64               randconfig-c001-20200407
x86_64               randconfig-d001-20200407
x86_64               randconfig-d002-20200407
x86_64               randconfig-d003-20200407
i386                 randconfig-d001-20200407
i386                 randconfig-d002-20200407
i386                 randconfig-d003-20200407
x86_64               randconfig-d001-20200408
x86_64               randconfig-d002-20200408
x86_64               randconfig-d003-20200408
i386                 randconfig-d001-20200408
i386                 randconfig-d002-20200408
i386                 randconfig-d003-20200408
x86_64               randconfig-e001-20200408
x86_64               randconfig-e002-20200408
x86_64               randconfig-e003-20200408
i386                 randconfig-e001-20200408
i386                 randconfig-e002-20200408
i386                 randconfig-e003-20200408
i386                 randconfig-f001-20200408
i386                 randconfig-f003-20200408
x86_64               randconfig-f003-20200408
x86_64               randconfig-f001-20200408
i386                 randconfig-f002-20200408
x86_64               randconfig-g001-20200407
x86_64               randconfig-g002-20200407
x86_64               randconfig-g003-20200407
i386                 randconfig-g001-20200407
i386                 randconfig-g002-20200407
i386                 randconfig-g003-20200407
x86_64               randconfig-h001-20200408
x86_64               randconfig-h002-20200408
x86_64               randconfig-h003-20200408
i386                 randconfig-h001-20200408
i386                 randconfig-h002-20200408
i386                 randconfig-h003-20200408
arc                  randconfig-a001-20200407
arm                  randconfig-a001-20200407
arm64                randconfig-a001-20200407
ia64                 randconfig-a001-20200407
powerpc              randconfig-a001-20200407
sparc                randconfig-a001-20200407
arc                  randconfig-a001-20200408
arm                  randconfig-a001-20200408
arm64                randconfig-a001-20200408
ia64                 randconfig-a001-20200408
powerpc              randconfig-a001-20200408
sparc                randconfig-a001-20200408
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
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
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
