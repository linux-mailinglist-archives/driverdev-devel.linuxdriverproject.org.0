Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4191A014A
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 00:53:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33E268347D;
	Mon,  6 Apr 2020 22:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIPO+BS8GsGN; Mon,  6 Apr 2020 22:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71D9D82157;
	Mon,  6 Apr 2020 22:53:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A86E1BF278
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 22:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4779D8679B
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 22:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2JLK65yL0zo for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 22:53:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 729D186582
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 22:53:35 +0000 (UTC)
IronPort-SDR: zrpOqNGAMC4e/BnP0xoC42yt+9PClUL6JME2TGNemD6sjo6vDnAj1UyFnfrVG/yxY4JRP1i0a/
 Ybtsus21xc8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 15:53:35 -0700
IronPort-SDR: dM/E57a7uitg+kYG2muVE138DugyLoDfe9KtYDM5qBekraI7ta4HMwRoc3gVDzDY+Ex02QrLwk
 V5XbyhlGVjIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,352,1580803200"; d="scan'208";a="286034929"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2020 15:53:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLacX-00080y-36; Tue, 07 Apr 2020 06:53:33 +0800
Date: Tue, 07 Apr 2020 06:52:55 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 5607303ec5411cf9e24005053ea4064f43f8911d
Message-ID: <5e8bb2c7.dWvu+NCRSNl0uOc/%lkp@intel.com>
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
branch HEAD: 5607303ec5411cf9e24005053ea4064f43f8911d  debugfs: remove return value of debugfs_create_u32()

elapsed time: 484m

configs tested: 162
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
nios2                         10m50_defconfig
riscv                          rv32_defconfig
m68k                          multi_defconfig
ia64                                defconfig
powerpc                             defconfig
m68k                       m5475evb_defconfig
um                           x86_64_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
arm64                            allmodconfig
nios2                         3c120_defconfig
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
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
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
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a003-20200406
i386                 randconfig-a002-20200406
x86_64               randconfig-a002-20200406
x86_64               randconfig-a001-20200406
i386                 randconfig-a001-20200406
i386                 randconfig-a003-20200406
mips                 randconfig-a001-20200406
nds32                randconfig-a001-20200406
m68k                 randconfig-a001-20200406
parisc               randconfig-a001-20200406
alpha                randconfig-a001-20200406
riscv                randconfig-a001-20200406
sparc64              randconfig-a001-20200406
h8300                randconfig-a001-20200406
nios2                randconfig-a001-20200406
microblaze           randconfig-a001-20200406
c6x                  randconfig-a001-20200406
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
x86_64               randconfig-b001-20200406
x86_64               randconfig-b002-20200406
x86_64               randconfig-b003-20200406
i386                 randconfig-b001-20200406
i386                 randconfig-b002-20200406
i386                 randconfig-b003-20200406
x86_64               randconfig-c001-20200406
x86_64               randconfig-c002-20200406
x86_64               randconfig-c003-20200406
i386                 randconfig-c001-20200406
i386                 randconfig-c002-20200406
i386                 randconfig-c003-20200406
x86_64               randconfig-d003-20200406
x86_64               randconfig-d001-20200406
i386                 randconfig-d003-20200406
i386                 randconfig-d001-20200406
x86_64               randconfig-d002-20200406
i386                 randconfig-d002-20200406
i386                 randconfig-f001-20200406
x86_64               randconfig-f003-20200406
i386                 randconfig-f003-20200406
x86_64               randconfig-f001-20200406
i386                 randconfig-f002-20200406
x86_64               randconfig-g003-20200406
i386                 randconfig-g003-20200406
x86_64               randconfig-g002-20200406
i386                 randconfig-g001-20200406
i386                 randconfig-g002-20200406
x86_64               randconfig-g001-20200406
x86_64               randconfig-h002-20200406
i386                 randconfig-h002-20200406
i386                 randconfig-h003-20200406
i386                 randconfig-h001-20200406
x86_64               randconfig-h003-20200406
x86_64               randconfig-h001-20200406
arc                  randconfig-a001-20200407
arm                  randconfig-a001-20200407
arm64                randconfig-a001-20200407
ia64                 randconfig-a001-20200407
powerpc              randconfig-a001-20200407
sparc                randconfig-a001-20200407
arm64                randconfig-a001-20200406
sparc                randconfig-a001-20200406
ia64                 randconfig-a001-20200406
arc                  randconfig-a001-20200406
arm                  randconfig-a001-20200406
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
