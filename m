Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE4E25632F
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Aug 2020 00:38:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFA3F8887F;
	Fri, 28 Aug 2020 22:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4NvLKjFq3Sf1; Fri, 28 Aug 2020 22:38:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E589688882;
	Fri, 28 Aug 2020 22:38:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB06B1BF368
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 22:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B291185785
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 22:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9-Xcptz3q_R for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 22:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DB4685569
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 22:38:31 +0000 (UTC)
IronPort-SDR: tDHbM1M9UBNaDXOxkS5Vyp+j1bhlh5pXZYr0H/wik1EqSlEVZxDgIGuYp4ueECSC56+PoORU6a
 yldspaY+JzTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="144502557"
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; d="scan'208";a="144502557"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 15:38:30 -0700
IronPort-SDR: iqEWY5iYY559WFt7VIG6Py67/GMGKafVru7CSiTyNOGx2oaJX0k3ZEke/g14aolgkMNWvG8ieo
 FWXV6cosjOwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; d="scan'208";a="445001307"
Received: from lkp-server02.sh.intel.com (HELO 301dc1beeb51) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 28 Aug 2020 15:38:29 -0700
Received: from kbuild by 301dc1beeb51 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kBn0u-0000Ej-P5; Fri, 28 Aug 2020 22:38:28 +0000
Date: Sat, 29 Aug 2020 06:38:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 40b8b826a6998639dd1c26f0e127f18371e1058d
Message-ID: <5f49875d.c2jfWm97iLpypbFe%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 40b8b826a6998639dd1c26f0e127f18371e1058d  kobject: Restore old behaviour of kobject_del(NULL)

elapsed time: 723m

configs tested: 85
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         cm_x300_defconfig
arc                        nsim_700_defconfig
arm                            mmp2_defconfig
arm                        cerfcube_defconfig
mips                        vocore2_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                           allnoconfig
arm                         axm55xx_defconfig
sh                               alldefconfig
mips                      fuloong2e_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
s390                          debug_defconfig
alpha                            alldefconfig
m68k                       m5208evb_defconfig
arm                           sama5_defconfig
nds32                            alldefconfig
arm                           corgi_defconfig
m68k                       m5275evb_defconfig
arm                        mvebu_v7_defconfig
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
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
powerpc                             defconfig
i386                 randconfig-a002-20200828
i386                 randconfig-a005-20200828
i386                 randconfig-a003-20200828
i386                 randconfig-a004-20200828
i386                 randconfig-a001-20200828
i386                 randconfig-a006-20200828
x86_64               randconfig-a015-20200828
x86_64               randconfig-a012-20200828
x86_64               randconfig-a016-20200828
x86_64               randconfig-a014-20200828
x86_64               randconfig-a011-20200828
x86_64               randconfig-a013-20200828
i386                 randconfig-a013-20200828
i386                 randconfig-a012-20200828
i386                 randconfig-a011-20200828
i386                 randconfig-a016-20200828
i386                 randconfig-a014-20200828
i386                 randconfig-a015-20200828
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
