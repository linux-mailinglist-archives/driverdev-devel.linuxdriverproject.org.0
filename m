Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D6B25841F
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 00:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 909BF22DDB;
	Mon, 31 Aug 2020 22:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZY-ElJBjrIn; Mon, 31 Aug 2020 22:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0FB4228AE;
	Mon, 31 Aug 2020 22:33:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9D111BF30A
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 22:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9DB4C228AE
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 22:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTddqYCoulXx for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 22:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 0959D1FE41
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 22:33:50 +0000 (UTC)
IronPort-SDR: aZz393HhBMs/mngSyNDmeShGQG2sa7aS8Tx1bbEzuWtBkBBlMKf7TbBoZwaaymHA3FU2csdeQo
 onEaikN3++aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="154471293"
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="154471293"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 15:33:49 -0700
IronPort-SDR: UbHwRyxa1uq4An91UJodVY35CVJTMxl6ex8+bfuqNURlWc4chjnWD/ivW66tVSYc3Hsuplq3KO
 6xtsoQpUKTSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="297082521"
Received: from lkp-server02.sh.intel.com (HELO 713faec3b0e5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 31 Aug 2020 15:33:48 -0700
Received: from kbuild by 713faec3b0e5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kCsN1-0000E6-Hy; Mon, 31 Aug 2020 22:33:47 +0000
Date: Tue, 01 Sep 2020 06:33:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 c96711e138444d37d6d8b3f0fa7f09e4917cd326
Message-ID: <5f4d7abe.66YzoDfi8A0SgAJc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-linus
branch HEAD: c96711e138444d37d6d8b3f0fa7f09e4917cd326  Merge tag 'iio-fixes-for-5.9a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus

elapsed time: 724m

configs tested: 92
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                      axs103_smp_defconfig
mips                          rb532_defconfig
arm                           viper_defconfig
m68k                            q40_defconfig
arm                       cns3420vb_defconfig
alpha                            allyesconfig
mips                        omega2p_defconfig
h8300                            alldefconfig
arm                             pxa_defconfig
arm                           omap1_defconfig
arm                         mv78xx0_defconfig
mips                         tb0287_defconfig
arm                         socfpga_defconfig
sh                           se7751_defconfig
um                             i386_defconfig
m68k                        stmark2_defconfig
m68k                             allyesconfig
mips                  cavium_octeon_defconfig
mips                       rbtx49xx_defconfig
mips                          ath25_defconfig
arm                         nhk8815_defconfig
sh                           se7722_defconfig
arm                          exynos_defconfig
sh                              ul2_defconfig
arm                        clps711x_defconfig
nds32                             allnoconfig
parisc                generic-64bit_defconfig
xtensa                              defconfig
arm                              alldefconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
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
powerpc                             defconfig
i386                 randconfig-a001-20200831
i386                 randconfig-a002-20200831
i386                 randconfig-a004-20200831
i386                 randconfig-a006-20200831
i386                 randconfig-a005-20200831
i386                 randconfig-a003-20200831
x86_64               randconfig-a012-20200831
x86_64               randconfig-a015-20200831
x86_64               randconfig-a014-20200831
x86_64               randconfig-a011-20200831
x86_64               randconfig-a016-20200831
x86_64               randconfig-a013-20200831
i386                 randconfig-a013-20200831
i386                 randconfig-a011-20200831
i386                 randconfig-a012-20200831
i386                 randconfig-a015-20200831
i386                 randconfig-a016-20200831
i386                 randconfig-a014-20200831
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
