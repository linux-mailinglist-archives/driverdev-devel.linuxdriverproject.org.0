Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB66D2E2B
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Apr 2023 06:32:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DA7242141;
	Sat,  1 Apr 2023 04:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DA7242141
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XAmAx9bwh6-m; Sat,  1 Apr 2023 04:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F56E42144;
	Sat,  1 Apr 2023 04:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F56E42144
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57E751BF297
 for <devel@linuxdriverproject.org>; Sat,  1 Apr 2023 04:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E545845A6
 for <devel@linuxdriverproject.org>; Sat,  1 Apr 2023 04:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E545845A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4y1aYKGLLDCg for <devel@linuxdriverproject.org>;
 Sat,  1 Apr 2023 04:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF40A84592
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF40A84592
 for <devel@driverdev.osuosl.org>; Sat,  1 Apr 2023 04:32:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="404361546"
X-IronPort-AV: E=Sophos;i="5.98,308,1673942400"; d="scan'208";a="404361546"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 21:32:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="635521890"
X-IronPort-AV: E=Sophos;i="5.98,308,1673942400"; d="scan'208";a="635521890"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 31 Mar 2023 21:32:11 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piSuQ-000MRf-2G;
 Sat, 01 Apr 2023 04:32:10 +0000
Date: Sat, 01 Apr 2023 12:31:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 980c05616e5d554c46176fe08b5601801f2f8192
Message-ID: <6427b3b7.r30CDrxIicTYWLil%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680323533; x=1711859533;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=MUx43BOWzLHTSKTCQuDFfl/UF75HpmyUDzz/yFrP43E=;
 b=TXjWtAnWm6KHTwIrGahAI2kb4/DIVO6OoBF6qNZX3N3nh2NF6tDO1jDH
 3OuZrvxbVTUsmjPQfsD8fiBENSGBLolbYD8unsjbS2HDZ+s5DA58CGTYx
 vZcfcoaRP6otD6rs7xkMmn8Wp8bw06MgZT21VuYoA9hJwJ3/qOKbQCPuJ
 O+anbpMMl4C4dkST/U0po2GRYcPHNFn+lEW2K+1zPMhbrC2x7rXqldqex
 KT0R2Rzp8OlPEeN6jldi1Sh5ivsJbH93clBFlo/CWmW04IFcKFRQu1Dgq
 FzU4ecZ2bJM0rezOoESEYupSYOMguvKWC1z3z2NqcYsADKwZe0NuLGscC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TXjWtAnW
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 980c05616e5d554c46176fe08b5601801f2f8192  driver core: make sysfs_dev_char_kobj static

elapsed time: 734m

