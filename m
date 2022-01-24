Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90C849797E
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jan 2022 08:33:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B176404DA;
	Mon, 24 Jan 2022 07:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sX8eBq7QxdRo; Mon, 24 Jan 2022 07:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4ED14025D;
	Mon, 24 Jan 2022 07:33:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7976B1BF356
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 731C04024F
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEUbvXmR-Mwf for <devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 07:32:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77F03401C2
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 07:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643009571; x=1674545571;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pckomNrO78K+cabEYC1oq+1OF0laUFhFA68g3J8R4TA=;
 b=WTxuxQaSZlpajl3cPEzNnqffYSeE4zAJ14yIIEOOej1nk/pBRK46igy0
 JzPAhZJHdh5zNO6qDlXLVaItLAAXaUPH2nLJkefQFCttDWtRBhjhXdk03
 pN4PBigdxCY4O+dbntx+sMRoOLI05BEM+Zx0gwKu0YiK64yrI3rMInjOw
 YSffXK7HlH5lcDR6cmMTGgWtZG/VQSAHnNwJjir1Z5gLmWEih4/fenKTy
 oZ2QvAf+yqZ1RI5/ILjJ4f8exWWYMkF6vvB15zGbLtdG4wRtdrkknN6YV
 VpnkCAf3TerIQA8hG/x53TfxMSc5mluZzuS4ho7iS2yjs5ks9LDQ/TH8c g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="246202284"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="246202284"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2022 23:32:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534109799"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2022 23:32:49 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBtpq-000Hs4-Pn; Mon, 24 Jan 2022 07:32:18 +0000
Date: Mon, 24 Jan 2022 15:32:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 ce28de892efe4bab8c2415dfc73a8ddfa3e15988
Message-ID: <61ee55fb.1MxXpXuM3MvFaGxw%lkp@intel.com>
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
branch HEAD: ce28de892efe4bab8c2415dfc73a8ddfa3e15988  pm / wakeup: simplify the output logic of pm_show_wakelocks()

elapsed time: 1207m

configs tested: 227
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220124
arc                 nsimosci_hs_smp_defconfig
arm                       imx_v6_v7_defconfig
xtensa                       common_defconfig
m68k                          multi_defconfig
mips                     decstation_defconfig
powerpc                     taishan_defconfig
powerpc                     mpc83xx_defconfig
sh                          r7780mp_defconfig
m68k                        m5407c3_defconfig
sh                         apsh4a3a_defconfig
arm                        cerfcube_defconfig
sh                           se7343_defconfig
sh                          urquell_defconfig
arm                       aspeed_g5_defconfig
powerpc64                        alldefconfig
openrisc                 simple_smp_defconfig
h8300                       h8s-sim_defconfig
arc                        vdk_hs38_defconfig
powerpc                      bamboo_defconfig
mips                        bcm47xx_defconfig
sh                          landisk_defconfig
powerpc                       eiger_defconfig
parisc                              defconfig
sh                           se7750_defconfig
powerpc                      cm5200_defconfig
sparc64                          alldefconfig
mips                         rt305x_defconfig
sh                            titan_defconfig
powerpc                      ppc6xx_defconfig
mips                        vocore2_defconfig
arm                         cm_x300_defconfig
powerpc                      pasemi_defconfig
arm                          badge4_defconfig
sh                          rsk7269_defconfig
arm                         vf610m4_defconfig
sh                            shmin_defconfig
parisc                           alldefconfig
powerpc                 mpc85xx_cds_defconfig
s390                          debug_defconfig
nios2                            alldefconfig
xtensa                           allyesconfig
mips                     loongson1b_defconfig
xtensa                generic_kc705_defconfig
mips                         tb0226_defconfig
sh                  sh7785lcr_32bit_defconfig
nds32                            alldefconfig
xtensa                  audio_kc705_defconfig
powerpc                      ppc40x_defconfig
sh                           se7619_defconfig
powerpc                     tqm8548_defconfig
mips                           ci20_defconfig
sh                           se7705_defconfig
um                             i386_defconfig
i386                             alldefconfig
sh                           se7780_defconfig
sh                           se7724_defconfig
arm                            lart_defconfig
arm                       multi_v4t_defconfig
sh                             shx3_defconfig
sh                         ap325rxa_defconfig
arc                         haps_hs_defconfig
h8300                            alldefconfig
sparc64                             defconfig
powerpc                   currituck_defconfig
h8300                    h8300h-sim_defconfig
sh                        edosk7705_defconfig
arm                       omap2plus_defconfig
powerpc                     rainier_defconfig
h8300                               defconfig
ia64                             alldefconfig
arm                      integrator_defconfig
sh                          sdk7780_defconfig
arm                         lubbock_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                           u8500_defconfig
arm                           h5000_defconfig
arm                        oxnas_v6_defconfig
xtensa                  cadence_csp_defconfig
arm                        shmobile_defconfig
powerpc                     sequoia_defconfig
sh                            migor_defconfig
arm                  randconfig-c002-20220123
arm                  randconfig-c002-20220124
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220123
riscv                randconfig-r042-20220123
s390                 randconfig-r044-20220123
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
arm                  randconfig-c002-20220123
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
riscv                randconfig-c006-20220123
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220123
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220123
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
x86_64                        randconfig-c007
i386                          randconfig-c001
s390                 randconfig-c005-20220123
powerpc                     tqm5200_defconfig
arm                          imote2_defconfig
powerpc                       ebony_defconfig
mips                       rbtx49xx_defconfig
arm                        spear3xx_defconfig
mips                        qi_lb60_defconfig
mips                        bcm63xx_defconfig
powerpc                   lite5200b_defconfig
arm                           sama7_defconfig
powerpc                    gamecube_defconfig
powerpc                      obs600_defconfig
powerpc                      acadia_defconfig
powerpc                          allmodconfig
mips                            e55_defconfig
powerpc                     mpc512x_defconfig
mips                           ip22_defconfig
mips                   sb1250_swarm_defconfig
powerpc                  mpc885_ads_defconfig
arm                         bcm2835_defconfig
powerpc                      walnut_defconfig
riscv                          rv32_defconfig
powerpc                          g5_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
mips                     cu1000-neo_defconfig
arm                         lpc32xx_defconfig
arm                        multi_v5_defconfig
arm                          ixp4xx_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220123
hexagon              randconfig-r041-20220123
riscv                randconfig-r042-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r041-20220124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
