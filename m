Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F5C818C02
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Dec 2023 17:16:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A7424055D;
	Tue, 19 Dec 2023 16:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A7424055D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id twrwEYpYZ-Cr; Tue, 19 Dec 2023 16:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF60C40A62;
	Tue, 19 Dec 2023 16:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF60C40A62
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 548701BF360
 for <devel@linuxdriverproject.org>; Tue, 19 Dec 2023 16:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B46641BDE
 for <devel@linuxdriverproject.org>; Tue, 19 Dec 2023 16:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B46641BDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nm3Ltg9ciiGo for <devel@linuxdriverproject.org>;
 Tue, 19 Dec 2023 16:16:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1644041BD4
 for <devel@driverdev.osuosl.org>; Tue, 19 Dec 2023 16:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1644041BD4
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="394563506"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="394563506"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 08:16:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="919665139"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="919665139"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2023 08:16:05 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rFclG-0005dj-1z;
 Tue, 19 Dec 2023 16:16:02 +0000
Date: Wed, 20 Dec 2023 00:15:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7f2c9c0bb8d575ed289943ad782776649343ee7e
Message-ID: <202312200010.hLSEzGYQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703002567; x=1734538567;
 h=date:from:to:cc:subject:message-id;
 bh=Ct/lIkTJ3pea5T8MFeeRGQ/x7mjnspbDmA3CRaWtpUA=;
 b=TN3y3UmLiFAkrCZvdx8NhX+hWn9h5Pu7a4kr402J06BQaIoxPsHE/KQJ
 NcdZtrOiCnQICit2OtJeMggIhKE23lBgCWU02qBOE5YC8a7BVvXBZ+GRU
 GPe7zxJOkms7/fb5vLFFld3u/i/ssm9mOiOqxanh41F639K+hIDusiA8F
 23jdB+0HaR0x8lzU0VxnJvLC9PvNt0KmEqtGFgBizRY94VbRvgowDRjnv
 s8eJrDtVR7THqJkFqn/23Je2VT4rdZy0KaXwJtay8y99pNXPYgXv+J1B2
 b9prvekpgYvz4/D1q7zIyUnoNxiVgQx565JVAFHq/DIewsM88RE6ZCKD8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TN3y3UmL
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
branch HEAD: 7f2c9c0bb8d575ed289943ad782776649343ee7e  Staging: rtl8192e: Rename variable pBaStartSeqCtrl

Warning ids grouped by kconfigs:

gcc_recent_errors
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
|-- s390-defconfig
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|-- x86_64-randconfig-001-20231219
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
`-- x86_64-randconfig-006-20231219
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
clang_recent_errors
|-- i386-randconfig-062-20231219
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
`-- x86_64-buildonly-randconfig-001-20231219
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o

elapsed time: 1472m

configs tested: 115
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                            mmp2_defconfig   clang
arm                        shmobile_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231219   clang
i386         buildonly-randconfig-002-20231219   clang
i386         buildonly-randconfig-003-20231219   clang
i386         buildonly-randconfig-004-20231219   clang
i386         buildonly-randconfig-005-20231219   clang
i386         buildonly-randconfig-006-20231219   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231219   clang
i386                  randconfig-002-20231219   clang
i386                  randconfig-003-20231219   clang
i386                  randconfig-004-20231219   clang
i386                  randconfig-005-20231219   clang
i386                  randconfig-006-20231219   clang
i386                  randconfig-011-20231219   gcc  
i386                  randconfig-012-20231219   gcc  
i386                  randconfig-013-20231219   gcc  
i386                  randconfig-014-20231219   gcc  
i386                  randconfig-015-20231219   gcc  
i386                  randconfig-016-20231219   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                     cu1830-neo_defconfig   clang
mips                 decstation_r4k_defconfig   gcc  
mips                           ip27_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                    adder875_defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
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
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231219   clang
x86_64       buildonly-randconfig-002-20231219   clang
x86_64       buildonly-randconfig-003-20231219   clang
x86_64       buildonly-randconfig-004-20231219   clang
x86_64       buildonly-randconfig-005-20231219   clang
x86_64       buildonly-randconfig-006-20231219   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231219   gcc  
x86_64                randconfig-002-20231219   gcc  
x86_64                randconfig-003-20231219   gcc  
x86_64                randconfig-004-20231219   gcc  
x86_64                randconfig-005-20231219   gcc  
x86_64                randconfig-006-20231219   gcc  
x86_64                randconfig-011-20231219   clang
x86_64                randconfig-012-20231219   clang
x86_64                randconfig-013-20231219   clang
x86_64                randconfig-014-20231219   clang
x86_64                randconfig-015-20231219   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
