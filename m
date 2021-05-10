Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A937995C
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 May 2021 23:40:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF0584372;
	Mon, 10 May 2021 21:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtjpS4n3N0J7; Mon, 10 May 2021 21:40:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BDFC83ED2;
	Mon, 10 May 2021 21:40:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43FCA1BF574
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 21:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 337A76080F
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 21:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXTkAg7xbMnK for <devel@linuxdriverproject.org>;
 Mon, 10 May 2021 21:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50FC36079B
 for <devel@driverdev.osuosl.org>; Mon, 10 May 2021 21:39:43 +0000 (UTC)
IronPort-SDR: 4UUyo6lkyYpyOPVeRsNH7GLUaHQvpgAfMErA8ots7GeUmvqI7eXEtmcCjMEMBxlKqFZVnvScag
 550HYd4VgGrQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="260558355"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="260558355"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 14:39:42 -0700
IronPort-SDR: xbsRGubP/AKbQibe85hQxq5z2ukVZdQWoGiA9o1euAnYgSi+N+g6pjlxPJ4ArV1Q+Lil0LEXW3
 NU8jACv8eSAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="468483630"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 10 May 2021 14:39:39 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgDcp-0000Nm-5p; Mon, 10 May 2021 21:39:39 +0000
Date: Tue, 11 May 2021 05:39:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS WITH WARNING
 706321a53857f99f00fce0bc0ed1fa2102896c46
Message-ID: <6099a80a.yxu+S0HublFJabOw%lkp@intel.com>
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
branch HEAD: 706321a53857f99f00fce0bc0ed1fa2102896c46  staging: rtl8188eu: remove padapter from struct mlme_ext_priv

Warning in current branch:

drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

possible Warning in current branch:

drivers/comedi/drivers/ni_atmio.c:210:35: warning: unused variable 'device_ids' [-Wunused-const-variable]
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
|-- alpha-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arc-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arc-randconfig-r032-20210510
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arm-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- h8300-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- i386-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- i386-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- ia64-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- ia64-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- ia64-randconfig-c004-20210510
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- m68k-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- m68k-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- mips-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- mips-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- nios2-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- parisc-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- powerpc-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- powerpc-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- riscv-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- riscv-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- sh-allmodconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- sparc-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- x86_64-allmodconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- x86_64-allyesconfig
|   |-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
`-- xtensa-allyesconfig
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

clang_recent_errors
`-- riscv-randconfig-r024-20210510
    `-- drivers-comedi-drivers-ni_atmio.c:warning:unused-variable-device_ids

elapsed time: 720m

configs tested: 141
configs skipped: 2

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
h8300                     edosk2674_defconfig
sh                          landisk_defconfig
powerpc                    mvme5100_defconfig
powerpc                     sbc8548_defconfig
mips                       rbtx49xx_defconfig
m68k                        mvme16x_defconfig
mips                           xway_defconfig
powerpc                  storcenter_defconfig
mips                           ip32_defconfig
mips                  cavium_octeon_defconfig
m68k                        m5307c3_defconfig
arm                           h3600_defconfig
arm                       spear13xx_defconfig
arm                          pxa910_defconfig
riscv                    nommu_k210_defconfig
ia64                        generic_defconfig
sh                   sh7770_generic_defconfig
mips                       lemote2f_defconfig
powerpc                  mpc885_ads_defconfig
arm                         bcm2835_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                        fsp2_defconfig
arm                         s3c2410_defconfig
sh                          rsk7201_defconfig
mips                     cu1830-neo_defconfig
x86_64                           alldefconfig
mips                        bcm47xx_defconfig
mips                         tb0226_defconfig
nios2                               defconfig
powerpc                 xes_mpc85xx_defconfig
mips                     decstation_defconfig
mips                        omega2p_defconfig
arm                         mv78xx0_defconfig
ia64                             alldefconfig
arc                        vdk_hs38_defconfig
mips                          ath79_defconfig
openrisc                    or1ksim_defconfig
powerpc                    klondike_defconfig
mips                          rm200_defconfig
arm                           u8500_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                              ul2_defconfig
powerpc                      pmac32_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                          g5_defconfig
arm                      footbridge_defconfig
arm                       multi_v4t_defconfig
sh                        sh7757lcr_defconfig
mips                        nlm_xlp_defconfig
arc                 nsimosci_hs_smp_defconfig
csky                                defconfig
arm                          pxa3xx_defconfig
sh                               j2_defconfig
powerpc                   currituck_defconfig
mips                            gpr_defconfig
arm                          ixp4xx_defconfig
powerpc                   motionpro_defconfig
nios2                            alldefconfig
x86_64                              defconfig
h8300                    h8300h-sim_defconfig
mips                          ath25_defconfig
sh                 kfr2r09-romimage_defconfig
arm                          gemini_defconfig
arm                             mxs_defconfig
arm                             rpc_defconfig
m68k                           sun3_defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210510
x86_64               randconfig-a004-20210510
x86_64               randconfig-a001-20210510
x86_64               randconfig-a005-20210510
x86_64               randconfig-a002-20210510
x86_64               randconfig-a006-20210510
i386                 randconfig-a003-20210510
i386                 randconfig-a001-20210510
i386                 randconfig-a002-20210510
i386                 randconfig-a005-20210510
i386                 randconfig-a004-20210510
i386                 randconfig-a006-20210510
i386                 randconfig-a016-20210510
i386                 randconfig-a014-20210510
i386                 randconfig-a011-20210510
i386                 randconfig-a015-20210510
i386                 randconfig-a012-20210510
i386                 randconfig-a013-20210510
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20210510
x86_64               randconfig-a011-20210510
x86_64               randconfig-a013-20210510
x86_64               randconfig-a014-20210510
x86_64               randconfig-a015-20210510
x86_64               randconfig-a016-20210510

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
