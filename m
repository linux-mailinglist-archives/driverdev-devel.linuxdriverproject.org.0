Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB336D34E5
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Apr 2023 00:55:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C256040412;
	Sat,  1 Apr 2023 22:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C256040412
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JviOFk8U3s_m; Sat,  1 Apr 2023 22:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E5414056E;
	Sat,  1 Apr 2023 22:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E5414056E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B0131BF33C
 for <devel@linuxdriverproject.org>; Sat,  1 Apr 2023 22:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E73360F32
 for <devel@linuxdriverproject.org>; Sat,  1 Apr 2023 22:55:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E73360F32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WONijDzCzPNL for <devel@linuxdriverproject.org>;
 Sat,  1 Apr 2023 22:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03BA360F2A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03BA360F2A
 for <devel@driverdev.osuosl.org>; Sat,  1 Apr 2023 22:55:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="369486217"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="369486217"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 15:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="679008325"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="679008325"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 01 Apr 2023 15:55:41 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pik8K-000N61-2u;
 Sat, 01 Apr 2023 22:55:40 +0000
Date: Sun, 02 Apr 2023 06:54:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f326ea63ecc683b3dc88d8ee4f598598d4ed3b39
Message-ID: <6428b642.tnTJWQD1Sjw4iVQS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680389743; x=1711925743;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vp0Gr6lm1b+vELZRsbksmfK3EjWiXn6J3u0/cug2JUQ=;
 b=ZiX466h1mJCoxewHhBoIO9dXjAlpybnDtkClGwbUJApVrI76wHzgSqX2
 dbVLYMXTy6KrB2iqaLlJLIRXH6XLqKeECorCtENsKY2vqCD3DuOzxzGfC
 flBqpiB4T3Riytwhc9LLxbHNL6N12OpGX28lCEeLuWSM+n/eXDhS2vvHV
 7C3+gcS01fAIWfqzh8TQF2Ri8OmD/ckYnQG6d5yzm1Gqjro8Ia1qRR6LU
 OXs7Lixo9CnRrek6HrIXpz92JYZUdK1mX0A0gFTnczfJvVv/hvDWlLJcN
 09+pEYrwYtRkPAQV1zoTh9iUJH05nNyIcql4aqK59VCcugMgzRlLr9tNQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZiX466h1
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
branch HEAD: f326ea63ecc683b3dc88d8ee4f598598d4ed3b39  driver core: class: fix slab-use-after-free Read in class_register()

elapsed time: 724m

