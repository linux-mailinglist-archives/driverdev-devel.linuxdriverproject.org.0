Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C4E7DAA71
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Oct 2023 03:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A29A4614C1;
	Sun, 29 Oct 2023 02:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A29A4614C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MRxlkxIEObi; Sun, 29 Oct 2023 02:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27377614B9;
	Sun, 29 Oct 2023 02:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27377614B9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DC291BF3AE
 for <devel@linuxdriverproject.org>; Sun, 29 Oct 2023 02:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 401368410D
 for <devel@linuxdriverproject.org>; Sun, 29 Oct 2023 02:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 401368410D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K9GKsHqsEjcT for <devel@linuxdriverproject.org>;
 Sun, 29 Oct 2023 02:08:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB84284100
 for <devel@driverdev.osuosl.org>; Sun, 29 Oct 2023 02:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB84284100
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="390789145"
X-IronPort-AV: E=Sophos;i="6.03,260,1694761200"; d="scan'208";a="390789145"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2023 19:08:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="883525297"
X-IronPort-AV: E=Sophos;i="6.03,260,1694761200"; d="scan'208";a="883525297"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 28 Oct 2023 19:08:46 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qwvEK-000CGF-0w;
 Sun, 29 Oct 2023 02:08:44 +0000
Date: Sun, 29 Oct 2023 10:08:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 41196b0bbe8a1ce663b85aca2141800214c186f1
Message-ID: <202310291031.QYtIpk3Q-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698545329; x=1730081329;
 h=date:from:to:cc:subject:message-id;
 bh=x5PuXM/F3rODojjXbVmN4nOpqNIJ7MQpEsl1V/j/4Nk=;
 b=VwAGOjuRV2eMD+QkvQSIA1YU9o4EHsB3nPY+Xt9ZcHQGzAOE1lpzAoxU
 6kzkJVfINnCf5o/ThMXoWSJaTQu/NwFEijNxdRNLtEL7f9qC+Ihk+MLnk
 0FprKqOKb5fExXlZoyLStMXF3CUxyLU3JBjbpfEqGvp0iU4PgoIUMIEDS
 CSuxcQHnUVS8G5w3lznrzTP+0PI8JjAbf/LYL7JqiC7nmW3W3a5NbXY32
 tkNvW/5u5IdcWh0qNjOSHBGtiyfg3aJ3C8/rRrosgh52pq3Nq2OI/rKBU
 SBmkH3H10sZ1tC9FahkG8AByALy5VxBVz4zsO0SB7BYPAHFalbfFNpFhX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VwAGOjuR
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 41196b0bbe8a1ce663b85aca2141800214c186f1  staging: vt6655: Type encoding info dropped from variable name "byRxRate"

elapsed time: 2318m

configs tested: 189
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231027   gcc  
arc                   randconfig-001-20231028   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                       netwinder_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                   randconfig-001-20231027   gcc  
arm                   randconfig-001-20231028   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          alldefconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   clang
i386                              allnoconfig   gcc  
i386         buildonly-randconfig-001-20231027   gcc  
i386         buildonly-randconfig-001-20231028   gcc  
i386         buildonly-randconfig-002-20231027   gcc  
i386         buildonly-randconfig-002-20231028   gcc  
i386         buildonly-randconfig-003-20231027   gcc  
i386         buildonly-randconfig-003-20231028   gcc  
i386         buildonly-randconfig-004-20231027   gcc  
i386         buildonly-randconfig-004-20231028   gcc  
i386         buildonly-randconfig-005-20231027   gcc  
i386         buildonly-randconfig-005-20231028   gcc  
i386         buildonly-randconfig-006-20231027   gcc  
i386         buildonly-randconfig-006-20231028   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231027   gcc  
i386                  randconfig-001-20231028   gcc  
i386                  randconfig-002-20231027   gcc  
i386                  randconfig-002-20231028   gcc  
i386                  randconfig-003-20231027   gcc  
i386                  randconfig-003-20231028   gcc  
i386                  randconfig-004-20231027   gcc  
i386                  randconfig-004-20231028   gcc  
i386                  randconfig-005-20231027   gcc  
i386                  randconfig-005-20231028   gcc  
i386                  randconfig-006-20231027   gcc  
i386                  randconfig-006-20231028   gcc  
i386                  randconfig-011-20231027   gcc  
i386                  randconfig-011-20231028   gcc  
i386                  randconfig-012-20231027   gcc  
i386                  randconfig-012-20231028   gcc  
i386                  randconfig-013-20231027   gcc  
i386                  randconfig-013-20231028   gcc  
i386                  randconfig-014-20231027   gcc  
i386                  randconfig-014-20231028   gcc  
i386                  randconfig-015-20231027   gcc  
i386                  randconfig-015-20231028   gcc  
i386                  randconfig-016-20231027   gcc  
i386                  randconfig-016-20231028   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231027   gcc  
loongarch             randconfig-001-20231028   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                         cobalt_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                           ip32_defconfig   gcc  
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
powerpc                      katmai_defconfig   clang
powerpc                     ksi8560_defconfig   clang
powerpc                   lite5200b_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc                      obs600_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231027   gcc  
riscv                 randconfig-001-20231028   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231027   gcc  
s390                  randconfig-001-20231028   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231028   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231028   gcc  
x86_64       buildonly-randconfig-002-20231028   gcc  
x86_64       buildonly-randconfig-003-20231027   gcc  
x86_64       buildonly-randconfig-003-20231028   gcc  
x86_64       buildonly-randconfig-004-20231027   gcc  
x86_64       buildonly-randconfig-004-20231028   gcc  
x86_64       buildonly-randconfig-005-20231027   gcc  
x86_64       buildonly-randconfig-005-20231028   gcc  
x86_64       buildonly-randconfig-006-20231028   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231027   gcc  
x86_64                randconfig-002-20231027   gcc  
x86_64                randconfig-003-20231027   gcc  
x86_64                randconfig-004-20231027   gcc  
x86_64                randconfig-005-20231027   gcc  
x86_64                randconfig-006-20231027   gcc  
x86_64                randconfig-011-20231027   gcc  
x86_64                randconfig-011-20231028   gcc  
x86_64                randconfig-012-20231027   gcc  
x86_64                randconfig-012-20231028   gcc  
x86_64                randconfig-013-20231027   gcc  
x86_64                randconfig-013-20231028   gcc  
x86_64                randconfig-014-20231027   gcc  
x86_64                randconfig-014-20231028   gcc  
x86_64                randconfig-015-20231027   gcc  
x86_64                randconfig-015-20231028   gcc  
x86_64                randconfig-016-20231027   gcc  
x86_64                randconfig-016-20231028   gcc  
x86_64                randconfig-071-20231028   gcc  
x86_64                randconfig-072-20231028   gcc  
x86_64                randconfig-073-20231028   gcc  
x86_64                randconfig-074-20231028   gcc  
x86_64                randconfig-075-20231028   gcc  
x86_64                randconfig-076-20231028   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
