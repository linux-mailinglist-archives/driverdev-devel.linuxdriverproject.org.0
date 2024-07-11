Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F4A92EA4F
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2024 16:09:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 144048206D;
	Thu, 11 Jul 2024 14:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qthyaAgVHWXf; Thu, 11 Jul 2024 14:09:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D64582045
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D64582045;
	Thu, 11 Jul 2024 14:09:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1794C1BF5A0
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2024 14:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04EE1410C3
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2024 14:09:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KvjYFonaVbRK for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2024 14:09:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48B5940B36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48B5940B36
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48B5940B36
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2024 14:09:28 +0000 (UTC)
X-CSE-ConnectionGUID: fVfHmiAsR1uPkNVfIbiEvw==
X-CSE-MsgGUID: 7g12WD2QTCCVDij4AknVAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="17904350"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="17904350"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 07:09:29 -0700
X-CSE-ConnectionGUID: mBOfA5jyQZiT1BbKWCo8Zg==
X-CSE-MsgGUID: hXjVraCsSsm9x7c8Xof6cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="48466444"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 11 Jul 2024 07:09:27 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sRuU8-000ZME-3D;
 Thu, 11 Jul 2024 14:09:24 +0000
Date: Thu, 11 Jul 2024 22:08:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD REGRESSION
 af46fe8c41de5b79358c3007e3854dda9c61c7dc
Message-ID: <202407112224.8xNzZOXy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720706970; x=1752242970;
 h=date:from:to:cc:subject:message-id;
 bh=Yu/1MEAYYudggOwPmM9yRZXM4Q3eLKD/ksCZChXBClA=;
 b=A2PIcXdby2cTnezffMFh07mNtj/9Uy8QMc1CNWHR+CGTL0JQRkAu67U8
 MtuQH2sul/Tk1auh4P94hRRlhkY2t/0Ofw7/dwDb6FUxDvtrpsBZDLQve
 AXnKnBuEjdWQGVpbr1ISpLNwOgiJZZ0znU+lmcd98IKeP9JZlraob9Jd8
 QL1RSJTikp8K0yFNWksBy8YhacdFVUxgLcvmO1nwJOHJQpQjCFnBZYuy9
 zlWcsLXi8QFNNH9t+l3WAbmsRZuFUWfRmlT1yG3BtQuzjQF/YAELVk8Ub
 tFjbCt0mwHHmmz7ilhiua83HzTWHe0uRf5qPZ2D2PFTFJ3vBV02foYaA4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A2PIcXdb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: af46fe8c41de5b79358c3007e3854dda9c61c7dc  dio: Have dio_bus_match() callback take a const *

Error/Warning: (recently discovered and may have been fixed)

arch/arm/common/sa1111.c:1372:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]

Error/Warning ids grouped by kconfigs:

recent_errors
`-- arm-jornada720_defconfig
    `-- arch-arm-common-sa1111.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-const-struct-device_driver-)-with-an-expression-of-type-int-(struct-device-struct-device_driver-)

elapsed time: 1434m

