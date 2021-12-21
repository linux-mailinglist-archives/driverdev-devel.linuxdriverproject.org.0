Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C897647BCCB
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Dec 2021 10:22:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8BC8405A7;
	Tue, 21 Dec 2021 09:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32eLYRwI61s3; Tue, 21 Dec 2021 09:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 461FF409A9;
	Tue, 21 Dec 2021 09:22:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 139B11BF83B
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 09:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 000DD404FE
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 09:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTIy2SYJlLHN for <devel@linuxdriverproject.org>;
 Tue, 21 Dec 2021 09:21:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A10804016B
 for <devel@driverdev.osuosl.org>; Tue, 21 Dec 2021 09:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640078512; x=1671614512;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=MNUQ7CsjzsVs55LDCPLS79Tcr/dWjsN6zZScEo17fyI=;
 b=dy9uf/tNh5ZPcvKte68jsymawTZDlT857oOJPFQp6I1UWjfFWsWTJeJ5
 wh0XvBQOHsdrsyO2qLcgNDCNiqLR+veuyP5WAcUGkRYTIHHYmNy+hwY+V
 /FhEDjF0uxMrDt40PUzqrb+bPPoCu9aQiAlhVqyKgZu0MJBSWZ8dHm9ea
 7pRCcodJigmlEJC9CnSOveT/WufOb2XDsyVG37IkqLJhogEA7FaR2Xk99
 mOte2a6UDGDMAAcDLYwRVIdCQruui6zVrPyk+7wfKNzuuA0OgF0Bn2tyZ
 l/3t+o07vXFZHboigLWTRonh5v/9c0CfqplxEfowbX2iQzbRSKfV0pNL7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="227652331"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="227652331"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 01:21:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="508007138"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 21 Dec 2021 01:21:50 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mzbLC-0008v8-0G; Tue, 21 Dec 2021 09:21:50 +0000
Date: Tue, 21 Dec 2021 17:21:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 144779edf598e0896302c35a0926ef0b68f17c4b
Message-ID: <61c19ca6.EoDT7NTd70pGW7zk%lkp@intel.com>
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
branch HEAD: 144779edf598e0896302c35a0926ef0b68f17c4b  staging: greybus: fix stack size warning with UBSAN

elapsed time: 728m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                 kfr2r09-romimage_defconfig
powerpc                 mpc8272_ads_defconfig
arm                         s3c6400_defconfig
powerpc                      arches_defconfig
arm                          badge4_defconfig
arm                         s3c2410_defconfig
powerpc                       maple_defconfig
arm                       imx_v4_v5_defconfig
sh                           se7712_defconfig
arm                        vexpress_defconfig
mips                       bmips_be_defconfig
mips                             allmodconfig
powerpc                     tqm8541_defconfig
m68k                             alldefconfig
sh                          urquell_defconfig
sh                             shx3_defconfig
powerpc                 mpc85xx_cds_defconfig
openrisc                  or1klitex_defconfig
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig
arm                     davinci_all_defconfig
sh                          rsk7269_defconfig
arm                            mmp2_defconfig
h8300                            alldefconfig
arm                         hackkit_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                             sh03_defconfig
parisc                generic-64bit_defconfig
powerpc                       eiger_defconfig
sh                            hp6xx_defconfig
sh                           se7750_defconfig
arm                         lubbock_defconfig
powerpc                   currituck_defconfig
arm                          exynos_defconfig
sh                     magicpanelr2_defconfig
sh                           se7722_defconfig
mips                            ar7_defconfig
arm64                            alldefconfig
arm                            pleb_defconfig
arm                            xcep_defconfig
s390                          debug_defconfig
arm                          pxa3xx_defconfig
sh                           se7724_defconfig
powerpc                 mpc8560_ads_defconfig
arm                  randconfig-c002-20211220
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
i386                 randconfig-a006-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a005-20211220
i386                 randconfig-a001-20211220
arc                  randconfig-r043-20211221
riscv                randconfig-r042-20211221
s390                 randconfig-r044-20211221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
