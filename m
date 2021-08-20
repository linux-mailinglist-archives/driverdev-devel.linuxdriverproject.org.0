Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3343F2466
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Aug 2021 03:47:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56F49404EE;
	Fri, 20 Aug 2021 01:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfTTurptgfmR; Fri, 20 Aug 2021 01:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17942401BB;
	Fri, 20 Aug 2021 01:47:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 659201BF865
 for <devel@linuxdriverproject.org>; Fri, 20 Aug 2021 01:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EC2A60644
 for <devel@linuxdriverproject.org>; Fri, 20 Aug 2021 01:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oeYAIwgVT6iT for <devel@linuxdriverproject.org>;
 Fri, 20 Aug 2021 01:46:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A76160636
 for <devel@driverdev.osuosl.org>; Fri, 20 Aug 2021 01:46:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="216726809"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="216726809"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 18:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="681984269"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 19 Aug 2021 18:46:42 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mGtcH-000UQY-Pc; Fri, 20 Aug 2021 01:46:41 +0000
Date: Fri, 20 Aug 2021 09:46:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS WITH WARNING
 093991aaadf0fbb34184fa37a46e7a157da3f386
Message-ID: <611f096a.74QD2ftwTEdhqQ5H%lkp@intel.com>
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
branch HEAD: 093991aaadf0fbb34184fa37a46e7a157da3f386  staging: r8188eu: Remove empty rtw_mfree_xmit_priv_lock()

Warning reports:

https://lore.kernel.org/lkml/202107310213.WGo8CZVI-lkp@intel.com

Warning in current branch:

drivers/staging/r8188eu/core/rtw_ieee80211.c:884: warning: expecting prototype for ieee802_11_parse_elems(). Prototype was for rtw_ieee802_11_parse_elems() instead
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
drivers/staging/r8188eu/os_dep/rtw_android.c:52: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- m68k-allmodconfig
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
|-- m68k-allyesconfig
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
`-- nds32-allyesconfig
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

elapsed time: 1194m

configs tested: 108
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210819
h8300                       h8s-sim_defconfig
powerpc                       maple_defconfig
sh                           se7751_defconfig
arm                        realview_defconfig
mips                      loongson3_defconfig
s390                                defconfig
sh                          rsk7269_defconfig
arm64                            alldefconfig
sh                        apsh4ad0a_defconfig
mips                       bmips_be_defconfig
m68k                                defconfig
powerpc                 mpc837x_rdb_defconfig
m68k                            mac_defconfig
powerpc                   currituck_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                          lpd270_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     mpc83xx_defconfig
ia64                      gensparse_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210818
x86_64               randconfig-a006-20210818
x86_64               randconfig-a003-20210818
x86_64               randconfig-a005-20210818
x86_64               randconfig-a002-20210818
x86_64               randconfig-a001-20210818
i386                 randconfig-a004-20210818
i386                 randconfig-a006-20210818
i386                 randconfig-a002-20210818
i386                 randconfig-a001-20210818
i386                 randconfig-a003-20210818
i386                 randconfig-a005-20210818
i386                 randconfig-a015-20210819
i386                 randconfig-a011-20210819
i386                 randconfig-a014-20210819
i386                 randconfig-a013-20210819
i386                 randconfig-a016-20210819
i386                 randconfig-a012-20210819
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
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
i386                 randconfig-c001-20210818
i386                 randconfig-c001-20210819
x86_64               randconfig-a004-20210819
x86_64               randconfig-a006-20210819
x86_64               randconfig-a003-20210819
x86_64               randconfig-a002-20210819
x86_64               randconfig-a005-20210819
x86_64               randconfig-a001-20210819
i386                 randconfig-a004-20210819
i386                 randconfig-a006-20210819
i386                 randconfig-a001-20210819
i386                 randconfig-a002-20210819
i386                 randconfig-a003-20210819
i386                 randconfig-a005-20210819
x86_64               randconfig-a013-20210818
x86_64               randconfig-a011-20210818
x86_64               randconfig-a012-20210818
x86_64               randconfig-a016-20210818
x86_64               randconfig-a014-20210818
x86_64               randconfig-a015-20210818

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
