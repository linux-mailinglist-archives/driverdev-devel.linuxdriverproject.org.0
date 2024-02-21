Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4552085CF2B
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Feb 2024 04:54:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8FBB415A1;
	Wed, 21 Feb 2024 03:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id duF7byy0QEbR; Wed, 21 Feb 2024 03:54:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33F20415A2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33F20415A2;
	Wed, 21 Feb 2024 03:54:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9D191BF300
 for <devel@linuxdriverproject.org>; Wed, 21 Feb 2024 03:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B648B404AF
 for <devel@linuxdriverproject.org>; Wed, 21 Feb 2024 03:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IccbtjSKcBQ8 for <devel@linuxdriverproject.org>;
 Wed, 21 Feb 2024 03:54:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5E4AD40343
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E4AD40343
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E4AD40343
 for <devel@driverdev.osuosl.org>; Wed, 21 Feb 2024 03:54:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20062902"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="20062902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 19:54:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="913216417"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="913216417"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2024 19:54:22 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rcdgV-0004zO-2F;
 Wed, 21 Feb 2024 03:54:18 +0000
Date: Wed, 21 Feb 2024 11:51:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:sysfs_hidden_attribute_groups] BUILD SUCCESS
 70317fd24b419091aa0a6dc3ea3ec7bb50c37c32
Message-ID: <202402211127.a2KSNrQe-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708487668; x=1740023668;
 h=date:from:to:cc:subject:message-id;
 bh=LM7c5W21aab2amToGU5FRz28SRS068T/C86SkWLtcGc=;
 b=UyGG/mCqJpg+DudsehhfDzNM3huYqs5rlQ1f3DUAfUmglC5n3PzAbJN1
 cIzILN3wmN2yK/dgCitIMW6LcmIyppdQPOvxtnYdR61CYTa+C50oELc/i
 QyV96uuL0fjsi2Duyz76vkT3ILVq9Fxrrz0hsZdA7zS/l62rWt3sRiMgu
 E6asJBGFAKRIjbRYBBrFgB2ExA4ledVaAVSz3ckb7NUH8O08LbSueic1W
 gSzSK6FMHaTiVttqVzOsbg+1AnnahDB3iWtk+WWsMLnA4B7GlQq60bjOa
 jgYneid8NDi0clv0PvgK7Rezw7/bvUx/EouHO81i9eo9YxO5t6jPmplYv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UyGG/mCq
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git sysfs_hidden_attribute_groups
branch HEAD: 70317fd24b419091aa0a6dc3ea3ec7bb50c37c32  sysfs: Introduce a mechanism to hide static attribute_groups

elapsed time: 1091m

