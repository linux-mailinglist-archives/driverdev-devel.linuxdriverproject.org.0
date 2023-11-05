Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEF77E1303
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Nov 2023 11:23:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62BA960FA2;
	Sun,  5 Nov 2023 10:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62BA960FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SwegHfF7TCwD; Sun,  5 Nov 2023 10:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07B6460BA3;
	Sun,  5 Nov 2023 10:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07B6460BA3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84A2E1BF5A6
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 10:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E26760FA2
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 10:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E26760FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id omHrQfC2M0rp for <devel@linuxdriverproject.org>;
 Sun,  5 Nov 2023 10:23:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09F3560BA3
 for <devel@driverdev.osuosl.org>; Sun,  5 Nov 2023 10:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09F3560BA3
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="369344480"
X-IronPort-AV: E=Sophos;i="6.03,279,1694761200"; d="scan'208";a="369344480"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2023 02:23:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="797037911"
X-IronPort-AV: E=Sophos;i="6.03,279,1694761200"; d="scan'208";a="797037911"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 05 Nov 2023 02:23:36 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qzaI1-0005KN-2E;
 Sun, 05 Nov 2023 10:23:33 +0000
Date: Sun, 05 Nov 2023 18:22:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 447e92735758c923913ee53b75c6b92ef756985b
Message-ID: <202311051853.9BCMeGgp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699179819; x=1730715819;
 h=date:from:to:cc:subject:message-id;
 bh=MzjMmTzO7Iz6vgmy8p3ODsyA4U0PMnHYX6xw5UfO9zY=;
 b=e6+K/Fp8Qc9N7SgHvoop2zpldQob8k/KY3b3C7uBhr3UnvXxjpwARjYY
 xi8m3ZBWO4LNIqDDYToyTXsm9PIOkWrEAv3PzD+0qzdbxfMFogCn2Kj/h
 xBwkU8nMVZwRezmk8539zGeSmUptUQGNwOSwZDorWbQMB3jdqBEHw8SLM
 ciVyeK6SC9xW+u+dYZjH9YrUcarffBC+Jw2VAC3WgBZagPxcWqKsOAQqw
 EmDC7DlZnODbaQLPphC16Xji+M6jZH/oo3I6t6LtyKtdPd5Gmjmn60Ro3
 ELsI+sa0uCNE1iwB0jl+Y4qn07bv7V+QY/TPmEXPEBr5420HOdsoImzfO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6+K/Fp8
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
branch HEAD: 447e92735758c923913ee53b75c6b92ef756985b  sysfs: do not create empty directories if no attributes are present

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202311050113.QCp9Dss3-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/platform/x86/amd/hsmp.c:474:16: error: implicit declaration of function 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- x86_64-allyesconfig
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-002-20231105
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-004-20231105
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
|-- x86_64-randconfig-005-20231104
|   `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
`-- x86_64-randconfig-076-20231105
    `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups

elapsed time: 1507m

configs tested: 152
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231104   gcc  
arc                   randconfig-002-20231104   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231104   gcc  
arm                   randconfig-002-20231104   gcc  
arm                   randconfig-003-20231104   gcc  
arm                   randconfig-004-20231104   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231104   gcc  
arm64                 randconfig-002-20231104   gcc  
arm64                 randconfig-003-20231104   gcc  
arm64                 randconfig-004-20231104   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231104   gcc  
csky                  randconfig-002-20231104   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231104   gcc  
i386         buildonly-randconfig-002-20231104   gcc  
i386         buildonly-randconfig-003-20231104   gcc  
i386         buildonly-randconfig-004-20231104   gcc  
i386         buildonly-randconfig-005-20231104   gcc  
i386         buildonly-randconfig-006-20231104   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231105   gcc  
i386                  randconfig-002-20231105   gcc  
i386                  randconfig-003-20231105   gcc  
i386                  randconfig-004-20231105   gcc  
i386                  randconfig-005-20231105   gcc  
i386                  randconfig-006-20231105   gcc  
i386                  randconfig-011-20231104   gcc  
i386                  randconfig-012-20231104   gcc  
i386                  randconfig-013-20231104   gcc  
i386                  randconfig-014-20231104   gcc  
i386                  randconfig-015-20231104   gcc  
i386                  randconfig-016-20231104   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231104   gcc  
loongarch             randconfig-002-20231104   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
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
openrisc                         allmodconfig   gcc  
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
powerpc                          allyesconfig   gcc  
powerpc               randconfig-001-20231104   gcc  
powerpc               randconfig-002-20231104   gcc  
powerpc               randconfig-003-20231104   gcc  
powerpc64             randconfig-001-20231104   gcc  
powerpc64             randconfig-002-20231104   gcc  
powerpc64             randconfig-003-20231104   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-002-20231104   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231104   gcc  
s390                  randconfig-002-20231104   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-002-20231104   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231104   gcc  
um                    randconfig-002-20231104   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231104   gcc  
x86_64                randconfig-001-20231105   gcc  
x86_64                randconfig-002-20231104   gcc  
x86_64                randconfig-002-20231105   gcc  
x86_64                randconfig-003-20231105   gcc  
x86_64                randconfig-004-20231104   gcc  
x86_64                randconfig-004-20231105   gcc  
x86_64                randconfig-005-20231104   gcc  
x86_64                randconfig-005-20231105   gcc  
x86_64                randconfig-006-20231105   gcc  
x86_64                randconfig-011-20231104   gcc  
x86_64                randconfig-012-20231104   gcc  
x86_64                randconfig-013-20231104   gcc  
x86_64                randconfig-014-20231104   gcc  
x86_64                randconfig-015-20231104   gcc  
x86_64                randconfig-016-20231104   gcc  
x86_64                randconfig-071-20231105   gcc  
x86_64                randconfig-072-20231105   gcc  
x86_64                randconfig-073-20231105   gcc  
x86_64                randconfig-074-20231105   gcc  
x86_64                randconfig-075-20231105   gcc  
x86_64                randconfig-076-20231105   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                randconfig-001-20231104   gcc  
xtensa                randconfig-002-20231104   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
