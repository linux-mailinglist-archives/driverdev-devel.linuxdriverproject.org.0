Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A52E2983AD
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 22:28:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C49F886911;
	Sun, 25 Oct 2020 21:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pp4MCsWgmBI3; Sun, 25 Oct 2020 21:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82B18867B9;
	Sun, 25 Oct 2020 21:28:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96F761BF392
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 21:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 93994871A5
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 21:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3sLOAQc453uO for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 21:28:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 574C887123
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 21:28:48 +0000 (UTC)
IronPort-SDR: 55V7mbr6o6uh1unJVkt+FELUaEgT5+b1cRkDPrv9Lxwlrs5jdU3Uv55nq3CI921iHgdbUVSqeo
 ClXU/Dxsh6GQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9785"; a="229490546"
X-IronPort-AV: E=Sophos;i="5.77,417,1596524400"; d="scan'208";a="229490546"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2020 14:28:46 -0700
IronPort-SDR: D+PgTZ4w2M+68qosO9z1FY8poSXHOpCOK1A0zldidZWEzGmvcrqKLsn1NR7aiTfKKRL+AInqCq
 4ILHTGzsL2tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,417,1596524400"; d="scan'208";a="467698155"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 25 Oct 2020 14:28:45 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kWnZE-00013o-HY; Sun, 25 Oct 2020 21:28:44 +0000
Date: Mon, 26 Oct 2020 05:28:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 119cf262a5235d9060c3f596c277c828533d18e6
Message-ID: <5f95edfb.rfEZT+qq5RXgBsjN%lkp@intel.com>
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
branch HEAD: 119cf262a5235d9060c3f596c277c828533d18e6  staging: r8188eu: inline rtw_init_netdev_name()

elapsed time: 722m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                 mpc834x_itx_defconfig
arc                         haps_hs_defconfig
sh                            titan_defconfig
sparc64                             defconfig
arm                       spear13xx_defconfig
sh                          sdk7780_defconfig
mips                        maltaup_defconfig
mips                        jmr3927_defconfig
s390                             alldefconfig
arm                        multi_v7_defconfig
arm                         shannon_defconfig
parisc                           alldefconfig
arc                      axs103_smp_defconfig
c6x                                 defconfig
mips                          ath25_defconfig
powerpc                      pasemi_defconfig
m68k                            q40_defconfig
arm                      tct_hammer_defconfig
c6x                         dsk6455_defconfig
arm                         vf610m4_defconfig
sh                           sh2007_defconfig
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
x86_64               randconfig-a001-20201025
x86_64               randconfig-a003-20201025
x86_64               randconfig-a002-20201025
x86_64               randconfig-a006-20201025
x86_64               randconfig-a005-20201025
x86_64               randconfig-a004-20201025
i386                 randconfig-a002-20201025
i386                 randconfig-a003-20201025
i386                 randconfig-a005-20201025
i386                 randconfig-a001-20201025
i386                 randconfig-a006-20201025
i386                 randconfig-a004-20201025
i386                 randconfig-a016-20201025
i386                 randconfig-a015-20201025
i386                 randconfig-a014-20201025
i386                 randconfig-a013-20201025
i386                 randconfig-a012-20201025
i386                 randconfig-a011-20201025
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
x86_64               randconfig-a011-20201025
x86_64               randconfig-a013-20201025
x86_64               randconfig-a016-20201025
x86_64               randconfig-a015-20201025
x86_64               randconfig-a012-20201025
x86_64               randconfig-a014-20201025

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
