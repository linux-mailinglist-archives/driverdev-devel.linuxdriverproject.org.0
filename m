Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A002141D78
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 12:04:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 103A181E5E;
	Sun, 19 Jan 2020 11:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rj7ssMsFilso; Sun, 19 Jan 2020 11:04:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1407C8347D;
	Sun, 19 Jan 2020 11:04:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D16C91BF3EB
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 11:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C86C485643
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 11:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVEI8Xzqqr_o for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 11:04:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CEC58563A
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 11:04:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 03:04:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,337,1574150400"; d="scan'208";a="244143102"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 19 Jan 2020 03:04:08 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1it8ND-000AhE-RL; Sun, 19 Jan 2020 19:04:07 +0800
Date: Sun, 19 Jan 2020 19:03:27 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 f3c19481820cca412a768ae1d6737f59b68acfed
Message-ID: <5e24377f.Y01Lj3yeVGpa5Zyk%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-next
branch HEAD: f3c19481820cca412a768ae1d6737f59b68acfed  cpu-topology: Don't error on more than CONFIG_NR_CPUS CPUs in device tree

elapsed time: 2369m

configs tested: 152
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64               randconfig-f001-20200119
x86_64               randconfig-f002-20200119
x86_64               randconfig-f003-20200119
i386                 randconfig-f001-20200119
i386                 randconfig-f002-20200119
i386                 randconfig-f003-20200119
x86_64               randconfig-g001-20200119
x86_64               randconfig-g002-20200119
x86_64               randconfig-g003-20200119
i386                 randconfig-g001-20200119
i386                 randconfig-g002-20200119
i386                 randconfig-g003-20200119
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
sparc                            allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64               randconfig-h001-20200119
x86_64               randconfig-h002-20200119
x86_64               randconfig-h003-20200119
i386                 randconfig-h001-20200119
i386                 randconfig-h002-20200119
i386                 randconfig-h003-20200119
csky                 randconfig-a001-20200119
openrisc             randconfig-a001-20200119
s390                 randconfig-a001-20200119
sh                   randconfig-a001-20200119
xtensa               randconfig-a001-20200119
x86_64               randconfig-a001-20200119
x86_64               randconfig-a002-20200119
x86_64               randconfig-a003-20200119
i386                 randconfig-a001-20200119
i386                 randconfig-a002-20200119
i386                 randconfig-a003-20200119
openrisc                    or1ksim_defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
x86_64               randconfig-d001-20200119
x86_64               randconfig-d002-20200119
x86_64               randconfig-d003-20200119
i386                 randconfig-d001-20200119
i386                 randconfig-d002-20200119
i386                 randconfig-d003-20200119
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
c6x                  randconfig-a001-20200119
h8300                randconfig-a001-20200119
microblaze           randconfig-a001-20200119
nios2                randconfig-a001-20200119
sparc64              randconfig-a001-20200119
alpha                randconfig-a001-20200119
m68k                 randconfig-a001-20200119
mips                 randconfig-a001-20200119
nds32                randconfig-a001-20200119
parisc               randconfig-a001-20200119
riscv                randconfig-a001-20200119
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-e001-20200119
x86_64               randconfig-e002-20200119
x86_64               randconfig-e003-20200119
i386                 randconfig-e001-20200119
i386                 randconfig-e002-20200119
i386                 randconfig-e003-20200119
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
arc                  randconfig-a001-20200119
arm                  randconfig-a001-20200119
arm64                randconfig-a001-20200119
ia64                 randconfig-a001-20200119
powerpc              randconfig-a001-20200119
sparc                randconfig-a001-20200119
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
