Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E0C79C113
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Sep 2023 02:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B5296106A;
	Tue, 12 Sep 2023 00:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B5296106A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MTWjbUZ7L83; Tue, 12 Sep 2023 00:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD3A160AA4;
	Tue, 12 Sep 2023 00:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD3A160AA4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 680371BF95F
 for <devel@linuxdriverproject.org>; Tue, 12 Sep 2023 00:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E16C60AB2
 for <devel@linuxdriverproject.org>; Tue, 12 Sep 2023 00:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E16C60AB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCEq4-5dOuWN for <devel@linuxdriverproject.org>;
 Tue, 12 Sep 2023 00:24:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D88A660AA4
 for <devel@driverdev.osuosl.org>; Tue, 12 Sep 2023 00:24:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D88A660AA4
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378149127"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="378149127"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 17:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833695654"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="833695654"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Sep 2023 17:23:59 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qfrC9-0006vb-2A;
 Tue, 12 Sep 2023 00:23:57 +0000
Date: Tue, 12 Sep 2023 08:23:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 9983b669b4efa6f77f4d7547b5794ca55e12a9bd
Message-ID: <202309120818.olc55LAi-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694478241; x=1726014241;
 h=date:from:to:cc:subject:message-id;
 bh=bAjQE15RG0Xew5ohKhltStZF1uBCk21xg71ZZfmm5fA=;
 b=M2T6BBQdI2vJA9NkpLit3dEzMuix9FWJ6ZXwWAP0sdCE44ENwsHHlpKd
 wotRCgQCxJDZhLwuQCgKi4s5iyjG1hd1Hl15op3mlQuIqesrmMVTkHClG
 k0gBrDzQvmRq4Ksc89yaYB4uN3d089pUQmhtqiLxnYZMaMK68du0Quf4/
 ap9XZoEwCxCVB0ajkIPX8dgBVw2PB9l+Yh+MZ9D+sQPY2IpJtpzFSarC+
 iKGVJdDnVCYNuFA3HqhPRuLbJniH5dur6YAQXjdcgsvMEQAYmHSFJL8aa
 vTHIKC4GozgPI441+AXX3FkF6yuE4r7qdkp605NJmU8wa25NX+D/y6g0h
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M2T6BBQd
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
branch HEAD: 9983b669b4efa6f77f4d7547b5794ca55e12a9bd  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 728m

