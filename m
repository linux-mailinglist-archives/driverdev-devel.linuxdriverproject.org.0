Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAB3193581
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 03:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4316725DCE;
	Thu, 26 Mar 2020 02:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohCteGA2I3LH; Thu, 26 Mar 2020 02:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1A4F25DC5;
	Thu, 26 Mar 2020 02:01:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FA581BF293
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 02:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A8A188851
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 02:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LTmBnK7xs1bG for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 02:01:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2DD3588098
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 02:01:28 +0000 (UTC)
IronPort-SDR: 8/zK2uxYXkl5V49L3D8g+s05TJJlGFuqoFpAfF/viTNM+8pyPaKVJ8CnGzSTY5EmlBAfpaHPmY
 apgSzrJwHIog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 19:01:27 -0700
IronPort-SDR: Za7smLXgvN6GHrp1sX8tLnzp8c+rHI3mA0H7JBXlEQLXkqWHLB74tj41g6Og8gZPipqtrxR1Y7
 mfmD216oMXxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,306,1580803200"; d="scan'208";a="282336951"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 19:01:26 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jHHpl-000GQx-Lm; Thu, 26 Mar 2020 10:01:25 +0800
Date: Thu, 26 Mar 2020 10:00:34 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 c442a0d18744d4a5857d513f171d68ed6a54df5b
Message-ID: <5e7c0cc2.PWTl5/pBG+VkYuQh%lkp@intel.com>
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
branch HEAD: c442a0d18744d4a5857d513f171d68ed6a54df5b  driver core: Set fw_devlink to "permissive" behavior by default

elapsed time: 2224m

configs tested: 233
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
microblaze                    nommu_defconfig
h8300                       h8s-sim_defconfig
m68k                           sun3_defconfig
s390                             allyesconfig
mips                             allyesconfig
s390                              allnoconfig
sh                            titan_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
sparc64                           allnoconfig
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
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200324
x86_64               randconfig-a002-20200324
x86_64               randconfig-a003-20200324
i386                 randconfig-a001-20200324
i386                 randconfig-a002-20200324
i386                 randconfig-a003-20200324
x86_64               randconfig-a001-20200325
x86_64               randconfig-a002-20200325
x86_64               randconfig-a003-20200325
i386                 randconfig-a001-20200325
i386                 randconfig-a002-20200325
i386                 randconfig-a003-20200325
alpha                randconfig-a001-20200325
m68k                 randconfig-a001-20200325
mips                 randconfig-a001-20200325
nds32                randconfig-a001-20200325
parisc               randconfig-a001-20200325
riscv                randconfig-a001-20200325
alpha                randconfig-a001-20200324
m68k                 randconfig-a001-20200324
mips                 randconfig-a001-20200324
nds32                randconfig-a001-20200324
parisc               randconfig-a001-20200324
riscv                randconfig-a001-20200324
c6x                  randconfig-a001-20200324
h8300                randconfig-a001-20200324
microblaze           randconfig-a001-20200324
nios2                randconfig-a001-20200324
sparc64              randconfig-a001-20200324
c6x                  randconfig-a001-20200325
h8300                randconfig-a001-20200325
microblaze           randconfig-a001-20200325
nios2                randconfig-a001-20200325
sparc64              randconfig-a001-20200325
csky                 randconfig-a001-20200324
openrisc             randconfig-a001-20200324
s390                 randconfig-a001-20200324
xtensa               randconfig-a001-20200324
csky                 randconfig-a001-20200325
openrisc             randconfig-a001-20200325
s390                 randconfig-a001-20200325
sh                   randconfig-a001-20200325
xtensa               randconfig-a001-20200325
x86_64               randconfig-b001-20200325
x86_64               randconfig-b002-20200325
x86_64               randconfig-b003-20200325
i386                 randconfig-b001-20200325
i386                 randconfig-b002-20200325
i386                 randconfig-b003-20200325
x86_64               randconfig-b001-20200324
x86_64               randconfig-b002-20200324
x86_64               randconfig-b003-20200324
i386                 randconfig-b001-20200324
i386                 randconfig-b002-20200324
i386                 randconfig-b003-20200324
x86_64               randconfig-c001-20200324
x86_64               randconfig-c002-20200324
x86_64               randconfig-c003-20200324
i386                 randconfig-c001-20200324
i386                 randconfig-c002-20200324
i386                 randconfig-c003-20200324
x86_64               randconfig-c001-20200325
x86_64               randconfig-c002-20200325
x86_64               randconfig-c003-20200325
i386                 randconfig-c001-20200325
i386                 randconfig-c002-20200325
i386                 randconfig-c003-20200325
x86_64               randconfig-d001-20200325
x86_64               randconfig-d002-20200325
x86_64               randconfig-d003-20200325
i386                 randconfig-d001-20200325
i386                 randconfig-d002-20200325
i386                 randconfig-d003-20200325
x86_64               randconfig-d001-20200324
x86_64               randconfig-d002-20200324
x86_64               randconfig-d003-20200324
i386                 randconfig-d001-20200324
i386                 randconfig-d002-20200324
i386                 randconfig-d003-20200324
x86_64               randconfig-e001-20200324
x86_64               randconfig-e002-20200324
x86_64               randconfig-e003-20200324
i386                 randconfig-e001-20200324
i386                 randconfig-e002-20200324
i386                 randconfig-e003-20200324
x86_64               randconfig-e001-20200325
x86_64               randconfig-e002-20200325
x86_64               randconfig-e003-20200325
i386                 randconfig-e001-20200325
i386                 randconfig-e002-20200325
i386                 randconfig-e003-20200325
i386                 randconfig-f001-20200324
i386                 randconfig-f003-20200324
i386                 randconfig-f002-20200324
x86_64               randconfig-f002-20200324
x86_64               randconfig-f003-20200324
x86_64               randconfig-f001-20200324
x86_64               randconfig-f001-20200325
x86_64               randconfig-f002-20200325
x86_64               randconfig-f003-20200325
i386                 randconfig-f001-20200325
i386                 randconfig-f002-20200325
i386                 randconfig-f003-20200325
x86_64               randconfig-g001-20200324
x86_64               randconfig-g002-20200324
x86_64               randconfig-g003-20200324
i386                 randconfig-g001-20200324
i386                 randconfig-g002-20200324
i386                 randconfig-g003-20200324
x86_64               randconfig-g001-20200325
x86_64               randconfig-g002-20200325
x86_64               randconfig-g003-20200325
i386                 randconfig-g001-20200325
i386                 randconfig-g002-20200325
i386                 randconfig-g003-20200325
x86_64               randconfig-h001-20200324
x86_64               randconfig-h002-20200324
x86_64               randconfig-h003-20200324
i386                 randconfig-h001-20200324
i386                 randconfig-h002-20200324
i386                 randconfig-h003-20200324
x86_64               randconfig-h001-20200325
x86_64               randconfig-h002-20200325
x86_64               randconfig-h003-20200325
i386                 randconfig-h001-20200325
i386                 randconfig-h002-20200325
i386                 randconfig-h003-20200325
arc                  randconfig-a001-20200325
arm                  randconfig-a001-20200325
arm64                randconfig-a001-20200325
ia64                 randconfig-a001-20200325
powerpc              randconfig-a001-20200325
sparc                randconfig-a001-20200325
arc                  randconfig-a001-20200324
arm                  randconfig-a001-20200324
arm64                randconfig-a001-20200324
ia64                 randconfig-a001-20200324
powerpc              randconfig-a001-20200324
sparc                randconfig-a001-20200324
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                          allmodconfig
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
