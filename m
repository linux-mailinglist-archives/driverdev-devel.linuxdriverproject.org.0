Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F119DAAB
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 17:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEA7D8832A;
	Fri,  3 Apr 2020 15:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4f44vTDvNQrf; Fri,  3 Apr 2020 15:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6473F8814C;
	Fri,  3 Apr 2020 15:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF89E1BF281
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC52886C25
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kh51Qvkc9DUd for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 15:55:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D35586AD3
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 15:55:07 +0000 (UTC)
IronPort-SDR: jAsrBdyyI0aPOE9wTTc4hzY7dYTWMaWXVzKuj7R3CEXOmvGKSJb5kVw/1wFcufAlhtdXjIh+Mh
 1U/bhki1F6Pg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 08:55:06 -0700
IronPort-SDR: 9EJ9HNAZKAgANiDL0cwQhKb4PJf1AiCla+JAPkvWd7RtgNhVwjI408I1hDsrYb0MLVh4QBjQuv
 CsVW3CzFiyTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="238921769"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 03 Apr 2020 08:55:05 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jKOeu-00054B-MO; Fri, 03 Apr 2020 23:55:04 +0800
Date: Fri, 03 Apr 2020 23:54:53 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 e41d25a3f8a9d3d9a89527a77e687bd308a847a8
Message-ID: <5e875c4d.z5UcCJpodSm6AA2B%lkp@intel.com>
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
branch HEAD: e41d25a3f8a9d3d9a89527a77e687bd308a847a8  staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect

elapsed time: 482m

configs tested: 163
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
i386                                defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
powerpc                          rhel-kconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
mips                      fuloong2e_defconfig
mips                             allyesconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         64r6el_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200403
x86_64               randconfig-a002-20200403
x86_64               randconfig-a003-20200403
i386                 randconfig-a001-20200403
i386                 randconfig-a002-20200403
i386                 randconfig-a003-20200403
nds32                randconfig-a001-20200403
m68k                 randconfig-a001-20200403
alpha                randconfig-a001-20200403
parisc               randconfig-a001-20200403
riscv                randconfig-a001-20200403
sparc64              randconfig-a001-20200403
h8300                randconfig-a001-20200403
nios2                randconfig-a001-20200403
microblaze           randconfig-a001-20200403
c6x                  randconfig-a001-20200403
s390                 randconfig-a001-20200403
xtensa               randconfig-a001-20200403
csky                 randconfig-a001-20200403
openrisc             randconfig-a001-20200403
sh                   randconfig-a001-20200403
x86_64               randconfig-b001-20200403
x86_64               randconfig-b002-20200403
x86_64               randconfig-b003-20200403
i386                 randconfig-b001-20200403
i386                 randconfig-b002-20200403
i386                 randconfig-b003-20200403
x86_64               randconfig-c001-20200403
x86_64               randconfig-c002-20200403
x86_64               randconfig-c003-20200403
i386                 randconfig-c001-20200403
i386                 randconfig-c002-20200403
i386                 randconfig-c003-20200403
x86_64               randconfig-d001-20200403
x86_64               randconfig-d002-20200403
x86_64               randconfig-d003-20200403
i386                 randconfig-d001-20200403
i386                 randconfig-d002-20200403
i386                 randconfig-d003-20200403
x86_64               randconfig-e001-20200403
x86_64               randconfig-e002-20200403
x86_64               randconfig-e003-20200403
i386                 randconfig-e001-20200403
i386                 randconfig-e002-20200403
i386                 randconfig-e003-20200403
x86_64               randconfig-f001-20200403
x86_64               randconfig-f002-20200403
x86_64               randconfig-f003-20200403
i386                 randconfig-f001-20200403
i386                 randconfig-f002-20200403
i386                 randconfig-f003-20200403
x86_64               randconfig-g001-20200403
x86_64               randconfig-g002-20200403
x86_64               randconfig-g003-20200403
i386                 randconfig-g001-20200403
i386                 randconfig-g002-20200403
i386                 randconfig-g003-20200403
x86_64               randconfig-h001-20200403
x86_64               randconfig-h002-20200403
x86_64               randconfig-h003-20200403
i386                 randconfig-h001-20200403
i386                 randconfig-h002-20200403
i386                 randconfig-h003-20200403
arc                  randconfig-a001-20200403
arm                  randconfig-a001-20200403
arm64                randconfig-a001-20200403
ia64                 randconfig-a001-20200403
powerpc              randconfig-a001-20200403
sparc                randconfig-a001-20200403
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
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
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
