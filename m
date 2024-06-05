Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CF78FD72D
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2024 22:10:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A35D584432;
	Wed,  5 Jun 2024 20:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IxfhRU-ykVhg; Wed,  5 Jun 2024 20:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A79D88444F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A79D88444F;
	Wed,  5 Jun 2024 20:10:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 566F21BF5A9
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2024 20:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 412A884432
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2024 20:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tqZUIq1M3U4T for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2024 20:10:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9EFE78442A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EFE78442A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EFE78442A
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2024 20:10:35 +0000 (UTC)
X-CSE-ConnectionGUID: i2LpOBkLTGeuwLm18yS84A==
X-CSE-MsgGUID: g2OMi6+kSUOmMzO4z4FdZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14090984"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="14090984"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 13:10:35 -0700
X-CSE-ConnectionGUID: /JvAPtXgSeO+qe7DgBmIvw==
X-CSE-MsgGUID: lx8BEzm1QCiH88Axb50AMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="68855592"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by fmviesa001.fm.intel.com with ESMTP; 05 Jun 2024 13:10:34 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sEwxr-0002As-2m;
 Wed, 05 Jun 2024 20:10:31 +0000
Date: Thu, 06 Jun 2024 04:09:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 1968845d358e108cfbfba45538d64b3cbdf04ac2
Message-ID: <202406060444.CSJ9C3bj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717618236; x=1749154236;
 h=date:from:to:cc:subject:message-id;
 bh=KMzNWNUwvflfT0JfULa7xE+WfWSbrrzi9IF+ZfHICxI=;
 b=DguQpG2ITnSj89PFgXGnKcR4PySdkzp88uerj224wky+lsDo5Yt0nFH5
 z9S2ZI88jsYlB3azgT8T9+AHTH2tqTLZy+2gGw9fljm7RqRcSJLgvIlj/
 Vlv1gfY9Fr9xFcpgdMGV9b990V/mVVGMQSb0PBWWPcdKGivd8p51W6GZQ
 iiHDBGJehuSaP4aZdsxPX0joa4TllkZLFUanRgj91BwasvBpeUdIqD4DV
 bAnylHeSzGlL+LUn/zboiXwBa8JH8T/lQBzsK6eJi94R/DcxJWXZhSTfp
 39XUb0DPkINtF7DnPy0cwl+ddoETX+WcJOr3G5HiDXlksCRZWEaOXMflz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DguQpG2I
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
branch HEAD: 1968845d358e108cfbfba45538d64b3cbdf04ac2  driver core: device.h: Group of_node handling declarations and definitions

elapsed time: 1477m

configs tested: 135
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240605   gcc  
arc                   randconfig-002-20240605   gcc  
arm                               allnoconfig   clang
arm                                 defconfig   clang
arm                   randconfig-004-20240605   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240605   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240605   gcc  
csky                  randconfig-002-20240605   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240605   gcc  
i386         buildonly-randconfig-002-20240605   gcc  
i386         buildonly-randconfig-003-20240605   gcc  
i386         buildonly-randconfig-004-20240605   gcc  
i386         buildonly-randconfig-005-20240605   gcc  
i386         buildonly-randconfig-006-20240605   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240605   gcc  
i386                  randconfig-002-20240605   clang
i386                  randconfig-003-20240605   gcc  
i386                  randconfig-004-20240605   gcc  
i386                  randconfig-005-20240605   gcc  
i386                  randconfig-006-20240605   gcc  
i386                  randconfig-011-20240605   gcc  
i386                  randconfig-012-20240605   gcc  
i386                  randconfig-013-20240605   clang
i386                  randconfig-014-20240605   clang
i386                  randconfig-015-20240605   gcc  
i386                  randconfig-016-20240605   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240605   gcc  
loongarch             randconfig-002-20240605   gcc  
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
nios2                 randconfig-001-20240605   gcc  
nios2                 randconfig-002-20240605   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240605   gcc  
parisc                randconfig-002-20240605   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240605   gcc  
powerpc               randconfig-002-20240605   gcc  
powerpc               randconfig-003-20240605   gcc  
powerpc64             randconfig-001-20240605   gcc  
powerpc64             randconfig-003-20240605   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240605   gcc  
riscv                 randconfig-002-20240605   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240605   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240605   gcc  
sh                    randconfig-002-20240605   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240605   gcc  
sparc64               randconfig-002-20240605   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240605   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240605   gcc  
x86_64       buildonly-randconfig-002-20240605   gcc  
x86_64       buildonly-randconfig-003-20240605   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-003-20240605   gcc  
x86_64                randconfig-006-20240605   gcc  
x86_64                randconfig-012-20240605   gcc  
x86_64                randconfig-014-20240605   gcc  
x86_64                randconfig-016-20240605   gcc  
x86_64                randconfig-071-20240605   gcc  
x86_64                randconfig-073-20240605   gcc  
x86_64                randconfig-074-20240605   gcc  
x86_64                randconfig-075-20240605   gcc  
x86_64                randconfig-076-20240605   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240605   gcc  
xtensa                randconfig-002-20240605   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
