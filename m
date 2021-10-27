Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B226943D37C
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 23:04:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01B30405A0;
	Wed, 27 Oct 2021 21:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OA51LtLq3iHl; Wed, 27 Oct 2021 21:04:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42D6140370;
	Wed, 27 Oct 2021 21:04:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 502901BF3EB
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 21:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4DF0F40597
 for <devel@linuxdriverproject.org>; Wed, 27 Oct 2021 21:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IKQjv1ya3xr for <devel@linuxdriverproject.org>;
 Wed, 27 Oct 2021 21:04:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 446F740370
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 21:04:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="227721256"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="227721256"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 14:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="447384319"
Received: from lkp-server01.sh.intel.com (HELO 3b851179dbd8) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 27 Oct 2021 14:04:00 -0700
Received: from kbuild by 3b851179dbd8 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mfq5X-00010Z-Fo; Wed, 27 Oct 2021 21:03:59 +0000
Date: Thu, 28 Oct 2021 05:03:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 27e0bcd02990f7291adb0f111e300f06c495d509
Message-ID: <6179be97.JARXS/iD47o8z9aC%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 27e0bcd02990f7291adb0f111e300f06c495d509  device property: Drop redundant NULL checks

elapsed time: 1652m

configs tested: 100
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211027
mips                         tb0287_defconfig
nios2                            alldefconfig
powerpc                     ep8248e_defconfig
powerpc                        fsp2_defconfig
sh                           se7721_defconfig
arm                    vt8500_v6_v7_defconfig
arm                     davinci_all_defconfig
arc                         haps_hs_defconfig
arc                            hsdk_defconfig
arm                          lpd270_defconfig
i386                             alldefconfig
powerpc                 mpc832x_rdb_defconfig
arm                       aspeed_g5_defconfig
mips                         tb0226_defconfig
openrisc                    or1ksim_defconfig
xtensa                    xip_kc705_defconfig
mips                     decstation_defconfig
powerpc                      bamboo_defconfig
mips                          ath25_defconfig
mips                         cobalt_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                  randconfig-c002-20211027
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a013-20211027
x86_64               randconfig-a015-20211027
x86_64               randconfig-a011-20211027
x86_64               randconfig-a014-20211027
x86_64               randconfig-a016-20211027
x86_64               randconfig-a012-20211027
i386                 randconfig-a012-20211027
i386                 randconfig-a013-20211027
i386                 randconfig-a011-20211027
i386                 randconfig-a016-20211027
i386                 randconfig-a015-20211027
i386                 randconfig-a014-20211027
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
riscv                randconfig-c006-20211027
powerpc              randconfig-c003-20211027
arm                  randconfig-c002-20211027
mips                 randconfig-c004-20211027
x86_64               randconfig-c007-20211027
i386                 randconfig-c001-20211027
s390                 randconfig-c005-20211027
i386                 randconfig-a003-20211027
i386                 randconfig-a004-20211027
i386                 randconfig-a002-20211027
i386                 randconfig-a005-20211027
i386                 randconfig-a001-20211027
i386                 randconfig-a006-20211027
hexagon              randconfig-r045-20211027
hexagon              randconfig-r041-20211027

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
