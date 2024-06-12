Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE8905284
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2024 14:32:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61528403BB;
	Wed, 12 Jun 2024 12:32:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cS9GH0X9yrPY; Wed, 12 Jun 2024 12:32:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2A2A404D9
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2A2A404D9;
	Wed, 12 Jun 2024 12:32:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0222C1BF372
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2024 12:32:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEB6B404D1
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2024 12:32:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5nFIkS21m4i1 for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2024 12:32:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 97167403BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97167403BB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97167403BB
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2024 12:32:50 +0000 (UTC)
X-CSE-ConnectionGUID: 6quOUJ7HRY+LnEqPCZGB7w==
X-CSE-MsgGUID: kOVp9QcySI2gNJBVYcX+2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11100"; a="17877430"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="17877430"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 05:32:50 -0700
X-CSE-ConnectionGUID: nQpuP3uwRoSXWUFd7k2yRw==
X-CSE-MsgGUID: wHkpUaZHRH++lQgkuDCSGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="44167273"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 12 Jun 2024 05:32:48 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHN9i-0001Ws-1l;
 Wed, 12 Jun 2024 12:32:46 +0000
Date: Wed, 12 Jun 2024 20:32:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD REGRESSION
 be520b87ec28aa3b5c908a859501fb601bd8b322
Message-ID: <202406122034.vhY0iBLQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718195571; x=1749731571;
 h=date:from:to:cc:subject:message-id;
 bh=tOsC93hGh8Pf2VNk2kzn7tenz9GQf9wEjFqcm37aFCA=;
 b=S21L1I3cSTySyquQrLtRNuO19jxitPELX1e9A65OYYOz8D4rIoknyR1K
 eZHaLWn+g+UgOd706aUeyUQTySSLXm+VfFyzDLJQwLQci71X5fMgK2nn3
 wAhuvYFoYmewVKUzVlIB7vsGc25W/6ojRYlTalEzYFNMy0wLSXfkzLVix
 M2RZgTNsiSM3R3gD4Rh3fvrg28vJep4REdfDQValdm8DQwsC7E8WJPNd0
 CxtM4k0QuUyTyyimHAZn+ptjSZvR4V9oiuEyhrUHK6LwyxSGMP+QIRgpa
 be2kwgJ6M3QROi3xgbmdKqzXaWmJp1NHcVEEOe8ZJQKnL3/tnpub/vG0q
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S21L1I3c
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
branch HEAD: be520b87ec28aa3b5c908a859501fb601bd8b322  USB: move dynamic ids out of usb driver structures

Error/Warning: (recently discovered and may have been fixed)

