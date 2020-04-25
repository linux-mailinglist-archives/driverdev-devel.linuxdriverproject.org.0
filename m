Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7891B831D
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 03:49:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FCAF86396;
	Sat, 25 Apr 2020 01:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flAkomPA_LBC; Sat, 25 Apr 2020 01:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 727D7866A9;
	Sat, 25 Apr 2020 01:49:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8026E1BF28C
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 01:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 753B420456
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 01:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdvqqkXEV6bz for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 01:49:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id DF7B920450
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 01:49:46 +0000 (UTC)
IronPort-SDR: zxTIBk9oBCmM+//i7DEG5N5U6wpYZzo3t6m2Z42KqOTi4PYXdmP5hSh/uaB3wZro2I7v7I7dkC
 nV2pKYZmD9yg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 18:49:45 -0700
IronPort-SDR: 7/K5yT7z1DpBVQM9e7FV7j0ha/YxeFEPoEU9ltwB4eZ+PhG1kt9bUd+OUd9vuCwBrOcNCgfFqA
 vUHZpE0oUqtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,314,1583222400"; d="scan'208";a="281037155"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Apr 2020 18:49:44 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jS9wt-000ItQ-Go; Sat, 25 Apr 2020 09:49:43 +0800
Date: Sat, 25 Apr 2020 09:49:01 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 2b07021a940ce1cdec736ec0cacad6af77717afc
Message-ID: <5ea3970d.sXWE7RpM7YAaiqWH%lkp@intel.com>
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
branch HEAD: 2b07021a940ce1cdec736ec0cacad6af77717afc  debugfs: remove return value of debugfs_create_u32()

elapsed time: 6837m

