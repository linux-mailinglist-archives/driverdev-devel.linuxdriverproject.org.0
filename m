Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC3B950120
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2024 11:25:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6302D40292;
	Tue, 13 Aug 2024 09:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CW07g5pi9NYV; Tue, 13 Aug 2024 09:25:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C37AE402E7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C37AE402E7;
	Tue, 13 Aug 2024 09:25:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C95B1BF3DC
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 09:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7653640292
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 09:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ERLKc2hMplb for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2024 09:25:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C647F40238
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C647F40238
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C647F40238
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2024 09:25:18 +0000 (UTC)
X-CSE-ConnectionGUID: Egi5TuHYQp6HiL9C+oLJnA==
X-CSE-MsgGUID: 5oLURCsSTfSTM1Gpl8VFIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21664834"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21664834"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 02:25:17 -0700
X-CSE-ConnectionGUID: RcXdLLhATl2WcpZ/daaaHw==
X-CSE-MsgGUID: Zgf/tARaTsqnmdKZ2ZwefA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="89408354"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 13 Aug 2024 02:25:16 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sdnmE-0000JI-20;
 Tue, 13 Aug 2024 09:25:14 +0000
Date: Tue, 13 Aug 2024 17:24:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 0c80bdfc9aa624b4a6c33c30ad11e81bf6407c36
Message-ID: <202408131748.R0f9zAHs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723541118; x=1755077118;
 h=date:from:to:cc:subject:message-id;
 bh=FAuGZpTUTxvfM5PCorjwfLOEs80VTj3MJ8HbvTmWgSc=;
 b=g0ImD3Z158GASzyOtk8hVrNT71rzgRipJCl1DyIWjhtopF3N9nFAViRD
 b5LDhbjoo2HyA8gaqjxx5vr5r5OsirdVDCV7hLBkBhm4NEphmE+aR/bFu
 lODc5STB+vE8ZqA0kdQo4NhFpsZNOTYjB6yRkMOwyhll+N8M6xZsMbTkG
 PAUIJ1azEhjKKYyKoRDk0SuK/zIJJk0zOjJK8e21pZz0oMALkcqPOmkk6
 pYGgxe3r8hufAwqu63CwKtb+QS5ZVibrf9GqM34s2KImddqc7+6Oj3osx
 3b+Zj/u9FLr5e3Xt5VXQ8KQUFcoeDnQ9rpZtRmyJP5tYCwgQhMam2LDHs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g0ImD3Z1
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
branch HEAD: 0c80bdfc9aa624b4a6c33c30ad11e81bf6407c36  Merge 6.11-rc3 into driver-core-next

elapsed time: 926m

configs tested: 177
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                       aspeed_g4_defconfig   clang-20
arm                         at91_dt_defconfig   clang-20
arm                         bcm2835_defconfig   clang-20
arm                                 defconfig   gcc-13.2.0
arm                      integrator_defconfig   clang-20
arm                        neponset_defconfig   clang-20
arm                           sama5_defconfig   gcc-14.1.0
arm                        shmobile_defconfig   clang-20
arm                         socfpga_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
hexagon                          alldefconfig   clang-20
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240813   gcc-12
i386         buildonly-randconfig-002-20240813   gcc-12
i386         buildonly-randconfig-003-20240813   gcc-12
i386         buildonly-randconfig-004-20240813   gcc-11
i386         buildonly-randconfig-004-20240813   gcc-12
i386         buildonly-randconfig-005-20240813   clang-18
i386         buildonly-randconfig-005-20240813   gcc-12
i386         buildonly-randconfig-006-20240813   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240813   gcc-12
i386                  randconfig-002-20240813   clang-18
i386                  randconfig-002-20240813   gcc-12
i386                  randconfig-003-20240813   gcc-12
i386                  randconfig-004-20240813   gcc-12
i386                  randconfig-005-20240813   clang-18
i386                  randconfig-005-20240813   gcc-12
i386                  randconfig-006-20240813   clang-18
i386                  randconfig-006-20240813   gcc-12
i386                  randconfig-011-20240813   gcc-12
i386                  randconfig-012-20240813   gcc-12
i386                  randconfig-013-20240813   clang-18
i386                  randconfig-013-20240813   gcc-12
i386                  randconfig-014-20240813   clang-18
i386                  randconfig-014-20240813   gcc-12
i386                  randconfig-015-20240813   clang-18
i386                  randconfig-015-20240813   gcc-12
i386                  randconfig-016-20240813   clang-18
i386                  randconfig-016-20240813   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
microblaze                      mmu_defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                           gcw0_defconfig   clang-20
mips                           gcw0_defconfig   gcc-14.1.0
mips                        qi_lb60_defconfig   gcc-14.1.0
mips                         rt305x_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      cm5200_defconfig   clang-20
powerpc                   currituck_defconfig   clang-20
powerpc                    gamecube_defconfig   clang-20
powerpc                     ksi8560_defconfig   gcc-14.1.0
powerpc                     powernv_defconfig   clang-20
powerpc                      ppc6xx_defconfig   gcc-14.1.0
powerpc                    socrates_defconfig   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         ap325rxa_defconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                          rsk7203_defconfig   gcc-14.1.0
sh                           se7724_defconfig   gcc-14.1.0
sh                   secureedge5410_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240813   clang-18
x86_64       buildonly-randconfig-002-20240813   clang-18
x86_64       buildonly-randconfig-003-20240813   clang-18
x86_64       buildonly-randconfig-004-20240813   clang-18
x86_64       buildonly-randconfig-005-20240813   clang-18
x86_64       buildonly-randconfig-006-20240813   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240813   clang-18
x86_64                randconfig-002-20240813   clang-18
x86_64                randconfig-003-20240813   clang-18
x86_64                randconfig-004-20240813   clang-18
x86_64                randconfig-005-20240813   clang-18
x86_64                randconfig-006-20240813   clang-18
x86_64                randconfig-011-20240813   clang-18
x86_64                randconfig-012-20240813   clang-18
x86_64                randconfig-013-20240813   clang-18
x86_64                randconfig-014-20240813   clang-18
x86_64                randconfig-015-20240813   clang-18
x86_64                randconfig-016-20240813   clang-18
x86_64                randconfig-071-20240813   clang-18
x86_64                randconfig-072-20240813   clang-18
x86_64                randconfig-073-20240813   clang-18
x86_64                randconfig-074-20240813   clang-18
x86_64                randconfig-075-20240813   clang-18
x86_64                randconfig-076-20240813   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                           alldefconfig   gcc-14.1.0
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
