Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D328B4C3695
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 21:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D8C140A3B;
	Thu, 24 Feb 2022 20:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LC6BaLl2OhC; Thu, 24 Feb 2022 20:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88249402F4;
	Thu, 24 Feb 2022 20:11:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C84C1BF3FC
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 20:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A65040951
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 20:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRp_j2tTzBdP for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 20:11:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2540D4090A
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 20:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645733495; x=1677269495;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7m3vix9afLt8ha9muIq82C5zSXOBzt4sViFUcnFk8VQ=;
 b=P3+ea/yeCEGq49rM0g6aRPTCK0btdo69RnTO9W9GS9UCcBveo0PCGSh5
 LMSYC92Lpdr+krSRAMgWX70VWP6iEd8uS3agNouoPRvc8DIpBUGmBcL1Z
 cdwtFL5UcyLcfmSYqdeLaA85q1U2A00sbxVr2bN6FRBJDGKHVtL/0a2Vd
 lZ5Sd0VJKbXt8NPUmXf2Hd8rA16f9HMj1fys9vXT251z16sk8YdhT1pyV
 L40vB62NaQzsr+H/6HmeK4QW2/rBV9OdyAhQwWOVsZV84RlidrwRpl1PW
 FHpTObeKlX8jgBB2I+B281gHllCIcuZPvoEtt/FHBgtnSasWbhen4zrDP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="232312741"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="232312741"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 12:11:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="639862833"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 24 Feb 2022 12:11:32 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nNKSa-0003Qk-7I; Thu, 24 Feb 2022 20:11:32 +0000
Date: Fri, 25 Feb 2022 04:11:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 4f6ded978c9bc444c53319bccd3bf1c95a4d1d74
Message-ID: <6217e65c.xFoURU30oQCcczg3%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 4f6ded978c9bc444c53319bccd3bf1c95a4d1d74  moxart: fix potential use-after-free on remove path

elapsed time: 725m

configs tested: 153
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220223
arm                            zeus_defconfig
powerpc                       maple_defconfig
h8300                    h8300h-sim_defconfig
s390                          debug_defconfig
mips                             allyesconfig
arm                           stm32_defconfig
arm                        spear6xx_defconfig
powerpc                     sequoia_defconfig
microblaze                      mmu_defconfig
powerpc                  iss476-smp_defconfig
arm                         axm55xx_defconfig
nios2                            allyesconfig
xtensa                          iss_defconfig
powerpc                 mpc8540_ads_defconfig
um                             i386_defconfig
mips                       capcella_defconfig
sh                        sh7785lcr_defconfig
powerpc                      makalu_defconfig
powerpc                     mpc83xx_defconfig
ia64                            zx1_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7750_defconfig
xtensa                generic_kc705_defconfig
powerpc                 mpc834x_mds_defconfig
sh                     magicpanelr2_defconfig
arm                            qcom_defconfig
sh                                  defconfig
mips                           gcw0_defconfig
arm                         s3c6400_defconfig
sh                           sh2007_defconfig
ia64                             allmodconfig
sh                           se7724_defconfig
arm                         assabet_defconfig
arc                        nsimosci_defconfig
nios2                         10m50_defconfig
sh                            titan_defconfig
powerpc                      tqm8xx_defconfig
arm                     eseries_pxa_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                           se7712_defconfig
sh                          polaris_defconfig
openrisc                         alldefconfig
powerpc                      pasemi_defconfig
sh                          sdk7780_defconfig
mips                       bmips_be_defconfig
xtensa                       common_defconfig
arm                           tegra_defconfig
ia64                             alldefconfig
arm                  randconfig-c002-20220224
arm                  randconfig-c002-20220223
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220223
s390                 randconfig-r044-20220224
arc                  randconfig-r043-20220224
riscv                randconfig-r042-20220224
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
arm                  randconfig-c002-20220224
powerpc              randconfig-c003-20220224
riscv                randconfig-c006-20220224
riscv                randconfig-c006-20220223
arm                  randconfig-c002-20220223
powerpc              randconfig-c003-20220223
s390                 randconfig-c005-20220223
i386                          randconfig-c001
mips                 randconfig-c004-20220223
mips                 randconfig-c004-20220224
s390                 randconfig-c005-20220224
mips                        workpad_defconfig
powerpc                     pseries_defconfig
mips                           ip28_defconfig
arm                         socfpga_defconfig
riscv                    nommu_virt_defconfig
mips                           ip22_defconfig
arm                          moxart_defconfig
arm                           spitz_defconfig
mips                        maltaup_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220223
hexagon              randconfig-r045-20220224
s390                 randconfig-r044-20220223
riscv                randconfig-r042-20220223
hexagon              randconfig-r041-20220224
hexagon              randconfig-r041-20220223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
