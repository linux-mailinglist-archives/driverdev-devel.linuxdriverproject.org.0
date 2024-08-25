Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C49D195E235
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2024 08:18:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4802E4033A;
	Sun, 25 Aug 2024 06:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JeLzb1Y4TAnn; Sun, 25 Aug 2024 06:18:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEDE040335
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEDE040335;
	Sun, 25 Aug 2024 06:18:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 900FD1BF391
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2024 06:18:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84A8D81354
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2024 06:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SboNc110_wxF for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2024 06:18:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CFE9F812FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFE9F812FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFE9F812FB
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2024 06:18:26 +0000 (UTC)
X-CSE-ConnectionGUID: 8Lprzl2ZTs6Gx96OBb6aQw==
X-CSE-MsgGUID: 1iPKTwHfRHOsh0/w69YM4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="25896287"
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="25896287"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2024 23:18:26 -0700
X-CSE-ConnectionGUID: qEwRwTLqSJOKXGDliTwaaQ==
X-CSE-MsgGUID: k3L5qCvRR4yis2PapcwRHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="62033036"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 24 Aug 2024 23:18:24 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1si6Zy-000Ezj-1u;
 Sun, 25 Aug 2024 06:18:22 +0000
Date: Sun, 25 Aug 2024 14:17:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 b0b79119cea2dd0d4bbfafc7c0f41d42edb41466
Message-ID: <202408251420.iPJpqhEz-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724566707; x=1756102707;
 h=date:from:to:cc:subject:message-id;
 bh=yrfayTeh34mOz308qV+MfhablkcWQ7o7tF6hCo1ulgE=;
 b=M9n4r2A97/6J8zPm2SgjJ0dpAvHku+MKBLTfTWMB6P1x1SRVxFOWIT9c
 XYwh4wdvUEhkqL1f5sgjc5ZGQ8zNGNIawBU8Rgj78C4s88mSmziXqlW4/
 B2b/ZqYnuSc2/iWoG73nLGHxOE84p1xCyrTQCeC1Fmv5o6HuU/YS+9XUr
 ef8gW8ujNVsKONb2OXKgYiQ1tG9e3II9oCWxhFWhoWbkJxkTf1ykrqN06
 UvLe3tRHMEQ6Od8AiSv9+ksjIOoR35C45nsgKPKSmdz6qdzoZ8OBniMYN
 0IFWozq1iWgbHud3Vxs0osd66YVqYU1kK/q1scFbQI8fBpUTYWoi9vBzf
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M9n4r2A9
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
branch HEAD: b0b79119cea2dd0d4bbfafc7c0f41d42edb41466  staging: rtl8192e: remove set but otherwise unused local variable iv16

elapsed time: 1446m

