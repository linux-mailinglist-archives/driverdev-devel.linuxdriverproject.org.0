Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 735AB3E8635
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Aug 2021 00:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F047640424;
	Tue, 10 Aug 2021 22:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1Ff2llpDayh; Tue, 10 Aug 2021 22:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1F9840230;
	Tue, 10 Aug 2021 22:48:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4FA21BF32E
 for <devel@linuxdriverproject.org>; Tue, 10 Aug 2021 22:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0E3940230
 for <devel@linuxdriverproject.org>; Tue, 10 Aug 2021 22:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dz3SQW3cCefJ for <devel@linuxdriverproject.org>;
 Tue, 10 Aug 2021 22:48:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF7F340223
 for <devel@driverdev.osuosl.org>; Tue, 10 Aug 2021 22:48:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="237027253"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="237027253"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 15:48:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="506477759"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2021 15:48:07 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mDaXW-000L0x-IJ; Tue, 10 Aug 2021 22:48:06 +0000
Date: Wed, 11 Aug 2021 06:47:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 ae7471cae00a432d1c9692452b1b9175a8f3c1b3
Message-ID: <61130205.ktgfzd9ezaTUVyhw%lkp@intel.com>
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
branch HEAD: ae7471cae00a432d1c9692452b1b9175a8f3c1b3  staging: r8188eu: remove rtw_ioctl function

Warning reports:

https://lore.kernel.org/lkml/202107310213.WGo8CZVI-lkp@intel.com

Warning in current branch:

