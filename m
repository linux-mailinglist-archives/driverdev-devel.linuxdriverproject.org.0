Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ACF28FDD6
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 07:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 211BB2E3EC;
	Fri, 16 Oct 2020 05:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jm22F-9fs5jO; Fri, 16 Oct 2020 05:56:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C26F92E2D2;
	Fri, 16 Oct 2020 05:56:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FA801BF860
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:56:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2BCE488253
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PB23qIbNlCDG for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 05:56:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7260A8724E
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 05:56:02 +0000 (UTC)
IronPort-SDR: /CJGTEC50tLsyh0lG1zhYo/JKSZxIhTU8bDOAiP9zQfTttpy1JSu/s/5eGuiulhEaZfBm+tVwa
 LjNXBmhwubxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="146395556"
X-IronPort-AV: E=Sophos;i="5.77,381,1596524400"; d="scan'208";a="146395556"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 22:56:02 -0700
IronPort-SDR: td02r/TyR8nDwNkTX1qQwb/KT/vNPkfAh9vVfPWnJktxOF4fTiqN0wBvUueI68vPC5sxz1Taud
 NOzPwteYleAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,381,1596524400"; d="scan'208";a="346427762"
Received: from lkp-server01.sh.intel.com (HELO 5003fa193bf3) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 15 Oct 2020 22:56:00 -0700
Received: from kbuild by 5003fa193bf3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kTIie-0000EU-36; Fri, 16 Oct 2020 05:56:00 +0000
Date: Fri, 16 Oct 2020 13:55:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:ion_removal] BUILD SUCCESS
 dbc9638e5e8ef865f746ad62329a459d3461291c
Message-ID: <5f8935e5.dDQ59pT2Q86IiFaB%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  ion_removal
branch HEAD: dbc9638e5e8ef865f746ad62329a459d3461291c  staging: ion: remove from the tree

elapsed time: 723m

configs tested: 155
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                   bluestone_defconfig
arm                       mainstone_defconfig
powerpc                      acadia_defconfig
xtensa                       common_defconfig
sh                        dreamcast_defconfig
powerpc                     mpc512x_defconfig
xtensa                  audio_kc705_defconfig
m68k                        mvme147_defconfig
powerpc                        cell_defconfig
arm                          collie_defconfig
mips                      maltaaprp_defconfig
powerpc                         ps3_defconfig
xtensa                generic_kc705_defconfig
arc                        vdk_hs38_defconfig
sparc                       sparc32_defconfig
sh                           se7780_defconfig
arm                          moxart_defconfig
sh                               alldefconfig
powerpc                     tqm5200_defconfig
mips                      pic32mzda_defconfig
m68k                          multi_defconfig
sh                   sh7724_generic_defconfig
powerpc                 linkstation_defconfig
powerpc                      katmai_defconfig
arm                        vexpress_defconfig
arm                         at91_dt_defconfig
arm                            lart_defconfig
parisc                generic-64bit_defconfig
x86_64                           alldefconfig
riscv                               defconfig
powerpc                 mpc8272_ads_defconfig
xtensa                              defconfig
arm                        neponset_defconfig
microblaze                      mmu_defconfig
sh                         ecovec24_defconfig
powerpc                   motionpro_defconfig
arm                      tct_hammer_defconfig
powerpc                     kilauea_defconfig
mips                        nlm_xlp_defconfig
sh                         ap325rxa_defconfig
powerpc                      ppc64e_defconfig
arm                          ep93xx_defconfig
mips                          ath79_defconfig
arm                      jornada720_defconfig
arm                     davinci_all_defconfig
mips                  cavium_octeon_defconfig
riscv                            alldefconfig
sh                     sh7710voipgw_defconfig
arm                        oxnas_v6_defconfig
arm                       aspeed_g5_defconfig
arm                        mvebu_v5_defconfig
powerpc                     stx_gp3_defconfig
h8300                       h8s-sim_defconfig
arm                           stm32_defconfig
arm                           spitz_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                        nsimosci_defconfig
powerpc                  mpc866_ads_defconfig
i386                             alldefconfig
arm                        mvebu_v7_defconfig
mips                        bcm47xx_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                       omap2plus_defconfig
arm                            xcep_defconfig
arm                        mini2440_defconfig
arm                           sama5_defconfig
powerpc                 mpc8560_ads_defconfig
arm                        magician_defconfig
sh                            migor_defconfig
arm                           viper_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20201015
x86_64               randconfig-a002-20201015
x86_64               randconfig-a006-20201015
x86_64               randconfig-a001-20201015
x86_64               randconfig-a005-20201015
x86_64               randconfig-a003-20201015
i386                 randconfig-a005-20201014
i386                 randconfig-a006-20201014
i386                 randconfig-a001-20201014
i386                 randconfig-a003-20201014
i386                 randconfig-a004-20201014
i386                 randconfig-a002-20201014
x86_64               randconfig-a016-20201014
x86_64               randconfig-a012-20201014
x86_64               randconfig-a015-20201014
x86_64               randconfig-a013-20201014
x86_64               randconfig-a014-20201014
x86_64               randconfig-a011-20201014
i386                 randconfig-a016-20201016
i386                 randconfig-a013-20201016
i386                 randconfig-a015-20201016
i386                 randconfig-a011-20201016
i386                 randconfig-a012-20201016
i386                 randconfig-a014-20201016
i386                 randconfig-a016-20201014
i386                 randconfig-a013-20201014
i386                 randconfig-a015-20201014
i386                 randconfig-a011-20201014
i386                 randconfig-a012-20201014
i386                 randconfig-a014-20201014
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201014
x86_64               randconfig-a002-20201014
x86_64               randconfig-a006-20201014
x86_64               randconfig-a001-20201014
x86_64               randconfig-a005-20201014
x86_64               randconfig-a003-20201014

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
