Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8575790711
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Sep 2023 11:34:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD88B830FB;
	Sat,  2 Sep 2023 09:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD88B830FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 83kIMAncU4YM; Sat,  2 Sep 2023 09:34:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CAB38322E;
	Sat,  2 Sep 2023 09:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CAB38322E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD7711BF419
 for <devel@linuxdriverproject.org>; Sat,  2 Sep 2023 09:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9214241E4C
 for <devel@linuxdriverproject.org>; Sat,  2 Sep 2023 09:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9214241E4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id daVfAFZ71mmk for <devel@linuxdriverproject.org>;
 Sat,  2 Sep 2023 09:34:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D30E241E4B
 for <devel@driverdev.osuosl.org>; Sat,  2 Sep 2023 09:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D30E241E4B
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361383840"
X-IronPort-AV: E=Sophos;i="6.02,222,1688454000"; d="scan'208";a="361383840"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2023 02:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="743388618"
X-IronPort-AV: E=Sophos;i="6.02,222,1688454000"; d="scan'208";a="743388618"
Received: from lkp-server01.sh.intel.com (HELO 5d8055a4f6aa) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 02 Sep 2023 02:34:15 -0700
Received: from kbuild by 5d8055a4f6aa with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qcN1A-0002D7-2z;
 Sat, 02 Sep 2023 09:34:12 +0000
Date: Sat, 02 Sep 2023 17:33:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 868bc4ac8686c4118c66bd6926b777ded345309e
Message-ID: <202309021711.W33uHexv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693647257; x=1725183257;
 h=date:from:to:cc:subject:message-id;
 bh=AyZGb9lwgrhoF4VhiFYdn7iOVM3dGOCyaQy/VIMZD7Y=;
 b=PwrFugnFdhTzb1Oq598XTpAgjQ44V4LLnUyyooFn74vydSAMiiQhWV4v
 yglKtN44+Rx6B5HILc4cnT1aB4HLAoi822NUmveJLCpNdbRrwd/4odVG/
 UczzWQLIe9svG/VLr/htI3k273Pq/En9toEivNPsF0QVnYNKE9TqBTjHN
 aqRWDwJJIf8rqIuMYlQG5lY9ZT3P33kYDdRsmsJq3ly9Ij5fCOuudypb5
 KGZ9qPo2vKYo0CLUC2mr+X8Sh8LhuDY5Q474x1VW6RVanmFW+TwNcA2TM
 j13VZ0k2xVNGXuaHm9Jf8NQWQQeL8uD5fo5Ea5fhuhgz66ia84F/PcH+w
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PwrFugnF
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 868bc4ac8686c4118c66bd6926b777ded345309e  sysfs: do not create empty directories if no attributes are present

elapsed time: 722m

configs tested: 166
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230902   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20230902   gcc  
arc                  randconfig-r001-20230902   gcc  
arc                  randconfig-r024-20230902   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230902   gcc  
arm                  randconfig-r026-20230902   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230902   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon               randconfig-001-20230902   clang
hexagon               randconfig-002-20230902   clang
hexagon              randconfig-r021-20230902   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230902   gcc  
i386         buildonly-randconfig-002-20230902   gcc  
i386         buildonly-randconfig-003-20230902   gcc  
i386         buildonly-randconfig-004-20230902   gcc  
i386         buildonly-randconfig-005-20230902   gcc  
i386         buildonly-randconfig-006-20230902   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230902   gcc  
i386                  randconfig-002-20230902   gcc  
i386                  randconfig-003-20230902   gcc  
i386                  randconfig-004-20230902   gcc  
i386                  randconfig-005-20230902   gcc  
i386                  randconfig-006-20230902   gcc  
i386                  randconfig-011-20230902   clang
i386                  randconfig-012-20230902   clang
i386                  randconfig-013-20230902   clang
i386                  randconfig-014-20230902   clang
i386                  randconfig-015-20230902   clang
i386                  randconfig-016-20230902   clang
i386                 randconfig-r006-20230902   gcc  
i386                 randconfig-r033-20230902   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230902   gcc  
loongarch            randconfig-r013-20230902   gcc  
loongarch            randconfig-r035-20230902   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r023-20230902   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r004-20230902   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                 randconfig-r014-20230902   gcc  
mips                 randconfig-r034-20230902   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230902   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc              randconfig-r025-20230902   clang
powerpc              randconfig-r031-20230902   gcc  
powerpc64            randconfig-r016-20230902   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230902   gcc  
riscv                randconfig-r015-20230902   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230902   clang
s390                 randconfig-r032-20230902   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r036-20230902   gcc  
sh                             sh03_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
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
x86_64       buildonly-randconfig-001-20230902   gcc  
x86_64       buildonly-randconfig-002-20230902   gcc  
x86_64       buildonly-randconfig-003-20230902   gcc  
x86_64       buildonly-randconfig-004-20230902   gcc  
x86_64       buildonly-randconfig-005-20230902   gcc  
x86_64       buildonly-randconfig-006-20230902   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230902   clang
x86_64                randconfig-002-20230902   clang
x86_64                randconfig-003-20230902   clang
x86_64                randconfig-004-20230902   clang
x86_64                randconfig-005-20230902   clang
x86_64                randconfig-006-20230902   clang
x86_64                randconfig-011-20230902   gcc  
x86_64                randconfig-012-20230902   gcc  
x86_64                randconfig-013-20230902   gcc  
x86_64                randconfig-014-20230902   gcc  
x86_64                randconfig-015-20230902   gcc  
x86_64                randconfig-016-20230902   gcc  
x86_64                randconfig-071-20230902   gcc  
x86_64                randconfig-072-20230902   gcc  
x86_64                randconfig-073-20230902   gcc  
x86_64                randconfig-074-20230902   gcc  
x86_64                randconfig-075-20230902   gcc  
x86_64                randconfig-076-20230902   gcc  
x86_64               randconfig-r012-20230902   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r002-20230902   gcc  
xtensa               randconfig-r003-20230902   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
