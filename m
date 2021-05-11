Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B44379BBD
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 May 2021 02:55:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 481A084427;
	Tue, 11 May 2021 00:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nld4FUEwM1c9; Tue, 11 May 2021 00:55:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 605BE83FC8;
	Tue, 11 May 2021 00:55:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EA651BF9D1
 for <devel@linuxdriverproject.org>; Tue, 11 May 2021 00:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0FDB40356
 for <devel@linuxdriverproject.org>; Tue, 11 May 2021 00:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_2czO5bQMJ5 for <devel@linuxdriverproject.org>;
 Tue, 11 May 2021 00:55:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D12E403B1
 for <devel@driverdev.osuosl.org>; Tue, 11 May 2021 00:55:29 +0000 (UTC)
IronPort-SDR: LM9jcYEjT3M8ycKFgMjNQ4d3pNYhV+8JTjeHnHAqQ4sxo9VuMKR7SfpIcO2L9NQ6OmDUbGJcoE
 RTGxSS3JjP8w==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="197339898"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="197339898"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 17:55:27 -0700
IronPort-SDR: zFQmvTOx7GLDVbm/1TJKzr8p/GEAXUpLATNZf9v3y988cOfjTykwUVYVKq5/GrxupWmb4Z/wkH
 J/cvp5tWETbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="461614752"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 10 May 2021 17:55:26 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgGgH-0000RW-CO; Tue, 11 May 2021 00:55:25 +0000
Date: Tue, 11 May 2021 08:54:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 f6d5d118462de2797f5925e04b826f00c66f6325
Message-ID: <6099d5db.qePPt2D6YBGWEiM2%lkp@intel.com>
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
branch HEAD: f6d5d118462de2797f5925e04b826f00c66f6325  staging: rtl8192e: Fix whitespace around conditional statement

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
|-- alpha-allmodconfig
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
|-- alpha-randconfig-r023-20210510
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arc-allyesconfig
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arc-randconfig-r015-20210510
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-allmodconfig
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
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- arm64-allyesconfig
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
|-- i386-randconfig-a001-20210510
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-randconfig-a006-20210510
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
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
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- ia64-randconfig-r011-20210510
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
|-- powerpc-allmodconfig
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
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
|   |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
|   `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used
|-- powerpc64-allmodconfig
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
|-- s390-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
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
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpa-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u1Tmpb-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalBtc8723b1Ant.c:warning:variable-u4Tmp-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf.c:warning:variable-delta_IQK-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-ProgressingTime-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegEAC-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-HalPhyRf_8723B.c:warning:variable-RegECC-set-but-not-used
    |-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info1-set-but-not-used
    `-- drivers-staging-rtl8723bs-hal-rtl8723b_hal_init.c:warning:variable-ra_info2-set-but-not-used

elapsed time: 727m

configs tested: 119
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
nds32                               defconfig
arm                           spitz_defconfig
h8300                            alldefconfig
sh                          lboxre2_defconfig
arm                       aspeed_g4_defconfig
mips                        workpad_defconfig
arm                       aspeed_g5_defconfig
arm                           u8500_defconfig
arm                          iop32x_defconfig
mips                          ath25_defconfig
powerpc                      chrp32_defconfig
sh                           se7343_defconfig
openrisc                    or1ksim_defconfig
xtensa                  nommu_kc705_defconfig
arm                             mxs_defconfig
parisc                generic-64bit_defconfig
ia64                             allyesconfig
arm                          simpad_defconfig
arm                         at91_dt_defconfig
arm                       cns3420vb_defconfig
m68k                          sun3x_defconfig
arm                         lpc32xx_defconfig
arc                          axs101_defconfig
sh                      rts7751r2d1_defconfig
sh                   secureedge5410_defconfig
powerpc                 mpc837x_mds_defconfig
mips                  cavium_octeon_defconfig
ia64                             alldefconfig
powerpc                 mpc8272_ads_defconfig
powerpc                          g5_defconfig
arm                      footbridge_defconfig
arm                       multi_v4t_defconfig
sh                        sh7757lcr_defconfig
mips                        nlm_xlp_defconfig
mips                     loongson2k_defconfig
sh                   sh7724_generic_defconfig
arm                            hisi_defconfig
mips                         tb0226_defconfig
powerpc                    socrates_defconfig
powerpc                     pseries_defconfig
m68k                       m5275evb_defconfig
powerpc                     tqm8540_defconfig
powerpc                 mpc836x_mds_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                 randconfig-a005-20210510
i386                 randconfig-a004-20210510
i386                 randconfig-a002-20210510
i386                 randconfig-a006-20210510
i386                 randconfig-a016-20210510
i386                 randconfig-a014-20210510
i386                 randconfig-a011-20210510
i386                 randconfig-a015-20210510
i386                 randconfig-a012-20210510
i386                 randconfig-a013-20210510
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210510
x86_64               randconfig-a012-20210510
x86_64               randconfig-a011-20210510
x86_64               randconfig-a013-20210510
x86_64               randconfig-a016-20210510
x86_64               randconfig-a014-20210510

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
