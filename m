Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0752327482
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Feb 2021 21:56:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 459C6605F6;
	Sun, 28 Feb 2021 20:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BTAEFMq6OX-E; Sun, 28 Feb 2021 20:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FC29605B5;
	Sun, 28 Feb 2021 20:56:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53F521BF340
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 20:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 509414B23B
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 20:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJmC37RzaXGi for <devel@linuxdriverproject.org>;
 Sun, 28 Feb 2021 20:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DA08478C4
 for <devel@driverdev.osuosl.org>; Sun, 28 Feb 2021 20:56:34 +0000 (UTC)
IronPort-SDR: wLjCewF5UCCTCSjMx1bDhAQ23fBb31ZrA/ohkrNaB6Y2M8xPyq0RicockY/Szi/RBmNfcTe0XP
 WDTK+AU1cebw==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="173934713"
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; d="scan'208";a="173934713"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 12:56:33 -0800
IronPort-SDR: c+fGoM35qcOakKqp3ybvidBvBbvcHBmCogc6ijUYRHKBpGv1Efd8zBiZ4jCsQtGWxQemt11XWm
 hXdHX0HbPM4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; d="scan'208";a="372718012"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Feb 2021 12:56:31 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lGT79-0004HB-2g; Sun, 28 Feb 2021 20:56:31 +0000
Date: Mon, 01 Mar 2021 04:56:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7ffc23f46e5d8f4360ebb40d982162b0028b0b81
Message-ID: <603c037b.Ak01J/hPIA6p+Q3j%lkp@intel.com>
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
branch HEAD: 7ffc23f46e5d8f4360ebb40d982162b0028b0b81  staging: clocking-wizard: Remove the hardcoding of the clock outputs

elapsed time: 725m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                    mvme5100_defconfig
arm                            pleb_defconfig
mips                           ip22_defconfig
arc                        nsimosci_defconfig
sh                          rsk7201_defconfig
xtensa                generic_kc705_defconfig
h8300                    h8300h-sim_defconfig
m68k                        stmark2_defconfig
mips                         rt305x_defconfig
sh                          urquell_defconfig
arm                         vf610m4_defconfig
s390                       zfcpdump_defconfig
nios2                         3c120_defconfig
powerpc                    adder875_defconfig
sh                               j2_defconfig
sparc64                          alldefconfig
arm                         mv78xx0_defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210228
i386                 randconfig-a005-20210228
i386                 randconfig-a004-20210228
i386                 randconfig-a003-20210228
i386                 randconfig-a001-20210228
i386                 randconfig-a002-20210228
x86_64               randconfig-a002-20210228
x86_64               randconfig-a001-20210228
x86_64               randconfig-a003-20210228
x86_64               randconfig-a005-20210228
x86_64               randconfig-a006-20210228
x86_64               randconfig-a004-20210228
i386                 randconfig-a013-20210228
i386                 randconfig-a012-20210228
i386                 randconfig-a014-20210228
i386                 randconfig-a011-20210228
i386                 randconfig-a015-20210228
i386                 randconfig-a016-20210228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210228
x86_64               randconfig-a011-20210228
x86_64               randconfig-a012-20210228
x86_64               randconfig-a016-20210228
x86_64               randconfig-a014-20210228
x86_64               randconfig-a013-20210228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
