Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA90859734
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Feb 2024 14:55:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A26B740773;
	Sun, 18 Feb 2024 13:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqnk-rq3aqC5; Sun, 18 Feb 2024 13:55:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55DEA40654
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55DEA40654;
	Sun, 18 Feb 2024 13:55:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8603E1BF31A
 for <devel@linuxdriverproject.org>; Sun, 18 Feb 2024 13:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7059B40158
 for <devel@linuxdriverproject.org>; Sun, 18 Feb 2024 13:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GHCJTRJ5nYSA for <devel@linuxdriverproject.org>;
 Sun, 18 Feb 2024 13:55:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94345400DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94345400DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94345400DD
 for <devel@driverdev.osuosl.org>; Sun, 18 Feb 2024 13:55:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10987"; a="2487037"
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; 
   d="scan'208";a="2487037"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2024 05:55:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; 
   d="scan'208";a="4626358"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 18 Feb 2024 05:55:04 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rbhdF-00033i-1S;
 Sun, 18 Feb 2024 13:55:01 +0000
Date: Sun, 18 Feb 2024 21:54:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 5928d411557ec5d53832cdd39fc443704a3e5b77
Message-ID: <202402182136.Z9vcgdx0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708264506; x=1739800506;
 h=date:from:to:cc:subject:message-id;
 bh=mQqJJcvHsC3YRAKYz6dsts4t8GOk0+7EkWLuFyCDy+8=;
 b=MWWLRl4FXOO6vRlJ3KXsEjyFItdPN8mZC9YzcN2wipKCIwhENPrm1vyz
 mEu+BE4Nv1c46+uzMhNhddMydMSFj80O/AwvW5vY/fQ9LA4IqcQpSob5V
 ZgLfwe5ga8TetJe6Tzo7w8CywJszvaU224tLvKNhBdB7DDsaeZe365W6m
 gdrYtLxNH2RbUaIR5cx3U2zidDXa7HdUBt4cF2hTIjBvVZlXkx4g0b4Zw
 MsbkeBQMUd0K9WW8oOaeRQQlw36l33rC3iab7XnjU4ysAUJyuQcV7b7iv
 Mu65I7ewHgvE79D5ihIwkhAA4NFKq3XEjmoqvzcQ1wtkFhoIoa6o8U4vX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MWWLRl4F
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 5928d411557ec5d53832cdd39fc443704a3e5b77  Documentation: Document the Linux Kernel CVE process

elapsed time: 1443m

configs tested: 209
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
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20240218   gcc  
arc                   randconfig-002-20240218   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          exynos_defconfig   clang
arm                      jornada720_defconfig   clang
arm                        mvebu_v7_defconfig   clang
arm                   randconfig-001-20240218   clang
arm                   randconfig-002-20240218   clang
arm                   randconfig-003-20240218   gcc  
arm                   randconfig-004-20240218   clang
arm                        shmobile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240218   clang
arm64                 randconfig-002-20240218   clang
arm64                 randconfig-003-20240218   clang
arm64                 randconfig-004-20240218   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240218   gcc  
csky                  randconfig-002-20240218   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240218   clang
hexagon               randconfig-002-20240218   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240217   gcc  
i386         buildonly-randconfig-002-20240217   clang
i386         buildonly-randconfig-003-20240217   gcc  
i386         buildonly-randconfig-004-20240217   gcc  
i386         buildonly-randconfig-005-20240217   gcc  
i386         buildonly-randconfig-006-20240217   clang
i386         buildonly-randconfig-006-20240218   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240217   gcc  
i386                  randconfig-002-20240217   gcc  
i386                  randconfig-002-20240218   gcc  
i386                  randconfig-003-20240217   clang
i386                  randconfig-004-20240217   gcc  
i386                  randconfig-005-20240217   gcc  
i386                  randconfig-006-20240217   clang
i386                  randconfig-006-20240218   gcc  
i386                  randconfig-011-20240217   gcc  
i386                  randconfig-011-20240218   gcc  
i386                  randconfig-012-20240217   gcc  
i386                  randconfig-012-20240218   gcc  
i386                  randconfig-013-20240217   clang
i386                  randconfig-014-20240217   clang
i386                  randconfig-014-20240218   gcc  
i386                  randconfig-015-20240217   clang
i386                  randconfig-015-20240218   gcc  
i386                  randconfig-016-20240217   gcc  
i386                  randconfig-016-20240218   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240218   gcc  
loongarch             randconfig-002-20240218   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   gcc  
mips                malta_qemu_32r6_defconfig   gcc  
mips                           mtx1_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240218   gcc  
nios2                 randconfig-002-20240218   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240218   gcc  
parisc                randconfig-002-20240218   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      katmai_defconfig   clang
powerpc                      mgcoge_defconfig   clang
powerpc                      ppc64e_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-001-20240218   gcc  
powerpc               randconfig-002-20240218   gcc  
powerpc               randconfig-003-20240218   clang
powerpc                     stx_gp3_defconfig   clang
powerpc64             randconfig-001-20240218   clang
powerpc64             randconfig-002-20240218   gcc  
powerpc64             randconfig-003-20240218   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240218   gcc  
riscv                 randconfig-002-20240218   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240218   gcc  
s390                  randconfig-002-20240218   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20240218   gcc  
sh                    randconfig-002-20240218   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          alldefconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240218   gcc  
sparc64               randconfig-002-20240218   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240218   gcc  
um                    randconfig-002-20240218   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240217   gcc  
x86_64       buildonly-randconfig-002-20240217   clang
x86_64       buildonly-randconfig-002-20240218   gcc  
x86_64       buildonly-randconfig-003-20240217   gcc  
x86_64       buildonly-randconfig-003-20240218   gcc  
x86_64       buildonly-randconfig-004-20240217   gcc  
x86_64       buildonly-randconfig-005-20240217   clang
x86_64       buildonly-randconfig-005-20240218   gcc  
x86_64       buildonly-randconfig-006-20240217   gcc  
x86_64       buildonly-randconfig-006-20240218   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240217   gcc  
x86_64                randconfig-002-20240217   clang
x86_64                randconfig-003-20240217   clang
x86_64                randconfig-003-20240218   gcc  
x86_64                randconfig-004-20240217   clang
x86_64                randconfig-004-20240218   gcc  
x86_64                randconfig-005-20240217   clang
x86_64                randconfig-005-20240218   gcc  
x86_64                randconfig-006-20240217   clang
x86_64                randconfig-011-20240217   gcc  
x86_64                randconfig-012-20240217   gcc  
x86_64                randconfig-012-20240218   gcc  
x86_64                randconfig-013-20240217   clang
x86_64                randconfig-014-20240217   gcc  
x86_64                randconfig-015-20240217   gcc  
x86_64                randconfig-015-20240218   gcc  
x86_64                randconfig-016-20240217   clang
x86_64                randconfig-071-20240217   gcc  
x86_64                randconfig-071-20240218   gcc  
x86_64                randconfig-072-20240217   gcc  
x86_64                randconfig-073-20240217   gcc  
x86_64                randconfig-073-20240218   gcc  
x86_64                randconfig-074-20240217   clang
x86_64                randconfig-074-20240218   gcc  
x86_64                randconfig-075-20240217   gcc  
x86_64                randconfig-076-20240217   gcc  
x86_64                randconfig-076-20240218   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240218   gcc  
xtensa                randconfig-002-20240218   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