arch/arm/common/locomo.c:849:27: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
arch/powerpc/platforms/ps3/system-bus.c:471:11: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
arch/powerpc/platforms/ps3/system-bus.c:471:18: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
arch/powerpc/platforms/pseries/ibmebus.c:439:15: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
arch/powerpc/platforms/pseries/ibmebus.c:439:22: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
arch/powerpc/platforms/pseries/vio.c:1637:11: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
arch/powerpc/platforms/pseries/vio.c:1637:18: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
drivers/amba/bus.c:441:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Werror,-Wincompatible-function-pointer-types]
drivers/bus/sunxi-rsb.c:182:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Werror,-Wincompatible-function-pointer-types]
drivers/bus/sunxi-rsb.c:182:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
drivers/cdx/cdx.c:648:27: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
drivers/firmware/arm_ffa/bus.c:110:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
drivers/macintosh/macio_asic.c:141:17: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
drivers/macintosh/macio_asic.c:141:19: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
drivers/mfd/mcp-core.c:46:27: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
drivers/s390/crypto/ap_bus.c:1616:11: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (*)(struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
net/iucv/iucv.c:72:11: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
sound/ac97/bus.c:536:27: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-collie_defconfig
|   |-- arch-arm-common-locomo.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-mfd-mcp-core.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm-pxa_defconfig
|   `-- sound-ac97-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm-randconfig-001-20240612
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm-randconfig-002-20240612
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-allnoconfig
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-defconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-bus-sunxi-rsb.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-randconfig-001-20240612
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-cdx-cdx.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-randconfig-002-20240612
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   |-- drivers-bus-sunxi-rsb.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-cdx-cdx.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-randconfig-003-20240612
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-cdx-cdx.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- m68k-defconfig
|   |-- drivers-dio-dio-driver.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-zorro-zorro-driver.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- powerpc-allmodconfig
|   `-- arch-powerpc-platforms-pseries-ibmebus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- powerpc-randconfig-001-20240612
|   `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- powerpc64-randconfig-001-20240611
|   |-- arch-powerpc-platforms-pseries-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- powerpc64-randconfig-001-20240612
|   |-- arch-powerpc-platforms-ps3-system-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   |-- arch-powerpc-platforms-pseries-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- powerpc64-randconfig-002-20240612
|   |-- arch-powerpc-platforms-ps3-system-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   |-- arch-powerpc-platforms-pseries-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- riscv-randconfig-001-20240612
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- s390-allyesconfig
|   |-- drivers-s390-cio-css.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   |-- drivers-s390-crypto-ap_bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|   `-- net-iucv-iucv.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
`-- sparc64-defconfig
    `-- arch-sparc-kernel-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
clang_recent_errors
|-- arm-defconfig
|   |-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)-Werror
|   `-- drivers-bus-sunxi-rsb.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)-W
|-- arm-randconfig-003-20240612
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|-- arm-randconfig-004-20240612
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)-Werror
|-- arm64-randconfig-001-20240611
|   |-- drivers-bus-sunxi-rsb.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|   `-- drivers-firmware-arm_ffa-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_dri
|-- arm64-randconfig-004-20240612
|   |-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|   `-- drivers-firmware-arm_ffa-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_dri
|-- powerpc-allyesconfig
|   |-- arch-powerpc-platforms-ps3-system-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-d
|   `-- arch-powerpc-platforms-pseries-ibmebus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-
|-- powerpc-randconfig-002-20240611
|   `-- drivers-macintosh-macio_asic.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_dri
|-- powerpc-randconfig-003-20240612
|   `-- drivers-macintosh-macio_asic.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_dri
|-- powerpc64-randconfig-002-20240611
|   `-- arch-powerpc-platforms-pseries-vio.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-devi
|-- powerpc64-randconfig-003-20240612
|   `-- arch-powerpc-platforms-pseries-vio.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-devi
|-- riscv-defconfig
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|-- s390-allnoconfig
|   `-- drivers-s390-cio-css.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|-- s390-defconfig
|   |-- drivers-s390-cio-css.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|   |-- drivers-s390-crypto-ap_bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(-)(struct-device-struct-device_dr
|   `-- net-iucv-iucv.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|-- s390-randconfig-001-20240612
|   |-- drivers-s390-cio-css.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|   |-- drivers-s390-crypto-ap_bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(-)(struct-device-struct-device_dr
|   `-- net-iucv-iucv.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
`-- s390-randconfig-002-20240612
    |-- drivers-s390-cio-css.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
    |-- drivers-s390-crypto-ap_bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(-)(struct-device-struct-device_dr
    `-- net-iucv-iucv.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)

elapsed time: 1457m

configs tested: 104
configs skipped: 3

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240612   gcc-13.2.0
arc                   randconfig-002-20240612   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm                   randconfig-001-20240612   gcc-13.2.0
arm                   randconfig-002-20240612   gcc-13.2.0
arm                   randconfig-003-20240612   clang-19
arm                   randconfig-004-20240612   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240612   gcc-13.2.0
arm64                 randconfig-002-20240612   gcc-13.2.0
arm64                 randconfig-003-20240612   gcc-13.2.0
arm64                 randconfig-004-20240612   clang-19
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240612   gcc-13.2.0
csky                  randconfig-002-20240612   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
hexagon               randconfig-001-20240612   clang-19
hexagon               randconfig-002-20240612   clang-19
i386         buildonly-randconfig-001-20240612   gcc-13
i386         buildonly-randconfig-002-20240612   gcc-8
i386         buildonly-randconfig-003-20240612   gcc-13
i386         buildonly-randconfig-004-20240612   clang-18
i386         buildonly-randconfig-005-20240612   gcc-13
i386         buildonly-randconfig-006-20240612   clang-18
i386                  randconfig-001-20240612   gcc-8
i386                  randconfig-002-20240612   clang-18
i386                  randconfig-003-20240612   clang-18
i386                  randconfig-004-20240612   clang-18
i386                  randconfig-005-20240612   gcc-13
i386                  randconfig-006-20240612   clang-18
i386                  randconfig-011-20240612   clang-18
i386                  randconfig-012-20240612   clang-18
i386                  randconfig-013-20240612   clang-18
i386                  randconfig-014-20240612   gcc-7
i386                  randconfig-015-20240612   gcc-13
i386                  randconfig-016-20240612   gcc-7
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240612   gcc-13.2.0
loongarch             randconfig-002-20240612   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240612   gcc-13.2.0
nios2                 randconfig-002-20240612   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240612   gcc-13.2.0
parisc                randconfig-002-20240612   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-001-20240612   gcc-13.2.0
powerpc               randconfig-002-20240612   gcc-13.2.0
powerpc               randconfig-003-20240612   clang-19
powerpc64             randconfig-001-20240612   gcc-13.2.0
powerpc64             randconfig-002-20240612   gcc-13.2.0
powerpc64             randconfig-003-20240612   clang-14
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240612   gcc-13.2.0
riscv                 randconfig-002-20240612   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240612   clang-19
s390                  randconfig-002-20240612   clang-19
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                    randconfig-001-20240612   gcc-13.2.0
sh                    randconfig-002-20240612   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240612   gcc-13.2.0
sparc64               randconfig-002-20240612   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240612   gcc-13
um                    randconfig-002-20240612   clang-16
um                           x86_64_defconfig   clang-15
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240612   gcc-13.2.0
xtensa                randconfig-002-20240612   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
