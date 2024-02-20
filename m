Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ECE85B3B9
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Feb 2024 08:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8507E40BE1;
	Tue, 20 Feb 2024 07:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LWnDtdbS-iXt; Tue, 20 Feb 2024 07:16:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0425B408FB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0425B408FB;
	Tue, 20 Feb 2024 07:16:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABC791BF317
 for <devel@linuxdriverproject.org>; Tue, 20 Feb 2024 07:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5D5C6078D
 for <devel@linuxdriverproject.org>; Tue, 20 Feb 2024 07:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrXS2hc6tjD1 for <devel@linuxdriverproject.org>;
 Tue, 20 Feb 2024 07:16:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 707A860613
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 707A860613
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 707A860613
 for <devel@driverdev.osuosl.org>; Tue, 20 Feb 2024 07:16:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13056894"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13056894"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 23:16:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="42183722"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 19 Feb 2024 23:16:33 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rcKMD-0004Iw-1q;
 Tue, 20 Feb 2024 07:16:14 +0000
Date: Tue, 20 Feb 2024 15:15:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 07749061b837a1268146dc8a620a522253cea877
Message-ID: <202402201534.zC6fKpUQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708413397; x=1739949397;
 h=date:from:to:cc:subject:message-id;
 bh=6lEcA7cfjzk7Ox2g1YmcgW+MfxvJL5g9V95hiJWicHc=;
 b=CUeUznOm5msQszzukZw1iTSfzvsI+6WifBBx1UxNueMEldMFpZ7+G3c7
 D84PLyNgulrEXfrG4Q0JPvoRTZD1WNtwRhUdzFlIJq2LXcTrC5swjU+Fz
 qR3BnkD4budwM38Urlf6Y7VffBizmTKq9OF9chFr8+OKOiG+GPoyZv49N
 Xz4tSXLSzPWmW/BKbW2lGeTJOdFS0QEBIUUgOE4n0jb5e+3akDz+6ivDH
 7QIvmtjD1KF1q5ZMrv/NPU0EDtF3FuGys396cTuOFnOSl2udh3WS0dAKh
 aeadqwicAvmYM12EYMiNFOP7nvr5O1rxNyQIMaSugbalyHdASHITsJVIn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CUeUznOm
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: 07749061b837a1268146dc8a620a522253cea877  Merge 6.8-rc5 into driver-core-next

elapsed time: 1459m

