Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5028E19A009
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 22:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 744C225406;
	Tue, 31 Mar 2020 20:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Vb1+NkLBWFK; Tue, 31 Mar 2020 20:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4AC5B253D1;
	Tue, 31 Mar 2020 20:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7CE1BF41E
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 20:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79E05886E1
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 20:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zKVwJxy1arpS for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 20:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF1FC88739
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 20:44:30 +0000 (UTC)
IronPort-SDR: kgPA6GwQNt1jHuVaN4GZyeJwQcaIMhcFVPI9ptR+5AZCczGXNhn/zSCQYMYjYucKRJ/p1ujaQz
 T30WFe2rczGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:44:29 -0700
IronPort-SDR: a7S/ieLvEHLsG5ws+ERCMTS7D6RNM3TF7Xrkpgx8h1Aj3ZwDQh8o3ok968ugqEdi7UfU99vrVm
 b04wIuaIEu5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="237824039"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 31 Mar 2020 13:44:28 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jJNkJ-000Axw-OC; Wed, 01 Apr 2020 04:44:27 +0800
Date: Wed, 01 Apr 2020 04:43:31 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 3777507a35aed836416a6233140b9f889cbb90d7
Message-ID: <5e83ab73.tsZUJO98NHfuNJnz%lkp@intel.com>
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
branch HEAD: 3777507a35aed836416a6233140b9f889cbb90d7  debugfs: remove return value of debugfs_create_u32()

elapsed time: 786m

configs tested: 152
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
riscv                          rv32_defconfig
mips                      malta_kvm_defconfig
s390                                defconfig
ia64                                defconfig
powerpc                             defconfig
nios2                         10m50_defconfig
sparc64                          allmodconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
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
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200331
x86_64               randconfig-a002-20200331
x86_64               randconfig-a003-20200331
i386                 randconfig-a001-20200331
i386                 randconfig-a002-20200331
i386                 randconfig-a003-20200331
riscv                randconfig-a001-20200331
mips                 randconfig-a001-20200331
m68k                 randconfig-a001-20200331
parisc               randconfig-a001-20200331
alpha                randconfig-a001-20200331
nds32                randconfig-a001-20200331
c6x                  randconfig-a001-20200331
h8300                randconfig-a001-20200331
microblaze           randconfig-a001-20200331
nios2                randconfig-a001-20200331
sparc64              randconfig-a001-20200331
csky                 randconfig-a001-20200331
openrisc             randconfig-a001-20200331
s390                 randconfig-a001-20200331
sh                   randconfig-a001-20200331
xtensa               randconfig-a001-20200331
x86_64               randconfig-b001-20200331
x86_64               randconfig-b002-20200331
x86_64               randconfig-b003-20200331
i386                 randconfig-b001-20200331
i386                 randconfig-b002-20200331
i386                 randconfig-b003-20200331
i386                 randconfig-c003-20200331
x86_64               randconfig-c003-20200331
x86_64               randconfig-c002-20200331
i386                 randconfig-c002-20200331
x86_64               randconfig-c001-20200331
i386                 randconfig-c001-20200331
x86_64               randconfig-e001-20200331
x86_64               randconfig-e002-20200331
x86_64               randconfig-e003-20200331
i386                 randconfig-e001-20200331
i386                 randconfig-e002-20200331
i386                 randconfig-e003-20200331
x86_64               randconfig-g002-20200331
x86_64               randconfig-g003-20200331
i386                 randconfig-g001-20200331
i386                 randconfig-g002-20200331
x86_64               randconfig-g001-20200331
i386                 randconfig-g003-20200331
x86_64               randconfig-h001-20200331
x86_64               randconfig-h002-20200331
x86_64               randconfig-h003-20200331
i386                 randconfig-h001-20200331
i386                 randconfig-h002-20200331
i386                 randconfig-h003-20200331
arc                  randconfig-a001-20200401
arm                  randconfig-a001-20200401
arm64                randconfig-a001-20200401
ia64                 randconfig-a001-20200401
powerpc              randconfig-a001-20200401
sparc                randconfig-a001-20200401
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                             defconfig
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
