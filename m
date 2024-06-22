Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF62A9133EF
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2024 14:23:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4F22403C7;
	Sat, 22 Jun 2024 12:23:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dcg0OIID8ExH; Sat, 22 Jun 2024 12:23:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8D30401CC
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8D30401CC;
	Sat, 22 Jun 2024 12:23:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B44561BF5E0
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2024 12:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0B2840185
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2024 12:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id htX7tEf7hyqn for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2024 12:23:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 03D8A40163
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03D8A40163
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03D8A40163
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2024 12:23:46 +0000 (UTC)
X-CSE-ConnectionGUID: cpCWLV97S4CQFqetWkwRFA==
X-CSE-MsgGUID: Z9hFRLx2TxO2TsBJfUsJSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="16206007"
X-IronPort-AV: E=Sophos;i="6.08,257,1712646000"; d="scan'208";a="16206007"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2024 05:23:46 -0700
X-CSE-ConnectionGUID: 5XoISrW3RjaJZsHZVQOO8Q==
X-CSE-MsgGUID: 9DkWE2AYRfiUk5ablGMrmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,257,1712646000"; d="scan'208";a="80355315"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 22 Jun 2024 05:23:45 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sKzmR-0009by-08;
 Sat, 22 Jun 2024 12:23:43 +0000
Date: Sat, 22 Jun 2024 20:23:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD REGRESSION
 f4b9252a85a6ce543ba43ddce935a318ed04a618
Message-ID: <202406222033.t5yjfBsW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719059027; x=1750595027;
 h=date:from:to:cc:subject:message-id;
 bh=IKeRjxiPwqiAUiAnAR28I1p1fSkjwpQlXUmEBADkQnE=;
 b=EcAl+3q/y+sNrDldIxVHf1SXOshcOqqg7Gd15YhJaqNtuZthpqQ88PRT
 /dsSli3QC2VSEd2WXgsTrUzjC1tcuFqQjKl8OOI5BYjm9kh+FhaaBJBj6
 soY9P+8DDEJJw232+sn+iBtSFL25ZDIUGEQbZOOSJo5mfhSFrWFhjTxAE
 g4dwx2mhcQyeDjMhb2W1VQkodm0bQ3A/tTZ/p1d/j8ucFPA+DK+yiza0L
 IrF5M7bP0KuVRL/do3UG8Y1miJtdDPi5e+4PmVVCj49rIRdHypLNIQiZG
 190yv+pbM7lcp9UKiLAI8O0r7PY55TW+5X0Slp8ZlBpJMpStA4HAPG/6n
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EcAl+3q/
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
branch HEAD: f4b9252a85a6ce543ba43ddce935a318ed04a618  USB: move dynamic ids out of usb driver structures

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202406220726.iLKR3tvS-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/arm/common/sa1111.c:1372:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
drivers/bus/mips_cdmm.c:124:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
|-- arm-jornada720_defconfig
|   `-- arch-arm-common-sa1111.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
`-- mips-randconfig-r123-20240622
    `-- drivers-bus-mips_cdmm.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)

elapsed time: 1721m

configs tested: 18
configs skipped: 0

tested configs:
i386         buildonly-randconfig-001-20240621   clang-18
i386         buildonly-randconfig-002-20240621   gcc-7
i386         buildonly-randconfig-003-20240621   clang-18
i386         buildonly-randconfig-004-20240621   clang-18
i386         buildonly-randconfig-005-20240621   clang-18
i386         buildonly-randconfig-006-20240621   clang-18
i386                  randconfig-001-20240621   clang-18
i386                  randconfig-002-20240621   gcc-13
i386                  randconfig-003-20240621   gcc-9
i386                  randconfig-004-20240621   gcc-13
i386                  randconfig-005-20240621   clang-18
i386                  randconfig-006-20240621   clang-18
i386                  randconfig-011-20240621   gcc-13
i386                  randconfig-012-20240621   gcc-13
i386                  randconfig-013-20240621   gcc-13
i386                  randconfig-014-20240621   clang-18
i386                  randconfig-015-20240621   gcc-13
i386                  randconfig-016-20240621   gcc-12

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
