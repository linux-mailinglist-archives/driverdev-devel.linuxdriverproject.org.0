Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BBD8BBFA0
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2024 09:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AFCF40562;
	Sun,  5 May 2024 07:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nN5Xkv11TcZk; Sun,  5 May 2024 07:42:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE998407EC
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE998407EC;
	Sun,  5 May 2024 07:41:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD9651BF3D9
 for <devel@linuxdriverproject.org>; Sun,  5 May 2024 07:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C3D7040386
 for <devel@linuxdriverproject.org>; Sun,  5 May 2024 07:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aZKU1RZULHTq for <devel@linuxdriverproject.org>;
 Sun,  5 May 2024 07:41:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1AE840173
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1AE840173
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1AE840173
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2024 07:41:53 +0000 (UTC)
X-CSE-ConnectionGUID: Juf0BJEVSxudT3457JW9sA==
X-CSE-MsgGUID: 1m5Mv2TvSsWvM0HIS01vdw==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="10487209"
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="10487209"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2024 00:41:52 -0700
X-CSE-ConnectionGUID: NVrcPMpFRGGn2xMH7DJ26Q==
X-CSE-MsgGUID: Vo8qqah2RXurjcXdrJgJrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="27922044"
Received: from lkp-server01.sh.intel.com (HELO 123fad1cf874) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 05 May 2024 00:41:50 -0700
Received: from kbuild by 123fad1cf874 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s3WVI-00003g-0Q;
 Sun, 05 May 2024 07:41:48 +0000
Date: Sun, 05 May 2024 15:41:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 eb563dc752d33b0a5d4952964af15ca892f59524
Message-ID: <202405051541.x45QS3CE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714894914; x=1746430914;
 h=date:from:to:cc:subject:message-id;
 bh=Ijc4s3IR7MJe4ET7AAt1XivbbV8C6AsOVqLhWPOpN8c=;
 b=jHemiwx3zz7EOtAQsoLz9vKbnxQD8j0akry6ebzhSyyP3c1keM46Xp3V
 2c10oZMvSBa5z/sv3mC/PAmuyJLqZsq3sbIvduWF7UR9937co3H8L2t9x
 xLkA2oPtxi8BOWIg6feAPZET6GR5WtesTkbaGht5qO7c1tMVLZIzHzLps
 mpPkkW1Nm8+Vs+3kncaw8YGtcua5egy5hi0OBXx2kcf99f8Qi5ApF/IpQ
 FMTYzKQ0BJ1cZYM2leJG4rqxIdPB636lX7ZX4rIJ/Se+/534xiOuK3Rqx
 X3x74i1XcwfsmS/pK7iO6av/5t9mJ5kFbRPZiCyFWtoEn9zosdWo8HAX+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jHemiwx3
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
branch HEAD: eb563dc752d33b0a5d4952964af15ca892f59524  staging: pi433: Remove unused driver

elapsed time: 877m

configs tested: 152
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
arc                   randconfig-001-20240505   gcc  
arc                   randconfig-002-20240505   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          moxart_defconfig   gcc  
arm                           omap1_defconfig   gcc  
arm                   randconfig-001-20240505   clang
arm                   randconfig-002-20240505   gcc  
arm                   randconfig-003-20240505   gcc  
arm                   randconfig-004-20240505   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240505   clang
arm64                 randconfig-002-20240505   clang
arm64                 randconfig-003-20240505   clang
arm64                 randconfig-004-20240505   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240505   gcc  
csky                  randconfig-002-20240505   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240505   clang
hexagon               randconfig-002-20240505   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240505   clang
i386         buildonly-randconfig-002-20240505   clang
i386         buildonly-randconfig-003-20240505   clang
i386         buildonly-randconfig-004-20240505   gcc  
i386         buildonly-randconfig-005-20240505   clang
i386         buildonly-randconfig-006-20240505   clang
i386                                defconfig   clang
i386                  randconfig-001-20240505   clang
i386                  randconfig-002-20240505   clang
i386                  randconfig-003-20240505   gcc  
i386                  randconfig-004-20240505   clang
i386                  randconfig-005-20240505   gcc  
i386                  randconfig-006-20240505   gcc  
i386                  randconfig-011-20240505   gcc  
i386                  randconfig-012-20240505   gcc  
i386                  randconfig-013-20240505   clang
i386                  randconfig-014-20240505   gcc  
i386                  randconfig-015-20240505   gcc  
i386                  randconfig-016-20240505   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240505   gcc  
loongarch             randconfig-002-20240505   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240505   gcc  
nios2                 randconfig-002-20240505   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240505   gcc  
parisc                randconfig-002-20240505   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        fsp2_defconfig   gcc  
powerpc                   microwatt_defconfig   gcc  
powerpc               randconfig-001-20240505   gcc  
powerpc               randconfig-002-20240505   clang
powerpc               randconfig-003-20240505   clang
powerpc64             randconfig-001-20240505   gcc  
powerpc64             randconfig-002-20240505   clang
powerpc64             randconfig-003-20240505   gcc  
riscv                            alldefconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240505   clang
riscv                 randconfig-002-20240505   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240505   gcc  
s390                  randconfig-002-20240505   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240505   gcc  
sh                    randconfig-002-20240505   gcc  
sh                          rsk7201_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240505   gcc  
sparc64               randconfig-002-20240505   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240505   gcc  
um                    randconfig-002-20240505   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240505   gcc  
xtensa                randconfig-002-20240505   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
