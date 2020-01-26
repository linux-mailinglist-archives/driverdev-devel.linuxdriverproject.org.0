Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFE9149AF7
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 15:10:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 102F886360;
	Sun, 26 Jan 2020 14:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ehoabkRfyMK; Sun, 26 Jan 2020 14:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9269685A22;
	Sun, 26 Jan 2020 14:10:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 730381BF2E5
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 14:10:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6729E844CA
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 14:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8atYzWxljJ0n for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 14:09:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88B8980EC5
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 14:09:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 06:09:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,365,1574150400"; d="scan'208";a="251728955"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jan 2020 06:09:06 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivib3-0008QJ-Pe; Sun, 26 Jan 2020 22:09:05 +0800
Date: Sun, 26 Jan 2020 22:08:36 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD INCOMPLETE
 85db1cde825344cc1419d3adadaf4187154ad687
Message-ID: <5e2d9d64.bqhyHnDI0IFU25xT%lkp@intel.com>
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
branch HEAD: 85db1cde825344cc1419d3adadaf4187154ad687  firmware: Rename FW_OPT_NOFALLBACK to FW_OPT_NOFALLBACK_SYSFS

TIMEOUT after 2898m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 33

alpha                               defconfig
arm                               allnoconfig
arm                              allyesconfig
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
ia64                             allmodconfig
ia64                             allyesconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig

configs tested: 95
configs skipped: 1

ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
x86_64                         rhel-7.2-clear
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
i386                              allnoconfig
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
x86_64               randconfig-a001-20200125
i386                 randconfig-a001-20200125
x86_64               randconfig-a002-20200125
i386                 randconfig-a002-20200125
i386                 randconfig-a003-20200125
x86_64               randconfig-a003-20200125
arm64                randconfig-a001-20200125
powerpc              randconfig-a001-20200125
ia64                 randconfig-a001-20200125
arm                  randconfig-a001-20200125
arc                  randconfig-a001-20200125
sparc                randconfig-a001-20200125
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
sparc64                          allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64               randconfig-f003-20200126
x86_64               randconfig-f001-20200126
x86_64               randconfig-f002-20200126
i386                 randconfig-f002-20200126
i386                 randconfig-f003-20200126
i386                 randconfig-f001-20200126
arc                              allyesconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
arc                                 defconfig
x86_64               randconfig-c003-20200126
i386                 randconfig-c003-20200126
x86_64               randconfig-c002-20200126
x86_64               randconfig-c001-20200126
i386                 randconfig-c001-20200126
i386                 randconfig-c002-20200126
nds32                               defconfig
csky                                defconfig
nds32                             allnoconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
h8300                randconfig-a001-20200125
nios2                randconfig-a001-20200125
c6x                  randconfig-a001-20200125
sparc64              randconfig-a001-20200125
microblaze           randconfig-a001-20200125
openrisc             randconfig-a001-20200124
xtensa               randconfig-a001-20200124
csky                 randconfig-a001-20200124
s390                 randconfig-a001-20200124
sh                   randconfig-a001-20200124

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
