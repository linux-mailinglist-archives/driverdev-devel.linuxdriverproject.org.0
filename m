Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB71B8AC0
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Apr 2020 03:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E47EF20554;
	Sun, 26 Apr 2020 01:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6+naLXx8MRW9; Sun, 26 Apr 2020 01:26:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ACC2320519;
	Sun, 26 Apr 2020 01:26:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C49A71BF296
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 01:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BDE0684EA7
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 01:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Zl7vsFFXdzp for <devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 01:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E523D84B23
 for <devel@driverdev.osuosl.org>; Sun, 26 Apr 2020 01:26:34 +0000 (UTC)
IronPort-SDR: Ii4nrHqUae1KGRgkY5VGXic8idH4iMY+2nQ1bpxkH/sW026PZYvemSkb0bppXrhpxRqaLPqhhC
 9956Th1nvrGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 18:26:34 -0700
IronPort-SDR: WWdx2sfxuJggro5WGZ4+ix1aPA4fzv9hzwORRRu1KHusLVcW8vqqIcrQWdbpKJ/UDZC8LcSZqJ
 YPyBrCUr9Vag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,318,1583222400"; d="scan'208";a="260273767"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 25 Apr 2020 18:26:32 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jSW40-0009jS-49; Sun, 26 Apr 2020 09:26:32 +0800
Date: Sun, 26 Apr 2020 09:25:21 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 bf42304b55f59af5e71c86e46291705023dce62e
Message-ID: <5ea4e301.RKuaS848B7MFKbaa%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: bf42304b55f59af5e71c86e46291705023dce62e  staging: vt6656: Use fls instead of for loop in vnt_update_top_rates

elapsed time: 3555m

