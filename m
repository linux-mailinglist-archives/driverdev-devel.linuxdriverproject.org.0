Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C6F90C566
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2024 11:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A01981EFC;
	Tue, 18 Jun 2024 09:37:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mhUQnmhZRMDr; Tue, 18 Jun 2024 09:37:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5229F82014
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5229F82014;
	Tue, 18 Jun 2024 09:37:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2FBC1BF281
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2024 09:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D3A560825
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2024 09:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NP5X4OcfvA-C for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2024 09:37:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5832760824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5832760824
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5832760824
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2024 09:37:44 +0000 (UTC)
X-CSE-ConnectionGUID: ei8kOm28SPmJxIjxmcPf2Q==
X-CSE-MsgGUID: wWUQfJNCRTKC9PQWLhiT+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26967646"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="26967646"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 02:37:44 -0700
X-CSE-ConnectionGUID: thUpLytZT12VRkK08dX4cw==
X-CSE-MsgGUID: Vm3xtx64QTq0G4EBM2iGnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41438228"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 18 Jun 2024 02:37:44 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sJVHY-0005NZ-32;
 Tue, 18 Jun 2024 09:37:40 +0000
Date: Tue, 18 Jun 2024 17:36:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD REGRESSION
 d159d271a2b362a16ade691ece66f49c82e16682
Message-ID: <202406181756.pEmEIE84-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718703466; x=1750239466;
 h=date:from:to:cc:subject:message-id;
 bh=8G+L+G3mDld3YpDP9tg0lmEMQ7l7VWqcyHrfLaBhq9E=;
 b=APjdE40AaGZCmspeu3aCOPA9cQOkniYlMdjAehBgEyHTHKhloMDaeLr+
 xf87IfRY7YjbSdzyKTAchGFZTbT8HbX4wCVjFWaU2rKZSkkY9cz8zFh1n
 /wiThhXhUNTY14jH2qHF3U8vSiCsgnAntnkP/TJLcoaukIIRwhU7ntC7P
 RhsBB7fdegkX+c6s+laWHS/9UFZUR3TSDn3a93JHdVmwIy3GK0ki4uOfe
 qpx3DDGnjamoXm8L9I53J61QW8z+YIuQBQsXQH2F0RH/8Edmjke30d7SG
 Lx9V8Bw0Z6aETr9oHqWmsZFjk9/vxgY/IPa/Bd0XymKXfB1ZJX3Rbjwp2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=APjdE40A
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
branch HEAD: d159d271a2b362a16ade691ece66f49c82e16682  USB: move dynamic ids out of usb driver structures

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-randconfig-003-20240617
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm-randconfig-004-20240617
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm-socfpga_defconfig
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-randconfig-002-20240617
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- arm64-randconfig-003-20240617
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- powerpc-allmodconfig
|   `-- arch-powerpc-platforms-pseries-vio.c:warning:passing-argument-of-to_vio_driver-discards-const-qualifier-from-pointer-target-type
|-- riscv-randconfig-002-20240617
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- s390-randconfig-002-20240617
|   `-- drivers-s390-cio-css.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- sparc-sparc64_defconfig
|   `-- arch-sparc-kernel-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
|-- sparc64-randconfig-001-20240617
|   `-- arch-sparc-kernel-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
`-- sparc64-randconfig-002-20240617
    `-- arch-sparc-kernel-vio.c:error:initialization-of-int-(-)(struct-device-const-struct-device_driver-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-device_driver-)
clang_recent_errors
|-- arm-randconfig-001-20240617
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|-- arm-randconfig-002-20240617
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)
|-- arm64-randconfig-001-20240617
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)-Werror
|-- arm64-randconfig-004-20240617
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)-Werror
|-- powerpc-allyesconfig
|   `-- arch-powerpc-platforms-pseries-vio.c:error:passing-const-struct-device_driver-to-parameter-of-type-struct-device_driver-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- powerpc64-randconfig-003-20240617
|   `-- arch-powerpc-platforms-pseries-vio.c:error:passing-const-struct-device_driver-to-parameter-of-type-struct-device_driver-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
`-- s390-randconfig-001-20240617
    `-- drivers-s390-cio-css.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)

elapsed time: 1633m

configs tested: 95
configs skipped: 1