drivers/staging/r8188eu/core/rtw_ieee80211.c:897: warning: expecting prototype for ieee802_11_parse_elems(). Prototype was for rtw_ieee802_11_parse_elems() instead
drivers/staging/r8188eu/core/rtw_security.c:1627: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
drivers/staging/r8188eu/core/rtw_security.c:1652: warning: expecting prototype for omac1_aes_128(). Prototype was for rtw_use_tkipkey_handler() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:104: warning: expecting prototype for Function(). Prototype was for rtl8188e_PHY_SetBBReg() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:144: warning: expecting prototype for Function(). Prototype was for phy_RFSerialRead() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:243: warning: expecting prototype for Function(). Prototype was for phy_RFSerialWrite() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:287: warning: expecting prototype for Function(). Prototype was for rtl8188e_PHY_QueryRFReg() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:323: warning: expecting prototype for Function(). Prototype was for rtl8188e_PHY_SetRFReg() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:389: warning: expecting prototype for Function(). Prototype was for phy_InitBBRFRegisterDefinition() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:46: warning: expecting prototype for Function(). Prototype was for phy_CalculateBitShift() instead
drivers/staging/r8188eu/hal/rtl8188e_phycfg.c:76: warning: expecting prototype for Function(). Prototype was for rtl8188e_PHY_QueryBBReg() instead
drivers/staging/r8188eu/os_dep/ioctl_linux.c:110: warning: expecting prototype for hwaddr_aton(). Prototype was for hwaddr_aton_i() instead
drivers/staging/r8188eu/os_dep/rtw_android.c:53: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   |-- drivers-staging-r8188eu-core-rtw_ieee80211.c:warning:expecting-prototype-for-ieee802_11_parse_elems().-Prototype-was-for-rtw_ieee802_11_parse_elems()-instead
|   |-- drivers-staging-r8188eu-core-rtw_security.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   |-- drivers-staging-r8188eu-core-rtw_security.c:warning:expecting-prototype-for-omac1_aes_128().-Prototype-was-for-rtw_use_tkipkey_handler()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_CalculateBitShift()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_InitBBRFRegisterDefinition()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialRead()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialWrite()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryBBReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryRFReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetBBReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetRFReg()-instead
|   `-- drivers-staging-r8188eu-os_dep-rtw_android.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- ia64-allmodconfig
|   |-- drivers-staging-r8188eu-core-rtw_ieee80211.c:warning:expecting-prototype-for-ieee802_11_parse_elems().-Prototype-was-for-rtw_ieee802_11_parse_elems()-instead
|   |-- drivers-staging-r8188eu-core-rtw_security.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   |-- drivers-staging-r8188eu-core-rtw_security.c:warning:expecting-prototype-for-omac1_aes_128().-Prototype-was-for-rtw_use_tkipkey_handler()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_CalculateBitShift()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_InitBBRFRegisterDefinition()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialRead()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialWrite()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryBBReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryRFReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetBBReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetRFReg()-instead
|   |-- drivers-staging-r8188eu-os_dep-ioctl_linux.c:warning:expecting-prototype-for-hwaddr_aton().-Prototype-was-for-hwaddr_aton_i()-instead
|   `-- drivers-staging-r8188eu-os_dep-rtw_android.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- sh-allmodconfig
|   |-- drivers-staging-r8188eu-core-rtw_ieee80211.c:warning:expecting-prototype-for-ieee802_11_parse_elems().-Prototype-was-for-rtw_ieee802_11_parse_elems()-instead
|   |-- drivers-staging-r8188eu-core-rtw_security.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   |-- drivers-staging-r8188eu-core-rtw_security.c:warning:expecting-prototype-for-omac1_aes_128().-Prototype-was-for-rtw_use_tkipkey_handler()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_CalculateBitShift()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_InitBBRFRegisterDefinition()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialRead()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialWrite()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryBBReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryRFReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetBBReg()-instead
|   |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetRFReg()-instead
|   `-- drivers-staging-r8188eu-os_dep-rtw_android.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
`-- sparc-allyesconfig
    |-- drivers-staging-r8188eu-core-rtw_ieee80211.c:warning:expecting-prototype-for-ieee802_11_parse_elems().-Prototype-was-for-rtw_ieee802_11_parse_elems()-instead
    |-- drivers-staging-r8188eu-core-rtw_security.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
    |-- drivers-staging-r8188eu-core-rtw_security.c:warning:expecting-prototype-for-omac1_aes_128().-Prototype-was-for-rtw_use_tkipkey_handler()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_CalculateBitShift()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_InitBBRFRegisterDefinition()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialRead()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-phy_RFSerialWrite()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryBBReg()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_QueryRFReg()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetBBReg()-instead
    |-- drivers-staging-r8188eu-hal-rtl8188e_phycfg.c:warning:expecting-prototype-for-Function().-Prototype-was-for-rtl8188e_PHY_SetRFReg()-instead
    `-- drivers-staging-r8188eu-os_dep-rtw_android.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst

elapsed time: 723m

configs tested: 155
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210810
arm                            zeus_defconfig
arm                             rpc_defconfig
powerpc                     sbc8548_defconfig
mips                          rb532_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     pq2fads_defconfig
arc                         haps_hs_defconfig
arc                    vdk_hs38_smp_defconfig
arm                         vf610m4_defconfig
m68k                          multi_defconfig
i386                             alldefconfig
arc                        vdk_hs38_defconfig
arm                       imx_v6_v7_defconfig
arm                          lpd270_defconfig
powerpc                  iss476-smp_defconfig
powerpc                  mpc885_ads_defconfig
arm                           sama5_defconfig
powerpc                    klondike_defconfig
arm                           spitz_defconfig
arm                          collie_defconfig
mips                   sb1250_swarm_defconfig
s390                       zfcpdump_defconfig
arm                         at91_dt_defconfig
mips                  maltasmvp_eva_defconfig
arm                             mxs_defconfig
arm                         s3c2410_defconfig
arm                      integrator_defconfig
powerpc                      ep88xc_defconfig
powerpc                       ebony_defconfig
powerpc                         wii_defconfig
powerpc                   currituck_defconfig
powerpc                        cell_defconfig
mips                           ip28_defconfig
powerpc                     tqm8541_defconfig
powerpc                      bamboo_defconfig
arm                          pxa910_defconfig
powerpc                          g5_defconfig
arm                      footbridge_defconfig
csky                                defconfig
xtensa                          iss_defconfig
arm                         s3c6400_defconfig
sh                             sh03_defconfig
riscv                    nommu_virt_defconfig
i386                                defconfig
powerpc                     powernv_defconfig
mips                         bigsur_defconfig
powerpc                     pseries_defconfig
mips                          ath79_defconfig
mips                           ci20_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
x86_64                            allnoconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210810
x86_64               randconfig-a006-20210810
x86_64               randconfig-a003-20210810
x86_64               randconfig-a005-20210810
x86_64               randconfig-a002-20210810
x86_64               randconfig-a001-20210810
i386                 randconfig-a004-20210809
i386                 randconfig-a005-20210809
i386                 randconfig-a006-20210809
i386                 randconfig-a002-20210809
i386                 randconfig-a001-20210809
i386                 randconfig-a003-20210809
i386                 randconfig-a004-20210810
i386                 randconfig-a002-20210810
i386                 randconfig-a001-20210810
i386                 randconfig-a003-20210810
i386                 randconfig-a006-20210810
i386                 randconfig-a005-20210810
i386                 randconfig-a004-20210808
i386                 randconfig-a005-20210808
i386                 randconfig-a006-20210808
i386                 randconfig-a002-20210808
i386                 randconfig-a001-20210808
i386                 randconfig-a003-20210808
i386                 randconfig-a012-20210809
i386                 randconfig-a015-20210809
i386                 randconfig-a011-20210809
i386                 randconfig-a013-20210809
i386                 randconfig-a014-20210809
i386                 randconfig-a016-20210809
i386                 randconfig-a011-20210810
i386                 randconfig-a015-20210810
i386                 randconfig-a013-20210810
i386                 randconfig-a014-20210810
i386                 randconfig-a016-20210810
i386                 randconfig-a012-20210810
x86_64               randconfig-a002-20210809
x86_64               randconfig-a004-20210809
x86_64               randconfig-a006-20210809
x86_64               randconfig-a003-20210809
x86_64               randconfig-a001-20210809
x86_64               randconfig-a005-20210809
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210810
x86_64               randconfig-c001-20210809
x86_64               randconfig-a013-20210810
x86_64               randconfig-a011-20210810
x86_64               randconfig-a012-20210810
x86_64               randconfig-a016-20210810
x86_64               randconfig-a014-20210810
x86_64               randconfig-a015-20210810
x86_64               randconfig-a016-20210809
x86_64               randconfig-a012-20210809
x86_64               randconfig-a013-20210809
x86_64               randconfig-a011-20210809
x86_64               randconfig-a014-20210809
x86_64               randconfig-a015-20210809

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
