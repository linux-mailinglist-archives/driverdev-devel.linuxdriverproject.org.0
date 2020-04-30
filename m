Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285061BEE0B
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 04:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56947885B6;
	Thu, 30 Apr 2020 02:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WDdOd2rEAN94; Thu, 30 Apr 2020 02:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B33F988583;
	Thu, 30 Apr 2020 02:07:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50E681BF362
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 02:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D97C86C76
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 02:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7s3gqacl1UZV for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 02:07:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 87EF286C7A
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 02:07:09 +0000 (UTC)
IronPort-SDR: adft/z8pc0dPt18rk9q+KSTkh42/iWEIyhAjpjztk5hT53ovzOSkENPDgYy18+eEN93oXRgf0E
 VFkPXB8Grzbw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 19:07:09 -0700
IronPort-SDR: Sfa7Q+9P7d1s1GJxxeAx1/icPOaENo5KgiT4TLYhSmti7lpSPt6Q6tASS4ZdSAwpZ2dqLA9fzs
 W8lFlpa75+mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,333,1583222400"; d="scan'208";a="432787105"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 29 Apr 2020 19:07:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jTybS-0003JS-S3; Thu, 30 Apr 2020 10:07:06 +0800
Date: Thu, 30 Apr 2020 10:06:24 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 2a15483b401c0b07e44b43b95414e36f32c02f32
Message-ID: <5eaa32a0.5fd4M6XGJY8+o8j6%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 2a15483b401c0b07e44b43b95414e36f32c02f32  regulator: Revert "Use driver_deferred_probe_timeout for regulator_init_complete_work"

elapsed time: 486m

configs tested: 195
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
sparc                            allyesconfig
i386                                defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                        generic_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
m68k                       bvme6000_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
xtensa                          iss_defconfig
h8300                    h8300h-sim_defconfig
xtensa                       common_defconfig
arc                                 defconfig
arc                              allyesconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                malta_kvm_guest_defconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                      chrp32_defconfig
powerpc                             defconfig
powerpc                       holly_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
powerpc                           allnoconfig
powerpc                  mpc866_ads_defconfig
powerpc                    amigaone_defconfig
powerpc                    adder875_defconfig
powerpc                     ep8248e_defconfig
powerpc                          g5_defconfig
powerpc                     mpc512x_defconfig
parisc               randconfig-a001-20200429
m68k                 randconfig-a001-20200429
alpha                randconfig-a001-20200429
mips                 randconfig-a001-20200429
nds32                randconfig-a001-20200429
riscv                randconfig-a001-20200429
parisc               randconfig-a001-20200430
mips                 randconfig-a001-20200430
m68k                 randconfig-a001-20200430
riscv                randconfig-a001-20200430
alpha                randconfig-a001-20200430
nds32                randconfig-a001-20200430
nios2                randconfig-a001-20200429
h8300                randconfig-a001-20200429
c6x                  randconfig-a001-20200429
sparc64              randconfig-a001-20200429
microblaze           randconfig-a001-20200429
microblaze           randconfig-a001-20200430
nios2                randconfig-a001-20200430
h8300                randconfig-a001-20200430
c6x                  randconfig-a001-20200430
sparc64              randconfig-a001-20200430
sh                   randconfig-a001-20200429
csky                 randconfig-a001-20200429
s390                 randconfig-a001-20200429
xtensa               randconfig-a001-20200429
openrisc             randconfig-a001-20200429
s390                 randconfig-a001-20200430
xtensa               randconfig-a001-20200430
csky                 randconfig-a001-20200430
openrisc             randconfig-a001-20200430
sh                   randconfig-a001-20200430
i386                 randconfig-b001-20200430
i386                 randconfig-b002-20200430
x86_64               randconfig-b001-20200430
i386                 randconfig-b003-20200430
x86_64               randconfig-b002-20200430
x86_64               randconfig-b003-20200430
i386                 randconfig-c002-20200429
i386                 randconfig-c001-20200429
x86_64               randconfig-c002-20200429
x86_64               randconfig-c001-20200429
i386                 randconfig-c003-20200429
x86_64               randconfig-c003-20200429
x86_64               randconfig-d002-20200430
x86_64               randconfig-d001-20200430
i386                 randconfig-d001-20200430
i386                 randconfig-d003-20200430
i386                 randconfig-d002-20200430
x86_64               randconfig-d003-20200430
x86_64               randconfig-e002-20200430
i386                 randconfig-e003-20200430
x86_64               randconfig-e003-20200430
i386                 randconfig-e002-20200430
x86_64               randconfig-e001-20200430
i386                 randconfig-e001-20200430
x86_64               randconfig-e002-20200429
i386                 randconfig-e003-20200429
i386                 randconfig-e002-20200429
x86_64               randconfig-e003-20200429
i386                 randconfig-e001-20200429
x86_64               randconfig-e001-20200429
i386                 randconfig-f002-20200429
i386                 randconfig-f003-20200429
x86_64               randconfig-f003-20200429
i386                 randconfig-f001-20200429
x86_64               randconfig-f001-20200429
x86_64               randconfig-h001-20200429
i386                 randconfig-h003-20200429
x86_64               randconfig-h003-20200429
i386                 randconfig-h002-20200429
i386                 randconfig-h001-20200429
sparc                randconfig-a001-20200429
ia64                 randconfig-a001-20200429
powerpc              randconfig-a001-20200429
arm                  randconfig-a001-20200429
arc                  randconfig-a001-20200429
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
