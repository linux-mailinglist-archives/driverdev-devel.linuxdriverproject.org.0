Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBB62D0057
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:52:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31550886CA;
	Sun,  6 Dec 2020 03:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ir-NkOt1pSZz; Sun,  6 Dec 2020 03:52:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D3A0886C4;
	Sun,  6 Dec 2020 03:52:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F27D1BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3426F20130
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEz0k1gSqkHb for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:52:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 807D720101
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:52:39 +0000 (UTC)
IronPort-SDR: /pvtEeuOe2S+kkDxivDHmVdE6pyZQ7Y0CYU87OnigbvNHR9JPtqcQX4d6NKQqHArdOzb7XQLYQ
 4f37Hp/jPYFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9826"; a="170046934"
X-IronPort-AV: E=Sophos;i="5.78,396,1599548400"; d="scan'208";a="170046934"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 19:52:38 -0800
IronPort-SDR: m0ZebBFl8yarbe25howqsNds6rIl6e57s4Br8GPa+7IHPpgvXu4ApuEctdW/wCQy89kh316/k5
 13zZfUIdZe1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,396,1599548400"; d="scan'208";a="362647196"
Received: from lkp-server01.sh.intel.com (HELO 47754f1311fc) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 05 Dec 2020 19:52:37 -0800
Received: from kbuild by 47754f1311fc with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kll6C-0000YE-Sy; Sun, 06 Dec 2020 03:52:36 +0000
Date: Sun, 06 Dec 2020 11:51:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 784b2c48ac12dcee27db001fb1a3c58c39380cb6
Message-ID: <5fcc5558.bDtu6PGhFz4vG5Ko%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 784b2c48ac12dcee27db001fb1a3c58c39380cb6  driver core: auxiliary bus: Fix auxiliary bus shutdown null auxdrv ptr

elapsed time: 722m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
xtensa                         virt_defconfig
powerpc                      arches_defconfig
powerpc                      bamboo_defconfig
parisc                generic-32bit_defconfig
sh                           se7705_defconfig
powerpc                     redwood_defconfig
sh                             espt_defconfig
arm                           h5000_defconfig
mips                         cobalt_defconfig
m68k                       m5208evb_defconfig
arm                           stm32_defconfig
powerpc                     pseries_defconfig
alpha                            allyesconfig
powerpc                     sbc8548_defconfig
powerpc                   currituck_defconfig
powerpc                 canyonlands_defconfig
sh                             shx3_defconfig
sh                   rts7751r2dplus_defconfig
sh                          landisk_defconfig
m68k                        m5407c3_defconfig
mips                          ath25_defconfig
arc                     nsimosci_hs_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
i386                               tinyconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201206
i386                 randconfig-a004-20201206
i386                 randconfig-a001-20201206
i386                 randconfig-a002-20201206
i386                 randconfig-a006-20201206
i386                 randconfig-a003-20201206
i386                 randconfig-a014-20201206
i386                 randconfig-a013-20201206
i386                 randconfig-a011-20201206
i386                 randconfig-a015-20201206
i386                 randconfig-a012-20201206
i386                 randconfig-a016-20201206
x86_64               randconfig-a004-20201206
x86_64               randconfig-a006-20201206
x86_64               randconfig-a002-20201206
x86_64               randconfig-a001-20201206
x86_64               randconfig-a005-20201206
x86_64               randconfig-a003-20201206
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
x86_64               randconfig-a016-20201206
x86_64               randconfig-a012-20201206
x86_64               randconfig-a014-20201206
x86_64               randconfig-a013-20201206
x86_64               randconfig-a015-20201206
x86_64               randconfig-a011-20201206

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
