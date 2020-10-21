Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E2B294708
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 05:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEBC586364;
	Wed, 21 Oct 2020 03:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xNhiy8W2M0cV; Wed, 21 Oct 2020 03:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DE6C862C1;
	Wed, 21 Oct 2020 03:39:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E78D1BF44C
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 03:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 342D22E3B1
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 03:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpIRPkUMLRbn for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 03:39:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id ED5BB2F0EF
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 00:11:04 +0000 (UTC)
IronPort-SDR: oLnCqumXQtvLK+JHTjAl6fdwgYUrXP+DrTVeoYbWS2Kd2qGHFYyauEmHiinDn893+7ZinSgHGG
 KWs9QABGucRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="147151212"
X-IronPort-AV: E=Sophos;i="5.77,399,1596524400"; d="scan'208";a="147151212"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 17:11:04 -0700
IronPort-SDR: tRV2rVo49CFUYw0fhWGK90DFtYsYEjqFfYN0PgY7NnztKQGbq2Lj+G7kt4c1K2i08EEVJA281O
 3EglMSiwumXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,399,1596524400"; d="scan'208";a="301910058"
Received: from lkp-server02.sh.intel.com (HELO 102063808cc1) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 20 Oct 2020 17:11:03 -0700
Received: from kbuild by 102063808cc1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kV1iY-00001T-G2; Wed, 21 Oct 2020 00:11:02 +0000
Date: Wed, 21 Oct 2020 08:10:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 22c73228d195d3ceb754734de4998d705bca70dd
Message-ID: <5f8f7c67.L8ruGD7uowPBB9ec%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 22c73228d195d3ceb754734de4998d705bca70dd  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 720m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
c6x                        evmc6678_defconfig
arm                           stm32_defconfig
arm                        realview_defconfig
sparc                       sparc32_defconfig
powerpc                 mpc836x_mds_defconfig
mips                         tb0287_defconfig
m68k                            q40_defconfig
powerpc                     ep8248e_defconfig
powerpc                      ppc6xx_defconfig
xtensa                              defconfig
sh                ecovec24-romimage_defconfig
powerpc                     tqm8555_defconfig
xtensa                  audio_kc705_defconfig
xtensa                       common_defconfig
ia64                             allyesconfig
arm                        neponset_defconfig
powerpc                  mpc866_ads_defconfig
c6x                        evmc6457_defconfig
powerpc                 mpc8540_ads_defconfig
mips                           gcw0_defconfig
arm                      tct_hammer_defconfig
m68k                          amiga_defconfig
ia64                        generic_defconfig
powerpc                      ppc64e_defconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20201020
i386                 randconfig-a005-20201020
i386                 randconfig-a003-20201020
i386                 randconfig-a001-20201020
i386                 randconfig-a006-20201020
i386                 randconfig-a004-20201020
x86_64               randconfig-a011-20201020
x86_64               randconfig-a013-20201020
x86_64               randconfig-a016-20201020
x86_64               randconfig-a015-20201020
x86_64               randconfig-a012-20201020
x86_64               randconfig-a014-20201020
i386                 randconfig-a016-20201020
i386                 randconfig-a014-20201020
i386                 randconfig-a015-20201020
i386                 randconfig-a013-20201020
i386                 randconfig-a012-20201020
i386                 randconfig-a011-20201020
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20201020
x86_64               randconfig-a002-20201020
x86_64               randconfig-a003-20201020
x86_64               randconfig-a006-20201020
x86_64               randconfig-a005-20201020
x86_64               randconfig-a004-20201020

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