configs tested: 226
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r033-20230911   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230911   gcc  
arc                  randconfig-r011-20230912   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                       aspeed_g5_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20230911   gcc  
arm                   randconfig-001-20230912   clang
arm                         s3c6400_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230912   clang
arm64                randconfig-r006-20230912   clang
arm64                randconfig-r016-20230912   gcc  
arm64                randconfig-r021-20230911   clang
arm64                randconfig-r036-20230911   gcc  
arm64                randconfig-r036-20230912   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon               randconfig-001-20230911   clang
hexagon               randconfig-001-20230912   clang
hexagon               randconfig-002-20230911   clang
hexagon               randconfig-002-20230912   clang
hexagon              randconfig-r004-20230912   clang
hexagon              randconfig-r011-20230911   clang
hexagon              randconfig-r032-20230911   clang
hexagon              randconfig-r032-20230912   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230911   gcc  
i386         buildonly-randconfig-001-20230912   clang
i386         buildonly-randconfig-002-20230911   gcc  
i386         buildonly-randconfig-002-20230912   clang
i386         buildonly-randconfig-003-20230911   gcc  
i386         buildonly-randconfig-003-20230912   clang
i386         buildonly-randconfig-004-20230911   gcc  
i386         buildonly-randconfig-004-20230912   clang
i386         buildonly-randconfig-005-20230911   gcc  
i386         buildonly-randconfig-005-20230912   clang
i386         buildonly-randconfig-006-20230911   gcc  
i386         buildonly-randconfig-006-20230912   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230911   gcc  
i386                  randconfig-002-20230911   gcc  
i386                  randconfig-003-20230911   gcc  
i386                  randconfig-004-20230911   gcc  
i386                  randconfig-005-20230911   gcc  
i386                  randconfig-006-20230911   gcc  
i386                  randconfig-011-20230911   clang
i386                  randconfig-012-20230911   clang
i386                  randconfig-013-20230911   clang
i386                  randconfig-014-20230911   clang
i386                  randconfig-015-20230911   clang
i386                  randconfig-016-20230911   clang
i386                 randconfig-r013-20230911   clang
i386                 randconfig-r026-20230911   clang
i386                 randconfig-r034-20230911   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230911   gcc  
loongarch             randconfig-001-20230912   gcc  
loongarch            randconfig-r015-20230912   gcc  
loongarch            randconfig-r025-20230911   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                 randconfig-r004-20230911   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r013-20230912   gcc  
microblaze           randconfig-r031-20230911   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230911   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230911   gcc  
nios2                randconfig-r015-20230911   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r014-20230911   gcc  
openrisc             randconfig-r022-20230911   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                     ppa8548_defconfig   clang
powerpc              randconfig-r001-20230912   clang
powerpc              randconfig-r005-20230911   gcc  
powerpc              randconfig-r005-20230912   clang
powerpc64            randconfig-r014-20230912   gcc  
powerpc64            randconfig-r024-20230911   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230911   gcc  
riscv                 randconfig-001-20230912   clang
riscv                randconfig-r005-20230912   clang
riscv                randconfig-r035-20230912   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230911   clang
s390                 randconfig-r001-20230911   gcc  
s390                 randconfig-r016-20230911   clang
s390                 randconfig-r031-20230912   clang
s390                 randconfig-r032-20230912   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r012-20230912   gcc  
sh                   randconfig-r035-20230911   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230911   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230911   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230911   gcc  
x86_64       buildonly-randconfig-001-20230912   clang
x86_64       buildonly-randconfig-002-20230911   gcc  
x86_64       buildonly-randconfig-002-20230912   clang
x86_64       buildonly-randconfig-003-20230911   gcc  
x86_64       buildonly-randconfig-003-20230912   clang
x86_64       buildonly-randconfig-004-20230911   gcc  
x86_64       buildonly-randconfig-004-20230912   clang
x86_64       buildonly-randconfig-005-20230911   gcc  
x86_64       buildonly-randconfig-005-20230912   clang
x86_64       buildonly-randconfig-006-20230911   gcc  
x86_64       buildonly-randconfig-006-20230912   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230911   clang
x86_64                randconfig-001-20230912   gcc  
x86_64                randconfig-002-20230911   clang
x86_64                randconfig-002-20230912   gcc  
x86_64                randconfig-003-20230911   clang
x86_64                randconfig-003-20230912   gcc  
x86_64                randconfig-004-20230911   clang
x86_64                randconfig-004-20230912   gcc  
x86_64                randconfig-005-20230911   clang
x86_64                randconfig-005-20230912   gcc  
x86_64                randconfig-006-20230911   clang
x86_64                randconfig-006-20230912   gcc  
x86_64                randconfig-011-20230911   gcc  
x86_64                randconfig-011-20230912   clang
x86_64                randconfig-012-20230911   gcc  
x86_64                randconfig-012-20230912   clang
x86_64                randconfig-013-20230911   gcc  
x86_64                randconfig-013-20230912   clang
x86_64                randconfig-014-20230911   gcc  
x86_64                randconfig-014-20230912   clang
x86_64                randconfig-015-20230911   gcc  
x86_64                randconfig-015-20230912   clang
x86_64                randconfig-016-20230911   gcc  
x86_64                randconfig-016-20230912   clang
x86_64                randconfig-071-20230911   gcc  
x86_64                randconfig-071-20230912   clang
x86_64                randconfig-072-20230911   gcc  
x86_64                randconfig-072-20230912   clang
x86_64                randconfig-073-20230911   gcc  
x86_64                randconfig-073-20230912   clang
x86_64                randconfig-074-20230911   gcc  
x86_64                randconfig-074-20230912   clang
x86_64                randconfig-075-20230911   gcc  
x86_64                randconfig-075-20230912   clang
x86_64                randconfig-076-20230911   gcc  
x86_64                randconfig-076-20230912   clang
x86_64               randconfig-r012-20230911   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
