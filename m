Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E28841AA7
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jan 2024 04:40:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D3A582C7C;
	Tue, 30 Jan 2024 03:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D3A582C7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfKz5wcnXn8Q; Tue, 30 Jan 2024 03:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43F278267F;
	Tue, 30 Jan 2024 03:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43F278267F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B87F1BF2BD
 for <devel@linuxdriverproject.org>; Tue, 30 Jan 2024 03:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13AD282AA7
 for <devel@linuxdriverproject.org>; Tue, 30 Jan 2024 03:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13AD282AA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 87FI9eEX0oyl for <devel@linuxdriverproject.org>;
 Tue, 30 Jan 2024 03:40:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E9468266A
 for <devel@driverdev.osuosl.org>; Tue, 30 Jan 2024 03:40:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E9468266A
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="402792581"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="402792581"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 19:40:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="36361605"
Received: from lkp-server01.sh.intel.com (HELO 370188f8dc87) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 29 Jan 2024 19:40:45 -0800
Received: from kbuild by 370188f8dc87 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rUezK-0004uA-2C;
 Tue, 30 Jan 2024 03:40:42 +0000
Date: Tue, 30 Jan 2024 11:39:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 26105f537f0c60eacfeb430abd2e05d7ddcdd8aa
Message-ID: <202401301146.RkHz026B-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706586047; x=1738122047;
 h=date:from:to:cc:subject:message-id;
 bh=Js3zOVUntR0PGkqpBYekk00pDsQxwh4TEremR/xbKxs=;
 b=ErLsyta/4qaBKpDH8KbXthalDRleBhqXDmZMhH3YMJyPEOBIkAJzjda0
 kk2R7rMg8dMxbOh4OFUpqTnfpO6RSj98EZuzWc9gHn/B7Nm1sOR1R91Rp
 AYlgQ9J0ne1J0yCdKclOA0M5CpY8SPpQNt0bmPfPGWpDFOEEkYCnz6Nag
 pCWeIN7P/suDLJSp67CtmeMqMbsdjMxCJBrND8FfF/x/pBfgf7D+JbVyN
 pw1Hg9Nbd3yall3aHtAiPgBjZ2/jD1TslmbEXhoNEfOl5pjkBT9YJUeOJ
 PiLRfr4rwYaXOXOAO5xEfhX6J2GN7+5gcIVRoO7qvZxyFoAQLRfK9gLbA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ErLsyta/
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 26105f537f0c60eacfeb430abd2e05d7ddcdd8aa  make a bunch of struct bus_type const.

elapsed time: 728m

configs tested: 164
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
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240130   gcc  
arc                   randconfig-002-20240130   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                       multi_v4t_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                   randconfig-001-20240130   gcc  
arm                   randconfig-002-20240130   gcc  
arm                   randconfig-003-20240130   gcc  
arm                   randconfig-004-20240130   gcc  
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240130   gcc  
arm64                 randconfig-002-20240130   gcc  
arm64                 randconfig-003-20240130   gcc  
arm64                 randconfig-004-20240130   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240130   gcc  
csky                  randconfig-002-20240130   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240130   gcc  
i386         buildonly-randconfig-002-20240130   gcc  
i386         buildonly-randconfig-003-20240130   gcc  
i386         buildonly-randconfig-004-20240130   gcc  
i386         buildonly-randconfig-005-20240130   gcc  
i386         buildonly-randconfig-006-20240130   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20240130   gcc  
i386                  randconfig-002-20240130   gcc  
i386                  randconfig-003-20240130   gcc  
i386                  randconfig-004-20240130   gcc  
i386                  randconfig-005-20240130   gcc  
i386                  randconfig-006-20240130   gcc  
i386                  randconfig-011-20240130   clang
i386                  randconfig-012-20240130   clang
i386                  randconfig-013-20240130   clang
i386                  randconfig-014-20240130   clang
i386                  randconfig-015-20240130   clang
i386                  randconfig-016-20240130   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240130   gcc  
loongarch             randconfig-002-20240130   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                        vocore2_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240130   gcc  
nios2                 randconfig-002-20240130   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240130   gcc  
parisc                randconfig-002-20240130   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240130   gcc  
powerpc               randconfig-002-20240130   gcc  
powerpc               randconfig-003-20240130   gcc  
powerpc                    socrates_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240130   gcc  
powerpc64             randconfig-002-20240130   gcc  
powerpc64             randconfig-003-20240130   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240130   gcc  
riscv                 randconfig-002-20240130   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20240130   gcc  
sh                    randconfig-002-20240130   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240130   gcc  
sparc64               randconfig-002-20240130   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240130   gcc  
um                    randconfig-002-20240130   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240130   gcc  
xtensa                randconfig-002-20240130   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
