Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B365A496623
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jan 2022 21:03:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4C4C41722;
	Fri, 21 Jan 2022 20:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulSFkUN5UPVD; Fri, 21 Jan 2022 20:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBE2A415C7;
	Fri, 21 Jan 2022 20:03:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC161BF354
 for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 20:03:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C05040911
 for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 20:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id afkrKlDmwFP0 for <devel@linuxdriverproject.org>;
 Fri, 21 Jan 2022 20:03:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22173408DF
 for <devel@driverdev.osuosl.org>; Fri, 21 Jan 2022 20:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642795389; x=1674331389;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=r6U7Q1X9pkOjKkjO8AT7cnDCTe1cyIZX2pQrszgoRF8=;
 b=Ovja/FF+52QcYa+lm9J8FOdHueqiS5X3IXxHJl2fVweAq5lz707nK3Kk
 K8oXoZAHPcTAjJxySdH+J3sp9qKdkqLuL48lvRYkohDI5VqIjXSGdMXZW
 gqmWt2HDy3sXVwXVGOu0GI382VEpfC1DAh/yRhXO8SXrLnBtAiMezjUr+
 8iy5lRR0VkrfiCkT4v9JJKKMhebsvV5inuVpl+QLxSSjsX8hYhR3qYk3F
 su3fKSPs34QdD4iGI20dCk1GbIxWTmk78b+5cGNp5eQ85hhOI/xhNG7Dk
 RsKFfVFbb+lzQoFD8ihORTE15RAq0KBQwd5dh4i3VmEMmL35J2wBChA2D A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="226410412"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="226410412"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 12:03:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="561991581"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 12:03:03 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB07i-000Fd1-OJ; Fri, 21 Jan 2022 20:03:02 +0000
Date: Sat, 22 Jan 2022 04:02:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 5f05b5c2555d34922934c066f5c9d13abdaf78f6
Message-ID: <61eb114f.N5YGP9IOjZRzMLjL%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 5f05b5c2555d34922934c066f5c9d13abdaf78f6  moxart: fix potential use-after-free on remove path

elapsed time: 721m

configs tested: 159
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
sh                               j2_defconfig
arm                           stm32_defconfig
sh                          sdk7780_defconfig
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
h8300                            allyesconfig
m68k                          sun3x_defconfig
sparc                       sparc32_defconfig
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
m68k                             allmodconfig
m68k                             allyesconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a016-20220117
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
arc                  randconfig-r043-20220121
riscv                randconfig-r042-20220121
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
hexagon              randconfig-r045-20220121
hexagon              randconfig-r041-20220121

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
