Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E74AD96BB6B
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2024 14:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 884EC404D9;
	Wed,  4 Sep 2024 12:01:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4ISiPvtxQaI; Wed,  4 Sep 2024 12:01:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD39440511
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD39440511;
	Wed,  4 Sep 2024 12:01:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4CC31BF47E
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2024 12:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B33EA60877
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2024 12:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpy4h5EneQld for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2024 12:01:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 791306087B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 791306087B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 791306087B
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2024 12:01:13 +0000 (UTC)
X-CSE-ConnectionGUID: WM8oB31vT864donxEy5nsA==
X-CSE-MsgGUID: Nr6fAQM1SGCI9+wv5B1O6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35467443"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35467443"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:01:12 -0700
X-CSE-ConnectionGUID: uf+roH06Rue3C4Y+K9u5iA==
X-CSE-MsgGUID: 9ZmA0rDUQTmxojPAZs1gkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="70061025"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 04 Sep 2024 05:01:11 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slohB-0007wV-0E;
 Wed, 04 Sep 2024 12:01:09 +0000
Date: Wed, 04 Sep 2024 20:00:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD REGRESSION
 95b7bd9f5490de7ff7cfb0c4137a3c22cf3de1bf
Message-ID: <202409042024.eG9Jobx0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725451273; x=1756987273;
 h=date:from:to:cc:subject:message-id;
 bh=a+WGcFIdG8rFcwvqq0xNCeAW5aH4lxsQEEXjtdUGbAU=;
 b=mfbX96kDL63V6aHue2arnJCoyvK6zbJ1/11Z2Y2XV9T0PAuFQvle1bow
 2CNZtWmpffpc+78WFbpQKXTqL6sB9+LvKQyoeKj4LocuHudYZAztysKwo
 rcI8zxXLPRgUMTEypvtIBWvDb1lO6xnl5A4AIYzrYPGUQbYc9A68SKJtq
 jB7uqgrIX/84/t6MHqVJLzonqY9TiZhRsrTlM/jao75hRsH1jeHqH6qH0
 0nkapgYNKJ0IAUAqj45gOSrB0Tm4dpyJV8H0ipVMnBeV6e/XRDjTiaf2P
 Yp4XYAeW5GivOemLEFMEYrXcfx/hz9ZGg+eIKqCwLFD9FnsGvSz41nnlS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mfbX96kD
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: 95b7bd9f5490de7ff7cfb0c4137a3c22cf3de1bf  misc: c2port: core: make c2port_class a static const structure

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202409041701.8NfSraMa-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/fsl-mc/fsl-mc-bus.c:412:5: error: initializing 'struct device_type *' with an expression of type 'typeof (fsl_mc_bus_dpsw_type) *' (aka 'const struct device_type *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
drivers/bus/fsl-mc/fsl-mc-bus.c:413:5: error: initializing 'struct device_type *' with an expression of type 'typeof (fsl_mc_bus_dpbp_type) *' (aka 'const struct device_type *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
drivers/bus/fsl-mc/fsl-mc-bus.c:414:5: error: initializing 'struct device_type *' with an expression of type 'typeof (fsl_mc_bus_dpcon_type) *' (aka 'const struct device_type *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
drivers/bus/fsl-mc/fsl-mc-bus.c:415:5: error: initializing 'struct device_type *' with an expression of type 'typeof (fsl_mc_bus_dpmcp_type) *' (aka 'const struct device_type *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
drivers/bus/fsl-mc/fsl-mc-bus.c:419:5: error: initializing 'struct device_type *' with an expression of type 'typeof (fsl_mc_bus_dpdmux_type) *' (aka 'const struct device_type *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
drivers/bus/fsl-mc/fsl-mc-bus.c:423:5: error: initializing 'struct device_type *' with an expression of type 'typeof (fsl_mc_bus_dpdmai_type) *' (aka 'const struct device_type *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]

Error/Warning ids grouped by kconfigs:

recent_errors
|-- arm64-allmodconfig
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpbp_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible-
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpcon_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpdmai_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatibl
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpdmux_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatibl
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpmcp_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible
|   `-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpsw_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible-
|-- powerpc-allyesconfig
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpbp_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible-
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpcon_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpdmai_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatibl
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpdmux_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatibl
|   |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpmcp_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible
|   `-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpsw_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible-
`-- x86_64-allyesconfig
    |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpbp_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible-
    |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpcon_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible
    |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpdmai_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatibl
    |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpdmux_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatibl
    |-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpmcp_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible
    `-- drivers-bus-fsl-mc-fsl-mc-bus.c:error:initializing-struct-device_type-with-an-expression-of-type-typeof-(fsl_mc_bus_dpsw_type)-(aka-const-struct-device_type-)-discards-qualifiers-Werror-Wincompatible-

elapsed time: 1369m

configs tested: 114
configs skipped: 4

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                        neponset_defconfig   gcc-14.1.0
arm                         socfpga_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                             alldefconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240904   gcc-12
i386         buildonly-randconfig-002-20240904   gcc-12
i386         buildonly-randconfig-003-20240904   gcc-12
i386         buildonly-randconfig-004-20240904   gcc-12
i386         buildonly-randconfig-005-20240904   gcc-12
i386         buildonly-randconfig-006-20240904   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240904   gcc-12
i386                  randconfig-002-20240904   gcc-12
i386                  randconfig-004-20240904   gcc-12
i386                  randconfig-005-20240904   gcc-12
i386                  randconfig-006-20240904   gcc-12
i386                  randconfig-011-20240904   gcc-12
i386                  randconfig-012-20240904   gcc-12
i386                  randconfig-013-20240904   gcc-12
i386                  randconfig-014-20240904   gcc-12
i386                  randconfig-015-20240904   gcc-12
i386                  randconfig-016-20240904   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                          multi_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           gcw0_defconfig   gcc-14.1.0
mips                           ip28_defconfig   gcc-14.1.0
mips                           jazz_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                     akebono_defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      ep88xc_defconfig   gcc-14.1.0
powerpc                          g5_defconfig   gcc-14.1.0
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc                 xes_mpc85xx_defconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                          sdk7786_defconfig   gcc-14.1.0
sh                           se7724_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc32_defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                                  kexec   gcc-12
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
