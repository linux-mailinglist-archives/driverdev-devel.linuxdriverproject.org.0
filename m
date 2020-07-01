Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E8321034A
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 07:28:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4A6B884FA;
	Wed,  1 Jul 2020 05:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQrSzmO6Xfgj; Wed,  1 Jul 2020 05:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A212B884E9;
	Wed,  1 Jul 2020 05:27:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7ADF11BF844
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 05:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 724362E336
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 05:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXsFTzG9qeDR for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 05:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 3754F2E32C
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 05:27:56 +0000 (UTC)
IronPort-SDR: x/UPcdz7OV5jQKoCJ7xIgj4IoKfPorUUZTz94i2qG4eN1RU/OVC+9d8MlFJcANkYqVUqIy/Bjd
 KCGdFdZN3P2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="164480192"
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="164480192"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 22:27:55 -0700
IronPort-SDR: 0YnOyndF8s/9LMwm0evrdQVJLuyuybu4dFCTN2NvWeXKS9b+mgYZS5GmBRE9i+LSHpOn68bCG7
 aIXZxe1XP0ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="454872046"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2020 22:27:54 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jqVHl-0002TD-Oa; Wed, 01 Jul 2020 05:27:53 +0000
Date: Wed, 01 Jul 2020 13:26:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 41843ff0ece111515fc1913e4e5295fa398c5d00
Message-ID: <5efc1e7e.uC07Ucgnx1EtG45U%lkp@intel.com>
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
branch HEAD: 41843ff0ece111515fc1913e4e5295fa398c5d00  staging: ks7010: fix ks_wlan_start_xmit()'s return type

elapsed time: 2609m

configs tested: 184
configs skipped: 14

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
arm                         ebsa110_defconfig
powerpc                          g5_defconfig
mips                            e55_defconfig
s390                             alldefconfig
riscv                          rv32_defconfig
m68k                             alldefconfig
arm                         socfpga_defconfig
mips                              allnoconfig
arm                         s3c2410_defconfig
openrisc                 simple_smp_defconfig
c6x                        evmc6457_defconfig
powerpc                     ep8248e_defconfig
arm                           omap1_defconfig
arm                        oxnas_v6_defconfig
openrisc                    or1ksim_defconfig
powerpc                           allnoconfig
m68k                          hp300_defconfig
sh                             espt_defconfig
arm                           stm32_defconfig
sparc                       sparc64_defconfig
m68k                              allnoconfig
mips                         tb0219_defconfig
powerpc                      mgcoge_defconfig
arm                          pcm027_defconfig
mips                         mpc30x_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                             pxa_defconfig
mips                 pnx8335_stb225_defconfig
mips                      pic32mzda_defconfig
mips                           xway_defconfig
sh                      rts7751r2d1_defconfig
arm                           viper_defconfig
powerpc                      ppc44x_defconfig
arm                          moxart_defconfig
sh                        sh7763rdp_defconfig
arm                        mvebu_v7_defconfig
arm                          exynos_defconfig
c6x                        evmc6474_defconfig
arm                    vt8500_v6_v7_defconfig
arm                            zeus_defconfig
m68k                        mvme16x_defconfig
mips                         tb0226_defconfig
microblaze                        allnoconfig
arm                       versatile_defconfig
xtensa                          iss_defconfig
sh                        sh7785lcr_defconfig
mips                   sb1250_swarm_defconfig
xtensa                       common_defconfig
arm                         orion5x_defconfig
arm                         nhk8815_defconfig
mips                           gcw0_defconfig
mips                     decstation_defconfig
arc                        nsim_700_defconfig
mips                       rbtx49xx_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
m68k                                defconfig
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
mips                             allyesconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
i386                 randconfig-a001-20200630
i386                 randconfig-a003-20200630
i386                 randconfig-a002-20200630
i386                 randconfig-a004-20200630
i386                 randconfig-a005-20200630
i386                 randconfig-a006-20200630
i386                 randconfig-a006-20200629
i386                 randconfig-a002-20200629
i386                 randconfig-a003-20200629
i386                 randconfig-a001-20200629
i386                 randconfig-a005-20200629
i386                 randconfig-a004-20200629
i386                 randconfig-a002-20200701
i386                 randconfig-a001-20200701
i386                 randconfig-a006-20200701
i386                 randconfig-a005-20200701
i386                 randconfig-a004-20200701
i386                 randconfig-a003-20200701
x86_64               randconfig-a011-20200630
x86_64               randconfig-a014-20200630
x86_64               randconfig-a013-20200630
x86_64               randconfig-a015-20200630
x86_64               randconfig-a016-20200630
x86_64               randconfig-a012-20200630
x86_64               randconfig-a011-20200629
x86_64               randconfig-a012-20200629
x86_64               randconfig-a013-20200629
x86_64               randconfig-a014-20200629
x86_64               randconfig-a015-20200629
x86_64               randconfig-a016-20200629
x86_64               randconfig-a012-20200701
x86_64               randconfig-a016-20200701
x86_64               randconfig-a014-20200701
x86_64               randconfig-a011-20200701
x86_64               randconfig-a015-20200701
x86_64               randconfig-a013-20200701
i386                 randconfig-a011-20200630
i386                 randconfig-a016-20200630
i386                 randconfig-a015-20200630
i386                 randconfig-a012-20200630
i386                 randconfig-a014-20200630
i386                 randconfig-a013-20200630
i386                 randconfig-a013-20200629
i386                 randconfig-a016-20200629
i386                 randconfig-a014-20200629
i386                 randconfig-a012-20200629
i386                 randconfig-a015-20200629
i386                 randconfig-a011-20200629
i386                 randconfig-a011-20200701
i386                 randconfig-a015-20200701
i386                 randconfig-a014-20200701
i386                 randconfig-a016-20200701
i386                 randconfig-a012-20200701
i386                 randconfig-a013-20200701
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
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
um                               allyesconfig
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
