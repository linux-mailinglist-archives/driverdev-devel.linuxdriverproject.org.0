Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D697B88B967
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Mar 2024 05:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A508260A4E;
	Tue, 26 Mar 2024 04:23:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PC6DI7jl27W; Tue, 26 Mar 2024 04:23:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 567D860A4F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 567D860A4F;
	Tue, 26 Mar 2024 04:23:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D33B1BF419
 for <devel@linuxdriverproject.org>; Tue, 26 Mar 2024 04:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29A5440446
 for <devel@linuxdriverproject.org>; Tue, 26 Mar 2024 04:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLvCHSwFlRKA for <devel@linuxdriverproject.org>;
 Tue, 26 Mar 2024 04:23:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9756240150
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9756240150
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9756240150
 for <devel@driverdev.osuosl.org>; Tue, 26 Mar 2024 04:23:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="23907865"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="23907865"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 21:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="16263188"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 25 Mar 2024 21:23:48 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1royLh-000N7M-2X;
 Tue, 26 Mar 2024 04:23:45 +0000
Date: Tue, 26 Mar 2024 12:22:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 766db77dfd694e14cfdc4728e9c2f6d747dfdf84
Message-ID: <202403261243.NuA3FE8v-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711427030; x=1742963030;
 h=date:from:to:cc:subject:message-id;
 bh=n2YsbEzUp40qsfjqFNuOCHgyNOaK7HFOfM9W3pHjne0=;
 b=GQvusVuH196LJwx4VyXJe7GfAWZQaDwnqEmDpFjapdA1vZTC1/6sHzw9
 28WA1nxjZ95XAhdCXCAiMtCGRIzU+fiRo8Wk2j2O/tArlScpj8VZIiEeA
 qjI2zfvbFiWOvvkhyHTMxJEj++Rm6dg6LiLzAX/K7Q+c0n1ihP95x3ldY
 De6knNNBrLNp+BI/QaXHbMexC2uO9UecBUZSkxg2tluGZtzMdK5rFD7/i
 B3xaCaMA8HIJhzCDd5Teo0GcHP3azYLl9c3Px86PqSlVUS5bWAiV73LIF
 jlM/h2TOOxJb4E6AzKWUVeQsManokQoHMSm/07sDSVpzZte3pAnCza4jU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GQvusVuH
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 766db77dfd694e14cfdc4728e9c2f6d747dfdf84  driver core: remove devm_device_add_groups()

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- alpha-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- arc-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- arc-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- arm-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- arm-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- arm64-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- csky-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- csky-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-buildonly-randconfig-004-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-buildonly-randconfig-005-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-buildonly-randconfig-006-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-randconfig-001-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-randconfig-002-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-randconfig-003-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-randconfig-005-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- i386-randconfig-012-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- loongarch-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- loongarch-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- m68k-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- m68k-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- microblaze-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- microblaze-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- microblaze-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- mips-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- nios2-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- nios2-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- nios2-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- openrisc-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- parisc-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- parisc-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- parisc-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- parisc64-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- powerpc-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- s390-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sh-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sh-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sh-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sparc-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sparc-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sparc64-allmodconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sparc64-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- sparc64-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- um-allyesconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-buildonly-randconfig-002-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-buildonly-randconfig-005-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-buildonly-randconfig-006-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-defconfig
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-001-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-002-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-003-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-005-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-011-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-013-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-014-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-072-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-073-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-074-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-075-20240326
|   `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
`-- x86_64-randconfig-076-20240326
    `-- drivers-nvmem-core.c:error:implicit-declaration-of-function-devm_device_add_groups
clang_recent_errors
|-- arm64-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- hexagon-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- hexagon-allyesconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-buildonly-randconfig-002-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-buildonly-randconfig-003-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-defconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-004-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-006-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-013-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-014-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-015-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-016-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- riscv-defconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- s390-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-allyesconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-001-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-003-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-004-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-006-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-012-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-016-20240326
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
`-- x86_64-rhel-8.3-rust
    `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 875m

configs tested: 121
configs skipped: 7

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240326   gcc  
i386         buildonly-randconfig-002-20240326   clang
i386         buildonly-randconfig-003-20240326   clang
i386         buildonly-randconfig-004-20240326   gcc  
i386         buildonly-randconfig-005-20240326   gcc  
i386         buildonly-randconfig-006-20240326   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240326   gcc  
i386                  randconfig-002-20240326   gcc  
i386                  randconfig-003-20240326   gcc  
i386                  randconfig-004-20240326   clang
i386                  randconfig-005-20240326   gcc  
i386                  randconfig-006-20240326   clang
i386                  randconfig-011-20240326   clang
i386                  randconfig-012-20240326   gcc  
i386                  randconfig-013-20240326   clang
i386                  randconfig-014-20240326   clang
i386                  randconfig-015-20240326   clang
i386                  randconfig-016-20240326   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240326   clang
x86_64       buildonly-randconfig-002-20240326   gcc  
x86_64       buildonly-randconfig-003-20240326   clang
x86_64       buildonly-randconfig-004-20240326   gcc  
x86_64       buildonly-randconfig-005-20240326   gcc  
x86_64       buildonly-randconfig-006-20240326   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240326   gcc  
x86_64                randconfig-002-20240326   gcc  
x86_64                randconfig-003-20240326   gcc  
x86_64                randconfig-004-20240326   clang
x86_64                randconfig-005-20240326   gcc  
x86_64                randconfig-006-20240326   clang
x86_64                randconfig-011-20240326   gcc  
x86_64                randconfig-012-20240326   clang
x86_64                randconfig-013-20240326   gcc  
x86_64                randconfig-014-20240326   gcc  
x86_64                randconfig-015-20240326   clang
x86_64                randconfig-016-20240326   clang
x86_64                randconfig-071-20240326   clang
x86_64                randconfig-072-20240326   gcc  
x86_64                randconfig-073-20240326   gcc  
x86_64                randconfig-074-20240326   gcc  
x86_64                randconfig-075-20240326   gcc  
x86_64                randconfig-076-20240326   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
