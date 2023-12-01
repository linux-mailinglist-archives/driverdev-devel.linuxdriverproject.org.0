Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C8800A58
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Dec 2023 13:04:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B8F584826;
	Fri,  1 Dec 2023 12:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B8F584826
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r_BkC2cJkr0L; Fri,  1 Dec 2023 12:04:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADCA484821;
	Fri,  1 Dec 2023 12:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADCA484821
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2A591BF20B
 for <devel@linuxdriverproject.org>; Fri,  1 Dec 2023 12:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7816342048
 for <devel@linuxdriverproject.org>; Fri,  1 Dec 2023 12:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7816342048
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXm7WO7hiNpu for <devel@linuxdriverproject.org>;
 Fri,  1 Dec 2023 12:04:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C0B44203B
 for <devel@driverdev.osuosl.org>; Fri,  1 Dec 2023 12:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C0B44203B
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="15031310"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="15031310"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 04:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="835757695"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="835757695"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2023 04:04:07 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r92FZ-0003cu-0J;
 Fri, 01 Dec 2023 12:04:05 +0000
Date: Fri, 01 Dec 2023 20:04:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 7d52fc84550c392e06d98cbdc971133f48a9b6fb
Message-ID: <202312012059.Fgb7fuHY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701432252; x=1732968252;
 h=date:from:to:cc:subject:message-id;
 bh=KcJX/01o9wMYRU/dQeqqFbvOoihC4Df+xB5ua1oBW2E=;
 b=jokwvUPgAP8NfMEacjgBCL9ZHtPe4UJ43W8CE/tJONGsxm1sFvIVCgHG
 wJOvlJeOMBFGVEIxHeBIhMBqClu/DC/X0mssYcr99N29FB7WNxq7SN5aF
 LqdiZdT/gMMZpLT/vxR7C5vM5sffyvidfa2lb5vfArWYJyZsfiR/wt72e
 Hw/xmDQM0uQXYbR8+Mg1+MraEuR3erbViwZY3lg2sC/a3cOJqna7MwHsh
 LJVvptlvsepGLGPZcvMcK3nV7Q/eGGzs+HW9kiohUx6bsSsevxruiNrwf
 nAZ8uDZRc116Qin4mIUzKqUUIGIyci2/Aun/RqYDqrAag2zNPyJUmm88W
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jokwvUPg
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
branch HEAD: 7d52fc84550c392e06d98cbdc971133f48a9b6fb  driver core: make device_is_dependent() static

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allyesconfig
|   |-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmax-pascal:ref-should-not-be-valid-under-const:ref
|   `-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmin-pascal:ref-should-not-be-valid-under-const:ref
|-- loongarch-allyesconfig
|   |-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmax-pascal:ref-should-not-be-valid-under-const:ref
|   `-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmin-pascal:ref-should-not-be-valid-under-const:ref
|-- riscv-allyesconfig
|   |-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmax-pascal:ref-should-not-be-valid-under-const:ref
|   `-- Documentation-devicetree-bindings-iio-pressure-honeywell-mprls0025pa.yaml:properties:honeywell-pmin-pascal:ref-should-not-be-valid-under-const:ref
|-- x86_64-buildonly-randconfig-002-20231201
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-074-20231201
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
`-- x86_64-randconfig-103-20231201
    `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
clang_recent_errors
|-- x86_64-allmodconfig
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-allyesconfig
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-003-20231201
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
|-- x86_64-randconfig-005-20231201
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
`-- x86_64-randconfig-121-20231201
    `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 1467m

configs tested: 178
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231201   gcc  
arc                   randconfig-002-20231201   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                        multi_v5_defconfig   clang
arm                   randconfig-001-20231201   gcc  
arm                   randconfig-002-20231201   gcc  
arm                   randconfig-003-20231201   gcc  
arm                   randconfig-004-20231201   gcc  
arm                        spear6xx_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231201   gcc  
arm64                 randconfig-002-20231201   gcc  
arm64                 randconfig-003-20231201   gcc  
arm64                 randconfig-004-20231201   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231201   gcc  
csky                  randconfig-002-20231201   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231201   clang
hexagon               randconfig-002-20231201   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231201   gcc  
i386         buildonly-randconfig-002-20231201   gcc  
i386         buildonly-randconfig-003-20231201   gcc  
i386         buildonly-randconfig-004-20231201   gcc  
i386         buildonly-randconfig-005-20231201   gcc  
i386         buildonly-randconfig-006-20231201   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231201   gcc  
i386                  randconfig-002-20231201   gcc  
i386                  randconfig-003-20231201   gcc  
i386                  randconfig-004-20231201   gcc  
i386                  randconfig-005-20231201   gcc  
i386                  randconfig-006-20231201   gcc  
i386                  randconfig-011-20231201   clang
i386                  randconfig-012-20231201   clang
i386                  randconfig-013-20231201   clang
i386                  randconfig-014-20231201   clang
i386                  randconfig-015-20231201   clang
i386                  randconfig-016-20231201   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231201   gcc  
loongarch             randconfig-002-20231201   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                         db1xxx_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231201   gcc  
nios2                 randconfig-002-20231201   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231201   gcc  
parisc                randconfig-002-20231201   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     mpc512x_defconfig   clang
powerpc               randconfig-001-20231201   gcc  
powerpc               randconfig-002-20231201   gcc  
powerpc               randconfig-003-20231201   gcc  
powerpc                     tqm8541_defconfig   gcc  
powerpc64             randconfig-001-20231201   gcc  
powerpc64             randconfig-002-20231201   gcc  
powerpc64             randconfig-003-20231201   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231201   gcc  
riscv                 randconfig-002-20231201   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231201   clang
s390                  randconfig-002-20231201   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                    randconfig-001-20231201   gcc  
sh                    randconfig-002-20231201   gcc  
sh                          sdk7780_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231201   gcc  
sparc64               randconfig-002-20231201   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231201   gcc  
um                    randconfig-002-20231201   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231201   gcc  
x86_64       buildonly-randconfig-002-20231201   gcc  
x86_64       buildonly-randconfig-003-20231201   gcc  
x86_64       buildonly-randconfig-004-20231201   gcc  
x86_64       buildonly-randconfig-005-20231201   gcc  
x86_64       buildonly-randconfig-006-20231201   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231201   clang
x86_64                randconfig-002-20231201   clang
x86_64                randconfig-003-20231201   clang
x86_64                randconfig-004-20231201   clang
x86_64                randconfig-005-20231201   clang
x86_64                randconfig-006-20231201   clang
x86_64                randconfig-011-20231201   gcc  
x86_64                randconfig-012-20231201   gcc  
x86_64                randconfig-013-20231201   gcc  
x86_64                randconfig-014-20231201   gcc  
x86_64                randconfig-015-20231201   gcc  
x86_64                randconfig-016-20231201   gcc  
x86_64                randconfig-071-20231201   gcc  
x86_64                randconfig-072-20231201   gcc  
x86_64                randconfig-073-20231201   gcc  
x86_64                randconfig-074-20231201   gcc  
x86_64                randconfig-075-20231201   gcc  
x86_64                randconfig-076-20231201   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-002-20231201   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
