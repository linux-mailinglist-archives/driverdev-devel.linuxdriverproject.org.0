Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20544159FB3
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 04:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0107786506;
	Wed, 12 Feb 2020 03:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GrwHwq8ME+vZ; Wed, 12 Feb 2020 03:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDD8D8643F;
	Wed, 12 Feb 2020 03:57:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC98F1BF94D
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 03:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D92FD8637D
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 03:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmhdw2X0ZXd8 for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 03:57:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01CF183079
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 03:57:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 19:57:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="313277027"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2020 19:57:44 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j1j9k-000Ga0-CC; Wed, 12 Feb 2020 11:57:44 +0800
Date: Wed, 12 Feb 2020 11:57:37 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 8d3008b80ad7f4048eef7fe2b27215f56a5d11db
Message-ID: <5e4377b1.7cr71yh1VbzdTlF8%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 8d3008b80ad7f4048eef7fe2b27215f56a5d11db  powerpc: powernv: no need to check return value of debugfs_create functions

elapsed time: 2884m

configs tested: 216
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
mips                      fuloong2e_defconfig
sh                          rsk7269_defconfig
i386                                defconfig
sh                                allnoconfig
ia64                                defconfig
xtensa                          iss_defconfig
riscv                             allnoconfig
um                           x86_64_defconfig
nds32                               defconfig
m68k                          multi_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
sparc64                          allmodconfig
alpha                               defconfig
riscv                    nommu_virt_defconfig
h8300                    h8300h-sim_defconfig
mips                              allnoconfig
mips                             allyesconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
nds32                             allnoconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
arc                              allyesconfig
microblaze                    nommu_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
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
riscv                randconfig-a001-20200210
parisc               randconfig-a001-20200210
m68k                 randconfig-a001-20200210
nds32                randconfig-a001-20200210
mips                 randconfig-a001-20200210
alpha                randconfig-a001-20200210
h8300                randconfig-a001-20200210
nios2                randconfig-a001-20200210
microblaze           randconfig-a001-20200210
sparc64              randconfig-a001-20200210
c6x                  randconfig-a001-20200210
c6x                  randconfig-a001-20200211
h8300                randconfig-a001-20200211
microblaze           randconfig-a001-20200211
nios2                randconfig-a001-20200211
sparc64              randconfig-a001-20200211
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
sh                   randconfig-a001-20200210
s390                 randconfig-a001-20200210
xtensa               randconfig-a001-20200210
openrisc             randconfig-a001-20200210
csky                 randconfig-a001-20200210
x86_64               randconfig-b001-20200211
x86_64               randconfig-b002-20200211
x86_64               randconfig-b003-20200211
i386                 randconfig-b001-20200211
i386                 randconfig-b002-20200211
i386                 randconfig-b003-20200211
i386                 randconfig-b002-20200210
i386                 randconfig-b001-20200210
x86_64               randconfig-b001-20200210
x86_64               randconfig-b002-20200210
i386                 randconfig-b003-20200210
x86_64               randconfig-b003-20200210
i386                 randconfig-c001-20200210
i386                 randconfig-c002-20200210
x86_64               randconfig-c003-20200210
x86_64               randconfig-c002-20200210
i386                 randconfig-c003-20200210
x86_64               randconfig-c001-20200210
x86_64               randconfig-c001-20200211
x86_64               randconfig-c002-20200211
x86_64               randconfig-c003-20200211
i386                 randconfig-c001-20200211
i386                 randconfig-c002-20200211
i386                 randconfig-c003-20200211
i386                 randconfig-d003-20200210
i386                 randconfig-d002-20200210
x86_64               randconfig-d001-20200210
i386                 randconfig-d001-20200210
x86_64               randconfig-d002-20200210
x86_64               randconfig-d003-20200210
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
i386                 randconfig-g001-20200210
x86_64               randconfig-g003-20200210
x86_64               randconfig-g001-20200210
i386                 randconfig-g003-20200210
x86_64               randconfig-g002-20200210
i386                 randconfig-g002-20200210
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
riscv                            allmodconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
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