configs tested: 244
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240824   gcc-13.2.0
arc                   randconfig-001-20240825   gcc-13.2.0
arc                   randconfig-002-20240824   gcc-13.2.0
arc                   randconfig-002-20240825   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                       aspeed_g4_defconfig   clang-20
arm                         at91_dt_defconfig   clang-20
arm                                 defconfig   gcc-13.2.0
arm                          gemini_defconfig   clang-20
arm                         mv78xx0_defconfig   clang-20
arm                         nhk8815_defconfig   clang-20
arm                   randconfig-001-20240824   gcc-13.2.0
arm                   randconfig-001-20240825   gcc-13.2.0
arm                   randconfig-002-20240824   gcc-13.2.0
arm                   randconfig-002-20240825   gcc-13.2.0
arm                   randconfig-003-20240824   gcc-13.2.0
arm                   randconfig-003-20240825   gcc-13.2.0
arm                   randconfig-004-20240824   gcc-13.2.0
arm                   randconfig-004-20240825   gcc-13.2.0
arm                             rpc_defconfig   clang-20
arm                           sunxi_defconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240824   gcc-13.2.0
arm64                 randconfig-001-20240825   gcc-13.2.0
arm64                 randconfig-002-20240824   gcc-13.2.0
arm64                 randconfig-002-20240825   gcc-13.2.0
arm64                 randconfig-003-20240824   gcc-13.2.0
arm64                 randconfig-003-20240825   gcc-13.2.0
arm64                 randconfig-004-20240824   gcc-13.2.0
arm64                 randconfig-004-20240825   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240824   gcc-13.2.0
csky                  randconfig-001-20240825   gcc-13.2.0
csky                  randconfig-002-20240824   gcc-13.2.0
csky                  randconfig-002-20240825   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240824   clang-18
i386         buildonly-randconfig-001-20240825   clang-18
i386         buildonly-randconfig-002-20240824   clang-18
i386         buildonly-randconfig-002-20240825   clang-18
i386         buildonly-randconfig-003-20240824   clang-18
i386         buildonly-randconfig-003-20240825   clang-18
i386         buildonly-randconfig-004-20240824   clang-18
i386         buildonly-randconfig-004-20240825   clang-18
i386         buildonly-randconfig-005-20240824   clang-18
i386         buildonly-randconfig-005-20240825   clang-18
i386         buildonly-randconfig-006-20240824   clang-18
i386         buildonly-randconfig-006-20240825   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240824   clang-18
i386                  randconfig-001-20240825   clang-18
i386                  randconfig-002-20240824   clang-18
i386                  randconfig-002-20240825   clang-18
i386                  randconfig-003-20240824   clang-18
i386                  randconfig-003-20240825   clang-18
i386                  randconfig-004-20240824   clang-18
i386                  randconfig-004-20240825   clang-18
i386                  randconfig-005-20240824   clang-18
i386                  randconfig-005-20240825   clang-18
i386                  randconfig-006-20240824   clang-18
i386                  randconfig-006-20240825   clang-18
i386                  randconfig-011-20240824   clang-18
i386                  randconfig-011-20240825   clang-18
i386                  randconfig-012-20240824   clang-18
i386                  randconfig-012-20240825   clang-18
i386                  randconfig-013-20240824   clang-18
i386                  randconfig-013-20240825   clang-18
i386                  randconfig-014-20240824   clang-18
i386                  randconfig-014-20240825   clang-18
i386                  randconfig-015-20240824   clang-18
i386                  randconfig-015-20240825   clang-18
i386                  randconfig-016-20240824   clang-18
i386                  randconfig-016-20240825   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240824   gcc-13.2.0
loongarch             randconfig-001-20240825   gcc-13.2.0
loongarch             randconfig-002-20240824   gcc-13.2.0
loongarch             randconfig-002-20240825   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                          rb532_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240824   gcc-13.2.0
nios2                 randconfig-001-20240825   gcc-13.2.0
nios2                 randconfig-002-20240824   gcc-13.2.0
nios2                 randconfig-002-20240825   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240824   gcc-13.2.0
parisc                randconfig-001-20240825   gcc-13.2.0
parisc                randconfig-002-20240824   gcc-13.2.0
parisc                randconfig-002-20240825   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      pasemi_defconfig   clang-20
powerpc                     powernv_defconfig   clang-20
powerpc                      ppc44x_defconfig   clang-20
powerpc                      ppc64e_defconfig   clang-20
powerpc               randconfig-001-20240824   gcc-13.2.0
powerpc               randconfig-001-20240825   gcc-13.2.0
powerpc               randconfig-002-20240825   gcc-13.2.0
powerpc                     tqm8548_defconfig   clang-20
powerpc64             randconfig-001-20240824   gcc-13.2.0
powerpc64             randconfig-001-20240825   gcc-13.2.0
powerpc64             randconfig-002-20240824   gcc-13.2.0
powerpc64             randconfig-003-20240824   gcc-13.2.0
powerpc64             randconfig-003-20240825   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                    nommu_k210_defconfig   clang-20
riscv                 randconfig-001-20240824   gcc-13.2.0
riscv                 randconfig-001-20240825   gcc-13.2.0
riscv                 randconfig-002-20240824   gcc-13.2.0
riscv                 randconfig-002-20240825   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                          debug_defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240824   gcc-13.2.0
s390                  randconfig-001-20240825   gcc-13.2.0
s390                  randconfig-002-20240824   gcc-13.2.0
s390                  randconfig-002-20240825   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240824   gcc-13.2.0
sh                    randconfig-001-20240825   gcc-13.2.0
sh                    randconfig-002-20240824   gcc-13.2.0
sh                    randconfig-002-20240825   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240824   gcc-13.2.0
sparc64               randconfig-001-20240825   gcc-13.2.0
sparc64               randconfig-002-20240824   gcc-13.2.0
sparc64               randconfig-002-20240825   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240824   gcc-13.2.0
um                    randconfig-001-20240825   gcc-13.2.0
um                    randconfig-002-20240824   gcc-13.2.0
um                    randconfig-002-20240825   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240824   clang-18
x86_64       buildonly-randconfig-001-20240825   gcc-12
x86_64       buildonly-randconfig-002-20240824   clang-18
x86_64       buildonly-randconfig-002-20240825   gcc-12
x86_64       buildonly-randconfig-003-20240824   clang-18
x86_64       buildonly-randconfig-003-20240825   gcc-12
x86_64       buildonly-randconfig-004-20240824   clang-18
x86_64       buildonly-randconfig-004-20240825   gcc-12
x86_64       buildonly-randconfig-005-20240824   clang-18
x86_64       buildonly-randconfig-005-20240825   gcc-12
x86_64       buildonly-randconfig-006-20240824   clang-18
x86_64       buildonly-randconfig-006-20240825   gcc-12
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240824   clang-18
x86_64                randconfig-001-20240825   gcc-12
x86_64                randconfig-002-20240824   clang-18
x86_64                randconfig-002-20240825   gcc-12
x86_64                randconfig-003-20240824   clang-18
x86_64                randconfig-003-20240825   gcc-12
x86_64                randconfig-004-20240824   clang-18
x86_64                randconfig-004-20240825   gcc-12
x86_64                randconfig-005-20240824   clang-18
x86_64                randconfig-005-20240825   gcc-12
x86_64                randconfig-006-20240824   clang-18
x86_64                randconfig-006-20240825   gcc-12
x86_64                randconfig-011-20240824   clang-18
x86_64                randconfig-011-20240825   gcc-12
x86_64                randconfig-012-20240824   clang-18
x86_64                randconfig-012-20240825   gcc-12
x86_64                randconfig-013-20240824   clang-18
x86_64                randconfig-013-20240825   gcc-12
x86_64                randconfig-014-20240824   clang-18
x86_64                randconfig-014-20240825   gcc-12
x86_64                randconfig-015-20240824   clang-18
x86_64                randconfig-015-20240825   gcc-12
x86_64                randconfig-016-20240824   clang-18
x86_64                randconfig-016-20240825   gcc-12
x86_64                randconfig-071-20240824   clang-18
x86_64                randconfig-071-20240825   gcc-12
x86_64                randconfig-072-20240824   clang-18
x86_64                randconfig-072-20240825   gcc-12
x86_64                randconfig-073-20240824   clang-18
x86_64                randconfig-073-20240825   gcc-12
x86_64                randconfig-074-20240824   clang-18
x86_64                randconfig-074-20240825   gcc-12
x86_64                randconfig-075-20240824   clang-18
x86_64                randconfig-075-20240825   gcc-12
x86_64                randconfig-076-20240824   clang-18
x86_64                randconfig-076-20240825   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240824   gcc-13.2.0
xtensa                randconfig-001-20240825   gcc-13.2.0
xtensa                randconfig-002-20240824   gcc-13.2.0
xtensa                randconfig-002-20240825   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