configs tested: 326
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                             allnoconfig
arm                               allnoconfig
arm64                            allmodconfig
arm                              allmodconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
ia64                          tiger_defconfig
arc                                 defconfig
ia64                                defconfig
ia64                              allnoconfig
microblaze                      mmu_defconfig
mips                malta_kvm_guest_defconfig
ia64                             alldefconfig
i386                              allnoconfig
s390                             allmodconfig
sh                  sh7785lcr_32bit_defconfig
ia64                        generic_defconfig
um                           x86_64_defconfig
riscv                            allmodconfig
parisc                            allnoconfig
s390                       zfcpdump_defconfig
nds32                               defconfig
powerpc                           allnoconfig
nds32                             allnoconfig
riscv                    nommu_virt_defconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
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
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200422
mips                 randconfig-a001-20200422
alpha                randconfig-a001-20200422
m68k                 randconfig-a001-20200422
riscv                randconfig-a001-20200422
nds32                randconfig-a001-20200422
parisc               randconfig-a001-20200421
alpha                randconfig-a001-20200421
mips                 randconfig-a001-20200421
m68k                 randconfig-a001-20200421
riscv                randconfig-a001-20200421
nds32                randconfig-a001-20200421
parisc               randconfig-a001-20200424
alpha                randconfig-a001-20200424
m68k                 randconfig-a001-20200424
riscv                randconfig-a001-20200424
nds32                randconfig-a001-20200424
parisc               randconfig-a001-20200423
alpha                randconfig-a001-20200423
mips                 randconfig-a001-20200423
riscv                randconfig-a001-20200423
nds32                randconfig-a001-20200423
nios2                randconfig-a001-20200421
h8300                randconfig-a001-20200421
c6x                  randconfig-a001-20200421
sparc64              randconfig-a001-20200421
microblaze           randconfig-a001-20200421
nios2                randconfig-a001-20200424
c6x                  randconfig-a001-20200424
h8300                randconfig-a001-20200424
sparc64              randconfig-a001-20200424
microblaze           randconfig-a001-20200424
nios2                randconfig-a001-20200422
h8300                randconfig-a001-20200422
c6x                  randconfig-a001-20200422
sparc64              randconfig-a001-20200422
microblaze           randconfig-a001-20200422
nios2                randconfig-a001-20200425
c6x                  randconfig-a001-20200425
h8300                randconfig-a001-20200425
sparc64              randconfig-a001-20200425
microblaze           randconfig-a001-20200425
sh                   randconfig-a001-20200421
csky                 randconfig-a001-20200421
s390                 randconfig-a001-20200421
xtensa               randconfig-a001-20200421
openrisc             randconfig-a001-20200421
sh                   randconfig-a001-20200422
csky                 randconfig-a001-20200422
s390                 randconfig-a001-20200422
xtensa               randconfig-a001-20200422
openrisc             randconfig-a001-20200422
sh                   randconfig-a001-20200424
csky                 randconfig-a001-20200424
s390                 randconfig-a001-20200424
xtensa               randconfig-a001-20200424
openrisc             randconfig-a001-20200424
sh                   randconfig-a001-20200425
csky                 randconfig-a001-20200425
s390                 randconfig-a001-20200425
xtensa               randconfig-a001-20200425
openrisc             randconfig-a001-20200425
x86_64               randconfig-a001-20200420
i386                 randconfig-a003-20200420
x86_64               randconfig-a003-20200420
i386                 randconfig-a002-20200420
i386                 randconfig-a001-20200420
x86_64               randconfig-a002-20200420
x86_64               randconfig-a001-20200422
i386                 randconfig-a003-20200422
x86_64               randconfig-a003-20200422
i386                 randconfig-a002-20200422
i386                 randconfig-a001-20200422
x86_64               randconfig-a002-20200422
i386                 randconfig-b002-20200421
i386                 randconfig-b001-20200421
x86_64               randconfig-b001-20200421
i386                 randconfig-b003-20200421
x86_64               randconfig-b002-20200421
x86_64               randconfig-b003-20200421
i386                 randconfig-b002-20200422
i386                 randconfig-b001-20200422
x86_64               randconfig-b001-20200422
i386                 randconfig-b003-20200422
x86_64               randconfig-b003-20200422
x86_64               randconfig-a001-20200424
i386                 randconfig-a003-20200424
x86_64               randconfig-a003-20200424
i386                 randconfig-a002-20200424
i386                 randconfig-a001-20200424
x86_64               randconfig-a002-20200424
i386                 randconfig-c001-20200421
x86_64               randconfig-c002-20200421
x86_64               randconfig-c001-20200421
i386                 randconfig-c003-20200421
x86_64               randconfig-c003-20200421
i386                 randconfig-c002-20200421
i386                 randconfig-c002-20200424
i386                 randconfig-c001-20200424
x86_64               randconfig-c001-20200424
i386                 randconfig-c003-20200424
x86_64               randconfig-c003-20200424
i386                 randconfig-c002-20200423
i386                 randconfig-c001-20200423
x86_64               randconfig-c002-20200423
x86_64               randconfig-c001-20200423
i386                 randconfig-c003-20200423
x86_64               randconfig-c003-20200423
x86_64               randconfig-d001-20200421
x86_64               randconfig-d002-20200421
i386                 randconfig-d002-20200421
i386                 randconfig-d001-20200421
x86_64               randconfig-d003-20200421
i386                 randconfig-d003-20200421
x86_64               randconfig-d002-20200422
i386                 randconfig-d002-20200422
i386                 randconfig-d001-20200422
i386                 randconfig-d003-20200422
x86_64               randconfig-d001-20200423
x86_64               randconfig-d002-20200423
i386                 randconfig-d002-20200423
i386                 randconfig-d001-20200423
x86_64               randconfig-d003-20200423
i386                 randconfig-d003-20200423
x86_64               randconfig-d001-20200424
i386                 randconfig-d002-20200424
i386                 randconfig-d001-20200424
x86_64               randconfig-d003-20200424
i386                 randconfig-d003-20200424
x86_64               randconfig-e002-20200421
i386                 randconfig-e003-20200421
x86_64               randconfig-e003-20200421
i386                 randconfig-e002-20200421
i386                 randconfig-e001-20200421
x86_64               randconfig-e001-20200421
x86_64               randconfig-e002-20200423
i386                 randconfig-e003-20200423
x86_64               randconfig-e003-20200423
i386                 randconfig-e002-20200423
i386                 randconfig-e001-20200423
x86_64               randconfig-e001-20200423
i386                 randconfig-e003-20200422
x86_64               randconfig-e003-20200422
i386                 randconfig-e002-20200422
i386                 randconfig-e001-20200422
x86_64               randconfig-e001-20200422
i386                 randconfig-f002-20200421
i386                 randconfig-f003-20200421
x86_64               randconfig-f003-20200421
i386                 randconfig-f001-20200421
x86_64               randconfig-f001-20200421
x86_64               randconfig-f002-20200424
i386                 randconfig-f002-20200424
i386                 randconfig-f003-20200424
x86_64               randconfig-f003-20200424
i386                 randconfig-f001-20200424
x86_64               randconfig-f001-20200424
x86_64               randconfig-f002-20200422
i386                 randconfig-f002-20200422
x86_64               randconfig-f003-20200422
i386                 randconfig-f003-20200422
i386                 randconfig-f001-20200422
x86_64               randconfig-f001-20200422
i386                 randconfig-g003-20200422
x86_64               randconfig-g001-20200422
i386                 randconfig-g001-20200422
x86_64               randconfig-g002-20200422
i386                 randconfig-g002-20200422
x86_64               randconfig-g003-20200422
i386                 randconfig-g003-20200424
i386                 randconfig-g001-20200424
x86_64               randconfig-g001-20200424
x86_64               randconfig-g002-20200424
i386                 randconfig-g002-20200424
x86_64               randconfig-g003-20200424
i386                 randconfig-g003-20200423
x86_64               randconfig-g001-20200423
i386                 randconfig-g001-20200423
i386                 randconfig-g002-20200423
x86_64               randconfig-g003-20200423
i386                 randconfig-h003-20200421
x86_64               randconfig-h001-20200421
x86_64               randconfig-h003-20200421
i386                 randconfig-h002-20200421
i386                 randconfig-h001-20200421
i386                 randconfig-h003-20200422
x86_64               randconfig-h001-20200422
x86_64               randconfig-h003-20200422
x86_64               randconfig-h002-20200422
i386                 randconfig-h001-20200422
i386                 randconfig-h002-20200422
i386                 randconfig-h003-20200424
x86_64               randconfig-h001-20200424
x86_64               randconfig-h003-20200424
x86_64               randconfig-h002-20200424
i386                 randconfig-h001-20200424
i386                 randconfig-h002-20200424
sparc                randconfig-a001-20200423
ia64                 randconfig-a001-20200423
arm                  randconfig-a001-20200423
arm64                randconfig-a001-20200423
arc                  randconfig-a001-20200423
sparc                randconfig-a001-20200421
ia64                 randconfig-a001-20200421
powerpc              randconfig-a001-20200421
arm                  randconfig-a001-20200421
arc                  randconfig-a001-20200421
sparc                randconfig-a001-20200422
ia64                 randconfig-a001-20200422
powerpc              randconfig-a001-20200422
arm                  randconfig-a001-20200422
arm64                randconfig-a001-20200422
arc                  randconfig-a001-20200422
sparc                randconfig-a001-20200424
ia64                 randconfig-a001-20200424
powerpc              randconfig-a001-20200424
arm64                randconfig-a001-20200424
arc                  randconfig-a001-20200424
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
