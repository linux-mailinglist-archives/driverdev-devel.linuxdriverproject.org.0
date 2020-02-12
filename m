Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A0B159FB2
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 04:56:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8CDE62052F;
	Wed, 12 Feb 2020 03:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtyLcN471RBO; Wed, 12 Feb 2020 03:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C2FC20524;
	Wed, 12 Feb 2020 03:56:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D93341BF94D
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 03:56:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D17C481E2E
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 03:56:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlRfNcEmDHyh for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 03:56:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A8B0981A6B
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 03:56:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 19:56:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="347434231"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2020 19:56:40 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j1j8h-000Bq8-RG; Wed, 12 Feb 2020 11:56:39 +0800
Date: Wed, 12 Feb 2020 11:56:15 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 898362bb172007ce38474fd471a4ad32356140b3
Message-ID: <5e43775f.hr+TAu8PGuBaEJu0%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_remove_return_value
branch HEAD: 898362bb172007ce38474fd471a4ad32356140b3  debugfs: remove return value of debugfs_create_regset32()

elapsed time: 2883m

configs tested: 258
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
csky                                defconfig
s390                                defconfig
s390                          debug_defconfig
sh                               allmodconfig
mips                      fuloong2e_defconfig
s390                       zfcpdump_defconfig
nds32                               defconfig
alpha                               defconfig
sh                          rsk7269_defconfig
ia64                                defconfig
ia64                             allyesconfig
xtensa                          iss_defconfig
riscv                             allnoconfig
mips                      malta_kvm_defconfig
s390                             allyesconfig
xtensa                       common_defconfig
microblaze                      mmu_defconfig
riscv                               defconfig
powerpc                             defconfig
riscv                            allyesconfig
m68k                          multi_defconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
sparc64                          allmodconfig
riscv                    nommu_virt_defconfig
s390                             alldefconfig
h8300                    h8300h-sim_defconfig
mips                              allnoconfig
mips                             allyesconfig
ia64                              allnoconfig
sparc64                             defconfig
powerpc                           allnoconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
nds32                             allnoconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-a001-20200212
x86_64               randconfig-a002-20200212
x86_64               randconfig-a003-20200212
i386                 randconfig-a001-20200212
i386                 randconfig-a002-20200212
i386                 randconfig-a003-20200212
x86_64               randconfig-a001-20200211
x86_64               randconfig-a002-20200211
x86_64               randconfig-a003-20200211
i386                 randconfig-a001-20200211
i386                 randconfig-a002-20200211
i386                 randconfig-a003-20200211
alpha                randconfig-a001-20200210
m68k                 randconfig-a001-20200210
mips                 randconfig-a001-20200210
nds32                randconfig-a001-20200210
parisc               randconfig-a001-20200210
riscv                randconfig-a001-20200210
alpha                randconfig-a001-20200211
m68k                 randconfig-a001-20200211
mips                 randconfig-a001-20200211
nds32                randconfig-a001-20200211
parisc               randconfig-a001-20200211
riscv                randconfig-a001-20200211
c6x                  randconfig-a001-20200211
h8300                randconfig-a001-20200211
microblaze           randconfig-a001-20200211
nios2                randconfig-a001-20200211
sparc64              randconfig-a001-20200211
c6x                  randconfig-a001-20200212
h8300                randconfig-a001-20200212
microblaze           randconfig-a001-20200212
nios2                randconfig-a001-20200212
sparc64              randconfig-a001-20200212
nios2                randconfig-a001-20200210
sparc64              randconfig-a001-20200210
c6x                  randconfig-a001-20200210
h8300                randconfig-a001-20200210
microblaze           randconfig-a001-20200210
csky                 randconfig-a001-20200211
openrisc             randconfig-a001-20200211
s390                 randconfig-a001-20200211
sh                   randconfig-a001-20200211
xtensa               randconfig-a001-20200211
csky                 randconfig-a001-20200212
openrisc             randconfig-a001-20200212
s390                 randconfig-a001-20200212
sh                   randconfig-a001-20200212
xtensa               randconfig-a001-20200212
x86_64               randconfig-b001-20200211
x86_64               randconfig-b002-20200211
x86_64               randconfig-b003-20200211
i386                 randconfig-b001-20200211
i386                 randconfig-b002-20200211
i386                 randconfig-b003-20200211
x86_64               randconfig-b001-20200210
x86_64               randconfig-b002-20200210
x86_64               randconfig-b003-20200210
i386                 randconfig-b001-20200210
i386                 randconfig-b002-20200210
i386                 randconfig-b003-20200210
x86_64               randconfig-c001-20200211
x86_64               randconfig-c002-20200211
x86_64               randconfig-c003-20200211
i386                 randconfig-c001-20200211
i386                 randconfig-c002-20200211
i386                 randconfig-c003-20200211
x86_64               randconfig-c001-20200210
x86_64               randconfig-c002-20200210
x86_64               randconfig-c003-20200210
i386                 randconfig-c001-20200210
i386                 randconfig-c002-20200210
i386                 randconfig-c003-20200210
x86_64               randconfig-c001-20200212
x86_64               randconfig-c002-20200212
x86_64               randconfig-c003-20200212
i386                 randconfig-c001-20200212
i386                 randconfig-c002-20200212
i386                 randconfig-c003-20200212
x86_64               randconfig-d001-20200211
x86_64               randconfig-d002-20200211
x86_64               randconfig-d003-20200211
i386                 randconfig-d001-20200211
i386                 randconfig-d002-20200211
i386                 randconfig-d003-20200211
x86_64               randconfig-d001-20200212
x86_64               randconfig-d002-20200212
x86_64               randconfig-d003-20200212
i386                 randconfig-d001-20200212
i386                 randconfig-d002-20200212
i386                 randconfig-d003-20200212
x86_64               randconfig-e001-20200210
x86_64               randconfig-e002-20200210
x86_64               randconfig-e003-20200210
i386                 randconfig-e001-20200210
i386                 randconfig-e002-20200210
i386                 randconfig-e003-20200210
x86_64               randconfig-e001-20200211
x86_64               randconfig-e002-20200211
x86_64               randconfig-e003-20200211
i386                 randconfig-e001-20200211
i386                 randconfig-e002-20200211
i386                 randconfig-e003-20200211
x86_64               randconfig-e001-20200212
x86_64               randconfig-e002-20200212
x86_64               randconfig-e003-20200212
i386                 randconfig-e001-20200212
i386                 randconfig-e002-20200212
i386                 randconfig-e003-20200212
x86_64               randconfig-f001-20200212
x86_64               randconfig-f002-20200212
x86_64               randconfig-f003-20200212
i386                 randconfig-f001-20200212
i386                 randconfig-f002-20200212
i386                 randconfig-f003-20200212
x86_64               randconfig-f001-20200211
x86_64               randconfig-f002-20200211
x86_64               randconfig-f003-20200211
i386                 randconfig-f001-20200211
i386                 randconfig-f002-20200211
i386                 randconfig-f003-20200211
x86_64               randconfig-g001-20200211
x86_64               randconfig-g002-20200211
x86_64               randconfig-g003-20200211
i386                 randconfig-g001-20200211
i386                 randconfig-g002-20200211
i386                 randconfig-g003-20200211
x86_64               randconfig-g001-20200212
x86_64               randconfig-g002-20200212
x86_64               randconfig-g003-20200212
i386                 randconfig-g001-20200212
i386                 randconfig-g002-20200212
i386                 randconfig-g003-20200212
x86_64               randconfig-h001-20200211
x86_64               randconfig-h002-20200211
x86_64               randconfig-h003-20200211
i386                 randconfig-h001-20200211
i386                 randconfig-h002-20200211
i386                 randconfig-h003-20200211
x86_64               randconfig-h001-20200212
x86_64               randconfig-h002-20200212
x86_64               randconfig-h003-20200212
i386                 randconfig-h001-20200212
i386                 randconfig-h002-20200212
i386                 randconfig-h003-20200212
arc                  randconfig-a001-20200211
arm                  randconfig-a001-20200211
arm64                randconfig-a001-20200211
ia64                 randconfig-a001-20200211
powerpc              randconfig-a001-20200211
sparc                randconfig-a001-20200211
ia64                 randconfig-a001-20200210
arm64                randconfig-a001-20200210
sparc                randconfig-a001-20200210
arm                  randconfig-a001-20200210
powerpc              randconfig-a001-20200210
arc                  randconfig-a001-20200210
arc                  randconfig-a001-20200212
arm                  randconfig-a001-20200212
arm64                randconfig-a001-20200212
ia64                 randconfig-a001-20200212
powerpc              randconfig-a001-20200212
sparc                randconfig-a001-20200212
riscv                            allmodconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                              allnoconfig
sh                                allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
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
