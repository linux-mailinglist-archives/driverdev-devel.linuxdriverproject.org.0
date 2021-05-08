Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C3237747F
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 May 2021 01:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C14340EB5;
	Sat,  8 May 2021 23:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MEpZwaWuWyjv; Sat,  8 May 2021 23:01:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8836040EB6;
	Sat,  8 May 2021 23:01:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06B5B1BF34E
 for <devel@linuxdriverproject.org>; Sat,  8 May 2021 23:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9EB840EB4
 for <devel@linuxdriverproject.org>; Sat,  8 May 2021 23:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cn5Z7tBweuF4 for <devel@linuxdriverproject.org>;
 Sat,  8 May 2021 23:01:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7310440EB2
 for <devel@driverdev.osuosl.org>; Sat,  8 May 2021 23:01:01 +0000 (UTC)
IronPort-SDR: b/TLZviUBWzOtboKg8pY2s5lntLXXb7pq1t8AvtvJbQe0TgDpxJmfKLwRuVyMzfXVVTYizo+5w
 lcj5QOIyU+jA==
X-IronPort-AV: E=McAfee;i="6200,9189,9978"; a="178536701"
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; d="scan'208";a="178536701"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2021 16:01:00 -0700
IronPort-SDR: CNX2huTmTdWfWz9DGdkE0McMpEnNTvvVrDspFwq61/P8df+uXj1m30UzWmR4qO43LwA3TKMsx2
 bsKQus9sCA/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; d="scan'208";a="540748573"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 May 2021 16:00:58 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lfVwP-000Bpt-QF; Sat, 08 May 2021 23:00:57 +0000
Date: Sun, 09 May 2021 07:00:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 5f99d1b7925435aae0afaadb435bbb7d01339b19
Message-ID: <6097181c.iUt1GsIiwNv/yH8x%lkp@intel.com>
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
branch HEAD: 5f99d1b7925435aae0afaadb435bbb7d01339b19  staging: rtl8188eu: remove padapter from struct mlme_ext_priv

Warning in current branch:

drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

possible Warning in current branch:

drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2134:6: warning: variable 'u4Tmp' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2135:17: warning: variable 'u1Tmpb' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:2135:5: warning: variable 'u1Tmpa' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf.c:79:41: warning: variable 'delta_IQK' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c:1632:30: warning: variable 'RegEAC' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c:1632:62: warning: variable 'RegECC' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c:1649:8: warning: variable 'ProgressingTime' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3895:18: warning: variable 'ra_info2' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:3895:8: warning: variable 'ra_info1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- nds32-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- openrisc-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
`-- riscv-allyesconfig
    |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
    `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used

elapsed time: 723m

configs tested: 176
configs skipped: 2

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
arc                          axs101_defconfig
arm                         at91_dt_defconfig
arm                         vf610m4_defconfig
powerpc                      acadia_defconfig
mips                            e55_defconfig
arm                              alldefconfig
m68k                             alldefconfig
powerpc                    adder875_defconfig
xtensa                              defconfig
sh                              ul2_defconfig
arc                      axs103_smp_defconfig
arm                           h3600_defconfig
powerpc                       holly_defconfig
powerpc                 canyonlands_defconfig
sh                          lboxre2_defconfig
m68k                       m5475evb_defconfig
powerpc                    mvme5100_defconfig
powerpc                     taishan_defconfig
arm                            hisi_defconfig
sh                   rts7751r2dplus_defconfig
arm                      jornada720_defconfig
powerpc                  mpc866_ads_defconfig
arm                            qcom_defconfig
mips                        qi_lb60_defconfig
sh                          rsk7203_defconfig
mips                           ip27_defconfig
mips                      pic32mzda_defconfig
powerpc                 mpc832x_mds_defconfig
arm                  colibri_pxa300_defconfig
mips                        workpad_defconfig
arm                         bcm2835_defconfig
arm64                            alldefconfig
mips                    maltaup_xpa_defconfig
i386                             alldefconfig
powerpc                 xes_mpc85xx_defconfig
arm                           sama5_defconfig
powerpc                     ep8248e_defconfig
mips                         tb0226_defconfig
powerpc                         ps3_defconfig
m68k                          hp300_defconfig
parisc                              defconfig
powerpc                          g5_defconfig
riscv                             allnoconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                     mpc5200_defconfig
arm                        clps711x_defconfig
xtensa                generic_kc705_defconfig
sparc64                          alldefconfig
powerpc                     mpc83xx_defconfig
arm                          lpd270_defconfig
arm                        mini2440_defconfig
s390                                defconfig
mips                      maltaaprp_defconfig
sh                          landisk_defconfig
mips                     loongson2k_defconfig
powerpc                  storcenter_defconfig
xtensa                  audio_kc705_defconfig
mips                         tb0219_defconfig
sh                        dreamcast_defconfig
h8300                     edosk2674_defconfig
m68k                         apollo_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                      pmac32_defconfig
arm                       imx_v6_v7_defconfig
mips                     cu1000-neo_defconfig
um                               allyesconfig
arc                     nsimosci_hs_defconfig
sh                           se7751_defconfig
nios2                            allyesconfig
powerpc                 mpc834x_mds_defconfig
arm                        spear3xx_defconfig
mips                     cu1830-neo_defconfig
arm                         s3c6400_defconfig
sh                             espt_defconfig
mips                          rb532_defconfig
arm                         nhk8815_defconfig
nios2                               defconfig
powerpc                      ppc64e_defconfig
powerpc                 mpc85xx_cds_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210508
i386                 randconfig-a006-20210508
i386                 randconfig-a001-20210508
i386                 randconfig-a005-20210508
i386                 randconfig-a004-20210508
i386                 randconfig-a002-20210508
i386                 randconfig-a003-20210509
i386                 randconfig-a006-20210509
i386                 randconfig-a001-20210509
i386                 randconfig-a005-20210509
i386                 randconfig-a004-20210509
i386                 randconfig-a002-20210509
x86_64               randconfig-a014-20210508
x86_64               randconfig-a015-20210508
x86_64               randconfig-a011-20210508
x86_64               randconfig-a013-20210508
x86_64               randconfig-a012-20210508
x86_64               randconfig-a016-20210508
i386                 randconfig-a013-20210508
i386                 randconfig-a015-20210508
i386                 randconfig-a014-20210508
i386                 randconfig-a016-20210508
i386                 randconfig-a011-20210508
i386                 randconfig-a012-20210508
i386                 randconfig-a013-20210509
i386                 randconfig-a015-20210509
i386                 randconfig-a014-20210509
i386                 randconfig-a016-20210509
i386                 randconfig-a011-20210509
i386                 randconfig-a012-20210509
x86_64               randconfig-a005-20210509
x86_64               randconfig-a003-20210509
x86_64               randconfig-a001-20210509
x86_64               randconfig-a002-20210509
x86_64               randconfig-a006-20210509
x86_64               randconfig-a004-20210509
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20210508
x86_64               randconfig-a003-20210508
x86_64               randconfig-a001-20210508
x86_64               randconfig-a002-20210508
x86_64               randconfig-a006-20210508
x86_64               randconfig-a004-20210508
x86_64               randconfig-a014-20210509
x86_64               randconfig-a015-20210509
x86_64               randconfig-a011-20210509
x86_64               randconfig-a013-20210509
x86_64               randconfig-a012-20210509
x86_64               randconfig-a016-20210509

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
