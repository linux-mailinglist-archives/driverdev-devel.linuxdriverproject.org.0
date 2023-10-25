Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E317D6B03
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Oct 2023 14:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0608C432F3;
	Wed, 25 Oct 2023 12:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0608C432F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pDwMWtAW1bG6; Wed, 25 Oct 2023 12:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 727BA43309;
	Wed, 25 Oct 2023 12:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 727BA43309
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 189241BF48B
 for <devel@linuxdriverproject.org>; Wed, 25 Oct 2023 12:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8488484988
 for <devel@linuxdriverproject.org>; Wed, 25 Oct 2023 12:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8488484988
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMSwczdcA8xc for <devel@linuxdriverproject.org>;
 Wed, 25 Oct 2023 12:16:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 282ED84D37
 for <devel@driverdev.osuosl.org>; Wed, 25 Oct 2023 12:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 282ED84D37
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="451519711"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="451519711"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="71794"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 25 Oct 2023 05:15:31 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qvcnr-0008s9-0m;
 Wed, 25 Oct 2023 12:16:03 +0000
Date: Wed, 25 Oct 2023 20:15:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 0217f3944aebad1d4beec5894ec80472b94b4139
Message-ID: <202310252011.vGiqtEkD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236168; x=1729772168;
 h=date:from:to:cc:subject:message-id;
 bh=W1L+VFAihxxJgqTr/JXMCztqdeD6BH6xxpkt6PlMnoE=;
 b=nlt4qUtWZlFQ/ZmRCpiYcKZeWozU0NEapRd8xFVsb8GWzCLd0WUumDIJ
 oXZ/pwhGZE63R2O7mHLt2yO8hydTVYnz04+rMuAIUkJcvt5HHUnIvpm2U
 PpEoqpXUwLOZUa/ZImoaOGGpB+/sgzjqskT7FgHn9UCgwujI8FzNWxVVI
 9q7qRlrLlnQXKcnD0pmdIrPrn+oeV6mUd7YrzpeVd87F3jEz6ZtggZlkK
 a4ZUEplg9CFauyEJUsswSxojdtllj4xiqpPmwGnLycQ23frYZs1W5dtFV
 eR7beN0Nlwps54k7ILEOz65WsNDjUGHH6jk6bK+9j9GVh5n05i1jXE4Pr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nlt4qUtW
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
branch HEAD: 0217f3944aebad1d4beec5894ec80472b94b4139  Documentation: security-bugs.rst: linux-distros relaxed their rules

elapsed time: 1479m

configs tested: 178
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
arc                   randconfig-001-20231024   gcc  
arc                   randconfig-001-20231025   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          ixp4xx_defconfig   clang
arm                   randconfig-001-20231025   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231025   gcc  
i386         buildonly-randconfig-002-20231025   gcc  
i386         buildonly-randconfig-003-20231025   gcc  
i386         buildonly-randconfig-004-20231025   gcc  
i386         buildonly-randconfig-005-20231025   gcc  
i386         buildonly-randconfig-006-20231025   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231025   gcc  
i386                  randconfig-002-20231025   gcc  
i386                  randconfig-003-20231025   gcc  
i386                  randconfig-004-20231025   gcc  
i386                  randconfig-005-20231025   gcc  
i386                  randconfig-006-20231025   gcc  
i386                  randconfig-011-20231025   gcc  
i386                  randconfig-012-20231025   gcc  
i386                  randconfig-013-20231025   gcc  
i386                  randconfig-014-20231025   gcc  
i386                  randconfig-015-20231025   gcc  
i386                  randconfig-016-20231025   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231024   gcc  
loongarch             randconfig-001-20231025   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           alldefconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                 mpc832x_rdb_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8548_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231025   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231025   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231024   gcc  
sparc                 randconfig-001-20231025   gcc  
sparc                       sparc32_defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
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
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231024   gcc  
x86_64       buildonly-randconfig-001-20231025   gcc  
x86_64       buildonly-randconfig-002-20231024   gcc  
x86_64       buildonly-randconfig-002-20231025   gcc  
x86_64       buildonly-randconfig-003-20231024   gcc  
x86_64       buildonly-randconfig-003-20231025   gcc  
x86_64       buildonly-randconfig-004-20231024   gcc  
x86_64       buildonly-randconfig-004-20231025   gcc  
x86_64       buildonly-randconfig-005-20231024   gcc  
x86_64       buildonly-randconfig-005-20231025   gcc  
x86_64       buildonly-randconfig-006-20231024   gcc  
x86_64       buildonly-randconfig-006-20231025   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231025   gcc  
x86_64                randconfig-002-20231025   gcc  
x86_64                randconfig-003-20231025   gcc  
x86_64                randconfig-004-20231025   gcc  
x86_64                randconfig-005-20231025   gcc  
x86_64                randconfig-006-20231025   gcc  
x86_64                randconfig-011-20231025   gcc  
x86_64                randconfig-012-20231025   gcc  
x86_64                randconfig-013-20231025   gcc  
x86_64                randconfig-014-20231025   gcc  
x86_64                randconfig-015-20231025   gcc  
x86_64                randconfig-016-20231025   gcc  
x86_64                randconfig-071-20231025   gcc  
x86_64                randconfig-072-20231025   gcc  
x86_64                randconfig-073-20231025   gcc  
x86_64                randconfig-074-20231025   gcc  
x86_64                randconfig-075-20231025   gcc  
x86_64                randconfig-076-20231025   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
