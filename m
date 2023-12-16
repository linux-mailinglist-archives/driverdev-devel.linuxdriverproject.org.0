Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1647B8159B6
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Dec 2023 15:04:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73B7E41A06;
	Sat, 16 Dec 2023 14:04:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73B7E41A06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNC94XjxUkVO; Sat, 16 Dec 2023 14:04:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEA7B4193A;
	Sat, 16 Dec 2023 14:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA7B4193A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30C471BF302
 for <devel@linuxdriverproject.org>; Sat, 16 Dec 2023 14:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 096BC82CB7
 for <devel@linuxdriverproject.org>; Sat, 16 Dec 2023 14:03:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 096BC82CB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ar94lj71m5a7 for <devel@linuxdriverproject.org>;
 Sat, 16 Dec 2023 14:03:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E13082CF1
 for <devel@driverdev.osuosl.org>; Sat, 16 Dec 2023 14:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E13082CF1
X-IronPort-AV: E=McAfee;i="6600,9927,10926"; a="14059351"
X-IronPort-AV: E=Sophos;i="6.04,281,1695711600"; d="scan'208";a="14059351"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2023 06:03:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10926"; a="775072767"
X-IronPort-AV: E=Sophos;i="6.04,281,1695711600"; d="scan'208";a="775072767"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2023 06:03:52 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rEVGf-0001i6-0T;
 Sat, 16 Dec 2023 14:03:49 +0000
Date: Sat, 16 Dec 2023 22:03:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 5e8cdb6f6ebe28976876ab04995a5d3779b85082
Message-ID: <202312162206.KgsDQQSc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702735436; x=1734271436;
 h=date:from:to:cc:subject:message-id;
 bh=kJ5lMNMhLNDDb6kgMKh5TGf7A7hrXU1xHZI6yKSKVu4=;
 b=aa+vfl/zk1odH7yk8VDyhAybmrXFNMG8QWiTE1329VL+FixrV9r41DJN
 LgIj4eed+lpt1wxvgy8tGweE9xbWGlTOn1IWwHBTEviKec7QiOA1V9oV+
 tPeJTAGkWA/TzVYGKD7/DxuAhISC00UM7d1nbDi6hfHM5EIYWtjm6E0WM
 z7RIAjrxbJ3xDs6k+fojTQt9Y69BaDt+H4Oh7ralkLOynCS0swxADi20e
 DGHXzPTJ2Uk0Q6YY1YkV+4VIodmaMrb0mcdVmvTLLWR+qUeOsUJjJkLUO
 N8mn4Ysrz+5e4ikbl7kbgvw/FLLpFoVFbjmHlFBrQmCOw2ozN/ZI9IClg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aa+vfl/z
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 5e8cdb6f6ebe28976876ab04995a5d3779b85082  staging: rtl8192e: rename variable HTInitializeHTInfo

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- arm64-randconfig-001-20231216
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|-- arm64-randconfig-003-20231216
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- csky-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- loongarch-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- m68k-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- m68k-apollo_defconfig
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- m68k-defconfig
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- nios2-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- nios2-randconfig-001-20231216
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- parisc-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- parisc-randconfig-002-20231216
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|-- powerpc-randconfig-003-20231216
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- riscv-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- s390-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
`-- s390-defconfig
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
clang_recent_errors
|-- arm64-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- hexagon-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
`-- powerpc-allmodconfig
    |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o

elapsed time: 1505m

configs tested: 179
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
arc                   randconfig-001-20231216   gcc  
arc                   randconfig-002-20231216   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   clang
arm                        multi_v5_defconfig   clang
arm                        mvebu_v7_defconfig   gcc  
arm                        neponset_defconfig   clang
arm                           omap1_defconfig   clang
arm                   randconfig-001-20231216   gcc  
arm                   randconfig-002-20231216   gcc  
arm                   randconfig-003-20231216   gcc  
arm                   randconfig-004-20231216   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231216   gcc  
arm64                 randconfig-002-20231216   gcc  
arm64                 randconfig-003-20231216   gcc  
arm64                 randconfig-004-20231216   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231216   gcc  
csky                  randconfig-002-20231216   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231216   clang
hexagon               randconfig-002-20231216   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231216   gcc  
i386         buildonly-randconfig-002-20231216   gcc  
i386         buildonly-randconfig-003-20231216   gcc  
i386         buildonly-randconfig-004-20231216   gcc  
i386         buildonly-randconfig-005-20231216   gcc  
i386         buildonly-randconfig-006-20231216   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231216   gcc  
i386                  randconfig-002-20231216   gcc  
i386                  randconfig-003-20231216   gcc  
i386                  randconfig-004-20231216   gcc  
i386                  randconfig-005-20231216   gcc  
i386                  randconfig-006-20231216   gcc  
i386                  randconfig-011-20231216   clang
i386                  randconfig-012-20231216   clang
i386                  randconfig-013-20231216   clang
i386                  randconfig-014-20231216   clang
i386                  randconfig-015-20231216   clang
i386                  randconfig-016-20231216   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231216   gcc  
loongarch             randconfig-002-20231216   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231216   gcc  
nios2                 randconfig-002-20231216   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20231216   gcc  
parisc                randconfig-002-20231216   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                   lite5200b_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc               randconfig-001-20231216   gcc  
powerpc               randconfig-002-20231216   gcc  
powerpc               randconfig-003-20231216   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     sequoia_defconfig   gcc  
powerpc                    socrates_defconfig   gcc  
powerpc64             randconfig-001-20231216   gcc  
powerpc64             randconfig-002-20231216   gcc  
powerpc64             randconfig-003-20231216   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231216   gcc  
riscv                 randconfig-002-20231216   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231216   clang
s390                  randconfig-002-20231216   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231216   gcc  
sh                    randconfig-002-20231216   gcc  
sh                          sdk7780_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231216   gcc  
sparc64               randconfig-002-20231216   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231216   gcc  
um                    randconfig-002-20231216   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231216   gcc  
x86_64       buildonly-randconfig-002-20231216   gcc  
x86_64       buildonly-randconfig-003-20231216   gcc  
x86_64       buildonly-randconfig-004-20231216   gcc  
x86_64       buildonly-randconfig-005-20231216   gcc  
x86_64       buildonly-randconfig-006-20231216   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231216   clang
x86_64                randconfig-002-20231216   clang
x86_64                randconfig-003-20231216   clang
x86_64                randconfig-004-20231216   clang
x86_64                randconfig-005-20231216   clang
x86_64                randconfig-006-20231216   clang
x86_64                randconfig-011-20231216   gcc  
x86_64                randconfig-012-20231216   gcc  
x86_64                randconfig-013-20231216   gcc  
x86_64                randconfig-014-20231216   gcc  
x86_64                randconfig-015-20231216   gcc  
x86_64                randconfig-016-20231216   gcc  
x86_64                randconfig-071-20231216   gcc  
x86_64                randconfig-072-20231216   gcc  
x86_64                randconfig-073-20231216   gcc  
x86_64                randconfig-074-20231216   gcc  
x86_64                randconfig-075-20231216   gcc  
x86_64                randconfig-076-20231216   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231216   gcc  
xtensa                randconfig-002-20231216   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
