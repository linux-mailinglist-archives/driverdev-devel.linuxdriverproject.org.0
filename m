Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE923496747
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jan 2022 22:26:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0815160FD7;
	Fri, 21 Jan 2022 21:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwAJYfHsEHM9; Fri, 21 Jan 2022 21:26:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3466E60EF3;
	Fri, 21 Jan 2022 21:26:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2A01BF30C
 for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 21:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5935841725
 for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 21:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TJAb0r6db9Y for <devel@linuxdriverproject.org>;
 Fri, 21 Jan 2022 21:26:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A27E341739
 for <devel@driverdev.osuosl.org>; Fri, 21 Jan 2022 21:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642800366; x=1674336366;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sFAlRxLHv14K6btUZY/GnLzj83osRBfUpZ6s0h3YSaI=;
 b=WU0BLHRuzFbLgrKsugFqVEQlpmLp8UHtW1WAh3HZ+KiSIEfhvBUIYKmR
 ZLkCT2e9CL1Df6IfiVhxVKu7BTxs8+L3t8ki3upkn4xVkzD0wer7ylKnM
 q5wqERmt7wyLUe7bCgi4DyDvJMDcie77tQ3J6IEPry8AuYkPLxziZzBEv
 cJA8QyUpbh6OJfaWDHQiuJPAO6rcTRD1KIuatXXj3JY9Msk+Wt2GX+2U2
 +nPt2uOQTni8MGK6204Ws4NpOYQnjq42qIGG8TbZHrkoPWgSeVAhIT2OU
 9dsaWFl3ViSThjzNciv+O3xO6eL7gDWEyL8qlDa3X7LS5nHHJOnUsMNHQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="245531476"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="245531476"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 13:26:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="626865397"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 21 Jan 2022 13:26:04 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB1Q4-000FgM-1o; Fri, 21 Jan 2022 21:26:04 +0000
Date: Sat, 22 Jan 2022 05:26:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 241f402cccf3ab633f9f9c7caee39ec3f480939d
Message-ID: <61eb24e8.Rr4OVs/KFW5xAtY8%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 241f402cccf3ab633f9f9c7caee39ec3f480939d  pm / wakeup: simplify the output logic of pm_show_wakelocks()

elapsed time: 730m

configs tested: 158
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220120
powerpc              randconfig-c003-20220120
sh                          urquell_defconfig
sh                          sdk7780_defconfig
sh                               j2_defconfig
arm                           stm32_defconfig
sh                          polaris_defconfig
nds32                             allnoconfig
sh                        apsh4ad0a_defconfig
sh                        dreamcast_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         bigsur_defconfig
m68k                          multi_defconfig
sh                          landisk_defconfig
arm                           corgi_defconfig
powerpc                       eiger_defconfig
xtensa                       common_defconfig
ia64                      gensparse_defconfig
ia64                             allyesconfig
sh                        sh7763rdp_defconfig
arc                          axs103_defconfig
m68k                       m5208evb_defconfig
powerpc                     rainier_defconfig
arm                           h5000_defconfig
sh                                  defconfig
sh                          rsk7203_defconfig
mips                          rb532_defconfig
arm                         lpc18xx_defconfig
arm                          exynos_defconfig
mips                         tb0226_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                                defconfig
arm                           h3600_defconfig
mips                             allyesconfig
mips                      loongson3_defconfig
um                             i386_defconfig
arm                        realview_defconfig
arm                        cerfcube_defconfig
h8300                            alldefconfig
sh                               alldefconfig
mips                     decstation_defconfig
arm                           tegra_defconfig
h8300                    h8300h-sim_defconfig
xtensa                generic_kc705_defconfig
sh                            hp6xx_defconfig
xtensa                    xip_kc705_defconfig
arm                           viper_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        multi_v7_defconfig
m68k                          sun3x_defconfig
sparc                       sparc32_defconfig
h8300                            allyesconfig
sh                           se7724_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                     eseries_pxa_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                         wii_defconfig
powerpc                      ppc40x_defconfig
s390                          debug_defconfig
arm                       imx_v6_v7_defconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220119
arm                  randconfig-c002-20220121
ia64                             allmodconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
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
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220121
arc                  randconfig-r043-20220121
s390                 randconfig-r044-20220121
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
arm                  randconfig-c002-20220120
riscv                randconfig-c006-20220120
powerpc              randconfig-c003-20220120
mips                 randconfig-c004-20220120
i386                          randconfig-c001
powerpc                      walnut_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                           rs90_defconfig
powerpc                     tqm8540_defconfig
powerpc                      pmac32_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                        bcm63xx_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220120
hexagon              randconfig-r045-20220120
hexagon              randconfig-r041-20220120

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
