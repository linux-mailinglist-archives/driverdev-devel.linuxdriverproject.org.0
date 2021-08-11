Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262733E99A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Aug 2021 22:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ABFC4037B;
	Wed, 11 Aug 2021 20:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMUUSg6VDWJE; Wed, 11 Aug 2021 20:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8A3D40373;
	Wed, 11 Aug 2021 20:24:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F40981BF470
 for <devel@linuxdriverproject.org>; Wed, 11 Aug 2021 20:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7B5740373
 for <devel@linuxdriverproject.org>; Wed, 11 Aug 2021 20:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wfaO_ySpL4Hd for <devel@linuxdriverproject.org>;
 Wed, 11 Aug 2021 20:23:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F0BA40205
 for <devel@driverdev.osuosl.org>; Wed, 11 Aug 2021 20:23:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="278959638"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="278959638"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 13:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="507207356"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2021 13:23:48 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mDulP-000M3z-Kk; Wed, 11 Aug 2021 20:23:47 +0000
Date: Thu, 12 Aug 2021 04:22:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 25ee7e89d45debc195cc8cec2483e07bbccd1472
Message-ID: <61143199.1TWoL+X2+jwC+8/L%lkp@intel.com>
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
branch HEAD: 25ee7e89d45debc195cc8cec2483e07bbccd1472  staging: rtl8192e: rtl_core: Fix possible null-pointer dereference in _rtl92e_pci_disconnect()

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
|   |-- drivers-staging-r8188eu-os_dep-ioctl_linux.c:warning:expecting-prototype-for-hwaddr_aton().-Prototype-was-for-hwaddr_aton_i()-instead
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
`-- sh-allmodconfig
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
    |-- drivers-staging-r8188eu-os_dep-ioctl_linux.c:warning:expecting-prototype-for-hwaddr_aton().-Prototype-was-for-hwaddr_aton_i()-instead
    `-- drivers-staging-r8188eu-os_dep-rtw_android.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst

elapsed time: 746m

configs tested: 162
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210811
i386                 randconfig-c001-20210809
s390                       zfcpdump_defconfig
sh                                  defconfig
xtensa                generic_kc705_defconfig
powerpc                     tqm8555_defconfig
sh                              ul2_defconfig
arm                       aspeed_g4_defconfig
arm                         bcm2835_defconfig
m68k                       m5208evb_defconfig
m68k                       bvme6000_defconfig
arm                           h5000_defconfig
arm                       omap2plus_defconfig
arm                         at91_dt_defconfig
arm                           omap1_defconfig
arm                         s3c2410_defconfig
arm                           viper_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                      acadia_defconfig
arm                  colibri_pxa270_defconfig
powerpc                      makalu_defconfig
arm                          imote2_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                        qi_lb60_defconfig
mips                        jmr3927_defconfig
s390                          debug_defconfig
powerpc                 mpc834x_itx_defconfig
nds32                               defconfig
mips                           jazz_defconfig
mips                           rs90_defconfig
powerpc                           allnoconfig
sh                          landisk_defconfig
m68k                        m5307c3_defconfig
sh                               j2_defconfig
alpha                            allyesconfig
powerpc                     tqm5200_defconfig
powerpc                   lite5200b_defconfig
arm                   milbeaut_m10v_defconfig
mips                         cobalt_defconfig
sh                           se7724_defconfig
arm64                            alldefconfig
powerpc                        cell_defconfig
riscv                          rv32_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                     powernv_defconfig
arm                         mv78xx0_defconfig
powerpc                     mpc512x_defconfig
arm                  colibri_pxa300_defconfig
arm                           h3600_defconfig
arm                      footbridge_defconfig
powerpc                 mpc836x_mds_defconfig
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
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a004-20210810
x86_64               randconfig-a006-20210810
x86_64               randconfig-a003-20210810
x86_64               randconfig-a005-20210810
x86_64               randconfig-a002-20210810
x86_64               randconfig-a001-20210810
i386                 randconfig-a004-20210810
i386                 randconfig-a002-20210810
i386                 randconfig-a001-20210810
i386                 randconfig-a003-20210810
i386                 randconfig-a006-20210810
i386                 randconfig-a005-20210810
i386                 randconfig-a004-20210811
i386                 randconfig-a001-20210811
i386                 randconfig-a002-20210811
i386                 randconfig-a003-20210811
i386                 randconfig-a006-20210811
i386                 randconfig-a005-20210811
x86_64               randconfig-a013-20210811
x86_64               randconfig-a011-20210811
x86_64               randconfig-a012-20210811
x86_64               randconfig-a016-20210811
x86_64               randconfig-a014-20210811
x86_64               randconfig-a015-20210811
i386                 randconfig-a011-20210811
i386                 randconfig-a015-20210811
i386                 randconfig-a014-20210811
i386                 randconfig-a013-20210811
i386                 randconfig-a016-20210811
i386                 randconfig-a012-20210811
i386                 randconfig-a011-20210810
i386                 randconfig-a015-20210810
i386                 randconfig-a013-20210810
i386                 randconfig-a014-20210810
i386                 randconfig-a016-20210810
i386                 randconfig-a012-20210810
i386                 randconfig-a012-20210809
i386                 randconfig-a015-20210809
i386                 randconfig-a011-20210809
i386                 randconfig-a013-20210809
i386                 randconfig-a014-20210809
i386                 randconfig-a016-20210809
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210811
x86_64               randconfig-c001-20210810
x86_64               randconfig-c001-20210809
x86_64               randconfig-a004-20210811
x86_64               randconfig-a006-20210811
x86_64               randconfig-a003-20210811
x86_64               randconfig-a002-20210811
x86_64               randconfig-a005-20210811
x86_64               randconfig-a001-20210811
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
