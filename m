Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED96A81DE03
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Dec 2023 04:36:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B503607E1;
	Mon, 25 Dec 2023 03:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B503607E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AskPE-h3ORLc; Mon, 25 Dec 2023 03:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A08160BF1;
	Mon, 25 Dec 2023 03:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A08160BF1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3BA11BF86B
 for <devel@linuxdriverproject.org>; Mon, 25 Dec 2023 03:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D58AE81975
 for <devel@linuxdriverproject.org>; Mon, 25 Dec 2023 03:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D58AE81975
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VpSIm_MsrKKe for <devel@linuxdriverproject.org>;
 Mon, 25 Dec 2023 03:36:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E425481973
 for <devel@driverdev.osuosl.org>; Mon, 25 Dec 2023 03:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E425481973
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="9781492"
X-IronPort-AV: E=Sophos;i="6.04,302,1695711600"; 
   d="scan'208";a="9781492"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2023 19:36:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="868281990"
X-IronPort-AV: E=Sophos;i="6.04,302,1695711600"; d="scan'208";a="868281990"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Dec 2023 19:36:30 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rHbl8-000CtA-2r;
 Mon, 25 Dec 2023 03:36:07 +0000
Date: Mon, 25 Dec 2023 11:32:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 9ebffbe2ad12b030b282796fed5117a182588c51
Message-ID: <202312251152.iXU9BAi1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703475392; x=1735011392;
 h=date:from:to:cc:subject:message-id;
 bh=c5h2nZTHPCyPB1LnPLX2AvTedvl8WJAHcv/melxx2FM=;
 b=M8o43G7beE0gxg+LZbaD/4+1+LV0+3cGc/XNxEGueQqgsICSNUMkAxNd
 zYHTVlnwtQrrmoeID8R0MW+FlmmZWOwzqt850W/GxutIvp80bVgizJ8TX
 ug81Hc79XCCJP7EQit20XsWBdOU/qp8jAYFCoyHDF7xtS8Zs4MZQVrBd2
 RiCg7dQuOhOxGdI90KtJ3gL3op0bUYQ+UycDoHSH3zqmghjk+h7eGRdd3
 PlzWoQDTl4/+LI7G4winKv3YcSQhxohjt9K6WR7WcMnxnVI/HEzekW1qu
 +f7g3ypsacWqoN3VvsfFrvwJ/rF0+eFgs54en/xZ78N1s0TbydAnlJQ7E
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M8o43G7b
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
branch HEAD: 9ebffbe2ad12b030b282796fed5117a182588c51  Staging: rtl8192e: Rename function rtllib_DisableNetMonitorMode()

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- loongarch-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- m68k-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- nios2-randconfig-002-20231224
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|-- parisc-allmodconfig
|   |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
|-- powerpc64-randconfig-002-20231224
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
`-- riscv-allmodconfig
    |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o
clang_recent_errors
|-- i386-randconfig-141-20231225
|   `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
`-- powerpc-allmodconfig
    |-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-mptcp-mptcp_diag.o
    `-- WARNING:modpost:missing-MODULE_DESCRIPTION()-in-net-xdp-xsk_diag.o

elapsed time: 2283m

configs tested: 100
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231224   gcc  
arc                   randconfig-002-20231224   gcc  
arm                               allnoconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   clang
arm                          exynos_defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                   randconfig-001-20231224   gcc  
arm                   randconfig-002-20231224   gcc  
arm                   randconfig-003-20231224   gcc  
arm                   randconfig-004-20231224   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231224   gcc  
arm64                 randconfig-002-20231224   gcc  
arm64                 randconfig-003-20231224   gcc  
arm64                 randconfig-004-20231224   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231224   gcc  
csky                  randconfig-002-20231224   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231224   clang
hexagon               randconfig-002-20231224   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231224   gcc  
i386         buildonly-randconfig-002-20231224   gcc  
i386         buildonly-randconfig-003-20231224   gcc  
i386         buildonly-randconfig-004-20231224   gcc  
i386         buildonly-randconfig-005-20231224   gcc  
i386         buildonly-randconfig-006-20231224   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231224   gcc  
i386                  randconfig-002-20231224   gcc  
i386                  randconfig-003-20231224   gcc  
i386                  randconfig-004-20231224   gcc  
i386                  randconfig-005-20231224   gcc  
i386                  randconfig-006-20231224   gcc  
i386                  randconfig-011-20231224   clang
i386                  randconfig-012-20231224   clang
i386                  randconfig-013-20231224   clang
i386                  randconfig-014-20231224   clang
i386                  randconfig-015-20231224   clang
i386                  randconfig-016-20231224   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch             randconfig-001-20231224   gcc  
loongarch             randconfig-002-20231224   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
microblaze                       allmodconfig   gcc  
mips                          ath79_defconfig   clang
mips                      maltasmvp_defconfig   gcc  
mips                        maltaup_defconfig   clang
nios2                 randconfig-001-20231224   gcc  
nios2                 randconfig-002-20231224   gcc  
openrisc                         allyesconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                randconfig-001-20231224   gcc  
parisc                randconfig-002-20231224   gcc  
powerpc                          allmodconfig   clang
powerpc                      cm5200_defconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                    klondike_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc               randconfig-001-20231224   gcc  
powerpc               randconfig-002-20231224   gcc  
powerpc               randconfig-003-20231224   gcc  
powerpc64             randconfig-001-20231224   gcc  
powerpc64             randconfig-002-20231224   gcc  
powerpc64             randconfig-003-20231224   gcc  
riscv                            allmodconfig   gcc  
riscv                 randconfig-001-20231224   gcc  
riscv                 randconfig-002-20231224   gcc  
s390                  randconfig-001-20231224   clang
s390                  randconfig-002-20231224   clang
sh                    randconfig-001-20231224   gcc  
sh                    randconfig-002-20231224   gcc  
sparc64               randconfig-001-20231224   gcc  
sparc64               randconfig-002-20231224   gcc  
um                    randconfig-001-20231224   gcc  
um                    randconfig-002-20231224   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20231224   gcc  
xtensa                randconfig-002-20231224   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
