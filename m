Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C484619E804
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 01:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A3BA883C6;
	Sat,  4 Apr 2020 23:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwdyIwiyoZaX; Sat,  4 Apr 2020 23:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B5C7883A1;
	Sat,  4 Apr 2020 23:24:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDACB1BF2F1
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 23:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA945883A3
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 23:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+1qnmN9rc7N for <devel@linuxdriverproject.org>;
 Sat,  4 Apr 2020 23:24:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6B87883A1
 for <devel@driverdev.osuosl.org>; Sat,  4 Apr 2020 23:24:39 +0000 (UTC)
IronPort-SDR: grPsnF389ZIZRbfiO/2QUKbu8hHBxWPFMhZCrOsBqtRvkKJlZ1xjKWiVHddWVcQpSbsdsKf77A
 0MxqSNy8VvSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2020 16:24:39 -0700
IronPort-SDR: ShyuyICOOQYemlrvlabwBzvN63znVpw1/nBzCo7xty0oJDoA5aa9Ud5kSJxOgdX/RX6kbpI/m/
 vgqwB73085Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,345,1580803200"; d="scan'208";a="450413280"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 04 Apr 2020 16:24:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jKs9U-0009KX-S6; Sun, 05 Apr 2020 07:24:36 +0800
Date: Sun, 05 Apr 2020 07:24:15 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 2577408b68c05a5b85d95d0e60f51509d4a1a674
Message-ID: <5e89171f.4kwPO9JM7rRhblqV%lkp@intel.com>
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
branch HEAD: 2577408b68c05a5b85d95d0e60f51509d4a1a674  staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect

elapsed time: 846m

configs tested: 196
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
i386                             alldefconfig
h8300                       h8s-sim_defconfig
xtensa                          iss_defconfig
ia64                                defconfig
powerpc                             defconfig
sh                               allmodconfig
alpha                               defconfig
m68k                             allmodconfig
sparc64                           allnoconfig
h8300                     edosk2674_defconfig
s390                          debug_defconfig
riscv                          rv32_defconfig
sh                          rsk7269_defconfig
i386                              allnoconfig
i386                             allyesconfig
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
xtensa                       common_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
h8300                    h8300h-sim_defconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
mips                             allyesconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         64r6el_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
i386                 randconfig-a002-20200404
x86_64               randconfig-a002-20200404
x86_64               randconfig-a001-20200404
i386                 randconfig-a001-20200404
i386                 randconfig-a003-20200404
x86_64               randconfig-a001-20200405
x86_64               randconfig-a002-20200405
x86_64               randconfig-a003-20200405
i386                 randconfig-a001-20200405
i386                 randconfig-a002-20200405
i386                 randconfig-a003-20200405
alpha                randconfig-a001-20200405
m68k                 randconfig-a001-20200405
mips                 randconfig-a001-20200405
nds32                randconfig-a001-20200405
parisc               randconfig-a001-20200405
riscv                randconfig-a001-20200405
mips                 randconfig-a001-20200404
nds32                randconfig-a001-20200404
m68k                 randconfig-a001-20200404
parisc               randconfig-a001-20200404
alpha                randconfig-a001-20200404
riscv                randconfig-a001-20200404
c6x                  randconfig-a001-20200405
h8300                randconfig-a001-20200405
microblaze           randconfig-a001-20200405
nios2                randconfig-a001-20200405
sparc64              randconfig-a001-20200405
sparc64              randconfig-a001-20200404
h8300                randconfig-a001-20200404
nios2                randconfig-a001-20200404
microblaze           randconfig-a001-20200404
c6x                  randconfig-a001-20200404
s390                 randconfig-a001-20200404
xtensa               randconfig-a001-20200404
csky                 randconfig-a001-20200404
openrisc             randconfig-a001-20200404
sh                   randconfig-a001-20200404
x86_64               randconfig-b001-20200405
x86_64               randconfig-b002-20200405
x86_64               randconfig-b003-20200405
i386                 randconfig-b001-20200405
i386                 randconfig-b002-20200405
i386                 randconfig-b003-20200405
i386                 randconfig-b003-20200404
x86_64               randconfig-b002-20200404
i386                 randconfig-b001-20200404
x86_64               randconfig-b001-20200404
x86_64               randconfig-b003-20200404
i386                 randconfig-b002-20200404
x86_64               randconfig-c001-20200405
x86_64               randconfig-c002-20200405
x86_64               randconfig-c003-20200405
i386                 randconfig-c001-20200405
i386                 randconfig-c002-20200405
i386                 randconfig-c003-20200405
x86_64               randconfig-d003-20200405
i386                 randconfig-d003-20200405
i386                 randconfig-d001-20200405
x86_64               randconfig-d002-20200405
i386                 randconfig-d002-20200405
x86_64               randconfig-d001-20200405
x86_64               randconfig-e001-20200405
x86_64               randconfig-e002-20200405
x86_64               randconfig-e003-20200405
i386                 randconfig-e001-20200405
i386                 randconfig-e002-20200405
i386                 randconfig-e003-20200405
x86_64               randconfig-f001-20200405
x86_64               randconfig-f002-20200405
x86_64               randconfig-f003-20200405
i386                 randconfig-f001-20200405
i386                 randconfig-f002-20200405
i386                 randconfig-f003-20200405
i386                 randconfig-f001-20200404
x86_64               randconfig-f003-20200404
i386                 randconfig-f003-20200404
x86_64               randconfig-f002-20200404
i386                 randconfig-f002-20200404
x86_64               randconfig-g001-20200404
x86_64               randconfig-g002-20200404
x86_64               randconfig-g003-20200404
i386                 randconfig-g001-20200404
i386                 randconfig-g002-20200404
i386                 randconfig-g003-20200404
x86_64               randconfig-g001-20200405
x86_64               randconfig-g002-20200405
x86_64               randconfig-g003-20200405
i386                 randconfig-g001-20200405
i386                 randconfig-g002-20200405
i386                 randconfig-g003-20200405
arm64                randconfig-a001-20200404
sparc                randconfig-a001-20200404
ia64                 randconfig-a001-20200404
arc                  randconfig-a001-20200404
arm                  randconfig-a001-20200404
arc                  randconfig-a001-20200405
arm                  randconfig-a001-20200405
arm64                randconfig-a001-20200405
ia64                 randconfig-a001-20200405
powerpc              randconfig-a001-20200405
sparc                randconfig-a001-20200405
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                                allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
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