configs tested: 216
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230329   gcc  
alpha        buildonly-randconfig-r006-20230329   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230401   gcc  
alpha                randconfig-r012-20230329   gcc  
alpha                randconfig-r024-20230329   gcc  
alpha                randconfig-r036-20230329   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230329   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230401   gcc  
arc                  randconfig-r006-20230401   gcc  
arc                  randconfig-r033-20230401   gcc  
arc                  randconfig-r043-20230329   gcc  
arc                  randconfig-r043-20230331   gcc  
arc                  randconfig-r043-20230401   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                  randconfig-r013-20230329   gcc  
arm                  randconfig-r015-20230401   clang
arm                  randconfig-r046-20230329   gcc  
arm                  randconfig-r046-20230331   clang
arm                  randconfig-r046-20230401   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230329   gcc  
arm64                randconfig-r016-20230401   gcc  
csky         buildonly-randconfig-r006-20230401   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230329   gcc  
csky                 randconfig-r006-20230401   gcc  
csky                 randconfig-r011-20230329   gcc  
csky                 randconfig-r013-20230331   gcc  
csky                 randconfig-r026-20230401   gcc  
csky                 randconfig-r034-20230329   gcc  
csky                 randconfig-r034-20230401   gcc  
hexagon              randconfig-r004-20230401   clang
hexagon              randconfig-r011-20230401   clang
hexagon              randconfig-r013-20230401   clang
hexagon              randconfig-r022-20230329   clang
hexagon              randconfig-r024-20230401   clang
hexagon              randconfig-r032-20230329   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r041-20230331   clang
hexagon              randconfig-r041-20230401   clang
hexagon              randconfig-r041-20230402   clang
hexagon              randconfig-r045-20230329   clang
hexagon              randconfig-r045-20230331   clang
hexagon              randconfig-r045-20230401   clang
hexagon              randconfig-r045-20230402   clang
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
ia64                             alldefconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230329   gcc  
ia64                 randconfig-r006-20230329   gcc  
ia64                 randconfig-r015-20230329   gcc  
ia64                 randconfig-r023-20230329   gcc  
ia64                 randconfig-r023-20230401   gcc  
ia64                 randconfig-r025-20230329   gcc  
ia64                 randconfig-r033-20230329   gcc  
ia64                 randconfig-r034-20230401   gcc  
ia64                 randconfig-r036-20230329   gcc  
ia64                 randconfig-r036-20230401   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230329   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230329   gcc  
loongarch            randconfig-r023-20230329   gcc  
loongarch            randconfig-r032-20230401   gcc  
loongarch            randconfig-r034-20230401   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k         buildonly-randconfig-r003-20230329   gcc  
m68k         buildonly-randconfig-r005-20230329   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r004-20230401   gcc  
microblaze   buildonly-randconfig-r005-20230401   gcc  
microblaze           randconfig-r001-20230401   gcc  
microblaze           randconfig-r013-20230401   gcc  
microblaze           randconfig-r024-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips         buildonly-randconfig-r001-20230401   gcc  
mips                     loongson1b_defconfig   gcc  
mips                 randconfig-r012-20230331   clang
mips                 randconfig-r014-20230401   clang
mips                 randconfig-r025-20230401   clang
mips                 randconfig-r026-20230329   gcc  
mips                 randconfig-r032-20230401   gcc  
mips                 randconfig-r036-20230401   gcc  
nios2        buildonly-randconfig-r002-20230401   gcc  
nios2        buildonly-randconfig-r004-20230329   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230401   gcc  
nios2                randconfig-r014-20230331   gcc  
nios2                randconfig-r031-20230329   gcc  
nios2                randconfig-r031-20230401   gcc  
nios2                randconfig-r035-20230401   gcc  
openrisc             randconfig-r021-20230329   gcc  
parisc       buildonly-randconfig-r001-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230329   gcc  
parisc               randconfig-r021-20230401   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230401   gcc  
powerpc                      katmai_defconfig   clang
powerpc                mpc7448_hpc2_defconfig   gcc  
powerpc                 mpc837x_mds_defconfig   gcc  
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r003-20230329   gcc  
powerpc              randconfig-r031-20230401   clang
powerpc              randconfig-r032-20230329   gcc  
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230329   gcc  
riscv                randconfig-r005-20230401   clang
riscv                randconfig-r006-20230329   gcc  
riscv                randconfig-r016-20230331   gcc  
riscv                randconfig-r022-20230329   clang
riscv                randconfig-r022-20230401   gcc  
riscv                randconfig-r031-20230329   gcc  
riscv                randconfig-r036-20230329   gcc  
riscv                randconfig-r042-20230329   clang
riscv                randconfig-r042-20230331   gcc  
riscv                randconfig-r042-20230401   gcc  
riscv                randconfig-r042-20230402   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230329   clang
s390                                defconfig   gcc  
s390                 randconfig-r005-20230401   clang
s390                 randconfig-r014-20230401   gcc  
s390                 randconfig-r015-20230331   gcc  
s390                 randconfig-r023-20230329   clang
s390                 randconfig-r035-20230329   gcc  
s390                 randconfig-r044-20230329   clang
s390                 randconfig-r044-20230331   gcc  
s390                 randconfig-r044-20230401   gcc  
s390                 randconfig-r044-20230402   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230329   gcc  
sh                             espt_defconfig   gcc  
sh                   randconfig-r003-20230401   gcc  
sh                   randconfig-r005-20230329   gcc  
sh                   randconfig-r011-20230331   gcc  
sh                   randconfig-r012-20230401   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230329   gcc  
sparc                randconfig-r026-20230401   gcc  
sparc                randconfig-r033-20230401   gcc  
sparc                randconfig-r034-20230329   gcc  
sparc64              randconfig-r003-20230329   gcc  
sparc64              randconfig-r023-20230401   gcc  
sparc64              randconfig-r025-20230329   gcc  
sparc64              randconfig-r025-20230401   gcc  
sparc64              randconfig-r031-20230329   gcc  
sparc64              randconfig-r034-20230329   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
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
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                       common_defconfig   gcc  
xtensa               randconfig-r011-20230401   gcc  
xtensa               randconfig-r026-20230329   gcc  
xtensa               randconfig-r033-20230329   gcc  
xtensa               randconfig-r033-20230401   gcc  
xtensa               randconfig-r035-20230401   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
