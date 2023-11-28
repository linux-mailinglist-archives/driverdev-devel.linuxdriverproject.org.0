Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E956A7FB678
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Nov 2023 10:59:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 519D181B17;
	Tue, 28 Nov 2023 09:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 519D181B17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pkKjd1E7XEpV; Tue, 28 Nov 2023 09:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5F7781B25;
	Tue, 28 Nov 2023 09:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5F7781B25
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6E061BF20B
 for <devel@linuxdriverproject.org>; Tue, 28 Nov 2023 09:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF64E60ECC
 for <devel@linuxdriverproject.org>; Tue, 28 Nov 2023 09:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF64E60ECC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UEvX1cmThfav for <devel@linuxdriverproject.org>;
 Tue, 28 Nov 2023 09:59:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A11660EC0
 for <devel@driverdev.osuosl.org>; Tue, 28 Nov 2023 09:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A11660EC0
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="373061012"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="373061012"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 01:59:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="16574058"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 28 Nov 2023 01:59:19 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r7us8-0007Oc-35;
 Tue, 28 Nov 2023 09:59:16 +0000
Date: Tue, 28 Nov 2023 17:58:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 c1d7cc24bb6b29101a06cd826ad5bac597e079d4
Message-ID: <202311281751.laMgWojE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701165564; x=1732701564;
 h=date:from:to:cc:subject:message-id;
 bh=8VTIpCI5zt/V4j93AZla2EKeuZEKUSaTHcQdmZ6LZdY=;
 b=aarNaYJkiVpVp3CRJWprFPY2nt64clSUEh2xTJ6PZnt0WWAAVfjmyha4
 55W3+i+yvUQXnee2ngtpAUkPSb6JVwLk49Z5i1PBZH5nnjsbF9lRhYraE
 7kcKTWVp7TIbTR7hRSyguUiaTsS2TfRQv0Zjb9orxvXwPBUTyHykbcN7+
 f4+ixzpPrMcP0ZEQOx3Bwe+2JO67kPVDqZaWKko5gHA+p/MKEbMjFTUdK
 yXnhEi4DyvYxx86PgIEg5mLZC0Grm0BerDJ/PrX2q1XEYUi0FZSl7gwFT
 6y++aoC3AK8+LSsKalVhmzywsLuohpK2y/8UFehRX9vEkGiz8zjHCeQ7/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aarNaYJk
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
branch HEAD: c1d7cc24bb6b29101a06cd826ad5bac597e079d4  sysfs: do not create empty directories if no attributes are present

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202311050113.QCp9Dss3-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202311201751.eHNoBaoW-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/platform/x86/amd/hsmp.c:474:16: error: implicit declaration of function 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werror=implicit-function-declaration]
drivers/platform/x86/amd/hsmp.c:474:9: error: call to undeclared function 'devm_device_add_groups'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
drivers/platform/x86/amd/hsmp.c:474:9: error: implicit declaration of function 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allyesconfig
|   |-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmax-pascal:ref-should-not-be-valid-under-const:ref
|   `-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmin-pascal:ref-should-not-be-valid-under-const:ref
|-- loongarch-allyesconfig
|   |-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmax-pascal:ref-should-not-be-valid-under-const:ref
|   `-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmin-pascal:ref-should-not-be-valid-under-const:ref
|-- x86_64-buildonly-randconfig-004-20231127
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-004-20231128
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
`-- x86_64-randconfig-006-20231128
    `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
clang_recent_errors
|-- x86_64-allyesconfig
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-buildonly-randconfig-006-20231128
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-003-20231127
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-005-20231127
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-011-20231128
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-073-20231128
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
`-- x86_64-randconfig-074-20231128
    `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 1453m

