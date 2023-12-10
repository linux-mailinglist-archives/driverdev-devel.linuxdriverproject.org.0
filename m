Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 802AD80BBC0
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Dec 2023 15:35:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D64A58131D;
	Sun, 10 Dec 2023 14:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D64A58131D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZdDwhkq-DFP; Sun, 10 Dec 2023 14:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85D37813BB;
	Sun, 10 Dec 2023 14:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85D37813BB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C88741BF5A4
 for <devel@linuxdriverproject.org>; Sun, 10 Dec 2023 14:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABB6B40184
 for <devel@linuxdriverproject.org>; Sun, 10 Dec 2023 14:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABB6B40184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0UQKqha_6S9 for <devel@linuxdriverproject.org>;
 Sun, 10 Dec 2023 14:35:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A8D440181
 for <devel@driverdev.osuosl.org>; Sun, 10 Dec 2023 14:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A8D440181
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="1429267"
X-IronPort-AV: E=Sophos;i="6.04,265,1695711600"; 
   d="scan'208";a="1429267"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 06:35:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="748942321"
X-IronPort-AV: E=Sophos;i="6.04,265,1695711600"; d="scan'208";a="748942321"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 10 Dec 2023 06:35:31 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rCKu2-000Gve-11;
 Sun, 10 Dec 2023 14:35:30 +0000
Date: Sun, 10 Dec 2023 22:35:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 345586fed2e0666c8e62ab946948ca4f5e2121c0
Message-ID: <202312102223.G3Z4Tbuo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702218935; x=1733754935;
 h=date:from:to:cc:subject:message-id;
 bh=QhCigqeIqG4k8WBHww52t6cQGe6IdXdPqdcQE72xAYM=;
 b=ARp75bNUEauIQAJxotlk1oCBbRZg0LlicKDtG1Er8jS+7iAnzGIfy0/P
 Wnw8yg163ZM2O6QSkB8pBqZOEIV4SJg5KlLUv7J1wJzzAyYxGUMhnoKxN
 ULYeoMl1wRERVffZYz53dsq036YyVaZSTmHtnvWfslgiAOnE1Ault63Hf
 sBEhUiSvuu/d/a2Lx7BJshCf8Nnzvr/lp73nyPnkHHsqKFya3dg/5K92s
 JxFXJG4UkRdf5V8BV+B3gq6FMulV+igfN5kLjUtUV42/pi6qb5d1xEX+f
 i2EalTQRsnrhFM9vI4HT47Y72QKXnE6dd0VhghvY8p/4ZmHzNq5hlWB3n
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ARp75bNU
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
branch HEAD: 345586fed2e0666c8e62ab946948ca4f5e2121c0  staging: rtl8192e: renamed variable IOTPeer

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- arm64-randconfig-002-20231210
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
|-- m68k-defconfig
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- nios2-allmodconfig
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
|-- i386-randconfig-013-20231209
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- powerpc-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- x86_64-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
`-- x86_64-randconfig-005-20231210
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o

elapsed time: 1465m

configs tested: 169
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
arc                   randconfig-001-20231210   gcc  
arc                   randconfig-002-20231210   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                                 defconfig   clang
arm                          exynos_defconfig   gcc  
arm                          ixp4xx_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                   randconfig-001-20231210   gcc  
arm                   randconfig-002-20231210   gcc  
arm                   randconfig-003-20231210   gcc  
arm                   randconfig-004-20231210   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231210   gcc  
arm64                 randconfig-002-20231210   gcc  
arm64                 randconfig-003-20231210   gcc  
arm64                 randconfig-004-20231210   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231210   gcc  
csky                  randconfig-002-20231210   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231210   clang
hexagon               randconfig-002-20231210   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231209   gcc  
i386         buildonly-randconfig-002-20231209   gcc  
i386         buildonly-randconfig-003-20231209   gcc  
i386         buildonly-randconfig-004-20231209   gcc  
i386         buildonly-randconfig-005-20231209   gcc  
i386         buildonly-randconfig-006-20231209   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231209   gcc  
i386                  randconfig-002-20231209   gcc  
i386                  randconfig-003-20231209   gcc  
i386                  randconfig-004-20231209   gcc  
i386                  randconfig-005-20231209   gcc  
i386                  randconfig-006-20231209   gcc  
i386                  randconfig-011-20231209   clang
i386                  randconfig-012-20231209   clang
i386                  randconfig-013-20231209   clang
i386                  randconfig-014-20231209   clang
i386                  randconfig-015-20231209   clang
i386                  randconfig-016-20231209   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231210   gcc  
loongarch             randconfig-002-20231210   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231210   gcc  
nios2                 randconfig-002-20231210   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231210   gcc  
parisc                randconfig-002-20231210   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc               randconfig-001-20231210   gcc  
powerpc               randconfig-002-20231210   gcc  
powerpc               randconfig-003-20231210   gcc  
powerpc                    socrates_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc64             randconfig-001-20231210   gcc  
powerpc64             randconfig-002-20231210   gcc  
powerpc64             randconfig-003-20231210   gcc  
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231210   gcc  
riscv                 randconfig-002-20231210   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231210   clang
s390                  randconfig-002-20231210   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                    randconfig-001-20231210   gcc  
sh                    randconfig-002-20231210   gcc  
sh                           se7619_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231210   gcc  
sparc64               randconfig-002-20231210   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231210   gcc  
um                    randconfig-002-20231210   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231210   gcc  
x86_64       buildonly-randconfig-002-20231210   gcc  
x86_64       buildonly-randconfig-003-20231210   gcc  
x86_64       buildonly-randconfig-004-20231210   gcc  
x86_64       buildonly-randconfig-005-20231210   gcc  
x86_64       buildonly-randconfig-006-20231210   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231210   clang
x86_64                randconfig-002-20231210   clang
x86_64                randconfig-003-20231210   clang
x86_64                randconfig-004-20231210   clang
x86_64                randconfig-005-20231210   clang
x86_64                randconfig-006-20231210   clang
x86_64                randconfig-011-20231210   gcc  
x86_64                randconfig-012-20231210   gcc  
x86_64                randconfig-013-20231210   gcc  
x86_64                randconfig-014-20231210   gcc  
x86_64                randconfig-015-20231210   gcc  
x86_64                randconfig-016-20231210   gcc  
x86_64                randconfig-071-20231210   gcc  
x86_64                randconfig-072-20231210   gcc  
x86_64                randconfig-073-20231210   gcc  
x86_64                randconfig-074-20231210   gcc  
x86_64                randconfig-075-20231210   gcc  
x86_64                randconfig-076-20231210   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231210   gcc  
xtensa                randconfig-002-20231210   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
