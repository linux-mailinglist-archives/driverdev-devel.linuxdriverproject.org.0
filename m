Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 976A27E3EC7
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Nov 2023 13:42:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18C20822F3;
	Tue,  7 Nov 2023 12:42:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18C20822F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5BL06Ew4vgB; Tue,  7 Nov 2023 12:42:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3F86822F2;
	Tue,  7 Nov 2023 12:42:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3F86822F2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 605CF1BF39E
 for <devel@linuxdriverproject.org>; Tue,  7 Nov 2023 12:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3855D417FD
 for <devel@linuxdriverproject.org>; Tue,  7 Nov 2023 12:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3855D417FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6lsj-1xoN0O for <devel@linuxdriverproject.org>;
 Tue,  7 Nov 2023 12:42:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A32B4138F
 for <devel@driverdev.osuosl.org>; Tue,  7 Nov 2023 12:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A32B4138F
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="8148940"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; 
   d="scan'208";a="8148940"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 04:42:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="10401938"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 07 Nov 2023 04:42:04 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r0LP7-00076N-0n;
 Tue, 07 Nov 2023 12:42:01 +0000
Date: Tue, 07 Nov 2023 20:41:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 900ab3cf5fb44b9a5e272d0e947fee74dc894ca5
Message-ID: <202311072025.3s1zVsHS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699360926; x=1730896926;
 h=date:from:to:cc:subject:message-id;
 bh=CXq73b8wLE+/hV6zDb+Gemi3JhFGYJcWnmk9XYJxEgQ=;
 b=f/3pJmHVJv8p0WqsvGwUJPOFOUmJHByFVBbi3hM4JLbuVQS8oyANbbGX
 FmXj84LR0NUM7klEva7G3GEEph0L632ulxRnmjqw2PVy3+p4XRkCUM8S7
 DKmyvhtPd71XKp+sxnk/RvvflizCmpW8m/6ksm7UaN88dkeDhYIJMvd2J
 mSfGxTkolkqSdABEH067EdDUGkckxuyvleitCKb1TY00UCICm9Iz9RiB1
 buNjLZlBUwwKp7Xzalzqhb6V3YwGBKONx2fNx1RcHl+xCTg5fC/RF/lhT
 17FCh98pFHJoszoGnSHMdazSCYWjZCAVElZVH1q2y0HPkXW+nh1KiwJtv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/3pJmHV
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
branch HEAD: 900ab3cf5fb44b9a5e272d0e947fee74dc894ca5  sysfs: do not create empty directories if no attributes are present

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202311050113.QCp9Dss3-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/platform/x86/amd/hsmp.c:474:16: error: implicit declaration of function 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- x86_64-allyesconfig
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
`-- x86_64-buildonly-randconfig-002-20231107
    `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups

elapsed time: 1635m

configs tested: 98
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231106   gcc  
arc                   randconfig-002-20231106   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231107   gcc  
arm                   randconfig-002-20231107   gcc  
arm                   randconfig-003-20231107   gcc  
arm                   randconfig-004-20231107   gcc  
arm64                 randconfig-001-20231107   gcc  
arm64                 randconfig-002-20231107   gcc  
arm64                 randconfig-003-20231107   gcc  
arm64                 randconfig-004-20231107   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231106   gcc  
csky                  randconfig-002-20231106   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231106   gcc  
loongarch             randconfig-002-20231106   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-002-20231107   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231107   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc               randconfig-001-20231107   gcc  
powerpc               randconfig-002-20231107   gcc  
powerpc               randconfig-003-20231107   gcc  
powerpc64             randconfig-001-20231107   gcc  
powerpc64             randconfig-002-20231107   gcc  
powerpc64             randconfig-003-20231107   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                                defconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231107   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231107   gcc  
x86_64       buildonly-randconfig-002-20231107   gcc  
x86_64       buildonly-randconfig-003-20231107   gcc  
x86_64       buildonly-randconfig-004-20231107   gcc  
x86_64       buildonly-randconfig-005-20231107   gcc  
x86_64       buildonly-randconfig-006-20231107   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20231107   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
