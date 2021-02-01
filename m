Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D352E30A063
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Feb 2021 03:54:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3A1484AC5;
	Mon,  1 Feb 2021 02:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSh2u7N3lk8I; Mon,  1 Feb 2021 02:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDCDF8485E;
	Mon,  1 Feb 2021 02:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 421C71BF2C5
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 02:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 38BD486123
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 02:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmhwNyKOy4-V for <devel@linuxdriverproject.org>;
 Mon,  1 Feb 2021 02:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DCD9986117
 for <devel@driverdev.osuosl.org>; Mon,  1 Feb 2021 02:54:17 +0000 (UTC)
IronPort-SDR: 2DSL2PE1g2l8jnSD137NZQM4FyuzgiTrPjrqeAHIRs6U7MJRPrK3akB6pkCXmE31wYSkL94ApO
 bi8Io5OOarAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="168308987"
X-IronPort-AV: E=Sophos;i="5.79,391,1602572400"; d="scan'208";a="168308987"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2021 18:54:16 -0800
IronPort-SDR: aRDpFglkvmD8Tu2fK82tiYIFExxdka19Nt+3ZZn0dOsrq31R+U0WmqdKKc53N2BUd+Qhdw5/Qw
 f3qL6ey8uA2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,391,1602572400"; d="scan'208";a="412107807"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2021 18:54:15 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l6PLy-0006ig-JB; Mon, 01 Feb 2021 02:54:14 +0000
Date: Mon, 01 Feb 2021 10:53:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 06b0c0dce88e2aa2f01343db0f26d214d7f264a0
Message-ID: <60176d36.nStGua3t9Y19Fzdm%lkp@intel.com>
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
branch HEAD: 06b0c0dce88e2aa2f01343db0f26d214d7f264a0  staging: rtl8192u/ieee80211: fix switch case indentation

i386-tinyconfig vmlinux size:

+-------+-------------------------+------------------------------------------+
| DELTA |         SYMBOL          |                  COMMIT                  |
+-------+-------------------------+------------------------------------------+
|  +470 | TOTAL                   | 5c8fe583cce5..06b0c0dce88e (ALL COMMITS) |
|  +465 | TEXT                    | 5c8fe583cce5..06b0c0dce88e (ALL COMMITS) |
|  +101 | kernel_fpu_begin_mask() | 5c8fe583cce5..06b0c0dce88e (ALL COMMITS) |
|   +91 | shrink_page_list()      | 5c8fe583cce5..06b0c0dce88e (ALL COMMITS) |
|   -87 | kernel_fpu_begin()      | 5c8fe583cce5..06b0c0dce88e (ALL COMMITS) |
+-------+-------------------------+------------------------------------------+

elapsed time: 723m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                        maltaup_defconfig
xtensa                       common_defconfig
arm                            u300_defconfig
arm                      integrator_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                 mpc834x_itx_defconfig
sh                          rsk7269_defconfig
m68k                        mvme16x_defconfig
mips                  decstation_64_defconfig
powerpc                     ppa8548_defconfig
arm                           corgi_defconfig
powerpc                      walnut_defconfig
arm                           spitz_defconfig
arm                        neponset_defconfig
sh                           se7705_defconfig
powerpc                      chrp32_defconfig
arm                     am200epdkit_defconfig
sh                        sh7757lcr_defconfig
arc                        nsimosci_defconfig
powerpc                 mpc8272_ads_defconfig
sh                           se7751_defconfig
arc                            hsdk_defconfig
arm                        mini2440_defconfig
arm                         assabet_defconfig
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
i386                 randconfig-a005-20210131
i386                 randconfig-a003-20210131
i386                 randconfig-a002-20210131
i386                 randconfig-a001-20210131
i386                 randconfig-a004-20210131
i386                 randconfig-a006-20210131
x86_64               randconfig-a015-20210131
x86_64               randconfig-a011-20210131
x86_64               randconfig-a014-20210131
x86_64               randconfig-a016-20210131
x86_64               randconfig-a012-20210131
x86_64               randconfig-a013-20210131
i386                 randconfig-a013-20210131
i386                 randconfig-a011-20210131
i386                 randconfig-a015-20210131
i386                 randconfig-a012-20210131
i386                 randconfig-a014-20210131
i386                 randconfig-a016-20210131
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
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210131
x86_64               randconfig-a002-20210131
x86_64               randconfig-a001-20210131
x86_64               randconfig-a005-20210131
x86_64               randconfig-a006-20210131
x86_64               randconfig-a003-20210131

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
