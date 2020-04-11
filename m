Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 021D31A5326
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 19:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BCD51FE65;
	Sat, 11 Apr 2020 17:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FHbeXhuYAUCj; Sat, 11 Apr 2020 17:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 70D862271F;
	Sat, 11 Apr 2020 17:28:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE7831BF29E
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 17:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C77A587D76
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 17:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqk7kCgAAmCz for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 17:28:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF3A587C63
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 17:28:31 +0000 (UTC)
IronPort-SDR: ljFZW2Ua//xrFCloHT1kWsne6lOOIbzhfwNrj43SGEchOYkaHGmtItjyxU8y8smz9aYQXUFgVY
 gbJGNVov3Oeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2020 10:28:31 -0700
IronPort-SDR: 9KUlNzOnpCgWnOjTaruzqe6Bvo/rKX0WCwci4cfrnWpaXqcPbw93PeVhOm+InLBXwZIpH8HtLY
 fwCgaSzL+x5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,371,1580803200"; d="scan'208";a="255780276"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 11 Apr 2020 10:28:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jNJvh-0001Di-3L; Sun, 12 Apr 2020 01:28:29 +0800
Date: Sun, 12 Apr 2020 01:27:51 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 134c0700a05174f2520d51ba4dd95698ffa779de
Message-ID: <5e91fe17.0FVTxoM/DUm8qStp%lkp@intel.com>
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
branch HEAD: 134c0700a05174f2520d51ba4dd95698ffa779de  staging: rtl8723bs: hal: Correct misspelled symbolic name

elapsed time: 484m

configs tested: 166
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
ia64                                defconfig
powerpc                             defconfig
powerpc                           allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
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
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200410
x86_64               randconfig-a002-20200410
x86_64               randconfig-a003-20200410
i386                 randconfig-a001-20200410
i386                 randconfig-a002-20200410
i386                 randconfig-a003-20200410
alpha                randconfig-a001-20200410
m68k                 randconfig-a001-20200410
mips                 randconfig-a001-20200410
nds32                randconfig-a001-20200410
parisc               randconfig-a001-20200410
riscv                randconfig-a001-20200410
c6x                  randconfig-a001-20200410
h8300                randconfig-a001-20200410
microblaze           randconfig-a001-20200410
nios2                randconfig-a001-20200410
sparc64              randconfig-a001-20200410
c6x                  randconfig-a001-20200412
h8300                randconfig-a001-20200412
microblaze           randconfig-a001-20200412
nios2                randconfig-a001-20200412
sparc64              randconfig-a001-20200412
s390                 randconfig-a001-20200411
xtensa               randconfig-a001-20200411
sh                   randconfig-a001-20200411
openrisc             randconfig-a001-20200411
csky                 randconfig-a001-20200411
x86_64               randconfig-b002-20200410
i386                 randconfig-b001-20200410
x86_64               randconfig-b001-20200410
x86_64               randconfig-b003-20200410
i386                 randconfig-b003-20200410
i386                 randconfig-b002-20200410
x86_64               randconfig-c001-20200410
x86_64               randconfig-c002-20200410
x86_64               randconfig-c003-20200410
i386                 randconfig-c001-20200410
i386                 randconfig-c002-20200410
i386                 randconfig-c003-20200410
x86_64               randconfig-d001-20200410
x86_64               randconfig-d002-20200410
x86_64               randconfig-d003-20200410
i386                 randconfig-d001-20200410
i386                 randconfig-d002-20200410
i386                 randconfig-d003-20200410
x86_64               randconfig-e001-20200410
x86_64               randconfig-e002-20200410
x86_64               randconfig-e003-20200410
i386                 randconfig-e001-20200410
i386                 randconfig-e002-20200410
i386                 randconfig-e003-20200410
x86_64               randconfig-f001-20200411
x86_64               randconfig-f002-20200411
x86_64               randconfig-f003-20200411
i386                 randconfig-f001-20200411
i386                 randconfig-f002-20200411
i386                 randconfig-f003-20200411
x86_64               randconfig-g003-20200410
i386                 randconfig-g003-20200410
x86_64               randconfig-g002-20200410
x86_64               randconfig-g001-20200410
i386                 randconfig-g002-20200410
i386                 randconfig-g001-20200410
x86_64               randconfig-h001-20200410
i386                 randconfig-h003-20200410
i386                 randconfig-h002-20200410
i386                 randconfig-h001-20200410
x86_64               randconfig-h003-20200410
x86_64               randconfig-h002-20200410
arm64                randconfig-a001-20200410
ia64                 randconfig-a001-20200410
arc                  randconfig-a001-20200410
sparc                randconfig-a001-20200410
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
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
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
