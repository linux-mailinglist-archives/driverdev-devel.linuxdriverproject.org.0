Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9331049797C
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jan 2022 08:32:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C006740935;
	Mon, 24 Jan 2022 07:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9ikX_okj20T; Mon, 24 Jan 2022 07:32:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FA3D40928;
	Mon, 24 Jan 2022 07:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD7521BF356
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90F49827AF
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SgwLeAjkKFEG for <devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 07:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 235AF827A1
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 07:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643009541; x=1674545541;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nf3I/V4rx7zTQv/HkXe7Wk+yuB61bxq+p4Ezz6f71oc=;
 b=mh0p8R8yrciZJl4hslT+vfFh2LHC+jxiIYKW1cVn3WKME6S+h5V9v7w3
 ELMvvA63L5Wt6i11XSUz1YKdDSwJgazDUe8/ypbT1peWpQuf1BWpeNrwk
 2xHlyj1D1AqCZS5l1VkgLKLM8ZgyfdZcar58Jo6OzJE3rL1FA9/iMRFP5
 OvWC4rZc3CZeuk+Brw/zEomqf9LT+F5XxLy++Q/h9BfXG3nlloGu5/YDC
 uYVdZXMBOokjxLDzRMw9a5/GgvteuPUpDnv7F071BMDpesTMIPg//cgB1
 zMbZ+LEXmNeLTP9xz10oDdWuqEhq/oXDsAdU9rdgBL4yykvYc6RIz3jrO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="270419988"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="270419988"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2022 23:32:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="596710450"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jan 2022 23:32:19 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBtpq-000Hrm-JC; Mon, 24 Jan 2022 07:32:18 +0000
Date: Mon, 24 Jan 2022 15:31:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:module_ns] BUILD SUCCESS
 2b5be8852f5ca17fbf69a0a4e5150c8ea131345b
Message-ID: <61ee55d1.S9TCYNmtDgOPujfH%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git module_ns
branch HEAD: 2b5be8852f5ca17fbf69a0a4e5150c8ea131345b  export: fix string handling of namespace in EXPORT_SYMBOL_NS

elapsed time: 1205m

configs tested: 229
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
arm                           h3600_defconfig
mips                            ar7_defconfig
h8300                               defconfig
xtensa                           alldefconfig
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
sh                           se7705_defconfig
um                             i386_defconfig
powerpc                     tqm8548_defconfig
mips                           ci20_defconfig
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
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
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
powerpc                     tqm5200_defconfig
arm                          imote2_defconfig
mips                     loongson2k_defconfig
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
arm                         bcm2835_defconfig
riscv                          rv32_defconfig
powerpc                          g5_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
powerpc                  mpc885_ads_defconfig
mips                     cu1000-neo_defconfig
arm                         lpc32xx_defconfig
arm                        multi_v5_defconfig
arm                          ixp4xx_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
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
riscv                randconfig-r042-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r041-20220124
hexagon              randconfig-r045-20220123
hexagon              randconfig-r041-20220123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
