Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1000886F38A
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Mar 2024 04:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74E88409D8;
	Sun,  3 Mar 2024 03:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9e907kMP3Who; Sun,  3 Mar 2024 03:53:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60D58414CD
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60D58414CD;
	Sun,  3 Mar 2024 03:53:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 382DA1BF863
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 03:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3157840104
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 03:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vpTB1Wq_hBwV for <devel@linuxdriverproject.org>;
 Sun,  3 Mar 2024 03:53:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA03040065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA03040065
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA03040065
 for <devel@driverdev.osuosl.org>; Sun,  3 Mar 2024 03:53:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11001"; a="3878899"
X-IronPort-AV: E=Sophos;i="6.06,200,1705392000"; 
   d="scan'208";a="3878899"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2024 19:53:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,200,1705392000"; 
   d="scan'208";a="8833412"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 02 Mar 2024 19:53:07 -0800
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rgcuO-0000UO-2C;
 Sun, 03 Mar 2024 03:53:04 +0000
Date: Sun, 03 Mar 2024 11:52:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 04edfa7fa059ba50d3236b55ba0ae23b1721e868
Message-ID: <202403031126.gRsIAE0A-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709437989; x=1740973989;
 h=date:from:to:cc:subject:message-id;
 bh=wyZHDOn6Wd6QkC5f357t7rqneyceVwvM7QhmtcTHPVc=;
 b=bbcSCmoz5RuTcFeKvkoAqL1gOgi2lymeIaR1vhtwIVGIwHpQmiCtl739
 5sdO13jptYD/FfGN/3aK8HU1cDBufggY1rW28XC2X1Nl6ewWaRw6FgD+k
 v+AOEmV+ho9cpP0FgAcdZAHbl5HUfHYuddrndoR/wppmSQeX2Xs5/GKwa
 2T7IqAxHnEw8YZUhC+ufSwBDCeoPf4JYtpmLsE/PhkK9wiu2zPLcok0uP
 wsEDus36B/q7kMkoyAj5gZB8Z0OtjjdwyI/uT7yqrC4Pym3IbnxCZpQ+Q
 JmN3JoG43z3y9LUowMDmxvnKMLLnGpgdR6wI2S6PTHSNWZFMLIbiA9cxN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bbcSCmoz
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
branch HEAD: 04edfa7fa059ba50d3236b55ba0ae23b1721e868  sysfs: Introduce DEFINE_SIMPLE_SYSFS_GROUP_VISIBLE()

elapsed time: 727m

configs tested: 177
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
arc                   randconfig-001-20240303   gcc  
arc                   randconfig-002-20240303   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240303   gcc  
arm                   randconfig-002-20240303   clang
arm                   randconfig-003-20240303   clang
arm                   randconfig-004-20240303   clang
arm                           sama5_defconfig   gcc  
arm                          sp7021_defconfig   gcc  
arm                         vf610m4_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240303   clang
arm64                 randconfig-002-20240303   gcc  
arm64                 randconfig-003-20240303   gcc  
arm64                 randconfig-004-20240303   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240303   gcc  
csky                  randconfig-002-20240303   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240303   clang
hexagon               randconfig-002-20240303   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240303   clang
i386         buildonly-randconfig-002-20240303   clang
i386         buildonly-randconfig-003-20240303   gcc  
i386         buildonly-randconfig-004-20240303   clang
i386         buildonly-randconfig-005-20240303   clang
i386         buildonly-randconfig-006-20240303   clang
i386                                defconfig   clang
i386                  randconfig-001-20240303   gcc  
i386                  randconfig-002-20240303   gcc  
i386                  randconfig-003-20240303   gcc  
i386                  randconfig-004-20240303   clang
i386                  randconfig-005-20240303   gcc  
i386                  randconfig-006-20240303   gcc  
i386                  randconfig-011-20240303   clang
i386                  randconfig-012-20240303   gcc  
i386                  randconfig-013-20240303   gcc  
i386                  randconfig-014-20240303   gcc  
i386                  randconfig-015-20240303   gcc  
i386                  randconfig-016-20240303   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240303   gcc  
loongarch             randconfig-002-20240303   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                           ip28_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240303   gcc  
nios2                 randconfig-002-20240303   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240303   gcc  
parisc                randconfig-002-20240303   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc               randconfig-001-20240303   clang
powerpc               randconfig-002-20240303   gcc  
powerpc               randconfig-003-20240303   gcc  
powerpc                     tqm5200_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc64             randconfig-001-20240303   gcc  
powerpc64             randconfig-002-20240303   clang
powerpc64             randconfig-003-20240303   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240303   gcc  
riscv                 randconfig-002-20240303   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240303   clang
s390                  randconfig-002-20240303   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240303   gcc  
sh                    randconfig-002-20240303   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240303   gcc  
sparc64               randconfig-002-20240303   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240303   clang
um                    randconfig-002-20240303   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240303   clang
x86_64       buildonly-randconfig-002-20240303   clang
x86_64       buildonly-randconfig-003-20240303   clang
x86_64       buildonly-randconfig-004-20240303   clang
x86_64       buildonly-randconfig-005-20240303   gcc  
x86_64       buildonly-randconfig-006-20240303   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240303   clang
x86_64                randconfig-002-20240303   gcc  
x86_64                randconfig-003-20240303   clang
x86_64                randconfig-004-20240303   clang
x86_64                randconfig-005-20240303   clang
x86_64                randconfig-006-20240303   gcc  
x86_64                randconfig-011-20240303   gcc  
x86_64                randconfig-012-20240303   gcc  
x86_64                randconfig-013-20240303   clang
x86_64                randconfig-014-20240303   gcc  
x86_64                randconfig-015-20240303   clang
x86_64                randconfig-016-20240303   gcc  
x86_64                randconfig-071-20240303   clang
x86_64                randconfig-072-20240303   gcc  
x86_64                randconfig-073-20240303   gcc  
x86_64                randconfig-074-20240303   gcc  
x86_64                randconfig-075-20240303   clang
x86_64                randconfig-076-20240303   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                randconfig-001-20240303   gcc  
xtensa                randconfig-002-20240303   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