configs tested: 212
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231127   gcc  
arc                   randconfig-001-20231128   gcc  
arc                   randconfig-002-20231127   gcc  
arc                   randconfig-002-20231128   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                         bcm2835_defconfig   clang
arm                                 defconfig   clang
arm                          gemini_defconfig   gcc  
arm                        multi_v7_defconfig   gcc  
arm                   randconfig-001-20231127   gcc  
arm                   randconfig-001-20231128   clang
arm                   randconfig-002-20231127   gcc  
arm                   randconfig-002-20231128   clang
arm                   randconfig-003-20231127   gcc  
arm                   randconfig-003-20231128   clang
arm                   randconfig-004-20231127   gcc  
arm                   randconfig-004-20231128   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231127   gcc  
arm64                 randconfig-001-20231128   clang
arm64                 randconfig-002-20231127   gcc  
arm64                 randconfig-002-20231128   clang
arm64                 randconfig-003-20231127   gcc  
arm64                 randconfig-003-20231128   clang
arm64                 randconfig-004-20231127   gcc  
arm64                 randconfig-004-20231128   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231127   gcc  
csky                  randconfig-001-20231128   gcc  
csky                  randconfig-002-20231127   gcc  
csky                  randconfig-002-20231128   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231127   clang
hexagon               randconfig-001-20231128   clang
hexagon               randconfig-002-20231127   clang
hexagon               randconfig-002-20231128   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231127   gcc  
i386         buildonly-randconfig-002-20231127   gcc  
i386         buildonly-randconfig-003-20231127   gcc  
i386         buildonly-randconfig-004-20231127   gcc  
i386         buildonly-randconfig-005-20231127   gcc  
i386         buildonly-randconfig-006-20231127   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231127   gcc  
i386                  randconfig-002-20231127   gcc  
i386                  randconfig-003-20231127   gcc  
i386                  randconfig-004-20231127   gcc  
i386                  randconfig-005-20231127   gcc  
i386                  randconfig-006-20231127   gcc  
i386                  randconfig-011-20231127   clang
i386                  randconfig-012-20231127   clang
i386                  randconfig-013-20231127   clang
i386                  randconfig-014-20231127   clang
i386                  randconfig-015-20231127   clang
i386                  randconfig-016-20231127   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231127   gcc  
loongarch             randconfig-001-20231128   gcc  
loongarch             randconfig-002-20231127   gcc  
loongarch             randconfig-002-20231128   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231127   gcc  
nios2                 randconfig-001-20231128   gcc  
nios2                 randconfig-002-20231127   gcc  
nios2                 randconfig-002-20231128   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231127   gcc  
parisc                randconfig-001-20231128   gcc  
parisc                randconfig-002-20231127   gcc  
parisc                randconfig-002-20231128   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      chrp32_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc               randconfig-001-20231128   clang
powerpc               randconfig-002-20231128   clang
powerpc               randconfig-003-20231128   clang
powerpc                      walnut_defconfig   clang
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20231128   clang
powerpc64             randconfig-002-20231128   clang
powerpc64             randconfig-003-20231128   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231128   clang
riscv                 randconfig-002-20231128   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231128   gcc  
s390                  randconfig-002-20231128   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20231128   gcc  
sh                    randconfig-002-20231128   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231128   gcc  
sparc64               randconfig-002-20231128   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231128   clang
um                    randconfig-002-20231128   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231127   gcc  
x86_64       buildonly-randconfig-001-20231128   clang
x86_64       buildonly-randconfig-002-20231127   gcc  
x86_64       buildonly-randconfig-002-20231128   clang
x86_64       buildonly-randconfig-003-20231127   gcc  
x86_64       buildonly-randconfig-003-20231128   clang
x86_64       buildonly-randconfig-004-20231127   gcc  
x86_64       buildonly-randconfig-004-20231128   clang
x86_64       buildonly-randconfig-005-20231127   gcc  
x86_64       buildonly-randconfig-005-20231128   clang
x86_64       buildonly-randconfig-006-20231127   gcc  
x86_64       buildonly-randconfig-006-20231128   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231127   clang
x86_64                randconfig-001-20231128   gcc  
x86_64                randconfig-002-20231127   clang
x86_64                randconfig-002-20231128   gcc  
x86_64                randconfig-003-20231127   clang
x86_64                randconfig-003-20231128   gcc  
x86_64                randconfig-004-20231127   clang
x86_64                randconfig-004-20231128   gcc  
x86_64                randconfig-005-20231127   clang
x86_64                randconfig-005-20231128   gcc  
x86_64                randconfig-006-20231127   clang
x86_64                randconfig-006-20231128   gcc  
x86_64                randconfig-011-20231127   gcc  
x86_64                randconfig-011-20231128   clang
x86_64                randconfig-012-20231127   gcc  
x86_64                randconfig-012-20231128   clang
x86_64                randconfig-013-20231128   clang
x86_64                randconfig-014-20231128   clang
x86_64                randconfig-015-20231128   clang
x86_64                randconfig-016-20231128   clang
x86_64                randconfig-071-20231128   clang
x86_64                randconfig-072-20231128   clang
x86_64                randconfig-073-20231128   clang
x86_64                randconfig-074-20231128   clang
x86_64                randconfig-075-20231128   clang
x86_64                randconfig-076-20231128   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231128   gcc  
xtensa                randconfig-002-20231128   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
