Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAFE7F3A05
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Nov 2023 00:05:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E982401CC;
	Tue, 21 Nov 2023 23:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E982401CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCgKMadNe6Yu; Tue, 21 Nov 2023 23:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66C5440360;
	Tue, 21 Nov 2023 23:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66C5440360
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 413121BF309
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 23:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1483F401CC
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 23:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1483F401CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUZUeGerFFHl for <devel@linuxdriverproject.org>;
 Tue, 21 Nov 2023 23:05:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 995F3400D8
 for <devel@driverdev.osuosl.org>; Tue, 21 Nov 2023 23:05:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 995F3400D8
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="391712831"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="391712831"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 15:05:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716649901"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="716649901"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 21 Nov 2023 15:05:06 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r5Znf-0008NY-37;
 Tue, 21 Nov 2023 23:05:01 +0000
Date: Wed, 22 Nov 2023 07:04:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 9f399d57a8d0d953a6f66823462a0b24658f3cad
Message-ID: <202311220713.PnRi9Vjl-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700607908; x=1732143908;
 h=date:from:to:cc:subject:message-id;
 bh=x0AaCsZitqiQy6pcIv+3UsmQ06DIdnCJizAAt2o5m2E=;
 b=GkCatJ676mcwMHdPu1LStvBgVVSqBTtGC6G5mYSGLE5PG9yH31yxYglD
 Yi7KAamOJaWIzAzvn5Lkg1MsuIrDTldcZMMYDv1LaL/DVySo/tz6CQsA5
 uWeGuP8QtxjWzqhWfijAAHpgkfzlrADEifi8FLLuGNfD1ct79ivd+RKcL
 1dJruoY5BtCUThLD5KpWiJKzc3x0Dxjw9u8U0+Ff1tS5mpRyahmQhASgg
 EiLhTnU/jKNqDs71b6UMZyTKE0oW4I95Tc1Kbq2Mky9bczp43yGDdkvLI
 MU0vngATA+UfNQVTUnWpukuAdEDSGxZVcf8mjN6g4PcsF0x3P8XANwgIS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GkCatJ67
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
branch HEAD: 9f399d57a8d0d953a6f66823462a0b24658f3cad  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 2440m

configs tested: 171
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
arc                   randconfig-001-20231120   gcc  
arc                   randconfig-002-20231120   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20231120   clang
arm                   randconfig-002-20231120   clang
arm                   randconfig-003-20231120   clang
arm                   randconfig-004-20231120   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231120   clang
arm64                 randconfig-002-20231120   clang
arm64                 randconfig-003-20231120   clang
arm64                 randconfig-004-20231120   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231120   gcc  
csky                  randconfig-002-20231120   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231120   clang
hexagon               randconfig-002-20231120   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231120   clang
i386         buildonly-randconfig-002-20231120   clang
i386         buildonly-randconfig-003-20231120   clang
i386         buildonly-randconfig-004-20231120   clang
i386         buildonly-randconfig-005-20231120   clang
i386         buildonly-randconfig-006-20231120   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231120   clang
i386                  randconfig-002-20231120   clang
i386                  randconfig-003-20231120   clang
i386                  randconfig-004-20231120   clang
i386                  randconfig-005-20231120   clang
i386                  randconfig-006-20231120   clang
i386                  randconfig-011-20231120   gcc  
i386                  randconfig-012-20231120   gcc  
i386                  randconfig-013-20231120   gcc  
i386                  randconfig-014-20231120   gcc  
i386                  randconfig-015-20231120   gcc  
i386                  randconfig-016-20231120   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231120   gcc  
loongarch             randconfig-002-20231120   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231120   gcc  
nios2                 randconfig-002-20231120   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231120   gcc  
parisc                randconfig-002-20231120   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20231120   clang
powerpc               randconfig-002-20231120   clang
powerpc               randconfig-003-20231120   clang
powerpc64             randconfig-001-20231120   clang
powerpc64             randconfig-002-20231120   clang
powerpc64             randconfig-003-20231120   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231120   clang
riscv                 randconfig-002-20231120   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231120   gcc  
s390                  randconfig-002-20231120   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231120   gcc  
sh                    randconfig-002-20231120   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231120   gcc  
sparc64               randconfig-002-20231120   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231120   clang
um                    randconfig-002-20231120   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231120   clang
x86_64       buildonly-randconfig-002-20231120   clang
x86_64       buildonly-randconfig-003-20231120   clang
x86_64       buildonly-randconfig-004-20231120   clang
x86_64       buildonly-randconfig-005-20231120   clang
x86_64       buildonly-randconfig-006-20231120   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231120   gcc  
x86_64                randconfig-002-20231120   gcc  
x86_64                randconfig-003-20231120   gcc  
x86_64                randconfig-004-20231120   gcc  
x86_64                randconfig-005-20231120   gcc  
x86_64                randconfig-006-20231120   gcc  
x86_64                randconfig-011-20231120   clang
x86_64                randconfig-012-20231120   clang
x86_64                randconfig-013-20231120   clang
x86_64                randconfig-014-20231120   clang
x86_64                randconfig-015-20231120   clang
x86_64                randconfig-016-20231120   clang
x86_64                randconfig-071-20231120   clang
x86_64                randconfig-072-20231120   clang
x86_64                randconfig-073-20231120   clang
x86_64                randconfig-074-20231120   clang
x86_64                randconfig-075-20231120   clang
x86_64                randconfig-076-20231120   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231120   gcc  
xtensa                randconfig-002-20231120   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
