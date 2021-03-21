Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DBB34307E
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 02:33:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84BA840392;
	Sun, 21 Mar 2021 01:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SkTjNkCj_cTX; Sun, 21 Mar 2021 01:33:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08AD64036E;
	Sun, 21 Mar 2021 01:33:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 381141BF4E6
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 01:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 136C96061F
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 01:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mg7ZGiXbMtub for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 01:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C90886061B
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 01:33:02 +0000 (UTC)
IronPort-SDR: Fw/7U/WxLkPk9mws2boR0yUH73BRlk6AUoar3b7zl1fF61wH4KCW9o7mCgZXdL0S8gyX2F9nHw
 x3g/HxHM5glw==
X-IronPort-AV: E=McAfee;i="6000,8403,9929"; a="177669157"
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; d="scan'208";a="177669157"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2021 18:33:01 -0700
IronPort-SDR: cIZXQonpmn2ZP0VjXGAA7jpMmjc+zEYfCSlznNtJQh8d33kevAYTIKZVgXet9ovpjykp5MpCNi
 reht7uGjrHpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; d="scan'208";a="373452578"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 20 Mar 2021 18:33:00 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lNmxf-0002s7-D1; Sun, 21 Mar 2021 01:32:59 +0000
Date: Sun, 21 Mar 2021 09:32:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 18507b8f63101949f4a931fc904c37ea10407f7c
Message-ID: <6056a210.bt4uFDXcO460ei8P%lkp@intel.com>
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
branch HEAD: 18507b8f63101949f4a931fc904c37ea10407f7c  staging: wimax: delete from the tree.

elapsed time: 722m

configs tested: 112
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                         tb0287_defconfig
powerpc                     tqm8541_defconfig
arm                         socfpga_defconfig
arc                              alldefconfig
powerpc                  iss476-smp_defconfig
sh                          lboxre2_defconfig
sh                          rsk7203_defconfig
sh                          kfr2r09_defconfig
arc                            hsdk_defconfig
mips                       rbtx49xx_defconfig
powerpc                     stx_gp3_defconfig
sh                   rts7751r2dplus_defconfig
riscv                    nommu_k210_defconfig
m68k                        mvme16x_defconfig
mips                          malta_defconfig
sparc                       sparc64_defconfig
powerpc                     tqm8560_defconfig
s390                                defconfig
arm                          ep93xx_defconfig
powerpc                      ppc40x_defconfig
arm                          badge4_defconfig
mips                            e55_defconfig
mips                        nlm_xlp_defconfig
sparc                               defconfig
powerpc                   lite5200b_defconfig
mips                          ath25_defconfig
powerpc                        cell_defconfig
arm                    vt8500_v6_v7_defconfig
m68k                           sun3_defconfig
ia64                            zx1_defconfig
powerpc                     skiroot_defconfig
powerpc                     ksi8560_defconfig
sh                     magicpanelr2_defconfig
s390                       zfcpdump_defconfig
powerpc                     redwood_defconfig
sparc                            allyesconfig
arm                        spear3xx_defconfig
arm                        clps711x_defconfig
powerpc               mpc834x_itxgp_defconfig
parisc                generic-64bit_defconfig
mips                        maltaup_defconfig
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
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20210320
i386                 randconfig-a003-20210320
i386                 randconfig-a001-20210320
i386                 randconfig-a002-20210320
i386                 randconfig-a006-20210320
i386                 randconfig-a005-20210320
x86_64               randconfig-a012-20210320
x86_64               randconfig-a015-20210320
x86_64               randconfig-a013-20210320
x86_64               randconfig-a014-20210320
x86_64               randconfig-a016-20210320
x86_64               randconfig-a011-20210320
i386                 randconfig-a014-20210320
i386                 randconfig-a011-20210320
i386                 randconfig-a015-20210320
i386                 randconfig-a016-20210320
i386                 randconfig-a013-20210320
i386                 randconfig-a012-20210320
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210320
x86_64               randconfig-a003-20210320
x86_64               randconfig-a001-20210320
x86_64               randconfig-a006-20210320
x86_64               randconfig-a005-20210320
x86_64               randconfig-a004-20210320

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
