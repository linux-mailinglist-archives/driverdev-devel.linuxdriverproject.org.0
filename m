Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82ADC4F90DA
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Apr 2022 10:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABB8B41DC6;
	Fri,  8 Apr 2022 08:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lfgz-ZzEupVN; Fri,  8 Apr 2022 08:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B760F41D37;
	Fri,  8 Apr 2022 08:32:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D37D31BF32B
 for <devel@linuxdriverproject.org>; Fri,  8 Apr 2022 08:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C11FF40207
 for <devel@linuxdriverproject.org>; Fri,  8 Apr 2022 08:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n0YQtcIbQQNI for <devel@linuxdriverproject.org>;
 Fri,  8 Apr 2022 08:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCF3040181
 for <devel@driverdev.osuosl.org>; Fri,  8 Apr 2022 08:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649406747; x=1680942747;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RWQsWnn4EIt/huc+0iBLSRCg68VYo92wJ50GPuYvlFI=;
 b=JfnKhri3hSuBaZ7Q+9UN+lZZ8iBhlAox1b7v3x/AqUceiWa5xTzG7Gwh
 LmTrsdjzFpYIkDwMRskxoaUr9Xupje71YBtLp/vagqKTeDIa1LBA5GMAV
 /xoWcPAyPP6bERBuMghEbSyRUdsnuUhSdyDMZLErho9x3yNyKh9Akj/0P
 /+7Z8Tcsu08LyMw3KW3kzEOVLO5k+hioxu639+hVFSaS0Rb4L0Azm2UEi
 Fpnyn9R0NGG/+dJSP1QdwxnMiW3CQle6QeklfCYYY5Nt9dq9Q9dnCXcTC
 hJLud3b5C3aWBx4i81M6NnfscYup75qNYoCbPq/t+riG3LSCsIMWpN/tB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="259143265"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="259143265"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="659408839"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 08 Apr 2022 01:32:09 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nck2K-000045-St;
 Fri, 08 Apr 2022 08:32:08 +0000
Date: Fri, 08 Apr 2022 16:32:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 bc4f661a45205ccd60bae2641b1be2333621c90c
Message-ID: <624ff304.1jf1wc8Km3RNlYcm%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: bc4f661a45205ccd60bae2641b1be2333621c90c  staging: rtl8712: fix camel case in function r8712_generate_ie

elapsed time: 734m

configs tested: 134
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                      integrator_defconfig
powerpc                     taishan_defconfig
sh                          polaris_defconfig
powerpc                      ep88xc_defconfig
powerpc                      ppc6xx_defconfig
sh                           se7780_defconfig
sh                           se7722_defconfig
sparc64                          alldefconfig
mips                     decstation_defconfig
arm                          pxa910_defconfig
arm                     eseries_pxa_defconfig
powerpc                         ps3_defconfig
powerpc                    sam440ep_defconfig
powerpc                  iss476-smp_defconfig
powerpc                 mpc8540_ads_defconfig
mips                            ar7_defconfig
arm                         nhk8815_defconfig
arc                    vdk_hs38_smp_defconfig
arm                          lpd270_defconfig
s390                             allyesconfig
sh                   secureedge5410_defconfig
sh                   rts7751r2dplus_defconfig
arm                             pxa_defconfig
sparc                               defconfig
powerpc                      pcm030_defconfig
powerpc64                           defconfig
powerpc                       ppc64_defconfig
ia64                        generic_defconfig
arm                       multi_v4t_defconfig
ia64                         bigsur_defconfig
arm                       imx_v6_v7_defconfig
powerpc                       eiger_defconfig
arm                         assabet_defconfig
mips                        vocore2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220408
arm                  randconfig-c002-20220406
arm                  randconfig-c002-20220407
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220406
arc                  randconfig-r043-20220407
s390                 randconfig-r044-20220406
riscv                randconfig-r042-20220406
arc                  randconfig-r043-20220408
s390                 randconfig-r044-20220408
riscv                randconfig-r042-20220408
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220408
riscv                randconfig-c006-20220408
mips                 randconfig-c004-20220408
arm                  randconfig-c002-20220408
powerpc                      pasemi_defconfig
arm                            mps2_defconfig
arm                       aspeed_g4_defconfig
arm                     davinci_all_defconfig
arm                        magician_defconfig
powerpc                       ebony_defconfig
powerpc                   microwatt_defconfig
powerpc                    socrates_defconfig
powerpc                     akebono_defconfig
arm                          pcm027_defconfig
riscv                             allnoconfig
arm                          collie_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
