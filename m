Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073538CB610
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2024 00:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB2674019E;
	Tue, 21 May 2024 22:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 25IlNczkzxTf; Tue, 21 May 2024 22:40:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFDF24044C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFDF24044C;
	Tue, 21 May 2024 22:40:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30FD61C5610
 for <devel@linuxdriverproject.org>; Tue, 21 May 2024 22:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A3074019E
 for <devel@linuxdriverproject.org>; Tue, 21 May 2024 22:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YRtPi-nJlePm for <devel@linuxdriverproject.org>;
 Tue, 21 May 2024 22:40:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83398400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83398400E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83398400E5
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2024 22:40:53 +0000 (UTC)
X-CSE-ConnectionGUID: F12B40pBQLC6HKMuWN4A/A==
X-CSE-MsgGUID: oJSZm0YASb25oggA/Qfp8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="23967370"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="23967370"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 15:40:53 -0700
X-CSE-ConnectionGUID: GZbD/nlvT9i0Om1J5X3PgQ==
X-CSE-MsgGUID: 39d1/D/YSYCdrvKa5wuQIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33057906"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 21 May 2024 15:40:51 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s9Y9y-0000oB-1S;
 Tue, 21 May 2024 22:40:44 +0000
Date: Wed, 22 May 2024 06:39:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 bb2501fbc378d981842395fbe88d6156128c3ca4
Message-ID: <202405220636.t4PKIO4W-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716331255; x=1747867255;
 h=date:from:to:cc:subject:message-id;
 bh=0cu77azkp2fQvUItsQVBFsby9c0BHiTOSM/cjJJU8mY=;
 b=FN5VbdE15Mn8kYd9IOH/5KakQOHcP8tzFVMPolsGml5p1ZwblcDVZ8Iu
 KOi1Jldase60z1PKFGNza1AiqJxsv3d+j7/RL6UeGdxnQcloyJmK9Yc5W
 J1swcHP8Q/i1xga+pRGwfB+gOlcuE4nXL+tZhnx4ahdOIGkYlghkGEGA8
 rSmccAyGp4TRJpmtEZWF613odnIMYDhLfPTYIO283tW07n8kIjIBhSBUc
 ZMu126b1P4zYQNuRFJNgJ3wG4hPuXFNKFz0z5FnZOdrF+PMx/9ZbPMH9h
 JJ/4N8lCm44EHVmuyb3HfoqMicdPYbsEnQqVK9LBp0P+rlt+PbG55qBN/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FN5VbdE1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: bb2501fbc378d981842395fbe88d6156128c3ca4  crypto: qat: make adf_ctl_class constant

elapsed time: 729m

configs tested: 139
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
arc                   randconfig-001-20240522   gcc  
arc                   randconfig-002-20240522   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240522   clang
arm                   randconfig-002-20240522   gcc  
arm                   randconfig-003-20240522   clang
arm                   randconfig-004-20240522   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240522   clang
arm64                 randconfig-002-20240522   clang
arm64                 randconfig-003-20240522   gcc  
arm64                 randconfig-004-20240522   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240522   gcc  
csky                  randconfig-002-20240522   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240522   clang
hexagon               randconfig-002-20240522   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240521   clang
i386         buildonly-randconfig-002-20240521   clang
i386         buildonly-randconfig-003-20240521   gcc  
i386         buildonly-randconfig-004-20240521   clang
i386         buildonly-randconfig-005-20240521   gcc  
i386         buildonly-randconfig-006-20240521   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240521   gcc  
i386                  randconfig-002-20240521   clang
i386                  randconfig-003-20240521   gcc  
i386                  randconfig-004-20240521   gcc  
i386                  randconfig-005-20240521   gcc  
i386                  randconfig-006-20240521   clang
i386                  randconfig-011-20240521   gcc  
i386                  randconfig-012-20240521   clang
i386                  randconfig-013-20240521   clang
i386                  randconfig-014-20240521   clang
i386                  randconfig-015-20240521   clang
i386                  randconfig-016-20240521   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240522   gcc  
loongarch             randconfig-002-20240522   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
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
nios2                 randconfig-001-20240522   gcc  
nios2                 randconfig-002-20240522   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240522   gcc  
parisc                randconfig-002-20240522   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240522   gcc  
powerpc               randconfig-002-20240522   gcc  
powerpc               randconfig-003-20240522   clang
powerpc64             randconfig-001-20240522   clang
powerpc64             randconfig-002-20240522   clang
powerpc64             randconfig-003-20240522   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240522   gcc  
riscv                 randconfig-002-20240522   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240522   clang
s390                  randconfig-002-20240522   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240522   gcc  
sh                    randconfig-002-20240522   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240522   gcc  
sparc64               randconfig-002-20240522   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240522   gcc  
um                    randconfig-002-20240522   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240522   gcc  
xtensa                randconfig-002-20240522   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
