Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D741418E3D8
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 20:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 389D187711;
	Sat, 21 Mar 2020 19:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qTuYWRU3nCH; Sat, 21 Mar 2020 19:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDFDA86D13;
	Sat, 21 Mar 2020 19:02:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABAFF1BF8B4
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 19:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A329286813
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 19:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWImD2e9r9Dn for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 19:02:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D1D538680B
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 19:02:10 +0000 (UTC)
IronPort-SDR: Y95DNXOsICNRj7VQuZburC5LYdV88h1Qe4F4ANkf4uoTDw1jeEz8ziGzq6UaAtRbrrPW2tStEu
 18+85XeObetA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2020 12:02:10 -0700
IronPort-SDR: u4S6We0DNfkGCWRu7DwTvULJclJVuaaay+T2SOdXzNpjOKwJT1uGWheiLDdt+H85L4kG94aAh2
 do5QAGInQRYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,289,1580803200"; d="scan'208";a="392481585"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 21 Mar 2020 12:02:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jFjNn-000HPB-HO; Sun, 22 Mar 2020 03:02:07 +0800
Date: Sun, 22 Mar 2020 03:02:01 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 4dbe191c046e71d6ea1ba85365ecb33961b07c4f
Message-ID: <5e7664a9.ayAvNLlXVNKRq+TE%lkp@intel.com>
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
branch HEAD: 4dbe191c046e71d6ea1ba85365ecb33961b07c4f  driver core: Add device links from fwnode only for the primary device

elapsed time: 484m

configs tested: 176
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
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
ia64                             alldefconfig
um                                  defconfig
riscv                          rv32_defconfig
h8300                    h8300h-sim_defconfig
mips                              allnoconfig
parisc                generic-64bit_defconfig
ia64                             allyesconfig
nds32                               defconfig
ia64                                defconfig
powerpc                             defconfig
i386                              allnoconfig
parisc                            allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
i386                 randconfig-a002-20200321
x86_64               randconfig-a002-20200321
i386                 randconfig-a001-20200321
x86_64               randconfig-a001-20200321
i386                 randconfig-a003-20200321
x86_64               randconfig-a003-20200321
alpha                randconfig-a001-20200321
m68k                 randconfig-a001-20200321
mips                 randconfig-a001-20200321
nds32                randconfig-a001-20200321
parisc               randconfig-a001-20200321
riscv                randconfig-a001-20200321
c6x                  randconfig-a001-20200321
h8300                randconfig-a001-20200321
microblaze           randconfig-a001-20200321
nios2                randconfig-a001-20200321
sparc64              randconfig-a001-20200321
c6x                  randconfig-a001-20200322
h8300                randconfig-a001-20200322
microblaze           randconfig-a001-20200322
nios2                randconfig-a001-20200322
sparc64              randconfig-a001-20200322
csky                 randconfig-a001-20200322
openrisc             randconfig-a001-20200322
s390                 randconfig-a001-20200322
sh                   randconfig-a001-20200322
xtensa               randconfig-a001-20200322
s390                 randconfig-a001-20200321
xtensa               randconfig-a001-20200321
csky                 randconfig-a001-20200321
openrisc             randconfig-a001-20200321
sh                   randconfig-a001-20200321
i386                 randconfig-b003-20200321
i386                 randconfig-b001-20200321
x86_64               randconfig-b003-20200321
i386                 randconfig-b002-20200321
x86_64               randconfig-b002-20200321
x86_64               randconfig-b001-20200321
x86_64               randconfig-c001-20200321
x86_64               randconfig-c002-20200321
x86_64               randconfig-c003-20200321
i386                 randconfig-c001-20200321
i386                 randconfig-c002-20200321
i386                 randconfig-c003-20200321
i386                 randconfig-d003-20200321
i386                 randconfig-d001-20200321
x86_64               randconfig-d002-20200321
i386                 randconfig-d002-20200321
x86_64               randconfig-d001-20200321
x86_64               randconfig-d003-20200321
x86_64               randconfig-d002-20200322
i386                 randconfig-d001-20200322
i386                 randconfig-d002-20200322
i386                 randconfig-d003-20200322
x86_64               randconfig-e001-20200321
i386                 randconfig-e002-20200321
x86_64               randconfig-e003-20200321
i386                 randconfig-e003-20200321
x86_64               randconfig-e002-20200321
i386                 randconfig-e001-20200321
x86_64               randconfig-e003-20200322
i386                 randconfig-e001-20200322
i386                 randconfig-e002-20200322
i386                 randconfig-e003-20200322
i386                 randconfig-f001-20200322
i386                 randconfig-f002-20200322
i386                 randconfig-f003-20200322
i386                 randconfig-g001-20200322
i386                 randconfig-g002-20200322
i386                 randconfig-g003-20200322
x86_64               randconfig-h001-20200321
x86_64               randconfig-h002-20200321
x86_64               randconfig-h003-20200321
i386                 randconfig-h001-20200321
i386                 randconfig-h002-20200321
i386                 randconfig-h003-20200321
arm                  randconfig-a001-20200321
arm64                randconfig-a001-20200321
ia64                 randconfig-a001-20200321
powerpc              randconfig-a001-20200321
sparc                randconfig-a001-20200321
arc                  randconfig-a001-20200321
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
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
