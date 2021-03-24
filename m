Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE6A346F9D
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Mar 2021 03:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFF114061D;
	Wed, 24 Mar 2021 02:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G8hwEfiK2djW; Wed, 24 Mar 2021 02:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6847D40612;
	Wed, 24 Mar 2021 02:36:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B36691BF3A0
 for <devel@linuxdriverproject.org>; Wed, 24 Mar 2021 02:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE241848FF
 for <devel@linuxdriverproject.org>; Wed, 24 Mar 2021 02:35:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ddUBHxZfEfSX for <devel@linuxdriverproject.org>;
 Wed, 24 Mar 2021 02:35:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA7CB84901
 for <devel@driverdev.osuosl.org>; Wed, 24 Mar 2021 02:35:55 +0000 (UTC)
IronPort-SDR: avM/x+xbzTBm1nz1bPtN6jtIJpoaVYgFS5qvYicRxrrxjH7q1zOGbrFoNcAs9hPEMhAt+IZ/ez
 Ut51L1O9by4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="275713852"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="275713852"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 19:35:54 -0700
IronPort-SDR: IEooF5pAgjuaehZDCb9+TN9zfztzd0mVmH2VHELKIef6HqZYuYKOg+tfU65+KW9HaE3V+wJWCB
 vHwQEyxPRLOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="391125533"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 23 Mar 2021 19:35:52 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lOtN9-0000w1-Vl; Wed, 24 Mar 2021 02:35:51 +0000
Date: Wed, 24 Mar 2021 10:35:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 f0acf637d60ffcef3ccb6e279f743e587b3c7359
Message-ID: <605aa56a.gAgdS3UWtTmuYsMK%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: f0acf637d60ffcef3ccb6e279f743e587b3c7359  driver core: clear deferred probe reason on probe retry

elapsed time: 723m

configs tested: 163
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
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
mips                        workpad_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                     cu1000-neo_defconfig
arm                        mini2440_defconfig
powerpc                     redwood_defconfig
mips                            ar7_defconfig
m68k                            mac_defconfig
m68k                             allyesconfig
arm                          imote2_defconfig
mips                      bmips_stb_defconfig
arm                   milbeaut_m10v_defconfig
arm                         mv78xx0_defconfig
arm                           h5000_defconfig
arm                        spear3xx_defconfig
sh                         ap325rxa_defconfig
mips                         bigsur_defconfig
m68k                        m5407c3_defconfig
arm                            hisi_defconfig
arm                        vexpress_defconfig
m68k                       m5208evb_defconfig
powerpc                     ksi8560_defconfig
arm                            mps2_defconfig
arm                         shannon_defconfig
arm                       omap2plus_defconfig
arm                      tct_hammer_defconfig
powerpc                      cm5200_defconfig
powerpc                  iss476-smp_defconfig
arm                      pxa255-idp_defconfig
arm                          exynos_defconfig
mips                         tb0287_defconfig
sh                          sdk7780_defconfig
powerpc                  storcenter_defconfig
powerpc                     kilauea_defconfig
mips                   sb1250_swarm_defconfig
arc                        vdk_hs38_defconfig
ia64                        generic_defconfig
arc                        nsim_700_defconfig
arm                          pxa910_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                    socrates_defconfig
arm                       imx_v6_v7_defconfig
arm                        neponset_defconfig
sh                            hp6xx_defconfig
arm                         orion5x_defconfig
powerpc                   bluestone_defconfig
arc                     haps_hs_smp_defconfig
s390                             alldefconfig
mips                            e55_defconfig
sh                     sh7710voipgw_defconfig
m68k                        stmark2_defconfig
nios2                         3c120_defconfig
sh                          landisk_defconfig
sh                   secureedge5410_defconfig
arm                      integrator_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                 linkstation_defconfig
powerpc                     rainier_defconfig
mips                        maltaup_defconfig
arm                          pxa168_defconfig
arm                          collie_defconfig
arm                         lpc18xx_defconfig
sh                ecovec24-romimage_defconfig
mips                           rs90_defconfig
mips                       capcella_defconfig
sh                        sh7785lcr_defconfig
sh                           se7721_defconfig
arm                     davinci_all_defconfig
powerpc                      ppc6xx_defconfig
powerpc                 mpc834x_mds_defconfig
sh                          rsk7201_defconfig
arm                         lpc32xx_defconfig
arm                             pxa_defconfig
powerpc                     tqm8555_defconfig
powerpc                       eiger_defconfig
mips                     cu1830-neo_defconfig
powerpc                      obs600_defconfig
powerpc64                           defconfig
mips                          ath25_defconfig
arm                         axm55xx_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                     asp8347_defconfig
arc                            hsdk_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210323
x86_64               randconfig-a003-20210323
x86_64               randconfig-a006-20210323
x86_64               randconfig-a001-20210323
x86_64               randconfig-a004-20210323
x86_64               randconfig-a005-20210323
i386                 randconfig-a003-20210323
i386                 randconfig-a004-20210323
i386                 randconfig-a001-20210323
i386                 randconfig-a002-20210323
i386                 randconfig-a006-20210323
i386                 randconfig-a005-20210323
i386                 randconfig-a004-20210324
i386                 randconfig-a003-20210324
i386                 randconfig-a001-20210324
i386                 randconfig-a002-20210324
i386                 randconfig-a006-20210324
i386                 randconfig-a005-20210324
i386                 randconfig-a014-20210323
i386                 randconfig-a011-20210323
i386                 randconfig-a015-20210323
i386                 randconfig-a016-20210323
i386                 randconfig-a012-20210323
i386                 randconfig-a013-20210323
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20210323
x86_64               randconfig-a015-20210323
x86_64               randconfig-a013-20210323
x86_64               randconfig-a014-20210323
x86_64               randconfig-a011-20210323
x86_64               randconfig-a016-20210323

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
