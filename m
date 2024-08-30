Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD92966A1B
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2024 21:55:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0651B84487;
	Fri, 30 Aug 2024 19:55:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AzaUdQYnNl7b; Fri, 30 Aug 2024 19:55:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7CC084488
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7CC084488;
	Fri, 30 Aug 2024 19:55:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C476F1BF2F4
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 19:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BDD5B425A3
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 19:55:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PqMv9XDsXCHQ for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2024 19:55:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 41856425A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41856425A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41856425A1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2024 19:55:35 +0000 (UTC)
X-CSE-ConnectionGUID: kGei1nazSlqbE0jwVidiuw==
X-CSE-MsgGUID: ugUPEA44Qh+1qL4MHjGyaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="41183543"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="41183543"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 12:55:35 -0700
X-CSE-ConnectionGUID: h8fNutegQ4mvnIkZb1uc8A==
X-CSE-MsgGUID: KdugqgStTia26IxXYcyG7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="63612044"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 30 Aug 2024 12:55:34 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sk7iW-00022A-0I;
 Fri, 30 Aug 2024 19:55:32 +0000
Date: Sat, 31 Aug 2024 03:54:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b7059df44f12a481ed257b242607c0ff64b36a95
Message-ID: <202408310332.8z6oQhjN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725047736; x=1756583736;
 h=date:from:to:cc:subject:message-id;
 bh=TR1sez8fLEcd+o5eMCADBpr5fu+eCl7D8Gl2PDI/Tm4=;
 b=DMxKT3TBAId//bW/oti++Dw1g8ttyx/Kaex+m73YdPo8z4titL7dC69s
 7Z2lF+uxZO8D3R1KKDtrxEPrx6lz2mYrjLSB4ZizDQbmnXPRvPnsREAUK
 LolsMsaCY/eJVltWUkaw20sKY2L/ZjLetWhROnWrSfFvCVp0TUZNybOzq
 U1HS2mqsaYFdbQK2WDVxZu4bpZaur7ZOEL3im2GFkz3R64Wf7Oo7M3hva
 6ncUwEowAIWe5N77UgaNt15XrRuO9RAuyOMAjYzbi16o3/7zU3NfevV9L
 hTwzYegCJazURSU7hmaO0pONgCuSRg5KChMJ6fxP6C+OJ9ftlMciuMYnB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DMxKT3TB
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
branch HEAD: b7059df44f12a481ed257b242607c0ff64b36a95  staging: rtl8712: Calculate size from pointer

elapsed time: 1703m

configs tested: 145
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-14.1.0
arc                   randconfig-001-20240830   gcc-14.1.0
arc                   randconfig-002-20240830   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                              allyesconfig   gcc-13.2.0
arm                                 defconfig   gcc-14.1.0
arm                   randconfig-001-20240830   gcc-14.1.0
arm                   randconfig-002-20240830   gcc-14.1.0
arm                   randconfig-003-20240830   gcc-14.1.0
arm                   randconfig-004-20240830   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240830   gcc-14.1.0
arm64                 randconfig-002-20240830   gcc-14.1.0
arm64                 randconfig-003-20240830   gcc-14.1.0
arm64                 randconfig-004-20240830   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240830   gcc-14.1.0
csky                  randconfig-002-20240830   gcc-14.1.0
hexagon                           allnoconfig   gcc-14.1.0
hexagon                             defconfig   gcc-14.1.0
hexagon               randconfig-001-20240830   gcc-14.1.0
hexagon               randconfig-002-20240830   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240830   gcc-12
i386         buildonly-randconfig-002-20240830   gcc-12
i386         buildonly-randconfig-003-20240830   gcc-12
i386         buildonly-randconfig-004-20240830   gcc-12
i386         buildonly-randconfig-005-20240830   gcc-12
i386         buildonly-randconfig-006-20240830   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240830   gcc-12
i386                  randconfig-002-20240830   gcc-12
i386                  randconfig-003-20240830   gcc-12
i386                  randconfig-004-20240830   gcc-12
i386                  randconfig-005-20240830   gcc-12
i386                  randconfig-006-20240830   gcc-12
i386                  randconfig-011-20240830   gcc-12
i386                  randconfig-012-20240830   gcc-12
i386                  randconfig-013-20240830   gcc-12
i386                  randconfig-014-20240830   gcc-12
i386                  randconfig-015-20240830   gcc-12
i386                  randconfig-016-20240830   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240830   gcc-14.1.0
loongarch             randconfig-002-20240830   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240830   gcc-14.1.0
nios2                 randconfig-002-20240830   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                            defconfig   gcc-12
parisc                            allnoconfig   clang-20
parisc                              defconfig   gcc-12
parisc                randconfig-001-20240830   gcc-14.1.0
parisc                randconfig-002-20240830   gcc-14.1.0
parisc64                            defconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc               randconfig-001-20240830   gcc-14.1.0
powerpc               randconfig-002-20240830   gcc-14.1.0
powerpc64             randconfig-001-20240830   gcc-14.1.0
powerpc64             randconfig-002-20240830   gcc-14.1.0
powerpc64             randconfig-003-20240830   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                               defconfig   gcc-12
riscv                 randconfig-001-20240830   gcc-14.1.0
riscv                 randconfig-002-20240830   gcc-14.1.0
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                  randconfig-001-20240830   gcc-14.1.0
s390                  randconfig-002-20240830   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                    randconfig-001-20240830   gcc-14.1.0
sh                    randconfig-002-20240830   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
sparc64               randconfig-001-20240830   gcc-14.1.0
sparc64               randconfig-002-20240830   gcc-14.1.0
um                                allnoconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240830   gcc-14.1.0
um                    randconfig-002-20240830   gcc-14.1.0
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240830   clang-18
x86_64       buildonly-randconfig-002-20240830   clang-18
x86_64       buildonly-randconfig-003-20240830   clang-18
x86_64       buildonly-randconfig-004-20240830   clang-18
x86_64       buildonly-randconfig-005-20240830   clang-18
x86_64       buildonly-randconfig-006-20240830   clang-18
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240830   clang-18
x86_64                randconfig-002-20240830   clang-18
x86_64                randconfig-003-20240830   clang-18
x86_64                randconfig-004-20240830   clang-18
x86_64                randconfig-005-20240830   clang-18
x86_64                randconfig-006-20240830   clang-18
x86_64                randconfig-011-20240830   clang-18
x86_64                randconfig-012-20240830   clang-18
x86_64                randconfig-013-20240830   clang-18
x86_64                randconfig-014-20240830   clang-18
x86_64                randconfig-015-20240830   clang-18
x86_64                randconfig-016-20240830   clang-18
x86_64                randconfig-071-20240830   clang-18
x86_64                randconfig-072-20240830   clang-18
x86_64                randconfig-073-20240830   clang-18
x86_64                randconfig-074-20240830   clang-18
x86_64                randconfig-075-20240830   clang-18
x86_64                randconfig-076-20240830   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240830   gcc-14.1.0
xtensa                randconfig-002-20240830   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
