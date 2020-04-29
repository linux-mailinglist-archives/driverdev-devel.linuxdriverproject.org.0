Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A13C11BD0CD
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 02:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E98F487610;
	Wed, 29 Apr 2020 00:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lubSZLqU0PrP; Wed, 29 Apr 2020 00:06:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19ECF875DA;
	Wed, 29 Apr 2020 00:06:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A44A1BF35A
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 00:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 76FAB868C8
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 00:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAwIhxDfJJK4 for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 00:06:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4CCC3868C0
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 00:06:02 +0000 (UTC)
IronPort-SDR: htQOK2HEUmzrmRCdOLur1/WMchg9sNtKTpq0iYRL9Nu+y0GdyT/XwB9TRX66BAdozxrOUsz2yl
 m7eNEbc+SHfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 17:06:00 -0700
IronPort-SDR: pisuATguJM0Zen7tKkqMOhDAU4Vh92iJaQTKzhfV5EQA1P8k3PKJWYJNR+wTKI+nqCgLBinyKY
 LeUbV1sckL/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="257788667"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 28 Apr 2020 17:05:57 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jTaEf-00030T-8E; Wed, 29 Apr 2020 08:05:57 +0800
Date: Wed, 29 Apr 2020 08:05:00 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 35a672363ab3e8dfe4ebcadb4dd0b2d06bb85ebe
Message-ID: <5ea8c4ac.OwB+KvZylJOnBo7n%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 35a672363ab3e8dfe4ebcadb4dd0b2d06bb85ebe  driver core: Ensure wait_for_device_probe() waits until the deferred_probe_timeout fires

elapsed time: 486m

configs tested: 161
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
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
arm64                            allmodconfig
sparc                            allyesconfig
um                             i386_defconfig
m68k                             allmodconfig
mips                       capcella_defconfig
microblaze                      mmu_defconfig
ia64                                defconfig
mips                             allyesconfig
h8300                    h8300h-sim_defconfig
i386                             allyesconfig
ia64                              allnoconfig
i386                              allnoconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                        generic_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                malta_kvm_guest_defconfig
mips                         tb0287_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200428
m68k                 randconfig-a001-20200428
alpha                randconfig-a001-20200428
nds32                randconfig-a001-20200428
riscv                randconfig-a001-20200428
nios2                randconfig-a001-20200428
h8300                randconfig-a001-20200428
c6x                  randconfig-a001-20200428
sparc64              randconfig-a001-20200428
microblaze           randconfig-a001-20200428
sh                   randconfig-a001-20200428
csky                 randconfig-a001-20200428
s390                 randconfig-a001-20200428
xtensa               randconfig-a001-20200428
openrisc             randconfig-a001-20200428
i386                 randconfig-c002-20200428
i386                 randconfig-c001-20200428
x86_64               randconfig-c001-20200428
i386                 randconfig-c003-20200428
x86_64               randconfig-c003-20200428
x86_64               randconfig-d001-20200428
i386                 randconfig-d002-20200428
i386                 randconfig-d001-20200428
x86_64               randconfig-d003-20200428
i386                 randconfig-d003-20200428
x86_64               randconfig-a001-20200428
x86_64               randconfig-a002-20200428
i386                 randconfig-a003-20200428
x86_64               randconfig-a003-20200428
i386                 randconfig-a002-20200428
i386                 randconfig-a001-20200428
x86_64               randconfig-f002-20200428
i386                 randconfig-f002-20200428
i386                 randconfig-f003-20200428
x86_64               randconfig-f003-20200428
i386                 randconfig-f001-20200428
x86_64               randconfig-f001-20200428
i386                 randconfig-g003-20200428
x86_64               randconfig-g001-20200428
i386                 randconfig-g001-20200428
x86_64               randconfig-g002-20200428
i386                 randconfig-g002-20200428
x86_64               randconfig-g003-20200428
x86_64               randconfig-h001-20200428
i386                 randconfig-h003-20200428
x86_64               randconfig-h003-20200428
x86_64               randconfig-h002-20200428
i386                 randconfig-h001-20200428
i386                 randconfig-h002-20200428
ia64                 randconfig-a001-20200428
powerpc              randconfig-a001-20200428
arm64                randconfig-a001-20200428
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
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
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
