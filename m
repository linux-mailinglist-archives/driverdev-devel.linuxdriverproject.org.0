Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0178254C7
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jan 2024 15:03:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21F3C83EE8;
	Fri,  5 Jan 2024 14:03:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21F3C83EE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfhry5iOKLI4; Fri,  5 Jan 2024 14:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8F4883EEB;
	Fri,  5 Jan 2024 14:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8F4883EEB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 846E71BF4E6
 for <devel@linuxdriverproject.org>; Fri,  5 Jan 2024 14:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B29C436EC
 for <devel@linuxdriverproject.org>; Fri,  5 Jan 2024 14:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B29C436EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4y1VHsJa4gQ for <devel@linuxdriverproject.org>;
 Fri,  5 Jan 2024 14:03:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8FD2400BA
 for <devel@driverdev.osuosl.org>; Fri,  5 Jan 2024 14:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8FD2400BA
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10995124"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="10995124"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:03:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="756948067"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="756948067"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 05 Jan 2024 06:03:03 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rLkmq-0001HX-2z;
 Fri, 05 Jan 2024 14:03:00 +0000
Date: Fri, 05 Jan 2024 22:02:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 0a46c21c21c1f1c9a65e29eaae243d0f240bbd6b
Message-ID: <202401052222.StTkHhmv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463386; x=1735999386;
 h=date:from:to:cc:subject:message-id;
 bh=YWafvx8W8iLjkBqAPZH8d9JfUNpbBBnxlBA3nWtMr3Y=;
 b=W829/CEBAezLI7ocjhYrG5J/QpKj1RpL25xpwDkOEvMAHPTizUpUmBJv
 y2AHmrkOzp3AegUWxikDSijfV4QfkGTxp1xZkXmYUefdNWtfcK0v+Nmf7
 9PH1v6cBHEEvuh7XkGNNrPeWuftgMdBON4EQug3E9MyDnbSh2ii/8y8Xl
 Xz/G18zCzhXug+Vr6oWNLcF2o2ahRya9nIIWRi5hsAflCXKPl3fwI9eUZ
 Us3JArHhqJ2mkkGJjUro/s6PqkGHP2WJMnDt+DbyEx74PVF6C7/4j7uo0
 y8D0656n4FCi88pe7N0Si4ZCL3qb4fZUoVxSJG2z8H/hgsbf/5fkKsuMi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W829/CEB
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
branch HEAD: 0a46c21c21c1f1c9a65e29eaae243d0f240bbd6b  Staging: rtl8192e: Rename variable OpMode

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- csky-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- i386-randconfig-012-20240105
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- loongarch-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- m68k-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- nios2-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- parisc-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- riscv-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
`-- s390-allmodconfig
    |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
clang_recent_errors
|-- arm64-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- hexagon-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- powerpc-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- powerpc64-randconfig-002-20240105
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
`-- x86_64-allmodconfig
    |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o

elapsed time: 1457m

configs tested: 192
configs skipped: 3

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
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240105   gcc  
arc                   randconfig-002-20240105   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                         assabet_defconfig   gcc  
arm                                 defconfig   clang
arm                      integrator_defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                       multi_v4t_defconfig   gcc  
arm                   randconfig-001-20240105   clang
arm                   randconfig-002-20240105   clang
arm                   randconfig-003-20240105   clang
arm                   randconfig-004-20240105   clang
arm                           stm32_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240105   clang
arm64                 randconfig-002-20240105   clang
arm64                 randconfig-003-20240105   clang
arm64                 randconfig-004-20240105   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240105   gcc  
csky                  randconfig-002-20240105   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240105   clang
hexagon               randconfig-002-20240105   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240105   clang
i386         buildonly-randconfig-002-20240105   clang
i386         buildonly-randconfig-003-20240105   clang
i386         buildonly-randconfig-004-20240105   clang
i386         buildonly-randconfig-005-20240105   clang
i386         buildonly-randconfig-006-20240105   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240105   clang
i386                  randconfig-002-20240105   clang
i386                  randconfig-003-20240105   clang
i386                  randconfig-004-20240105   clang
i386                  randconfig-005-20240105   clang
i386                  randconfig-006-20240105   clang
i386                  randconfig-011-20240105   gcc  
i386                  randconfig-012-20240105   gcc  
i386                  randconfig-013-20240105   gcc  
i386                  randconfig-014-20240105   gcc  
i386                  randconfig-015-20240105   gcc  
i386                  randconfig-016-20240105   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240105   gcc  
loongarch             randconfig-002-20240105   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                     loongson1c_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240105   gcc  
nios2                 randconfig-002-20240105   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240105   gcc  
parisc                randconfig-002-20240105   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20240105   clang
powerpc               randconfig-002-20240105   clang
powerpc               randconfig-003-20240105   clang
powerpc                     redwood_defconfig   gcc  
powerpc64             randconfig-001-20240105   clang
powerpc64             randconfig-002-20240105   clang
powerpc64             randconfig-003-20240105   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240105   clang
riscv                 randconfig-002-20240105   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240105   gcc  
s390                  randconfig-002-20240105   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240105   gcc  
sh                    randconfig-002-20240105   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240105   gcc  
sparc64               randconfig-002-20240105   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240105   clang
um                    randconfig-002-20240105   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240105   clang
x86_64       buildonly-randconfig-002-20240105   clang
x86_64       buildonly-randconfig-003-20240105   clang
x86_64       buildonly-randconfig-004-20240105   clang
x86_64       buildonly-randconfig-005-20240105   clang
x86_64       buildonly-randconfig-006-20240105   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20240105   clang
x86_64                randconfig-012-20240105   clang
x86_64                randconfig-013-20240105   clang
x86_64                randconfig-014-20240105   clang
x86_64                randconfig-015-20240105   clang
x86_64                randconfig-016-20240105   clang
x86_64                randconfig-071-20240105   clang
x86_64                randconfig-072-20240105   clang
x86_64                randconfig-073-20240105   clang
x86_64                randconfig-074-20240105   clang
x86_64                randconfig-075-20240105   clang
x86_64                randconfig-076-20240105   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240105   gcc  
xtensa                randconfig-002-20240105   gcc  
xtensa                    smp_lx200_defconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
