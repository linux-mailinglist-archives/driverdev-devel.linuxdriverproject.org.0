Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B593369C7
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 02:37:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A9D160730;
	Thu, 11 Mar 2021 01:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CI84b3IjBI5U; Thu, 11 Mar 2021 01:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1FAC60649;
	Thu, 11 Mar 2021 01:37:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5201B1BF38B
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 01:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4127345D94
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 01:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpTY6yygKSkI for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 01:36:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E14F3454B4
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 01:36:52 +0000 (UTC)
IronPort-SDR: WjlPP/ZcUAIJM/QWsqVLXTfa9nDMmUo12R7gajjrgbcCsXbKL6H89Psdls1qBIVSPRO5cfe3k5
 0Jiwbwd+DtlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="176190960"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="176190960"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 17:36:52 -0800
IronPort-SDR: Je+DDTOD8ojnoYbAFddIZWX8fDclFiU0ryicjYou9SJYC84XGKSHCAuuw+p8X6LfvIIwwr1cQJ
 XZ6TIfML2NGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="600026420"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2021 17:36:50 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lKAFt-0000VL-UV; Thu, 11 Mar 2021 01:36:49 +0000
Date: Thu, 11 Mar 2021 09:36:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 31673785d5353b8a8e882fc51ef315cc197f4483
Message-ID: <6049741e.z9UTgvudV/5Nlx/D%lkp@intel.com>
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
branch HEAD: 31673785d5353b8a8e882fc51ef315cc197f4483  staging: dpaa2-switch: prevent joining a bridge while VLAN uppers are present

elapsed time: 729m

configs tested: 139
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                          hp300_defconfig
powerpc                    adder875_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                      ppc40x_defconfig
mips                      pistachio_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                     pq2fads_defconfig
powerpc                      obs600_defconfig
powerpc                       holly_defconfig
powerpc                     kmeter1_defconfig
riscv                          rv32_defconfig
arm                             mxs_defconfig
sh                         microdev_defconfig
mips                       capcella_defconfig
arm                        mvebu_v7_defconfig
xtensa                  cadence_csp_defconfig
arm                             pxa_defconfig
powerpc                     tqm8541_defconfig
sh                          polaris_defconfig
powerpc                      ep88xc_defconfig
mips                       rbtx49xx_defconfig
powerpc                     mpc512x_defconfig
sh                           se7750_defconfig
arm                     eseries_pxa_defconfig
sh                               alldefconfig
powerpc                      katmai_defconfig
m68k                       m5275evb_defconfig
sh                        dreamcast_defconfig
microblaze                          defconfig
powerpc                      ppc44x_defconfig
powerpc                 mpc836x_mds_defconfig
sh                          lboxre2_defconfig
sh                      rts7751r2d1_defconfig
powerpc                    ge_imp3a_defconfig
arm                         hackkit_defconfig
mips                     loongson1b_defconfig
h8300                            alldefconfig
arm                            xcep_defconfig
arc                           tb10x_defconfig
arm                          ep93xx_defconfig
powerpc                     stx_gp3_defconfig
arm                          pxa910_defconfig
powerpc                        icon_defconfig
arm                  colibri_pxa300_defconfig
arm                         at91_dt_defconfig
arm                          pcm027_defconfig
sh                          rsk7201_defconfig
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
i386                 randconfig-a005-20210309
i386                 randconfig-a003-20210309
i386                 randconfig-a002-20210309
i386                 randconfig-a006-20210309
i386                 randconfig-a004-20210309
i386                 randconfig-a001-20210309
x86_64               randconfig-a013-20210309
x86_64               randconfig-a016-20210309
x86_64               randconfig-a015-20210309
x86_64               randconfig-a014-20210309
x86_64               randconfig-a011-20210309
x86_64               randconfig-a012-20210309
x86_64               randconfig-a011-20210310
x86_64               randconfig-a016-20210310
x86_64               randconfig-a013-20210310
x86_64               randconfig-a015-20210310
x86_64               randconfig-a014-20210310
x86_64               randconfig-a012-20210310
i386                 randconfig-a016-20210309
i386                 randconfig-a012-20210309
i386                 randconfig-a014-20210309
i386                 randconfig-a013-20210309
i386                 randconfig-a011-20210309
i386                 randconfig-a015-20210309
x86_64               randconfig-a006-20210308
x86_64               randconfig-a001-20210308
x86_64               randconfig-a004-20210308
x86_64               randconfig-a002-20210308
x86_64               randconfig-a005-20210308
x86_64               randconfig-a003-20210308
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210309
x86_64               randconfig-a001-20210309
x86_64               randconfig-a004-20210309
x86_64               randconfig-a002-20210309
x86_64               randconfig-a005-20210309
x86_64               randconfig-a003-20210309
x86_64               randconfig-a013-20210308
x86_64               randconfig-a016-20210308
x86_64               randconfig-a015-20210308
x86_64               randconfig-a014-20210308
x86_64               randconfig-a011-20210308
x86_64               randconfig-a012-20210308

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
