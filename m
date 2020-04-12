Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DD31A5FE7
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 20:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DE4285A60;
	Sun, 12 Apr 2020 18:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dgyL195KFPA; Sun, 12 Apr 2020 18:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2B2185535;
	Sun, 12 Apr 2020 18:47:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F4951BF3D9
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 18:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96628203AA
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 18:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCwnm4-Wnhgv for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 18:47:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 8178620026
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 18:47:14 +0000 (UTC)
IronPort-SDR: Lpo0GzoOMqAH1B5u1qiWVsifIholsCZNzr8p1tox2R6NBxGMl4C38lSiafAErIxNXR1TnoyCcH
 vbBUtHXajniA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2020 11:47:13 -0700
IronPort-SDR: oxGDRNtPUzb6HVw1R2uGJIosLNpl9//YZnq87I7EkMBrTdzVLV0/kZ5x8ceQ6TsaTEaQnt/rH5
 Tqju2DQntTjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,375,1580803200"; d="scan'208";a="270881560"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 12 Apr 2020 11:47:12 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jNhdP-000DQp-EW; Mon, 13 Apr 2020 02:47:11 +0800
Date: Mon, 13 Apr 2020 02:46:12 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 f4f7714f055fa662cf2f27dd0809a8781538e780
Message-ID: <5e9361f4.XlF6k89UkmqIXgt2%lkp@intel.com>
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
branch HEAD: f4f7714f055fa662cf2f27dd0809a8781538e780  staging: rtl8723bs: hal: Correct misspelled symbolic name

elapsed time: 480m

configs tested: 162
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
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
sparc                            allyesconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
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
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
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
i386                 randconfig-a002-20200412
x86_64               randconfig-a001-20200412
x86_64               randconfig-a002-20200412
i386                 randconfig-a003-20200412
x86_64               randconfig-a003-20200412
i386                 randconfig-a001-20200412
mips                 randconfig-a001-20200412
nds32                randconfig-a001-20200412
riscv                randconfig-a001-20200412
m68k                 randconfig-a001-20200412
parisc               randconfig-a001-20200412
alpha                randconfig-a001-20200412
h8300                randconfig-a001-20200412
nios2                randconfig-a001-20200412
c6x                  randconfig-a001-20200412
sparc64              randconfig-a001-20200412
s390                 randconfig-a001-20200412
xtensa               randconfig-a001-20200412
sh                   randconfig-a001-20200412
openrisc             randconfig-a001-20200412
csky                 randconfig-a001-20200412
x86_64               randconfig-b002-20200412
i386                 randconfig-b001-20200412
x86_64               randconfig-b001-20200412
x86_64               randconfig-b003-20200412
i386                 randconfig-b003-20200412
i386                 randconfig-b002-20200412
x86_64               randconfig-c003-20200412
i386                 randconfig-c003-20200412
i386                 randconfig-c002-20200412
x86_64               randconfig-c002-20200412
i386                 randconfig-c001-20200412
i386                 randconfig-d002-20200412
x86_64               randconfig-d003-20200412
i386                 randconfig-d003-20200412
i386                 randconfig-d001-20200412
x86_64               randconfig-d002-20200412
x86_64               randconfig-e001-20200412
i386                 randconfig-e001-20200412
i386                 randconfig-e002-20200412
i386                 randconfig-e003-20200412
x86_64               randconfig-e003-20200412
i386                 randconfig-f003-20200412
i386                 randconfig-f002-20200412
x86_64               randconfig-f003-20200412
x86_64               randconfig-f001-20200412
x86_64               randconfig-f002-20200412
i386                 randconfig-f001-20200412
x86_64               randconfig-g003-20200412
i386                 randconfig-g003-20200412
x86_64               randconfig-g002-20200412
x86_64               randconfig-g001-20200412
i386                 randconfig-g002-20200412
i386                 randconfig-g001-20200412
x86_64               randconfig-h001-20200412
i386                 randconfig-h003-20200412
i386                 randconfig-h002-20200412
i386                 randconfig-h001-20200412
x86_64               randconfig-h003-20200412
x86_64               randconfig-h002-20200412
powerpc              randconfig-a001-20200412
arm64                randconfig-a001-20200412
ia64                 randconfig-a001-20200412
arc                  randconfig-a001-20200412
arm                  randconfig-a001-20200412
sparc                randconfig-a001-20200412
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
um                             i386_defconfig
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
