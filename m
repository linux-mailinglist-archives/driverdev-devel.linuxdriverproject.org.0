Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C4726D128
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 04:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6EF592E0FD;
	Thu, 17 Sep 2020 02:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0+MrpXcFzeqO; Thu, 17 Sep 2020 02:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63B20203EB;
	Thu, 17 Sep 2020 02:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEF121BF57F
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 02:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB79F86F38
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 02:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bQ1BXyL_SODV for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 02:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 246C886F35
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 02:32:28 +0000 (UTC)
IronPort-SDR: UoZ82nTBV2ig5zNhbev7Sbm3bJKCR1BngBqdseS9ZfokLN/uCxIl29NiSJ0hh+4vOwTy+RG0aw
 iP06OO6mT+9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="160539803"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="160539803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 19:32:27 -0700
IronPort-SDR: cw0FqWN78/S4jxuc4waRuyAvdD2JAMhUdJXnvhN66O8aWvWnkwIlQsa8Dx3e3mi/3rFwHFyfLJ
 Z6v33tka1Wxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="331956334"
Received: from lkp-server02.sh.intel.com (HELO bdcb92cf8b4e) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 16 Sep 2020 19:32:26 -0700
Received: from kbuild by bdcb92cf8b4e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kIjij-0000Mf-D1; Thu, 17 Sep 2020 02:32:25 +0000
Date: Thu, 17 Sep 2020 10:32:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 91bccf883e3cc4f3ab38db61538b68348a3ee9ee
Message-ID: <5f62caa6.asbivBklgz2sBQoz%lkp@intel.com>
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
branch HEAD: 91bccf883e3cc4f3ab38db61538b68348a3ee9ee  staging: wfx: simplify virt_addr_valid call

elapsed time: 720m

configs tested: 103
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         ebsa110_defconfig
openrisc                         alldefconfig
arm                      tct_hammer_defconfig
openrisc                 simple_smp_defconfig
arm                      jornada720_defconfig
mips                          rm200_defconfig
m68k                        stmark2_defconfig
arm                         axm55xx_defconfig
m68k                       m5475evb_defconfig
arm                          tango4_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                    sam440ep_defconfig
arm                         at91_dt_defconfig
parisc                           allyesconfig
powerpc                     kilauea_defconfig
arm                          imote2_defconfig
powerpc                  mpc885_ads_defconfig
nios2                            allyesconfig
arm                           sama5_defconfig
sh                ecovec24-romimage_defconfig
arm                           efm32_defconfig
mips                         tb0287_defconfig
mips                         db1xxx_defconfig
arc                             nps_defconfig
arm                        trizeps4_defconfig
powerpc                 mpc836x_mds_defconfig
mips                         rt305x_defconfig
powerpc                  mpc866_ads_defconfig
alpha                            alldefconfig
m68k                         apollo_defconfig
alpha                               defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                    klondike_defconfig
c6x                        evmc6472_defconfig
arc                        nsimosci_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
x86_64               randconfig-a006-20200916
x86_64               randconfig-a004-20200916
x86_64               randconfig-a003-20200916
x86_64               randconfig-a002-20200916
x86_64               randconfig-a001-20200916
x86_64               randconfig-a005-20200916
i386                 randconfig-a004-20200916
i386                 randconfig-a006-20200916
i386                 randconfig-a003-20200916
i386                 randconfig-a001-20200916
i386                 randconfig-a002-20200916
i386                 randconfig-a005-20200916
i386                 randconfig-a015-20200916
i386                 randconfig-a014-20200916
i386                 randconfig-a011-20200916
i386                 randconfig-a013-20200916
i386                 randconfig-a016-20200916
i386                 randconfig-a012-20200916
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

clang tested configs:
x86_64               randconfig-a014-20200916
x86_64               randconfig-a011-20200916
x86_64               randconfig-a016-20200916
x86_64               randconfig-a012-20200916
x86_64               randconfig-a015-20200916
x86_64               randconfig-a013-20200916

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
