Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2A534C0E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 03:15:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45BF98387D;
	Mon, 29 Mar 2021 01:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fsKnCR77TlPg; Mon, 29 Mar 2021 01:15:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 766B883880;
	Mon, 29 Mar 2021 01:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAEEE1BF990
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 01:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA79A8350A
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 01:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBbhxlHu784L for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 01:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D163083437
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 01:14:54 +0000 (UTC)
IronPort-SDR: qCA+EZsIEVvISH83QkAjzf++T0S+Wv1pbqz6jMmmTOoiCUIO+JMpGbCTSk/6VbVBI+2EjRLIhs
 seaysbIdyDMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="189201936"
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="189201936"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 18:14:53 -0700
IronPort-SDR: txcMV959xdsFBgA5iZUprLvymFkemyNJpIMoMM8Ea7v6+n0f+poWQr71FK3GVdcOqBN1eMvpZX
 B/2mCwnFSSDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="594893302"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 28 Mar 2021 18:14:52 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lQgUV-0004H3-CE; Mon, 29 Mar 2021 01:14:51 +0000
Date: Mon, 29 Mar 2021 09:14:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 d225ef6fda7ce9ff7d28764bd1cceea2d0215e8b
Message-ID: <606129fc.MeLxmKG+2DybPGIW%lkp@intel.com>
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
branch HEAD: d225ef6fda7ce9ff7d28764bd1cceea2d0215e8b  base: dd: fix error return code of driver_sysfs_add()

elapsed time: 722m

configs tested: 119
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
riscv                            allyesconfig
arm                       aspeed_g4_defconfig
arm                             pxa_defconfig
sparc                       sparc32_defconfig
ia64                             alldefconfig
powerpc                        icon_defconfig
arc                        nsimosci_defconfig
powerpc                    ge_imp3a_defconfig
m68k                       m5208evb_defconfig
ia64                                defconfig
mips                  decstation_64_defconfig
powerpc                      chrp32_defconfig
arm                       omap2plus_defconfig
sh                          rsk7264_defconfig
riscv                    nommu_virt_defconfig
um                            kunit_defconfig
powerpc                      mgcoge_defconfig
powerpc                      walnut_defconfig
mips                     cu1000-neo_defconfig
arm                            mmp2_defconfig
arm                         palmz72_defconfig
um                                  defconfig
powerpc                      tqm8xx_defconfig
i386                             alldefconfig
sh                           se7722_defconfig
powerpc                       ppc64_defconfig
alpha                               defconfig
arm                         bcm2835_defconfig
sh                          kfr2r09_defconfig
openrisc                            defconfig
arm                            xcep_defconfig
arm                          iop32x_defconfig
sh                     magicpanelr2_defconfig
arm                         shannon_defconfig
mips                     loongson1b_defconfig
sh                         microdev_defconfig
parisc                generic-64bit_defconfig
powerpc                      ppc6xx_defconfig
arm                          ixp4xx_defconfig
ia64                             allmodconfig
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
alpha                            allyesconfig
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
i386                 randconfig-a004-20210328
i386                 randconfig-a003-20210328
i386                 randconfig-a001-20210328
i386                 randconfig-a002-20210328
i386                 randconfig-a006-20210328
i386                 randconfig-a005-20210328
x86_64               randconfig-a015-20210328
x86_64               randconfig-a012-20210328
x86_64               randconfig-a013-20210328
x86_64               randconfig-a014-20210328
x86_64               randconfig-a016-20210328
x86_64               randconfig-a011-20210328
i386                 randconfig-a014-20210328
i386                 randconfig-a011-20210328
i386                 randconfig-a015-20210328
i386                 randconfig-a016-20210328
i386                 randconfig-a013-20210328
i386                 randconfig-a012-20210328
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210329
x86_64               randconfig-a012-20210329
x86_64               randconfig-a013-20210329
x86_64               randconfig-a014-20210329
x86_64               randconfig-a011-20210329
x86_64               randconfig-a016-20210329
x86_64               randconfig-a002-20210328
x86_64               randconfig-a003-20210328
x86_64               randconfig-a001-20210328
x86_64               randconfig-a006-20210328
x86_64               randconfig-a005-20210328
x86_64               randconfig-a004-20210328

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
