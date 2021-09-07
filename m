Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2ED402EF8
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Sep 2021 21:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E27B402B9;
	Tue,  7 Sep 2021 19:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTy3ihAZNeNz; Tue,  7 Sep 2021 19:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBA7840272;
	Tue,  7 Sep 2021 19:30:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87DEC1BF33D
 for <devel@linuxdriverproject.org>; Tue,  7 Sep 2021 19:29:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75D7E40272
 for <devel@linuxdriverproject.org>; Tue,  7 Sep 2021 19:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RaHdTej1SOkC for <devel@linuxdriverproject.org>;
 Tue,  7 Sep 2021 19:29:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A9B440025
 for <devel@driverdev.osuosl.org>; Tue,  7 Sep 2021 19:29:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="218434556"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="218434556"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 12:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="695134328"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 07 Sep 2021 12:29:53 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mNgn3-0001EB-2g; Tue, 07 Sep 2021 19:29:53 +0000
Date: Wed, 08 Sep 2021 03:29:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 d3c6dfb00bd9fe75f3a44246d6db7991f6443bac
Message-ID: <6137bda7.ns8FtyHo2E+FW3Ma%lkp@intel.com>
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
branch HEAD: d3c6dfb00bd9fe75f3a44246d6db7991f6443bac  staging: r8188eu: Remove _enter/_exit_critical_mutex()

elapsed time: 733m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
mips                         rt305x_defconfig
sh                           se7722_defconfig
mips                           jazz_defconfig
powerpc                     stx_gp3_defconfig
mips                        bcm63xx_defconfig
mips                        nlm_xlr_defconfig
sh                           se7780_defconfig
m68k                         apollo_defconfig
alpha                               defconfig
riscv             nommu_k210_sdcard_defconfig
sh                           se7721_defconfig
powerpc                         ps3_defconfig
sparc                       sparc32_defconfig
ia64                            zx1_defconfig
arm                            zeus_defconfig
arm                            pleb_defconfig
arm                           h5000_defconfig
microblaze                      mmu_defconfig
arm                         shannon_defconfig
powerpc                    klondike_defconfig
powerpc                      bamboo_defconfig
sparc                       sparc64_defconfig
powerpc                        warp_defconfig
mips                       rbtx49xx_defconfig
sh                               j2_defconfig
alpha                            allyesconfig
powerpc                 mpc836x_mds_defconfig
sh                             espt_defconfig
mips                          rb532_defconfig
riscv                               defconfig
sh                             sh03_defconfig
mips                  decstation_64_defconfig
powerpc                     tqm8540_defconfig
arm                         hackkit_defconfig
nios2                         10m50_defconfig
powerpc                       ebony_defconfig
powerpc64                           defconfig
powerpc                     taishan_defconfig
sh                           se7619_defconfig
i386                 randconfig-c001-20210906
arm                  randconfig-c002-20210906
x86_64                            allnoconfig
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
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
arc                                 defconfig
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
x86_64               randconfig-a006-20210906
x86_64               randconfig-a004-20210906
x86_64               randconfig-a003-20210906
x86_64               randconfig-a005-20210906
x86_64               randconfig-a001-20210906
x86_64               randconfig-a002-20210906
i386                 randconfig-a005-20210906
i386                 randconfig-a004-20210906
i386                 randconfig-a006-20210906
i386                 randconfig-a002-20210906
i386                 randconfig-a003-20210906
i386                 randconfig-a001-20210906
arc                  randconfig-r043-20210906
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                              defconfig

clang tested configs:
x86_64               randconfig-a011-20210906
x86_64               randconfig-a016-20210906
x86_64               randconfig-a012-20210906
x86_64               randconfig-a015-20210906
x86_64               randconfig-a014-20210906
x86_64               randconfig-a013-20210906
i386                 randconfig-a011-20210906
i386                 randconfig-a012-20210906
i386                 randconfig-a015-20210906
i386                 randconfig-a013-20210906
i386                 randconfig-a014-20210906
i386                 randconfig-a016-20210906
riscv                randconfig-r042-20210906
hexagon              randconfig-r045-20210906
s390                 randconfig-r044-20210906
hexagon              randconfig-r041-20210906

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
