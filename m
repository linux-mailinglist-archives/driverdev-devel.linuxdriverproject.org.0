Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 600F385B5B6
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Feb 2024 09:45:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 825566087B;
	Tue, 20 Feb 2024 08:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8e9riIM_VIO4; Tue, 20 Feb 2024 08:45:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40CAD6087C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40CAD6087C;
	Tue, 20 Feb 2024 08:45:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C30A1BF3B5
 for <devel@linuxdriverproject.org>; Tue, 20 Feb 2024 08:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 298506070E
 for <devel@linuxdriverproject.org>; Tue, 20 Feb 2024 08:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAAyKU9db89v for <devel@linuxdriverproject.org>;
 Tue, 20 Feb 2024 08:45:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD3EA60710
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD3EA60710
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD3EA60710
 for <devel@driverdev.osuosl.org>; Tue, 20 Feb 2024 08:45:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13912457"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13912457"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 00:45:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4682419"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 20 Feb 2024 00:45:19 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rcLka-0004MA-19;
 Tue, 20 Feb 2024 08:45:16 +0000
Date: Tue, 20 Feb 2024 16:44:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 0f32ad963b042f927b5c69a038a24e37b8a60552
Message-ID: <202402201659.9BlaVepl-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708418721; x=1739954721;
 h=date:from:to:cc:subject:message-id;
 bh=XKWXv/eja1rnW4LlWXw6rqIFaxr/hg+6iCylobrI1Ik=;
 b=L5FMLyvZWExtRMt8tza/PWWhHu62EBLHjFVmgXhHe5cA8StLPuMIBlFV
 kL/MG1xGfHEcT+TRuQ9DmtzUd2quTtR3GcYJNZNeyODEOJnAnpwDd0v7J
 CfegjmGou9RGnQIISIm5T40JuH5keujFbr/F3PBKYfiAySIQAoivIzJ+d
 VX4d6658XGSSGwBHV6wxQX5a+DIz5WxAd4Y3N7pTB9NQ6aR6hhArZ3UAg
 wSdPiBjxuBdAH4x837pXiypVYI2YHyO2Lo1nBKHwGQS1bOliAxkgj6fMm
 6oMR5HSvCxKrMNUSWX+06mOE0+lS1b5v6BA4RY8YPD3Atx6rJHP6AF6AS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L5FMLyvZ
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
branch HEAD: 0f32ad963b042f927b5c69a038a24e37b8a60552  sysfs: do not create empty directories if no attributes are present

Error/Warning ids grouped by kconfigs:

clang_recent_errors
|-- arm-axm55xx_defconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- arm-mxs_defconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- arm64-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- arm64-randconfig-004-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- hexagon-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- hexagon-allyesconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- hexagon-randconfig-r122-20240220
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-buildonly-randconfig-003-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-buildonly-randconfig-005-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-defconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-001-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-002-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-003-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-005-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-012-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-014-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-016-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-062-20240220
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- i386-randconfig-141-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- powerpc-allyesconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- powerpc-randconfig-002-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- powerpc-randconfig-003-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- powerpc64-randconfig-001-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- riscv-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- riscv-allyesconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- riscv-defconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- riscv-randconfig-002-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- s390-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- s390-randconfig-002-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-allmodconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-allyesconfig
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-002-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-004-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-005-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-006-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-001-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-002-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-005-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-011-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-013-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-015-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-072-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-121-20240220
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-122-20240220
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-161-20240219
|   `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
`-- x86_64-rhel-8.3-rust
    `-- drivers-nvmem-core.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 1456m

configs tested: 179
configs skipped: 3

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20240219   gcc  
arc                   randconfig-002-20240219   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   clang
arm                                 defconfig   clang
arm                             mxs_defconfig   clang
arm                   randconfig-001-20240219   gcc  
arm                   randconfig-002-20240219   gcc  
arm                   randconfig-003-20240219   gcc  
arm                   randconfig-004-20240219   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240219   gcc  
arm64                 randconfig-002-20240219   gcc  
arm64                 randconfig-003-20240219   clang
arm64                 randconfig-004-20240219   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240219   gcc  
csky                  randconfig-002-20240219   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240219   clang
hexagon               randconfig-002-20240219   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240219   gcc  
i386         buildonly-randconfig-002-20240219   gcc  
i386         buildonly-randconfig-003-20240219   clang
i386         buildonly-randconfig-004-20240219   gcc  
i386         buildonly-randconfig-005-20240219   clang
i386         buildonly-randconfig-006-20240219   clang
i386                                defconfig   clang
i386                  randconfig-001-20240219   clang
i386                  randconfig-002-20240219   clang
i386                  randconfig-003-20240219   clang
i386                  randconfig-004-20240219   gcc  
i386                  randconfig-005-20240219   clang
i386                  randconfig-006-20240219   gcc  
i386                  randconfig-011-20240219   gcc  
i386                  randconfig-012-20240219   clang
i386                  randconfig-013-20240219   gcc  
i386                  randconfig-014-20240219   clang
i386                  randconfig-015-20240219   gcc  
i386                  randconfig-016-20240219   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20240219   gcc  
loongarch             randconfig-002-20240219   gcc  
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
mips                     decstation_defconfig   gcc  
mips                     loongson1b_defconfig   clang
mips                      maltasmvp_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240219   gcc  
nios2                 randconfig-002-20240219   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240219   gcc  
parisc                randconfig-002-20240219   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                    ge_imp3a_defconfig   gcc  
powerpc               randconfig-001-20240219   gcc  
powerpc               randconfig-002-20240219   clang
powerpc               randconfig-003-20240219   clang
powerpc64             randconfig-001-20240219   clang
powerpc64             randconfig-002-20240219   gcc  
powerpc64             randconfig-003-20240219   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240219   gcc  
riscv                 randconfig-002-20240219   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240219   gcc  
s390                  randconfig-002-20240219   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20240219   gcc  
sh                    randconfig-002-20240219   gcc  
sh                          rsk7264_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240219   gcc  
sparc64               randconfig-002-20240219   gcc  
um                               alldefconfig   clang
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240219   clang
um                    randconfig-002-20240219   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240219   clang
x86_64       buildonly-randconfig-002-20240219   clang
x86_64       buildonly-randconfig-003-20240219   gcc  
x86_64       buildonly-randconfig-004-20240219   clang
x86_64       buildonly-randconfig-005-20240219   clang
x86_64       buildonly-randconfig-006-20240219   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240219   clang
x86_64                randconfig-002-20240219   clang
x86_64                randconfig-003-20240219   gcc  
x86_64                randconfig-004-20240219   gcc  
x86_64                randconfig-005-20240219   clang
x86_64                randconfig-006-20240219   clang
x86_64                randconfig-011-20240219   clang
x86_64                randconfig-012-20240219   gcc  
x86_64                randconfig-013-20240219   clang
x86_64                randconfig-014-20240219   gcc  
x86_64                randconfig-015-20240219   clang
x86_64                randconfig-016-20240219   gcc  
x86_64                randconfig-071-20240219   gcc  
x86_64                randconfig-072-20240219   clang
x86_64                randconfig-073-20240219   gcc  
x86_64                randconfig-074-20240219   gcc  
x86_64                randconfig-075-20240219   clang
x86_64                randconfig-076-20240219   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240219   gcc  
xtensa                randconfig-002-20240219   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