configs tested: 263
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
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20240219   gcc  
arc                   randconfig-001-20240220   gcc  
arc                   randconfig-002-20240219   gcc  
arc                   randconfig-002-20240220   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   clang
arm                          collie_defconfig   gcc  
arm                                 defconfig   clang
arm                          exynos_defconfig   clang
arm                        multi_v7_defconfig   gcc  
arm                             mxs_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240219   gcc  
arm                   randconfig-002-20240219   gcc  
arm                   randconfig-002-20240220   gcc  
arm                   randconfig-003-20240219   gcc  
arm                   randconfig-003-20240220   gcc  
arm                   randconfig-004-20240219   gcc  
arm                   randconfig-004-20240220   gcc  
arm                           tegra_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240219   gcc  
arm64                 randconfig-002-20240219   gcc  
arm64                 randconfig-003-20240219   clang
arm64                 randconfig-004-20240219   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240219   gcc  
csky                  randconfig-001-20240220   gcc  
csky                  randconfig-002-20240219   gcc  
csky                  randconfig-002-20240220   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240219   clang
hexagon               randconfig-002-20240219   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240219   gcc  
i386         buildonly-randconfig-002-20240219   gcc  
i386         buildonly-randconfig-003-20240219   clang
i386         buildonly-randconfig-003-20240220   clang
i386         buildonly-randconfig-004-20240219   gcc  
i386         buildonly-randconfig-004-20240220   clang
i386         buildonly-randconfig-005-20240219   clang
i386         buildonly-randconfig-006-20240219   clang
i386                                defconfig   clang
i386                  randconfig-001-20240219   clang
i386                  randconfig-002-20240219   clang
i386                  randconfig-003-20240219   clang
i386                  randconfig-003-20240220   clang
i386                  randconfig-004-20240219   gcc  
i386                  randconfig-004-20240220   clang
i386                  randconfig-005-20240219   clang
i386                  randconfig-006-20240219   gcc  
i386                  randconfig-006-20240220   clang
i386                  randconfig-011-20240219   gcc  
i386                  randconfig-011-20240220   clang
i386                  randconfig-012-20240219   clang
i386                  randconfig-013-20240219   gcc  
i386                  randconfig-014-20240219   clang
i386                  randconfig-014-20240220   clang
i386                  randconfig-015-20240219   gcc  
i386                  randconfig-015-20240220   clang
i386                  randconfig-016-20240219   clang
i386                  randconfig-016-20240220   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20240219   gcc  
loongarch             randconfig-001-20240220   gcc  
loongarch             randconfig-002-20240219   gcc  
loongarch             randconfig-002-20240220   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                           ip22_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                       lemote2f_defconfig   gcc  
mips                     loongson1c_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                           rs90_defconfig   gcc  
nios2                         10m50_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240219   gcc  
nios2                 randconfig-001-20240220   gcc  
nios2                 randconfig-002-20240219   gcc  
nios2                 randconfig-002-20240220   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240219   gcc  
parisc                randconfig-001-20240220   gcc  
parisc                randconfig-002-20240219   gcc  
parisc                randconfig-002-20240220   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240219   gcc  
powerpc               randconfig-001-20240220   gcc  
powerpc               randconfig-002-20240219   clang
powerpc               randconfig-003-20240219   clang
powerpc                         wii_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64             randconfig-001-20240219   clang
powerpc64             randconfig-001-20240220   gcc  
powerpc64             randconfig-002-20240219   gcc  
powerpc64             randconfig-002-20240220   gcc  
powerpc64             randconfig-003-20240219   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240219   gcc  
riscv                 randconfig-002-20240219   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240219   gcc  
s390                  randconfig-001-20240220   gcc  
s390                  randconfig-002-20240219   clang
s390                       zfcpdump_defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20240219   gcc  
sh                    randconfig-001-20240220   gcc  
sh                    randconfig-002-20240219   gcc  
sh                    randconfig-002-20240220   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240219   gcc  
sparc64               randconfig-001-20240220   gcc  
sparc64               randconfig-002-20240219   gcc  
sparc64               randconfig-002-20240220   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240219   clang
um                    randconfig-001-20240220   gcc  
um                    randconfig-002-20240219   gcc  
um                    randconfig-002-20240220   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240219   clang
x86_64       buildonly-randconfig-001-20240220   clang
x86_64       buildonly-randconfig-002-20240219   clang
x86_64       buildonly-randconfig-002-20240220   clang
x86_64       buildonly-randconfig-003-20240219   gcc  
x86_64       buildonly-randconfig-004-20240219   clang
x86_64       buildonly-randconfig-004-20240220   clang
x86_64       buildonly-randconfig-005-20240219   clang
x86_64       buildonly-randconfig-006-20240219   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240219   clang
x86_64                randconfig-002-20240219   clang
x86_64                randconfig-003-20240219   gcc  
x86_64                randconfig-004-20240219   gcc  
x86_64                randconfig-004-20240220   clang
x86_64                randconfig-005-20240219   clang
x86_64                randconfig-005-20240220   clang
x86_64                randconfig-006-20240219   clang
x86_64                randconfig-011-20240219   clang
x86_64                randconfig-012-20240219   gcc  
x86_64                randconfig-012-20240220   clang
x86_64                randconfig-013-20240219   clang
x86_64                randconfig-013-20240220   clang
x86_64                randconfig-014-20240219   gcc  
x86_64                randconfig-015-20240219   clang
x86_64                randconfig-015-20240220   clang
x86_64                randconfig-016-20240219   gcc  
x86_64                randconfig-071-20240219   gcc  
x86_64                randconfig-071-20240220   clang
x86_64                randconfig-072-20240219   clang
x86_64                randconfig-072-20240220   clang
x86_64                randconfig-073-20240219   gcc  
x86_64                randconfig-073-20240220   clang
x86_64                randconfig-074-20240219   gcc  
x86_64                randconfig-074-20240220   clang
x86_64                randconfig-075-20240219   clang
x86_64                randconfig-075-20240220   clang
x86_64                randconfig-076-20240219   clang
x86_64                randconfig-076-20240220   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                randconfig-001-20240219   gcc  
xtensa                randconfig-001-20240220   gcc  
xtensa                randconfig-002-20240219   gcc  
xtensa                randconfig-002-20240220   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