tested configs:
alpha                               defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                   randconfig-001-20240617   gcc-13.2.0
arc                   randconfig-002-20240617   gcc-13.2.0
arc                           tb10x_defconfig   gcc-13.2.0
arm                         at91_dt_defconfig   clang-19
arm                   milbeaut_m10v_defconfig   clang-16
arm                   randconfig-001-20240617   clang-19
arm                   randconfig-002-20240617   clang-19
arm                   randconfig-003-20240617   gcc-13.2.0
arm                   randconfig-004-20240617   gcc-13.2.0
arm                         socfpga_defconfig   gcc-13.2.0
arm64                 randconfig-001-20240617   clang-15
arm64                 randconfig-002-20240617   gcc-13.2.0
arm64                 randconfig-003-20240617   gcc-13.2.0
arm64                 randconfig-004-20240617   clang-15
csky                  randconfig-001-20240617   gcc-13.2.0
csky                  randconfig-002-20240617   gcc-13.2.0
hexagon               randconfig-001-20240617   clang-19
hexagon               randconfig-002-20240617   clang-14
i386         buildonly-randconfig-001-20240617   gcc-13
i386         buildonly-randconfig-002-20240617   gcc-9
i386         buildonly-randconfig-003-20240617   gcc-9
i386         buildonly-randconfig-004-20240617   clang-18
i386         buildonly-randconfig-005-20240617   clang-18
i386         buildonly-randconfig-006-20240617   clang-18
i386                  randconfig-001-20240617   clang-18
i386                  randconfig-002-20240617   clang-18
i386                  randconfig-003-20240617   gcc-11
i386                  randconfig-004-20240617   clang-18
i386                  randconfig-005-20240617   clang-18
i386                  randconfig-006-20240617   gcc-11
i386                  randconfig-011-20240617   clang-18
i386                  randconfig-012-20240617   gcc-13
i386                  randconfig-013-20240617   clang-18
i386                  randconfig-014-20240617   gcc-10
i386                  randconfig-015-20240617   gcc-13
i386                  randconfig-016-20240617   gcc-13
loongarch             randconfig-001-20240617   gcc-13.2.0
loongarch             randconfig-002-20240617   gcc-13.2.0
mips                        maltaup_defconfig   clang-19
nios2                 randconfig-001-20240617   gcc-13.2.0
nios2                 randconfig-002-20240617   gcc-13.2.0
parisc                randconfig-001-20240617   gcc-13.2.0
parisc                randconfig-002-20240617   gcc-13.2.0
powerpc                    mvme5100_defconfig   gcc-13.2.0
powerpc                      pmac32_defconfig   clang-19
powerpc               randconfig-001-20240617   clang-19
powerpc               randconfig-002-20240617   clang-19
powerpc               randconfig-003-20240617   clang-19
powerpc64             randconfig-001-20240617   clang-19
powerpc64             randconfig-002-20240617   gcc-13.2.0
powerpc64             randconfig-003-20240617   clang-19
riscv                 randconfig-001-20240617   gcc-13.2.0
riscv                 randconfig-002-20240617   gcc-13.2.0
s390                  randconfig-001-20240617   clang-17
s390                  randconfig-002-20240617   gcc-13.2.0
sh                    randconfig-001-20240617   gcc-13.2.0
sh                    randconfig-002-20240617   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7343_defconfig   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64               randconfig-001-20240617   gcc-13.2.0
sparc64               randconfig-002-20240617   gcc-13.2.0
um                    randconfig-001-20240617   clang-19
um                    randconfig-002-20240617   gcc-7
x86_64       buildonly-randconfig-001-20240617   gcc-13
x86_64       buildonly-randconfig-002-20240617   clang-18
x86_64       buildonly-randconfig-003-20240617   gcc-13
x86_64       buildonly-randconfig-004-20240617   gcc-13
x86_64       buildonly-randconfig-005-20240617   gcc-11
x86_64       buildonly-randconfig-006-20240617   clang-18
x86_64                randconfig-001-20240617   clang-18
x86_64                randconfig-002-20240617   gcc-8
x86_64                randconfig-003-20240617   gcc-13
x86_64                randconfig-004-20240617   clang-18
x86_64                randconfig-005-20240617   clang-18
x86_64                randconfig-006-20240617   gcc-13
x86_64                randconfig-011-20240617   clang-18
x86_64                randconfig-012-20240617   clang-18
x86_64                randconfig-013-20240617   clang-18
x86_64                randconfig-014-20240617   clang-18
x86_64                randconfig-015-20240617   clang-18
x86_64                randconfig-016-20240617   clang-18
x86_64                randconfig-071-20240617   gcc-9
x86_64                randconfig-072-20240617   clang-18
x86_64                randconfig-073-20240617   clang-18
x86_64                randconfig-074-20240617   clang-18
x86_64                randconfig-075-20240617   clang-18
x86_64                randconfig-076-20240617   gcc-13
xtensa                  cadence_csp_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240617   gcc-13.2.0
xtensa                randconfig-002-20240617   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
