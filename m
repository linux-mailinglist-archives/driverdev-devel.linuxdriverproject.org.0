Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D82E56F1DDC
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Apr 2023 20:13:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AD1082218;
	Fri, 28 Apr 2023 18:13:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AD1082218
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u5P5ne3zcMfy; Fri, 28 Apr 2023 18:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AB2083B5E;
	Fri, 28 Apr 2023 18:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AB2083B5E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 708031BF578
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45A1E42A6F
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45A1E42A6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4ARp_YcQUSM for <devel@linuxdriverproject.org>;
 Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55FDC42A7C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55FDC42A7C
 for <devel@driverdev.osuosl.org>; Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="349847678"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="349847678"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="838940658"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="838940658"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2023 11:13:40 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psSbD-0000bZ-3A;
 Fri, 28 Apr 2023 18:13:39 +0000
Date: Sat, 29 Apr 2023 02:13:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 d807570514a3bacd8a1eee57e33f5d695472ac29
Message-ID: <20230428181320.vxved%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682705623; x=1714241623;
 h=date:from:to:cc:subject:message-id;
 bh=oq0nzEngT57OnIZOKBkev/S2Cp5hGobYWQ0oMVVYqp0=;
 b=O0Qsdbiq4LjzVrB+TgaZ7/w91sRv/1stGuTNPOvP5Ko5oSQkIxxd9b8y
 uKfTvm91VMqNejgpifvQkoLhENlYPKzJOCb5yhP8j4INREximjmzYEgCg
 KWYwNtRb8CRphe+hKlf6ViFKjESjWGgh1UT6Ez4+NoEquZ6r4LeWTdGA4
 VeYTfgmRnAXkcJxHnfkNe59uaSeaOLY8Yc9Zd/Jfbryys+nSWiFWGpc8+
 plupkYEzyPmnrZz3qIpidbGcKwAhrS85tsLzO+vrxR+ijWZEbkGvukrYs
 mvPPF94hHQ3PSLvX0QF0oSUzNrZwjqYsf82uU3HgwZJrlay3wh9r95Z42
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O0Qsdbiq
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
branch HEAD: d807570514a3bacd8a1eee57e33f5d695472ac29  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 724m

configs tested: 116
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230428   gcc  
alpha                randconfig-r033-20230428   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230427   gcc  
arc                  randconfig-r021-20230428   gcc  
arc                  randconfig-r023-20230428   gcc  
arc                  randconfig-r034-20230428   gcc  
arc                  randconfig-r043-20230428   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r006-20230427   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                  randconfig-r046-20230428   clang
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r003-20230427   clang
hexagon              randconfig-r003-20230427   clang
hexagon              randconfig-r005-20230427   clang
hexagon              randconfig-r025-20230428   clang
hexagon              randconfig-r041-20230428   clang
hexagon              randconfig-r045-20230428   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                         bigsur_defconfig   gcc  
ia64         buildonly-randconfig-r004-20230427   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230427   gcc  
loongarch            randconfig-r035-20230427   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r005-20230427   gcc  
microblaze           randconfig-r011-20230427   gcc  
microblaze           randconfig-r015-20230428   gcc  
microblaze           randconfig-r032-20230428   gcc  
microblaze           randconfig-r036-20230428   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                    maltaup_xpa_defconfig   gcc  
mips                 randconfig-r031-20230428   gcc  
mips                 randconfig-r032-20230427   clang
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230427   gcc  
nios2                randconfig-r024-20230428   gcc  
openrisc             randconfig-r013-20230428   gcc  
openrisc             randconfig-r033-20230427   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r022-20230428   gcc  
parisc               randconfig-r035-20230428   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     mpc512x_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230428   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230427   clang
s390                 randconfig-r044-20230428   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230427   gcc  
sh                   randconfig-r012-20230428   gcc  
sh                   randconfig-r014-20230427   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230427   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r036-20230427   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230427   gcc  
xtensa               randconfig-r031-20230427   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