configs tested: 143
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240711   gcc-13.2.0
arc                   randconfig-002-20240711   gcc-13.2.0
arm                              allmodconfig   gcc-13.3.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-13.3.0
arm                   randconfig-001-20240711   clang-19
arm                   randconfig-002-20240711   gcc-13.3.0
arm                   randconfig-003-20240711   clang-19
arm                   randconfig-004-20240711   gcc-13.3.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240711   clang-19
arm64                 randconfig-002-20240711   gcc-13.2.0
arm64                 randconfig-003-20240711   gcc-13.2.0
arm64                 randconfig-004-20240711   gcc-13.2.0
csky                              allnoconfig   gcc-13.3.0
csky                  randconfig-001-20240711   gcc-13.3.0
csky                  randconfig-002-20240711   gcc-13.3.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240711   clang-19
hexagon               randconfig-002-20240711   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240711   gcc-13
i386         buildonly-randconfig-002-20240711   gcc-10
i386         buildonly-randconfig-003-20240711   gcc-13
i386         buildonly-randconfig-004-20240711   gcc-8
i386         buildonly-randconfig-005-20240711   gcc-10
i386         buildonly-randconfig-006-20240711   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240711   gcc-13
i386                  randconfig-002-20240711   gcc-10
i386                  randconfig-003-20240711   gcc-8
i386                  randconfig-004-20240711   gcc-13
i386                  randconfig-005-20240711   clang-18
i386                  randconfig-006-20240711   gcc-13
i386                  randconfig-011-20240711   gcc-9
i386                  randconfig-012-20240711   clang-18
i386                  randconfig-013-20240711   gcc-13
i386                  randconfig-014-20240711   clang-18
i386                  randconfig-015-20240711   clang-18
i386                  randconfig-016-20240711   gcc-9
loongarch                        allmodconfig   gcc-13.3.0
loongarch                         allnoconfig   gcc-13.3.0
loongarch             randconfig-001-20240711   gcc-13.3.0
loongarch             randconfig-002-20240711   gcc-13.3.0
m68k                             allmodconfig   gcc-13.3.0
m68k                              allnoconfig   gcc-13.3.0
m68k                             allyesconfig   gcc-13.3.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.3.0
nios2                             allnoconfig   gcc-13.3.0
nios2                 randconfig-001-20240711   gcc-13.3.0
nios2                 randconfig-002-20240711   gcc-13.3.0
openrisc                          allnoconfig   gcc-13.3.0
openrisc                         allyesconfig   gcc-13.3.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-13.3.0
parisc                           allyesconfig   gcc-13.3.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240711   gcc-13.3.0
parisc                randconfig-002-20240711   gcc-13.3.0
powerpc                          allmodconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-13.3.0
powerpc                          allyesconfig   clang-19
powerpc               randconfig-001-20240711   gcc-13.3.0
powerpc               randconfig-002-20240711   clang-19
powerpc               randconfig-003-20240711   clang-19
powerpc64             randconfig-001-20240711   gcc-13.3.0
powerpc64             randconfig-002-20240711   clang-16
powerpc64             randconfig-003-20240711   gcc-13.3.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-13.3.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240711   clang-14
riscv                 randconfig-002-20240711   gcc-13.3.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240711   clang-19
s390                  randconfig-002-20240711   gcc-13.2.0
sh                               allmodconfig   gcc-13.3.0
sh                                allnoconfig   gcc-13.3.0
sh                               allyesconfig   gcc-13.3.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240711   gcc-13.3.0
sh                    randconfig-002-20240711   gcc-13.3.0
sparc                            allmodconfig   gcc-13.3.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240711   gcc-13.3.0
sparc64               randconfig-002-20240711   gcc-13.3.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240711   gcc-8
um                    randconfig-002-20240711   gcc-8
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240711   clang-18
x86_64       buildonly-randconfig-002-20240711   clang-18
x86_64       buildonly-randconfig-003-20240711   clang-18
x86_64       buildonly-randconfig-004-20240711   clang-18
x86_64       buildonly-randconfig-005-20240711   gcc-13
x86_64       buildonly-randconfig-006-20240711   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240711   gcc-13
x86_64                randconfig-002-20240711   gcc-13
x86_64                randconfig-003-20240711   gcc-11
x86_64                randconfig-004-20240711   gcc-9
x86_64                randconfig-005-20240711   clang-18
x86_64                randconfig-006-20240711   gcc-13
x86_64                randconfig-011-20240711   gcc-13
x86_64                randconfig-012-20240711   clang-18
x86_64                randconfig-013-20240711   gcc-13
x86_64                randconfig-014-20240711   clang-18
x86_64                randconfig-015-20240711   clang-18
x86_64                randconfig-016-20240711   gcc-10
x86_64                randconfig-071-20240711   gcc-13
x86_64                randconfig-072-20240711   gcc-13
x86_64                randconfig-073-20240711   clang-18
x86_64                randconfig-074-20240711   gcc-13
x86_64                randconfig-075-20240711   clang-18
x86_64                randconfig-076-20240711   gcc-8
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.3.0
xtensa                randconfig-001-20240711   gcc-13.3.0
xtensa                randconfig-002-20240711   gcc-13.3.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
