Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D4817B23E
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Mar 2020 00:28:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8158A875FD;
	Thu,  5 Mar 2020 23:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85OpwGI9gxtq; Thu,  5 Mar 2020 23:28:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEDDC875EA;
	Thu,  5 Mar 2020 23:28:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 290B31BF37E
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 23:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2553987F1F
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 23:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KxtYfN7BzQD0 for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 23:28:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 106D187F0C
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 23:28:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 15:28:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="441741382"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 05 Mar 2020 15:27:59 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j9zuJ-0007y5-8e; Fri, 06 Mar 2020 07:27:59 +0800
Date: Fri, 06 Mar 2020 07:27:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 9211f0a6a91ada1ee28b3fb5f30d79c8a67c73b1
Message-ID: <5e618adf.kpjW0shYhUiHjqis%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 9211f0a6a91ada1ee28b3fb5f30d79c8a67c73b1  driver core: fw_devlink_flags can be static

elapsed time: 483m

configs tested: 160
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
sparc64                           allnoconfig
nds32                               defconfig
xtensa                       common_defconfig
ia64                                defconfig
powerpc                             defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
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
xtensa                          iss_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         64r6el_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200306
x86_64               randconfig-a002-20200306
x86_64               randconfig-a003-20200306
i386                 randconfig-a001-20200306
i386                 randconfig-a002-20200306
i386                 randconfig-a003-20200306
riscv                randconfig-a001-20200305
alpha                randconfig-a001-20200305
m68k                 randconfig-a001-20200305
nds32                randconfig-a001-20200305
mips                 randconfig-a001-20200305
parisc               randconfig-a001-20200305
sparc64              randconfig-a001-20200305
c6x                  randconfig-a001-20200305
nios2                randconfig-a001-20200305
h8300                randconfig-a001-20200305
sh                   randconfig-a001-20200305
openrisc             randconfig-a001-20200305
csky                 randconfig-a001-20200305
s390                 randconfig-a001-20200305
xtensa               randconfig-a001-20200305
x86_64               randconfig-b002-20200305
x86_64               randconfig-b001-20200305
i386                 randconfig-b001-20200305
i386                 randconfig-b003-20200305
i386                 randconfig-b002-20200305
x86_64               randconfig-b003-20200305
i386                 randconfig-c002-20200305
x86_64               randconfig-c003-20200305
i386                 randconfig-c001-20200305
x86_64               randconfig-c002-20200305
i386                 randconfig-c003-20200305
x86_64               randconfig-c001-20200305
x86_64               randconfig-e001-20200305
x86_64               randconfig-e002-20200305
x86_64               randconfig-e003-20200305
i386                 randconfig-e001-20200305
i386                 randconfig-e002-20200305
i386                 randconfig-e003-20200305
x86_64               randconfig-f001-20200305
x86_64               randconfig-f002-20200305
x86_64               randconfig-f003-20200305
i386                 randconfig-f001-20200305
i386                 randconfig-f002-20200305
i386                 randconfig-f003-20200305
x86_64               randconfig-g001-20200306
x86_64               randconfig-g002-20200306
x86_64               randconfig-g003-20200306
i386                 randconfig-g001-20200306
i386                 randconfig-g002-20200306
i386                 randconfig-g003-20200306
i386                 randconfig-h001-20200305
x86_64               randconfig-h002-20200305
x86_64               randconfig-h001-20200305
x86_64               randconfig-h003-20200305
i386                 randconfig-h003-20200305
i386                 randconfig-h002-20200305
x86_64               randconfig-h001-20200306
x86_64               randconfig-h002-20200306
x86_64               randconfig-h003-20200306
i386                 randconfig-h001-20200306
i386                 randconfig-h002-20200306
i386                 randconfig-h003-20200306
arc                  randconfig-a001-20200305
arm                  randconfig-a001-20200305
arm64                randconfig-a001-20200305
ia64                 randconfig-a001-20200305
powerpc              randconfig-a001-20200305
sparc                randconfig-a001-20200305
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
