Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3113E2EC2
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 19:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A71C8607CB;
	Fri,  6 Aug 2021 17:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 97hGrqRqB4jG; Fri,  6 Aug 2021 17:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22FE360699;
	Fri,  6 Aug 2021 17:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38FA41BF3FC
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 17:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 354E6405B8
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 17:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEZXFKQcVx-b for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 17:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F387A403FB
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 17:11:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10068"; a="211305226"
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="211305226"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 10:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="586777129"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2021 10:11:24 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mC3NU-000H5d-6E; Fri, 06 Aug 2021 17:11:24 +0000
Date: Sat, 07 Aug 2021 01:10:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS WITH WARNING
 282bd08229761af5c7d529befe38f56c20f77c54
Message-ID: <610d6d06.PDvDokXwj8b4Qyrg%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 282bd08229761af5c7d529befe38f56c20f77c54  staging: r8188eu: replace custom macros with is_broadcast_ether_addr

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
|-- alpha-allyesconfig
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
|-- nds32-allyesconfig
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

elapsed time: 751m

configs tested: 116
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210804
i386                 randconfig-c001-20210805
mips                        workpad_defconfig
powerpc                     mpc83xx_defconfig
mips                           ip32_defconfig
h8300                            alldefconfig
powerpc                 mpc85xx_cds_defconfig
arm                            qcom_defconfig
mips                  maltasmvp_eva_defconfig
riscv                            allyesconfig
ia64                            zx1_defconfig
i386                             alldefconfig
sh                   sh7724_generic_defconfig
sh                          sdk7780_defconfig
ia64                        generic_defconfig
arm                            hisi_defconfig
mips                         tb0226_defconfig
sh                      rts7751r2d1_defconfig
powerpc                     sequoia_defconfig
arm                      pxa255-idp_defconfig
powerpc                     taishan_defconfig
mips                      loongson3_defconfig
arm                    vt8500_v6_v7_defconfig
arm                        mvebu_v5_defconfig
powerpc                      katmai_defconfig
arm                       versatile_defconfig
um                                  defconfig
x86_64                            allnoconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210806
i386                 randconfig-a004-20210806
i386                 randconfig-a002-20210806
i386                 randconfig-a006-20210806
i386                 randconfig-a003-20210806
i386                 randconfig-a001-20210806
x86_64               randconfig-a012-20210804
x86_64               randconfig-a016-20210804
x86_64               randconfig-a011-20210804
x86_64               randconfig-a013-20210804
x86_64               randconfig-a014-20210804
x86_64               randconfig-a015-20210804
i386                 randconfig-a012-20210806
i386                 randconfig-a011-20210806
i386                 randconfig-a015-20210806
i386                 randconfig-a013-20210806
i386                 randconfig-a014-20210806
i386                 randconfig-a016-20210806
i386                 randconfig-a012-20210804
i386                 randconfig-a011-20210804
i386                 randconfig-a015-20210804
i386                 randconfig-a013-20210804
i386                 randconfig-a014-20210804
i386                 randconfig-a016-20210804
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
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
x86_64               randconfig-c001-20210804
x86_64               randconfig-c001-20210805
x86_64               randconfig-a002-20210804
x86_64               randconfig-a006-20210804
x86_64               randconfig-a004-20210804
x86_64               randconfig-a003-20210804
x86_64               randconfig-a001-20210804
x86_64               randconfig-a005-20210804
x86_64               randconfig-a012-20210805
x86_64               randconfig-a016-20210805
x86_64               randconfig-a011-20210805
x86_64               randconfig-a013-20210805
x86_64               randconfig-a014-20210805
x86_64               randconfig-a015-20210805

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
