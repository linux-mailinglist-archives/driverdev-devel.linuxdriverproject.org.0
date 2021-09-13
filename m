Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 487A4409E47
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 22:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60B1180DEE;
	Mon, 13 Sep 2021 20:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLfeC3dzjK4Y; Mon, 13 Sep 2021 20:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DDED80D8C;
	Mon, 13 Sep 2021 20:39:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A24CA1BF322
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 20:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F2014029B
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 20:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANraHnM0RLC0 for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 20:39:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A729F4029A
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 20:39:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="208889741"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="208889741"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 13:39:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="609207165"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2021 13:39:43 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mPsju-0007sS-G6; Mon, 13 Sep 2021 20:39:42 +0000
Date: Tue, 14 Sep 2021 04:39:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 0af8efc197d70cd69bf620069e3d94d1da25a8de
Message-ID: <613fb700.V5aTtJEjYYKHoiRg%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 0af8efc197d70cd69bf620069e3d94d1da25a8de  staging: r8188eu: remove rtl8188e_set_hal_ops()

elapsed time: 815m

configs tested: 116
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210913
arm                       aspeed_g4_defconfig
m68k                            q40_defconfig
arm                        keystone_defconfig
powerpc                 canyonlands_defconfig
mips                            e55_defconfig
powerpc                       maple_defconfig
sh                         apsh4a3a_defconfig
arm                           omap1_defconfig
mips                       bmips_be_defconfig
arm                           corgi_defconfig
powerpc                      cm5200_defconfig
ia64                         bigsur_defconfig
xtensa                           alldefconfig
arm                     davinci_all_defconfig
powerpc                     redwood_defconfig
arm                       netwinder_defconfig
powerpc                        cell_defconfig
mips                      maltasmvp_defconfig
nds32                            alldefconfig
powerpc                      bamboo_defconfig
mips                        jmr3927_defconfig
mips                      loongson3_defconfig
riscv                    nommu_k210_defconfig
mips                        maltaup_defconfig
powerpc                  storcenter_defconfig
arm                         bcm2835_defconfig
m68k                          atari_defconfig
sh                   secureedge5410_defconfig
sh                           se7721_defconfig
x86_64               randconfig-c001-20210913
arm                  randconfig-c002-20210913
ia64                             allmodconfig
ia64                                defconfig
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
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
x86_64               randconfig-a002-20210913
x86_64               randconfig-a003-20210913
x86_64               randconfig-a006-20210913
x86_64               randconfig-a004-20210913
x86_64               randconfig-a005-20210913
x86_64               randconfig-a001-20210913
i386                 randconfig-a004-20210913
i386                 randconfig-a005-20210913
i386                 randconfig-a002-20210913
i386                 randconfig-a006-20210913
i386                 randconfig-a003-20210913
i386                 randconfig-a001-20210913
arc                  randconfig-r043-20210913
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20210913
x86_64               randconfig-c007-20210913
mips                 randconfig-c004-20210913
powerpc              randconfig-c003-20210913
i386                 randconfig-c001-20210913
arm                  randconfig-c002-20210913
s390                 randconfig-c005-20210913
x86_64               randconfig-a016-20210913
x86_64               randconfig-a013-20210913
x86_64               randconfig-a012-20210913
x86_64               randconfig-a011-20210913
x86_64               randconfig-a014-20210913
x86_64               randconfig-a015-20210913
i386                 randconfig-a016-20210913
i386                 randconfig-a011-20210913
i386                 randconfig-a015-20210913
i386                 randconfig-a012-20210913
i386                 randconfig-a013-20210913
i386                 randconfig-a014-20210913
riscv                randconfig-r042-20210913
hexagon              randconfig-r045-20210913
s390                 randconfig-r044-20210913
hexagon              randconfig-r041-20210913

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