configs tested: 240
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
ia64                                defconfig
arc                              allyesconfig
ia64                         bigsur_defconfig
mips                      fuloong2e_defconfig
sparc64                             defconfig
m68k                       m5475evb_defconfig
sh                  sh7785lcr_32bit_defconfig
um                           x86_64_defconfig
mips                           ip32_defconfig
h8300                       h8s-sim_defconfig
riscv                    nommu_virt_defconfig
ia64                              allnoconfig
m68k                           sun3_defconfig
parisc                generic-32bit_defconfig
riscv                               defconfig
mips                              allnoconfig
s390                              allnoconfig
ia64                          tiger_defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
xtensa                       common_defconfig
powerpc                             defconfig
mips                malta_kvm_guest_defconfig
nios2                         10m50_defconfig
powerpc                       ppc64_defconfig
riscv                             allnoconfig
parisc                           allyesconfig
ia64                             allyesconfig
parisc                            allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                        generic_defconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                     edosk2674_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                          multi_defconfig
arc                                 defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                generic-64bit_defconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200424
alpha                randconfig-a001-20200424
m68k                 randconfig-a001-20200424
riscv                randconfig-a001-20200424
nds32                randconfig-a001-20200424
parisc               randconfig-a001-20200426
mips                 randconfig-a001-20200426
alpha                randconfig-a001-20200426
m68k                 randconfig-a001-20200426
nds32                randconfig-a001-20200426
nios2                randconfig-a001-20200424
c6x                  randconfig-a001-20200424
h8300                randconfig-a001-20200424
sparc64              randconfig-a001-20200424
microblaze           randconfig-a001-20200424
nios2                randconfig-a001-20200423
h8300                randconfig-a001-20200423
c6x                  randconfig-a001-20200423
sparc64              randconfig-a001-20200423
microblaze           randconfig-a001-20200423
nios2                randconfig-a001-20200426
c6x                  randconfig-a001-20200426
h8300                randconfig-a001-20200426
sparc64              randconfig-a001-20200426
microblaze           randconfig-a001-20200426
nios2                randconfig-a001-20200425
c6x                  randconfig-a001-20200425
h8300                randconfig-a001-20200425
sparc64              randconfig-a001-20200425
microblaze           randconfig-a001-20200425
sh                   randconfig-a001-20200426
csky                 randconfig-a001-20200426
s390                 randconfig-a001-20200426
xtensa               randconfig-a001-20200426
openrisc             randconfig-a001-20200426
sh                   randconfig-a001-20200423
csky                 randconfig-a001-20200423
xtensa               randconfig-a001-20200423
openrisc             randconfig-a001-20200423
sh                   randconfig-a001-20200424
csky                 randconfig-a001-20200424
s390                 randconfig-a001-20200424
xtensa               randconfig-a001-20200424
openrisc             randconfig-a001-20200424
x86_64               randconfig-a001-20200422
i386                 randconfig-a003-20200422
x86_64               randconfig-a003-20200422
i386                 randconfig-a002-20200422
i386                 randconfig-a001-20200422
x86_64               randconfig-a002-20200422
i386                 randconfig-b002-20200425
x86_64               randconfig-b001-20200425
i386                 randconfig-b001-20200425
i386                 randconfig-b003-20200425
x86_64               randconfig-b002-20200425
x86_64               randconfig-b003-20200425
x86_64               randconfig-a001-20200426
i386                 randconfig-a003-20200426
x86_64               randconfig-a003-20200426
i386                 randconfig-a002-20200426
i386                 randconfig-a001-20200426
x86_64               randconfig-a002-20200426
i386                 randconfig-c002-20200424
i386                 randconfig-c001-20200424
x86_64               randconfig-c001-20200424
i386                 randconfig-c003-20200424
x86_64               randconfig-c003-20200424
x86_64               randconfig-d001-20200424
i386                 randconfig-d002-20200424
i386                 randconfig-d001-20200424
x86_64               randconfig-d003-20200424
i386                 randconfig-d003-20200424
x86_64               randconfig-d002-20200426
i386                 randconfig-d002-20200426
i386                 randconfig-d001-20200426
i386                 randconfig-d003-20200426
x86_64               randconfig-a001-20200424
i386                 randconfig-a003-20200424
x86_64               randconfig-a003-20200424
i386                 randconfig-a002-20200424
i386                 randconfig-a001-20200424
x86_64               randconfig-a002-20200424
i386                 randconfig-e003-20200425
x86_64               randconfig-e002-20200425
x86_64               randconfig-e003-20200425
i386                 randconfig-e002-20200425
i386                 randconfig-e001-20200425
x86_64               randconfig-e001-20200425
i386                 randconfig-a003-20200423
i386                 randconfig-a001-20200423
i386                 randconfig-a002-20200423
x86_64               randconfig-a002-20200423
x86_64               randconfig-f002-20200424
i386                 randconfig-f002-20200424
i386                 randconfig-f003-20200424
x86_64               randconfig-f003-20200424
i386                 randconfig-f001-20200424
x86_64               randconfig-f001-20200424
i386                 randconfig-g003-20200424
i386                 randconfig-g001-20200424
x86_64               randconfig-g001-20200424
x86_64               randconfig-g002-20200424
i386                 randconfig-g002-20200424
x86_64               randconfig-g003-20200424
i386                 randconfig-h003-20200424
x86_64               randconfig-h001-20200424
x86_64               randconfig-h003-20200424
x86_64               randconfig-h002-20200424
i386                 randconfig-h001-20200424
i386                 randconfig-h002-20200424
sparc                randconfig-a001-20200426
ia64                 randconfig-a001-20200426
powerpc              randconfig-a001-20200426
arm                  randconfig-a001-20200426
arm64                randconfig-a001-20200426
arc                  randconfig-a001-20200426
sparc                randconfig-a001-20200425
ia64                 randconfig-a001-20200425
powerpc              randconfig-a001-20200425
arm                  randconfig-a001-20200425
arc                  randconfig-a001-20200425
sparc                randconfig-a001-20200423
ia64                 randconfig-a001-20200423
arm                  randconfig-a001-20200423
arm64                randconfig-a001-20200423
arc                  randconfig-a001-20200423
sparc                randconfig-a001-20200424
ia64                 randconfig-a001-20200424
powerpc              randconfig-a001-20200424
arm64                randconfig-a001-20200424
arc                  randconfig-a001-20200424
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
