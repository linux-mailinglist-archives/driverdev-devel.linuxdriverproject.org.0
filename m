Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C591149859
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 02:02:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C808786420;
	Sun, 26 Jan 2020 01:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jd-Fn8a-79H2; Sun, 26 Jan 2020 01:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31D2A86252;
	Sun, 26 Jan 2020 01:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F06DA1BF955
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 01:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED8C2861A4
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 01:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zoVVYn0l6ZiX for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 01:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2EE1860F9
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 01:02:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 17:02:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,363,1574150400"; d="scan'208";a="222936418"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jan 2020 17:02:23 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivWJj-000Arg-4y; Sun, 26 Jan 2020 09:02:23 +0800
Date: Sun, 26 Jan 2020 09:01:38 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 fc157998b8257fb9cfe753e7f4af1411da995c9b
Message-ID: <5e2ce4f2.VTiMbwhztP17PxK9%lkp@intel.com>
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
branch HEAD: fc157998b8257fb9cfe753e7f4af1411da995c9b  staging: most: usb: check for NULL device

elapsed time: 2177m

configs tested: 275
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64               randconfig-h001-20200125
x86_64               randconfig-h002-20200125
x86_64               randconfig-h003-20200125
i386                 randconfig-h001-20200125
i386                 randconfig-h002-20200125
i386                 randconfig-h003-20200125
x86_64               randconfig-f001-20200125
x86_64               randconfig-f002-20200125
x86_64               randconfig-f003-20200125
i386                 randconfig-f001-20200125
i386                 randconfig-f002-20200125
i386                 randconfig-f003-20200125
arc                  randconfig-a001-20200125
arm                  randconfig-a001-20200125
arm64                randconfig-a001-20200125
ia64                 randconfig-a001-20200125
powerpc              randconfig-a001-20200125
sparc                randconfig-a001-20200125
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-g001-20200126
x86_64               randconfig-g002-20200126
x86_64               randconfig-g003-20200126
i386                 randconfig-g001-20200126
i386                 randconfig-g002-20200126
i386                 randconfig-g003-20200126
x86_64               randconfig-h001-20200126
x86_64               randconfig-h002-20200126
x86_64               randconfig-h003-20200126
i386                 randconfig-h001-20200126
i386                 randconfig-h002-20200126
i386                 randconfig-h003-20200126
alpha                randconfig-a001-20200125
m68k                 randconfig-a001-20200125
mips                 randconfig-a001-20200125
nds32                randconfig-a001-20200125
parisc               randconfig-a001-20200125
riscv                randconfig-a001-20200125
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-b001-20200125
x86_64               randconfig-b002-20200125
x86_64               randconfig-b003-20200125
i386                 randconfig-b001-20200125
i386                 randconfig-b002-20200125
i386                 randconfig-b003-20200125
arm                              allmodconfig
arm64                            allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
csky                 randconfig-a001-20200126
openrisc             randconfig-a001-20200126
s390                 randconfig-a001-20200126
sh                   randconfig-a001-20200126
xtensa               randconfig-a001-20200126
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
x86_64               randconfig-e001-20200125
x86_64               randconfig-e002-20200125
x86_64               randconfig-e003-20200125
i386                 randconfig-e001-20200125
i386                 randconfig-e002-20200125
i386                 randconfig-e003-20200125
x86_64               randconfig-b001-20200126
x86_64               randconfig-b002-20200126
x86_64               randconfig-b003-20200126
i386                 randconfig-b001-20200126
i386                 randconfig-b002-20200126
i386                 randconfig-b003-20200126
alpha                randconfig-a001-20200126
m68k                 randconfig-a001-20200126
mips                 randconfig-a001-20200126
nds32                randconfig-a001-20200126
parisc               randconfig-a001-20200126
riscv                randconfig-a001-20200126
csky                 randconfig-a001-20200125
openrisc             randconfig-a001-20200125
s390                 randconfig-a001-20200125
xtensa               randconfig-a001-20200125
x86_64               randconfig-c001-20200125
x86_64               randconfig-c002-20200125
x86_64               randconfig-c003-20200125
i386                 randconfig-c001-20200125
i386                 randconfig-c002-20200125
i386                 randconfig-c003-20200125
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
x86_64               randconfig-g001-20200125
x86_64               randconfig-g002-20200125
x86_64               randconfig-g003-20200125
i386                 randconfig-g001-20200125
i386                 randconfig-g002-20200125
i386                 randconfig-g003-20200125
x86_64               randconfig-d001-20200125
x86_64               randconfig-d002-20200125
x86_64               randconfig-d003-20200125
i386                 randconfig-d001-20200125
i386                 randconfig-d002-20200125
i386                 randconfig-d003-20200125
c6x                  randconfig-a001-20200126
h8300                randconfig-a001-20200126
microblaze           randconfig-a001-20200126
nios2                randconfig-a001-20200126
sparc64              randconfig-a001-20200126
arc                  randconfig-a001-20200126
arm                  randconfig-a001-20200126
arm64                randconfig-a001-20200126
ia64                 randconfig-a001-20200126
powerpc              randconfig-a001-20200126
sparc                randconfig-a001-20200126
arc                  randconfig-a001-20200124
arm                  randconfig-a001-20200124
arm64                randconfig-a001-20200124
ia64                 randconfig-a001-20200124
powerpc              randconfig-a001-20200124
sparc                randconfig-a001-20200124
x86_64               randconfig-a001-20200125
x86_64               randconfig-a002-20200125
x86_64               randconfig-a003-20200125
i386                 randconfig-a001-20200125
i386                 randconfig-a002-20200125
i386                 randconfig-a003-20200125
x86_64               randconfig-e001-20200126
x86_64               randconfig-e002-20200126
x86_64               randconfig-e003-20200126
i386                 randconfig-e001-20200126
i386                 randconfig-e002-20200126
i386                 randconfig-e003-20200126
csky                 randconfig-a001-20200124
openrisc             randconfig-a001-20200124
s390                 randconfig-a001-20200124
sh                   randconfig-a001-20200124
xtensa               randconfig-a001-20200124
x86_64               randconfig-c001-20200126
x86_64               randconfig-c002-20200126
x86_64               randconfig-c003-20200126
i386                 randconfig-c001-20200126
i386                 randconfig-c002-20200126
i386                 randconfig-c003-20200126
c6x                  randconfig-a001-20200125
h8300                randconfig-a001-20200125
microblaze           randconfig-a001-20200125
nios2                randconfig-a001-20200125
sparc64              randconfig-a001-20200125
x86_64               randconfig-f001-20200126
x86_64               randconfig-f002-20200126
x86_64               randconfig-f003-20200126
i386                 randconfig-f001-20200126
i386                 randconfig-f002-20200126
i386                 randconfig-f003-20200126
x86_64               randconfig-g001-20200124
x86_64               randconfig-g002-20200124
x86_64               randconfig-g003-20200124
i386                 randconfig-g001-20200124
i386                 randconfig-g002-20200124
i386                 randconfig-g003-20200124
sh                   randconfig-a001-20200125
x86_64               randconfig-a001-20200126
x86_64               randconfig-a002-20200126
x86_64               randconfig-a003-20200126
i386                 randconfig-a001-20200126
i386                 randconfig-a002-20200126
i386                 randconfig-a003-20200126
c6x                  randconfig-a001-20200124
h8300                randconfig-a001-20200124
microblaze           randconfig-a001-20200124
nios2                randconfig-a001-20200124
sparc64              randconfig-a001-20200124
x86_64               randconfig-d001-20200124
x86_64               randconfig-d002-20200124
x86_64               randconfig-d003-20200124
i386                 randconfig-d001-20200124
i386                 randconfig-d002-20200124
i386                 randconfig-d003-20200124
x86_64               randconfig-a001-20200124
x86_64               randconfig-a002-20200124
x86_64               randconfig-a003-20200124
i386                 randconfig-a001-20200124
i386                 randconfig-a002-20200124
i386                 randconfig-a003-20200124
x86_64               randconfig-b001-20200124
x86_64               randconfig-b002-20200124
x86_64               randconfig-b003-20200124
i386                 randconfig-b001-20200124
i386                 randconfig-b002-20200124
i386                 randconfig-b003-20200124
alpha                randconfig-a001-20200124
m68k                 randconfig-a001-20200124
mips                 randconfig-a001-20200124
nds32                randconfig-a001-20200124
parisc               randconfig-a001-20200124
riscv                randconfig-a001-20200124

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
