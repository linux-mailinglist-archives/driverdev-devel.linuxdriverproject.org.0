Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B6521EDFE
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 12:31:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52592896A6;
	Tue, 14 Jul 2020 10:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7cjNe6dYXLnL; Tue, 14 Jul 2020 10:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBCF4892AC;
	Tue, 14 Jul 2020 10:31:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 386B91BF20F
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35744895A1
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJ3j72bxBlhM for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 10:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE4C688C95
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 10:31:52 +0000 (UTC)
IronPort-SDR: sNQFh+D08OQ1L/cFC/51GRtrmPVFYHNeH7djR8W5Glu/tQPw1S5M9sudhvv6/wzyHIJiUgT0oh
 ZxUo8S8jNo/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="233727005"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="233727005"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 03:31:52 -0700
IronPort-SDR: qDEp7DDsMfSKNFMR1LolAlob+b9/fjtNaxDFqrXE1lj1Rzt3xZCKrQHImVZZTUxql1y9VlT++d
 sUpSe6r7viLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="429719672"
Received: from lkp-server02.sh.intel.com (HELO 393d9bdf0d5c) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 14 Jul 2020 03:31:50 -0700
Received: from kbuild by 393d9bdf0d5c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jvIE2-00003D-5f; Tue, 14 Jul 2020 10:31:50 +0000
Date: Tue, 14 Jul 2020 18:29:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 da6d647598a6d182eb6a0344a7b14ae005244399
Message-ID: <5f0d8910.KKjUGtCAu4WNbcMW%lkp@intel.com>
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
branch HEAD: da6d647598a6d182eb6a0344a7b14ae005244399  driver core: Add waiting_for_supplier sysfs file for devices

elapsed time: 5506m

configs tested: 134
configs skipped: 4

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
arc                     haps_hs_smp_defconfig
mips                      bmips_stb_defconfig
xtensa                              defconfig
riscv                          rv32_defconfig
sh                      rts7751r2d1_defconfig
arm                     eseries_pxa_defconfig
arm                           stm32_defconfig
mips                    maltaup_xpa_defconfig
arm                         at91_dt_defconfig
arc                              alldefconfig
h8300                    h8300h-sim_defconfig
mips                      pistachio_defconfig
arm                         nhk8815_defconfig
arm                        clps711x_defconfig
mips                           mtx1_defconfig
arm                            pleb_defconfig
arm                         assabet_defconfig
powerpc                     mpc512x_defconfig
arm                         orion5x_defconfig
nios2                            alldefconfig
arm                        shmobile_defconfig
m68k                       m5275evb_defconfig
sh                           cayman_defconfig
mips                      maltaaprp_defconfig
m68k                        m5407c3_defconfig
powerpc                        cell_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
arm                           omap1_defconfig
openrisc                         allyesconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
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
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a001-20200710
i386                 randconfig-a005-20200710
i386                 randconfig-a006-20200710
i386                 randconfig-a002-20200710
i386                 randconfig-a003-20200710
i386                 randconfig-a004-20200710
i386                 randconfig-a001-20200712
i386                 randconfig-a005-20200712
i386                 randconfig-a006-20200712
i386                 randconfig-a002-20200712
i386                 randconfig-a003-20200712
i386                 randconfig-a004-20200712
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
i386                 randconfig-a016-20200712
i386                 randconfig-a015-20200712
i386                 randconfig-a011-20200712
i386                 randconfig-a012-20200712
i386                 randconfig-a013-20200712
i386                 randconfig-a014-20200712
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
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
