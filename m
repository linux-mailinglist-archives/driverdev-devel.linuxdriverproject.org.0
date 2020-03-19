Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBBC18B9C3
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 15:52:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3416886CAC;
	Thu, 19 Mar 2020 14:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bs-nflsQHhtH; Thu, 19 Mar 2020 14:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D476486CDB;
	Thu, 19 Mar 2020 14:51:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6951BF9B6
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5937287E77
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MIlLHmLEWgQ5 for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 76F9387DDD
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 14:51:53 +0000 (UTC)
IronPort-SDR: 8OCk7mIOGSUQ2PWEESILltDXNfjgCrr/ytRsAZw90KKbhIDpfa67Pb0lsUSfjn5UfXDB3ClhFe
 XI8e+EgALYIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:51:52 -0700
IronPort-SDR: V3qqlFiDweDvfN0S8ToryOmMR4Dc/OwXtqgzWvPcVq7Ztz/Nif778owFV9u1SRTIvQ9B8QoSIv
 yWfQU5KkUZOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="234193894"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 19 Mar 2020 07:51:51 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jEwWU-0001r0-Kp; Thu, 19 Mar 2020 22:51:50 +0800
Date: Thu, 19 Mar 2020 22:51:00 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD REGRESSION
 c5b434b51b2daaacdd0c69736631eaead95d9111
Message-ID: <5e7386d4.26uSQiAAZlWcA3QG%lkp@intel.com>
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
branch HEAD: c5b434b51b2daaacdd0c69736631eaead95d9111  debugfs: remove return value of debugfs_create_u32()

Regressions in current branch:

arch/powerpc/kernel/traps.c:2293:4: error: void value not ignored as it ought to be

Error ids grouped by kconfigs:

recent_errors
`-- powerpc-allyesconfig
    `-- arch-powerpc-kernel-traps.c:error:void-value-not-ignored-as-it-ought-to-be

elapsed time: 483m

configs tested: 146
configs skipped: 0

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
nds32                               defconfig
h8300                     edosk2674_defconfig
mips                      malta_kvm_defconfig
arc                              allyesconfig
ia64                             allyesconfig
s390                                defconfig
microblaze                      mmu_defconfig
openrisc                    or1ksim_defconfig
ia64                                defconfig
powerpc                             defconfig
m68k                           sun3_defconfig
i386                             allyesconfig
riscv                    nommu_virt_defconfig
sh                                allnoconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
i386                              allnoconfig
i386                             alldefconfig
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
xtensa                          iss_defconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
arc                                 defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
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
i386                 randconfig-a003-20200319
i386                 randconfig-a001-20200319
x86_64               randconfig-a001-20200319
x86_64               randconfig-a002-20200319
i386                 randconfig-a002-20200319
x86_64               randconfig-a003-20200319
riscv                randconfig-a001-20200319
m68k                 randconfig-a001-20200319
nds32                randconfig-a001-20200319
alpha                randconfig-a001-20200319
parisc               randconfig-a001-20200319
mips                 randconfig-a001-20200319
c6x                  randconfig-a001-20200319
h8300                randconfig-a001-20200319
microblaze           randconfig-a001-20200319
nios2                randconfig-a001-20200319
sparc64              randconfig-a001-20200319
csky                 randconfig-a001-20200319
openrisc             randconfig-a001-20200319
s390                 randconfig-a001-20200319
sh                   randconfig-a001-20200319
xtensa               randconfig-a001-20200319
x86_64               randconfig-b001-20200319
x86_64               randconfig-b002-20200319
x86_64               randconfig-b003-20200319
i386                 randconfig-b001-20200319
i386                 randconfig-b002-20200319
i386                 randconfig-b003-20200319
x86_64               randconfig-c001-20200319
i386                 randconfig-c001-20200319
x86_64               randconfig-c002-20200319
i386                 randconfig-c003-20200319
x86_64               randconfig-c003-20200319
i386                 randconfig-c002-20200319
x86_64               randconfig-d001-20200319
i386                 randconfig-d001-20200319
i386                 randconfig-d003-20200319
i386                 randconfig-d002-20200319
x86_64               randconfig-d002-20200319
x86_64               randconfig-d003-20200319
x86_64               randconfig-f001-20200319
x86_64               randconfig-f002-20200319
x86_64               randconfig-f003-20200319
i386                 randconfig-f001-20200319
i386                 randconfig-f002-20200319
i386                 randconfig-f003-20200319
arc                  randconfig-a001-20200319
arm                  randconfig-a001-20200319
arm64                randconfig-a001-20200319
ia64                 randconfig-a001-20200319
powerpc              randconfig-a001-20200319
sparc                randconfig-a001-20200319
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
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
