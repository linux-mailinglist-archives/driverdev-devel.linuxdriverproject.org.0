Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2973ECBA4
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Aug 2021 00:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0ED594020E;
	Sun, 15 Aug 2021 22:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UztADAnz8VLf; Sun, 15 Aug 2021 22:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AE8D40106;
	Sun, 15 Aug 2021 22:19:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 089BD1BF477
 for <devel@linuxdriverproject.org>; Sun, 15 Aug 2021 22:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7EAA605E2
 for <devel@linuxdriverproject.org>; Sun, 15 Aug 2021 22:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGfKzc2wx8RS for <devel@linuxdriverproject.org>;
 Sun, 15 Aug 2021 22:18:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C34C4605D3
 for <devel@driverdev.osuosl.org>; Sun, 15 Aug 2021 22:18:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="276797457"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="276797457"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 15:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="509436025"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 15 Aug 2021 15:18:53 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mFOSz-000QAj-5w; Sun, 15 Aug 2021 22:18:53 +0000
Date: Mon, 16 Aug 2021 06:18:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS WITH WARNING
 f805ef1ce5d695c260986fdf2e28f5d6c98cf3a8
Message-ID: <611992c6.WIiZVv7zFtmYPn/A%lkp@intel.com>
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
branch HEAD: f805ef1ce5d695c260986fdf2e28f5d6c98cf3a8  Merge tag 'iio-for-5.15a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-next

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
|-- arm-allmodconfig
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
|-- arm-allyesconfig
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
|   `-- drivers-staging-r8188eu-os_dep-rtw_android.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- ia64-randconfig-s031-20210816
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
|-- nios2-allyesconfig
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
|-- parisc-allyesconfig
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
|-- sparc-allyesconfig
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
`-- x86_64-allyesconfig
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

elapsed time: 929m

configs tested: 184
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210816
sh                          rsk7264_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                   currituck_defconfig
powerpc                     tqm8560_defconfig
sh                           se7780_defconfig
nios2                         3c120_defconfig
sh                          landisk_defconfig
sh                           se7712_defconfig
arm                        trizeps4_defconfig
mips                      fuloong2e_defconfig
powerpc                     asp8347_defconfig
arm                             rpc_defconfig
xtensa                       common_defconfig
arm                      jornada720_defconfig
sh                   secureedge5410_defconfig
powerpc                     tqm8540_defconfig
arm                        neponset_defconfig
powerpc                     stx_gp3_defconfig
h8300                       h8s-sim_defconfig
riscv                    nommu_k210_defconfig
arm                        clps711x_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                 mpc837x_rdb_defconfig
m68k                          hp300_defconfig
arm                         at91_dt_defconfig
powerpc                      mgcoge_defconfig
m68k                          sun3x_defconfig
xtensa                          iss_defconfig
nios2                         10m50_defconfig
powerpc                    klondike_defconfig
arm                        mini2440_defconfig
arc                              alldefconfig
h8300                     edosk2674_defconfig
arm                          moxart_defconfig
arm                          ixp4xx_defconfig
mips                        bcm63xx_defconfig
powerpc                     tqm5200_defconfig
powerpc                      walnut_defconfig
mips                      bmips_stb_defconfig
sh                           se7619_defconfig
arm                         orion5x_defconfig
sh                          r7785rp_defconfig
m68k                       m5275evb_defconfig
mips                   sb1250_swarm_defconfig
powerpc                         ps3_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                         lubbock_defconfig
arm                        magician_defconfig
mips                            ar7_defconfig
i386                                defconfig
powerpc                     pq2fads_defconfig
sh                             espt_defconfig
arm                   milbeaut_m10v_defconfig
mips                            gpr_defconfig
powerpc                 mpc8272_ads_defconfig
m68k                          atari_defconfig
arm                         s5pv210_defconfig
m68k                        mvme147_defconfig
powerpc                     mpc5200_defconfig
i386                             alldefconfig
powerpc                 mpc832x_rdb_defconfig
arm                        spear6xx_defconfig
sparc                       sparc64_defconfig
xtensa                generic_kc705_defconfig
sh                           se7751_defconfig
powerpc                 linkstation_defconfig
m68k                        m5407c3_defconfig
mips                           ip22_defconfig
arm                         shannon_defconfig
mips                        workpad_defconfig
m68k                        mvme16x_defconfig
arm                          badge4_defconfig
riscv                    nommu_virt_defconfig
arm                          iop32x_defconfig
xtensa                  audio_kc705_defconfig
powerpc                        cell_defconfig
sh                        sh7785lcr_defconfig
sh                           se7705_defconfig
mips                         bigsur_defconfig
mips                      pic32mzda_defconfig
powerpc                     rainier_defconfig
arm                            hisi_defconfig
openrisc                    or1ksim_defconfig
powerpc                      bamboo_defconfig
csky                             alldefconfig
alpha                               defconfig
arm                          collie_defconfig
arm                             pxa_defconfig
arm                          pxa910_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                         tb0219_defconfig
arm                      tct_hammer_defconfig
arm                      integrator_defconfig
sh                               j2_defconfig
ia64                      gensparse_defconfig
powerpc                     ksi8560_defconfig
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
i386                 randconfig-a004-20210815
i386                 randconfig-a001-20210815
i386                 randconfig-a002-20210815
i386                 randconfig-a003-20210815
i386                 randconfig-a006-20210815
i386                 randconfig-a005-20210815
i386                 randconfig-a004-20210816
i386                 randconfig-a003-20210816
i386                 randconfig-a002-20210816
i386                 randconfig-a001-20210816
i386                 randconfig-a006-20210816
i386                 randconfig-a005-20210816
x86_64               randconfig-a013-20210815
x86_64               randconfig-a011-20210815
x86_64               randconfig-a016-20210815
x86_64               randconfig-a012-20210815
x86_64               randconfig-a014-20210815
x86_64               randconfig-a015-20210815
i386                 randconfig-a011-20210815
i386                 randconfig-a015-20210815
i386                 randconfig-a014-20210815
i386                 randconfig-a013-20210815
i386                 randconfig-a016-20210815
i386                 randconfig-a012-20210815
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
x86_64               randconfig-c001-20210815
x86_64               randconfig-a004-20210815
x86_64               randconfig-a006-20210815
x86_64               randconfig-a003-20210815
x86_64               randconfig-a001-20210815
x86_64               randconfig-a002-20210815
x86_64               randconfig-a005-20210815
x86_64               randconfig-a011-20210816
x86_64               randconfig-a013-20210816
x86_64               randconfig-a016-20210816
x86_64               randconfig-a012-20210816
x86_64               randconfig-a015-20210816
x86_64               randconfig-a014-20210816

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