configs tested: 264
configs skipped: 21

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230329   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230329   gcc  
alpha                randconfig-r005-20230329   gcc  
alpha                randconfig-r005-20230330   gcc  
alpha                randconfig-r006-20230401   gcc  
alpha                randconfig-r012-20230329   gcc  
alpha                randconfig-r016-20230329   gcc  
alpha                randconfig-r024-20230329   gcc  
alpha                randconfig-r025-20230329   gcc  
alpha                randconfig-r031-20230329   gcc  
alpha                randconfig-r036-20230329   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230329   gcc  
arc          buildonly-randconfig-r003-20230329   gcc  
arc          buildonly-randconfig-r006-20230329   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r004-20230329   gcc  
arc                  randconfig-r005-20230329   gcc  
arc                  randconfig-r013-20230329   gcc  
arc                  randconfig-r016-20230329   gcc  
arc                  randconfig-r025-20230329   gcc  
arc                  randconfig-r032-20230329   gcc  
arc                  randconfig-r033-20230329   gcc  
arc                  randconfig-r043-20230329   gcc  
arc                  randconfig-r043-20230331   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230329   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r013-20230329   gcc  
arm                  randconfig-r023-20230329   gcc  
arm                  randconfig-r025-20230329   gcc  
arm                  randconfig-r035-20230329   clang
arm                  randconfig-r046-20230329   gcc  
arm                  randconfig-r046-20230331   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230329   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230329   gcc  
arm64                randconfig-r003-20230329   gcc  
arm64                randconfig-r006-20230329   gcc  
arm64                randconfig-r013-20230329   clang
arm64                randconfig-r023-20230331   gcc  
arm64                randconfig-r024-20230329   clang
arm64                randconfig-r036-20230329   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230329   gcc  
csky                 randconfig-r004-20230329   gcc  
csky                 randconfig-r011-20230329   gcc  
csky                 randconfig-r013-20230331   gcc  
csky                 randconfig-r022-20230329   gcc  
csky                 randconfig-r025-20230331   gcc  
csky                 randconfig-r026-20230329   gcc  
csky                 randconfig-r026-20230330   gcc  
csky                 randconfig-r034-20230329   gcc  
hexagon              randconfig-r015-20230329   clang
hexagon              randconfig-r016-20230329   clang
hexagon              randconfig-r025-20230330   clang
hexagon              randconfig-r031-20230329   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r041-20230330   clang
hexagon              randconfig-r041-20230331   clang
hexagon              randconfig-r045-20230329   clang
hexagon              randconfig-r045-20230330   clang
hexagon              randconfig-r045-20230331   clang
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
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230329   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230329   gcc  
ia64                 randconfig-r005-20230329   gcc  
ia64                 randconfig-r012-20230329   gcc  
ia64                 randconfig-r015-20230329   gcc  
ia64                 randconfig-r023-20230329   gcc  
ia64                 randconfig-r024-20230329   gcc  
ia64                 randconfig-r025-20230329   gcc  
ia64                 randconfig-r026-20230329   gcc  
ia64                 randconfig-r033-20230329   gcc  
ia64                 randconfig-r036-20230329   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230329   gcc  
loongarch            randconfig-r002-20230329   gcc  
loongarch            randconfig-r004-20230329   gcc  
loongarch            randconfig-r006-20230329   gcc  
loongarch            randconfig-r014-20230329   gcc  
loongarch            randconfig-r021-20230329   gcc  
loongarch            randconfig-r022-20230329   gcc  
loongarch            randconfig-r023-20230329   gcc  
loongarch            randconfig-r025-20230329   gcc  
loongarch            randconfig-r026-20230329   gcc  
loongarch            randconfig-r034-20230329   gcc  
loongarch            randconfig-r035-20230329   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230329   gcc  
m68k         buildonly-randconfig-r006-20230329   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230329   gcc  
m68k                 randconfig-r015-20230329   gcc  
m68k                 randconfig-r022-20230329   gcc  
m68k                 randconfig-r023-20230331   gcc  
m68k                 randconfig-r031-20230329   gcc  
m68k                 randconfig-r035-20230329   gcc  
microblaze   buildonly-randconfig-r005-20230329   gcc  
microblaze   buildonly-randconfig-r006-20230329   gcc  
microblaze           randconfig-r002-20230401   gcc  
microblaze           randconfig-r012-20230329   gcc  
microblaze           randconfig-r022-20230331   gcc  
microblaze           randconfig-r023-20230329   gcc  
microblaze           randconfig-r024-20230329   gcc  
microblaze           randconfig-r024-20230331   gcc  
microblaze           randconfig-r032-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230329   clang
mips                 randconfig-r001-20230329   clang
mips                 randconfig-r021-20230329   gcc  
mips                 randconfig-r021-20230330   gcc  
mips                 randconfig-r026-20230329   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230401   gcc  
nios2                randconfig-r006-20230329   gcc  
nios2                randconfig-r011-20230329   gcc  
nios2                randconfig-r014-20230331   gcc  
nios2                randconfig-r016-20230329   gcc  
nios2                randconfig-r024-20230329   gcc  
nios2                randconfig-r025-20230329   gcc  
nios2                randconfig-r026-20230329   gcc  
nios2                randconfig-r031-20230329   gcc  
nios2                randconfig-r033-20230329   gcc  
nios2                randconfig-r033-20230330   gcc  
nios2                randconfig-r035-20230329   gcc  
nios2                randconfig-r036-20230330   gcc  
openrisc     buildonly-randconfig-r002-20230329   gcc  
openrisc             randconfig-r004-20230329   gcc  
openrisc             randconfig-r006-20230329   gcc  
openrisc             randconfig-r015-20230329   gcc  
openrisc             randconfig-r021-20230329   gcc  
openrisc             randconfig-r034-20230329   gcc  
openrisc             randconfig-r036-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230330   gcc  
parisc               randconfig-r006-20230329   gcc  
parisc               randconfig-r015-20230329   gcc  
parisc               randconfig-r022-20230329   gcc  
parisc               randconfig-r022-20230330   gcc  
parisc               randconfig-r023-20230330   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230329   clang
powerpc      buildonly-randconfig-r005-20230329   clang
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                 mpc8560_ads_defconfig   clang
powerpc              randconfig-r011-20230329   clang
powerpc              randconfig-r026-20230329   clang
powerpc              randconfig-r032-20230329   gcc  
powerpc              randconfig-r034-20230329   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230329   clang
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230330   gcc  
riscv                randconfig-r002-20230330   gcc  
riscv                randconfig-r006-20230329   gcc  
riscv                randconfig-r013-20230329   clang
riscv                randconfig-r016-20230329   clang
riscv                randconfig-r016-20230331   gcc  
riscv                randconfig-r021-20230331   gcc  
riscv                randconfig-r032-20230329   gcc  
riscv                randconfig-r035-20230329   gcc  
riscv                randconfig-r042-20230329   clang
riscv                randconfig-r042-20230330   clang
riscv                randconfig-r042-20230331   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230329   clang
s390         buildonly-randconfig-r003-20230329   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230329   gcc  
s390                 randconfig-r003-20230329   gcc  
s390                 randconfig-r014-20230329   clang
s390                 randconfig-r015-20230331   gcc  
s390                 randconfig-r016-20230329   clang
s390                 randconfig-r033-20230329   gcc  
s390                 randconfig-r035-20230329   gcc  
s390                 randconfig-r044-20230329   clang
s390                 randconfig-r044-20230330   clang
s390                 randconfig-r044-20230331   gcc  
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                   randconfig-r005-20230329   gcc  
sh                   randconfig-r006-20230329   gcc  
sh                   randconfig-r011-20230331   gcc  
sh                   randconfig-r014-20230329   gcc  
sh                   randconfig-r023-20230329   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sparc        buildonly-randconfig-r001-20230329   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230329   gcc  
sparc                randconfig-r006-20230330   gcc  
sparc                randconfig-r022-20230329   gcc  
sparc                randconfig-r024-20230330   gcc  
sparc                randconfig-r024-20230331   gcc  
sparc64      buildonly-randconfig-r004-20230329   gcc  
sparc64              randconfig-r003-20230329   gcc  
sparc64              randconfig-r012-20230329   gcc  
sparc64              randconfig-r024-20230329   gcc  
sparc64              randconfig-r025-20230329   gcc  
sparc64              randconfig-r026-20230331   gcc  
sparc64              randconfig-r031-20230329   gcc  
sparc64              randconfig-r033-20230329   gcc  
sparc64              randconfig-r035-20230329   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230329   gcc  
xtensa               randconfig-r021-20230329   gcc  
xtensa               randconfig-r021-20230331   gcc  
xtensa               randconfig-r026-20230329   gcc  
xtensa               randconfig-r031-20230329   gcc  
xtensa               randconfig-r033-20230329   gcc  
xtensa               randconfig-r036-20230329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
