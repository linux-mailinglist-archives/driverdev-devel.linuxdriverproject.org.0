Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B41E21EDFA
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 12:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 712968A14D;
	Tue, 14 Jul 2020 10:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxr6UoJcTKQl; Tue, 14 Jul 2020 10:31:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BB698A305;
	Tue, 14 Jul 2020 10:31:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E2D21BF20F
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 577308A14D
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23f-3ElOYc5p for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 10:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B72B89EEE
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 10:31:47 +0000 (UTC)
IronPort-SDR: IY+LsYI6O7xzwpx+gkyGPX/Rshjlz/Lvom0ilasLn2LC6XKL/VL/kEYQNxyLZMql2tFQo9dpoJ
 W50EPfJEw6SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="233726995"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="233726995"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 03:31:46 -0700
IronPort-SDR: Ne5FkxfhqGdk2lFjP7o5z4D+2hArn6637kdw8XMe+GQ/+Q5QZ1jMOaF6Rs6p5sFSPxiXfWmXD4
 FywlAS/bjR1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="317677085"
Received: from lkp-server02.sh.intel.com (HELO 393d9bdf0d5c) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2020 03:31:45 -0700
Received: from kbuild by 393d9bdf0d5c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jvIDx-000032-3m; Tue, 14 Jul 2020 10:31:45 +0000
Date: Tue, 14 Jul 2020 18:31:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 ef75e14a6c935eec82abac07ab68e388514e39bc
Message-ID: <5f0d8978.mJ7LiyOikdCuFsze%lkp@intel.com>
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
branch HEAD: ef75e14a6c935eec82abac07ab68e388514e39bc  staging: comedi: verify array index is correct before using it

elapsed time: 5654m

configs tested: 155
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                         axm55xx_defconfig
arm                           sama5_defconfig
sh                         apsh4a3a_defconfig
riscv                    nommu_virt_defconfig
m68k                                defconfig
mips                         tb0219_defconfig
powerpc                     pq2fads_defconfig
arm                         bcm2835_defconfig
sh                             espt_defconfig
ia64                        generic_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     mpc5200_defconfig
sh                        apsh4ad0a_defconfig
powerpc                         ps3_defconfig
sh                      rts7751r2d1_defconfig
arm                      tct_hammer_defconfig
sh                             shx3_defconfig
mips                         bigsur_defconfig
mips                           mtx1_defconfig
sh                          sdk7786_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                           sun3_defconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200710
i386                 randconfig-a005-20200710
i386                 randconfig-a006-20200710
i386                 randconfig-a002-20200710
i386                 randconfig-a003-20200710
i386                 randconfig-a004-20200710
i386                 randconfig-a001-20200713
i386                 randconfig-a005-20200713
i386                 randconfig-a006-20200713
i386                 randconfig-a002-20200713
i386                 randconfig-a003-20200713
i386                 randconfig-a004-20200713
x86_64               randconfig-a005-20200713
x86_64               randconfig-a002-20200713
x86_64               randconfig-a006-20200713
x86_64               randconfig-a001-20200713
x86_64               randconfig-a003-20200713
x86_64               randconfig-a004-20200713
x86_64               randconfig-a012-20200710
x86_64               randconfig-a011-20200710
x86_64               randconfig-a016-20200710
x86_64               randconfig-a014-20200710
x86_64               randconfig-a015-20200710
x86_64               randconfig-a013-20200710
x86_64               randconfig-a012-20200712
x86_64               randconfig-a011-20200712
x86_64               randconfig-a016-20200712
x86_64               randconfig-a014-20200712
x86_64               randconfig-a015-20200712
x86_64               randconfig-a013-20200712
i386                 randconfig-a016-20200710
i386                 randconfig-a015-20200710
i386                 randconfig-a011-20200710
i386                 randconfig-a012-20200710
i386                 randconfig-a013-20200710
i386                 randconfig-a014-20200710
i386                 randconfig-a016-20200713
i386                 randconfig-a015-20200713
i386                 randconfig-a011-20200713
i386                 randconfig-a012-20200713
i386                 randconfig-a013-20200713
i386                 randconfig-a014-20200713
i386                 randconfig-a016-20200712
i386                 randconfig-a015-20200712
i386                 randconfig-a011-20200712
i386                 randconfig-a012-20200712
i386                 randconfig-a013-20200712
i386                 randconfig-a014-20200712
i386                 randconfig-a016-20200714
i386                 randconfig-a011-20200714
i386                 randconfig-a015-20200714
i386                 randconfig-a012-20200714
i386                 randconfig-a013-20200714
i386                 randconfig-a014-20200714
i386                 randconfig-a016-20200711
i386                 randconfig-a015-20200711
i386                 randconfig-a011-20200711
i386                 randconfig-a012-20200711
i386                 randconfig-a013-20200711
i386                 randconfig-a014-20200711
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc64                             defconfig
sparc64                          allyesconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