configs tested: 254
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
arc                   randconfig-001-20240220   gcc  
arc                   randconfig-001-20240221   gcc  
arc                   randconfig-002-20240220   gcc  
arc                   randconfig-002-20240221   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                          collie_defconfig   gcc  
arm                                 defconfig   clang
arm                           h3600_defconfig   gcc  
arm                   randconfig-001-20240220   clang
arm                   randconfig-002-20240220   gcc  
arm                   randconfig-003-20240220   gcc  
arm                   randconfig-003-20240221   gcc  
arm                   randconfig-004-20240220   gcc  
arm                       spear13xx_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240220   clang
arm64                 randconfig-001-20240221   gcc  
arm64                 randconfig-002-20240220   clang
arm64                 randconfig-002-20240221   gcc  
arm64                 randconfig-003-20240220   clang
arm64                 randconfig-003-20240221   gcc  
arm64                 randconfig-004-20240220   clang
arm64                 randconfig-004-20240221   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240220   gcc  
csky                  randconfig-001-20240221   gcc  
csky                  randconfig-002-20240220   gcc  
csky                  randconfig-002-20240221   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240220   clang
hexagon               randconfig-002-20240220   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240220   gcc  
i386         buildonly-randconfig-001-20240221   gcc  
i386         buildonly-randconfig-002-20240220   gcc  
i386         buildonly-randconfig-002-20240221   clang
i386         buildonly-randconfig-003-20240220   clang
i386         buildonly-randconfig-003-20240221   gcc  
i386         buildonly-randconfig-004-20240220   clang
i386         buildonly-randconfig-004-20240221   gcc  
i386         buildonly-randconfig-005-20240220   gcc  
i386         buildonly-randconfig-005-20240221   gcc  
i386         buildonly-randconfig-006-20240220   gcc  
i386         buildonly-randconfig-006-20240221   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240220   gcc  
i386                  randconfig-001-20240221   gcc  
i386                  randconfig-002-20240220   gcc  
i386                  randconfig-002-20240221   clang
i386                  randconfig-003-20240220   clang
i386                  randconfig-003-20240221   clang
i386                  randconfig-004-20240220   clang
i386                  randconfig-004-20240221   gcc  
i386                  randconfig-005-20240220   gcc  
i386                  randconfig-005-20240221   gcc  
i386                  randconfig-006-20240220   clang
i386                  randconfig-006-20240221   clang
i386                  randconfig-011-20240220   clang
i386                  randconfig-011-20240221   gcc  
i386                  randconfig-012-20240220   gcc  
i386                  randconfig-012-20240221   clang
i386                  randconfig-013-20240220   gcc  
i386                  randconfig-013-20240221   gcc  
i386                  randconfig-014-20240220   clang
i386                  randconfig-014-20240221   clang
i386                  randconfig-015-20240220   clang
i386                  randconfig-015-20240221   gcc  
i386                  randconfig-016-20240220   clang
i386                  randconfig-016-20240221   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240220   gcc  
loongarch             randconfig-001-20240221   gcc  
loongarch             randconfig-002-20240220   gcc  
loongarch             randconfig-002-20240221   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       alldefconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240220   gcc  
nios2                 randconfig-001-20240221   gcc  
nios2                 randconfig-002-20240220   gcc  
nios2                 randconfig-002-20240221   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240220   gcc  
parisc                randconfig-001-20240221   gcc  
parisc                randconfig-002-20240220   gcc  
parisc                randconfig-002-20240221   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240220   gcc  
powerpc               randconfig-001-20240221   gcc  
powerpc               randconfig-002-20240220   clang
powerpc               randconfig-002-20240221   gcc  
powerpc               randconfig-003-20240220   clang
powerpc               randconfig-003-20240221   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240220   gcc  
powerpc64             randconfig-001-20240221   gcc  
powerpc64             randconfig-002-20240220   gcc  
powerpc64             randconfig-002-20240221   gcc  
powerpc64             randconfig-003-20240220   clang
powerpc64             randconfig-003-20240221   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240220   clang
riscv                 randconfig-002-20240220   clang
riscv                 randconfig-002-20240221   gcc  
s390                             alldefconfig   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240220   gcc  
s390                  randconfig-002-20240220   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20240220   gcc  
sh                    randconfig-001-20240221   gcc  
sh                    randconfig-002-20240220   gcc  
sh                    randconfig-002-20240221   gcc  
sh                          sdk7786_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240220   gcc  
sparc64               randconfig-001-20240221   gcc  
sparc64               randconfig-002-20240220   gcc  
sparc64               randconfig-002-20240221   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240220   gcc  
um                    randconfig-001-20240221   gcc  
um                    randconfig-002-20240220   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240220   clang
x86_64       buildonly-randconfig-002-20240220   clang
x86_64       buildonly-randconfig-002-20240221   gcc  
x86_64       buildonly-randconfig-003-20240220   gcc  
x86_64       buildonly-randconfig-003-20240221   gcc  
x86_64       buildonly-randconfig-004-20240220   clang
x86_64       buildonly-randconfig-005-20240220   gcc  
x86_64       buildonly-randconfig-006-20240220   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240220   gcc  
x86_64                randconfig-001-20240221   gcc  
x86_64                randconfig-002-20240220   gcc  
x86_64                randconfig-002-20240221   gcc  
x86_64                randconfig-003-20240220   gcc  
x86_64                randconfig-003-20240221   gcc  
x86_64                randconfig-004-20240220   clang
x86_64                randconfig-004-20240221   gcc  
x86_64                randconfig-005-20240220   clang
x86_64                randconfig-005-20240221   gcc  
x86_64                randconfig-006-20240220   gcc  
x86_64                randconfig-006-20240221   gcc  
x86_64                randconfig-011-20240220   gcc  
x86_64                randconfig-012-20240220   clang
x86_64                randconfig-012-20240221   gcc  
x86_64                randconfig-013-20240220   clang
x86_64                randconfig-014-20240220   gcc  
x86_64                randconfig-014-20240221   gcc  
x86_64                randconfig-015-20240220   clang
x86_64                randconfig-015-20240221   gcc  
x86_64                randconfig-016-20240220   gcc  
x86_64                randconfig-016-20240221   gcc  
x86_64                randconfig-071-20240220   clang
x86_64                randconfig-071-20240221   gcc  
x86_64                randconfig-072-20240220   clang
x86_64                randconfig-072-20240221   gcc  
x86_64                randconfig-073-20240220   clang
x86_64                randconfig-073-20240221   gcc  
x86_64                randconfig-074-20240220   clang
x86_64                randconfig-074-20240221   gcc  
x86_64                randconfig-075-20240220   clang
x86_64                randconfig-076-20240220   clang
x86_64                randconfig-076-20240221   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                randconfig-001-20240220   gcc  
xtensa                randconfig-001-20240221   gcc  
xtensa                randconfig-002-20240220   gcc  
xtensa                randconfig-002-20240221   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
