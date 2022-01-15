Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF7648F485
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jan 2022 04:09:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9727F60B97;
	Sat, 15 Jan 2022 03:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hYndIQinN_ud; Sat, 15 Jan 2022 03:09:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9938E60760;
	Sat, 15 Jan 2022 03:09:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44C481BF2A0
 for <devel@linuxdriverproject.org>; Sat, 15 Jan 2022 03:09:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 316C340167
 for <devel@linuxdriverproject.org>; Sat, 15 Jan 2022 03:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cTkIP9AvrffF for <devel@linuxdriverproject.org>;
 Sat, 15 Jan 2022 03:09:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 042474010E
 for <devel@driverdev.osuosl.org>; Sat, 15 Jan 2022 03:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642216179; x=1673752179;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0SA5ODCrq3SKBgXSGGaW6C8Bc3uw/Q9sUMqPMKOPf0M=;
 b=EaY8ZncAQOyz1O7IR5W2ZG7OkjPWb4IFw8npNG4VweckMte0QtSPqxxG
 Iv8QyxHN5w43P4eQx5dt2nuXpetCVi2rLKVDkgHs7kz/CtmRHF1RrVut6
 LQ5tNtUPp25D4/LC+G7R+TiCCfiNDErYGfyUqQsmV8sTciT+o3H71wBbV
 KIBfAvD6MQvPzHWSLICUoJldUM0VFluAemb4zBMxevMgQdC/7eHfzemkz
 cF6S2SteQcBCOe/FSDqQPorfn1d1CZ+SWtNwnRmxHC+Uky1CzvbCw1eqb
 4GvPiZcG70RfL0gEKdeA73KjkKTLrYwsgc3tefu8tnZjvxk548RxRdkCw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="241933452"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="241933452"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 19:09:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="671038566"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2022 19:09:37 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n8ZRh-0009Ix-Bl; Sat, 15 Jan 2022 03:09:37 +0000
Date: Sat, 15 Jan 2022 11:09:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 cccf37bd0b07f8aa381c98fd7e99081a3c0c9edb
Message-ID: <61e23ad1.gwGLQB8izRlpiV8H%lkp@intel.com>
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
branch HEAD: cccf37bd0b07f8aa381c98fd7e99081a3c0c9edb  moxart: fix potential use-after-free on remove path

elapsed time: 732m

configs tested: 126
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
nios2                               defconfig
arm                          simpad_defconfig
openrisc                    or1ksim_defconfig
sh                   sh7724_generic_defconfig
m68k                          atari_defconfig
powerpc                        warp_defconfig
arm                           tegra_defconfig
sh                              ul2_defconfig
arm                           sama5_defconfig
x86_64                           alldefconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                      pcm030_defconfig
sparc                               defconfig
mips                           ip32_defconfig
arm                           viper_defconfig
m68k                       m5475evb_defconfig
sparc                            allyesconfig
arm                        mvebu_v7_defconfig
arm                      integrator_defconfig
xtensa                generic_kc705_defconfig
xtensa                    xip_kc705_defconfig
sh                   secureedge5410_defconfig
powerpc                      tqm8xx_defconfig
arm                          iop32x_defconfig
mips                         tb0226_defconfig
arm                            mps2_defconfig
arm                          lpd270_defconfig
riscv                            allmodconfig
powerpc                 linkstation_defconfig
ia64                         bigsur_defconfig
ia64                            zx1_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
arm                  randconfig-c002-20220113
arm                  randconfig-c002-20220114
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220113
arc                  randconfig-r043-20220113
s390                 randconfig-r044-20220113
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220113
x86_64                        randconfig-c007
riscv                randconfig-c006-20220113
powerpc              randconfig-c003-20220113
i386                          randconfig-c001
mips                 randconfig-c004-20220113
arm                    vt8500_v6_v7_defconfig
mips                      malta_kvm_defconfig
powerpc                 mpc836x_mds_defconfig
mips                           ip27_defconfig
mips                      pic32mzda_defconfig
mips                          ath79_defconfig
powerpc                      acadia_defconfig
arm                     davinci_all_defconfig
mips                         tb0219_defconfig
powerpc                    socrates_defconfig
powerpc                        icon_defconfig
powerpc                   lite5200b_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220113
hexagon              randconfig-r045-20220114
riscv                randconfig-r042-20220114
hexagon              randconfig-r041-20220114
hexagon              randconfig-r041-20220113

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
