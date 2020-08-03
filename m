Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F6239D8B
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 04:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 518C487B77;
	Mon,  3 Aug 2020 02:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbv2Vtq9PtrM; Mon,  3 Aug 2020 02:47:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8116487B92;
	Mon,  3 Aug 2020 02:47:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 192F51BF402
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 02:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 15C2387B6A
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 02:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n7XBK4hjA-Dc for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 02:47:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F64B87B60
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 02:47:22 +0000 (UTC)
IronPort-SDR: cz3Zyux1sn/UBk5M1/hNV+gwHvE2izLpQ7kXUxeEF/h+7U1CMBjWBZzmPN9HZlloCKenq/QNwD
 NT+yu+dOVHSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="170140538"
X-IronPort-AV: E=Sophos;i="5.75,428,1589266800"; d="scan'208";a="170140538"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2020 19:47:21 -0700
IronPort-SDR: LZxA2hRJrkavRQFriR6t4Gmbzjid/AwjAb+BYfZsad5lhWM8lsd8hDaUjctOgM0ptbxbFq56CZ
 4JHT6RCz4IIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,428,1589266800"; d="scan'208";a="436053334"
Received: from lkp-server01.sh.intel.com (HELO e21119890065) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2020 19:47:20 -0700
Received: from kbuild by e21119890065 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k2QVT-0001oD-R4; Mon, 03 Aug 2020 02:47:19 +0000
Date: Mon, 03 Aug 2020 10:46:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 5bbd90550da8f7bdac769b5825597e67183c9411
Message-ID: <5f277a7f.nVvZ6Cts7qjdoxPl%lkp@intel.com>
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
branch HEAD: 5bbd90550da8f7bdac769b5825597e67183c9411  staging: most: fix up movement of USB driver

elapsed time: 721m

configs tested: 103
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
powerpc                      chrp32_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                          pxa910_defconfig
sh                        sh7757lcr_defconfig
sh                           se7780_defconfig
mips                           jazz_defconfig
mips                            ar7_defconfig
c6x                         dsk6455_defconfig
m68k                         amcore_defconfig
ia64                      gensparse_defconfig
powerpc                  mpc885_ads_defconfig
powerpc64                           defconfig
mips                     cu1000-neo_defconfig
arm                            dove_defconfig
arm                        neponset_defconfig
sh                      rts7751r2d1_defconfig
nios2                         3c120_defconfig
c6x                        evmc6457_defconfig
h8300                               defconfig
arm                        shmobile_defconfig
arm                            pleb_defconfig
powerpc                mpc7448_hpc2_defconfig
m68k                                defconfig
arm                            zeus_defconfig
nds32                            alldefconfig
arc                         haps_hs_defconfig
arm                          exynos_defconfig
mips                      pistachio_defconfig
arm                     am200epdkit_defconfig
arm                         lpc32xx_defconfig
alpha                            allyesconfig
mips                          ath25_defconfig
mips                      maltaaprp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200803
i386                 randconfig-a005-20200803
i386                 randconfig-a001-20200803
i386                 randconfig-a002-20200803
i386                 randconfig-a003-20200803
i386                 randconfig-a006-20200803
i386                 randconfig-a004-20200802
i386                 randconfig-a005-20200802
i386                 randconfig-a001-20200802
i386                 randconfig-a002-20200802
i386                 randconfig-a003-20200802
i386                 randconfig-a006-20200802
i386                 randconfig-a011-20200802
i386                 randconfig-a012-20200802
i386                 randconfig-a015-20200802
i386                 randconfig-a014-20200802
i386                 randconfig-a013-20200802
i386                 randconfig-a016-20200802
x86_64               randconfig-a006-20200802
x86_64               randconfig-a001-20200802
x86_64               randconfig-a004-20200802
x86_64               randconfig-a003-20200802
x86_64               randconfig-a002-20200802
x86_64               randconfig-a005-20200802
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
