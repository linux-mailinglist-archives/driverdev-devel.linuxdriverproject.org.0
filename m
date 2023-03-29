Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C06D6CF1AB
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Mar 2023 20:05:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4194061568;
	Wed, 29 Mar 2023 18:05:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4194061568
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rzuo7Zj-i9dQ; Wed, 29 Mar 2023 18:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D643F6155B;
	Wed, 29 Mar 2023 18:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D643F6155B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB61C1BF33B
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 18:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9143B41E56
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 18:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9143B41E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPJ_uw4uMXNZ for <devel@linuxdriverproject.org>;
 Wed, 29 Mar 2023 18:05:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BA6541E54
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BA6541E54
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 18:05:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="339685076"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="339685076"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 11:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="773677449"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="773677449"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Mar 2023 11:05:05 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phaAS-000JnC-3C;
 Wed, 29 Mar 2023 18:05:04 +0000
Date: Thu, 30 Mar 2023 02:04:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 8ad266d133b005e88953b08d988fac86f74a0665
Message-ID: <64247d98.6xKxTZkl/olRTq4P%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680113115; x=1711649115;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0tuRsFJvFfQamT/guGz4FR2k3S0u59qUjLysv+71k5k=;
 b=StgXCXt1Nz0+EKo/YXpbI6HMtjaNLEL91c5Jjotxc/bodyOvDWCZI8zf
 uwUpDetnMgjLaGkh07KexVgQo4y59Phyv8zSEjbG9fGs+SLj0YH/xYxsj
 f7X76I3tKdsEuQjOYGKVCzR4wDgQ/Ww1j5kmFBFgB2+KnTMdsZWawgyCX
 H1Z868OILhQ3rV3n3H2wYT5T8ldgKX0haXHd5sEZ6XgseiQoxxXXBEJYs
 OmzZ3qSIrwSJvfwIGakPjmr+inWkqXR0K29dfYHB8Gj/wXbpOf2V8HZKt
 nMfrWzn36JtDgQOcFJCGs31gIfCaZfpTbGqASgyiz4YiASu0TC0pH/GbG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=StgXCXt1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: 8ad266d133b005e88953b08d988fac86f74a0665  driver core: Add CONFIG_FW_DEVLINK_SYNC_STATE_TIMEOUT

elapsed time: 1396m

configs tested: 317
configs skipped: 47

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230329   gcc  
alpha        buildonly-randconfig-r003-20230326   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230329   gcc  
alpha                randconfig-r004-20230327   gcc  
alpha                randconfig-r005-20230329   gcc  
alpha                randconfig-r012-20230329   gcc  
alpha                randconfig-r015-20230329   gcc  
alpha                randconfig-r023-20230329   gcc  
alpha                randconfig-r025-20230326   gcc  
alpha                randconfig-r031-20230329   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230327   gcc  
arc          buildonly-randconfig-r003-20230329   gcc  
arc          buildonly-randconfig-r005-20230329   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r012-20230326   gcc  
arc                  randconfig-r013-20230329   gcc  
arc                  randconfig-r016-20230329   gcc  
arc                  randconfig-r033-20230329   gcc  
arc                  randconfig-r034-20230329   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arc                  randconfig-r043-20230329   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230329   gcc  
arm          buildonly-randconfig-r006-20230329   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                  randconfig-r005-20230327   clang
arm                  randconfig-r024-20230326   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm                  randconfig-r046-20230329   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230329   gcc  
arm64        buildonly-randconfig-r002-20230329   gcc  
arm64        buildonly-randconfig-r005-20230329   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230329   gcc  
arm64                randconfig-r006-20230329   gcc  
arm64                randconfig-r011-20230329   clang
arm64                randconfig-r013-20230329   clang
arm64                randconfig-r021-20230326   gcc  
arm64                randconfig-r025-20230329   clang
arm64                randconfig-r026-20230326   gcc  
arm64                randconfig-r026-20230329   clang
arm64                randconfig-r032-20230329   gcc  
arm64                randconfig-r036-20230329   gcc  
csky         buildonly-randconfig-r004-20230327   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230329   gcc  
csky                 randconfig-r004-20230329   gcc  
csky                 randconfig-r011-20230329   gcc  
csky                 randconfig-r014-20230329   gcc  
csky                 randconfig-r031-20230329   gcc  
csky                 randconfig-r032-20230326   gcc  
csky                 randconfig-r032-20230327   gcc  
csky                 randconfig-r034-20230329   gcc  
hexagon              randconfig-r006-20230327   clang
hexagon              randconfig-r013-20230327   clang
hexagon              randconfig-r015-20230329   clang
hexagon              randconfig-r016-20230329   clang
hexagon              randconfig-r036-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
hexagon              randconfig-r045-20230329   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230329   gcc  
ia64         buildonly-randconfig-r005-20230329   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230329   gcc  
ia64                 randconfig-r004-20230329   gcc  
ia64                 randconfig-r005-20230329   gcc  
ia64                 randconfig-r006-20230329   gcc  
ia64                 randconfig-r011-20230329   gcc  
ia64                 randconfig-r035-20230327   gcc  
ia64                 randconfig-r036-20230329   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230326   gcc  
loongarch    buildonly-randconfig-r006-20230326   gcc  
loongarch    buildonly-randconfig-r006-20230329   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230326   gcc  
loongarch            randconfig-r002-20230329   gcc  
loongarch            randconfig-r005-20230326   gcc  
loongarch            randconfig-r012-20230327   gcc  
loongarch            randconfig-r013-20230329   gcc  
loongarch            randconfig-r015-20230329   gcc  
loongarch            randconfig-r023-20230329   gcc  
loongarch            randconfig-r025-20230329   gcc  
loongarch            randconfig-r026-20230329   gcc  
loongarch            randconfig-r033-20230327   gcc  
loongarch            randconfig-r036-20230329   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230329   gcc  
m68k         buildonly-randconfig-r004-20230329   gcc  
m68k         buildonly-randconfig-r006-20230329   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r002-20230329   gcc  
m68k                 randconfig-r012-20230329   gcc  
m68k                 randconfig-r014-20230329   gcc  
m68k                 randconfig-r015-20230329   gcc  
m68k                 randconfig-r016-20230329   gcc  
m68k                 randconfig-r021-20230326   gcc  
m68k                 randconfig-r031-20230329   gcc  
m68k                 randconfig-r033-20230329   gcc  
m68k                 randconfig-r034-20230326   gcc  
m68k                 randconfig-r035-20230329   gcc  
m68k                           virt_defconfig   gcc  
microblaze   buildonly-randconfig-r004-20230326   gcc  
microblaze           randconfig-r001-20230329   gcc  
microblaze           randconfig-r005-20230329   gcc  
microblaze           randconfig-r015-20230329   gcc  
microblaze           randconfig-r016-20230327   gcc  
microblaze           randconfig-r016-20230329   gcc  
microblaze           randconfig-r024-20230329   gcc  
microblaze           randconfig-r032-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230326   gcc  
mips                         db1xxx_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                 randconfig-r001-20230329   clang
mips                 randconfig-r005-20230329   clang
mips                 randconfig-r012-20230329   gcc  
mips                 randconfig-r013-20230329   gcc  
mips                 randconfig-r015-20230329   gcc  
mips                 randconfig-r016-20230329   gcc  
mips                 randconfig-r023-20230329   gcc  
mips                 randconfig-r025-20230327   gcc  
mips                 randconfig-r025-20230329   gcc  
nios2        buildonly-randconfig-r003-20230329   gcc  
nios2        buildonly-randconfig-r004-20230329   gcc  
nios2        buildonly-randconfig-r005-20230329   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230329   gcc  
nios2                randconfig-r011-20230329   gcc  
nios2                randconfig-r012-20230329   gcc  
nios2                randconfig-r015-20230327   gcc  
nios2                randconfig-r016-20230329   gcc  
nios2                randconfig-r022-20230326   gcc  
nios2                randconfig-r031-20230327   gcc  
nios2                randconfig-r031-20230329   gcc  
nios2                randconfig-r033-20230329   gcc  
nios2                randconfig-r035-20230329   gcc  
openrisc     buildonly-randconfig-r003-20230329   gcc  
openrisc     buildonly-randconfig-r006-20230329   gcc  
openrisc                  or1klitex_defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r002-20230326   gcc  
openrisc             randconfig-r003-20230326   gcc  
openrisc             randconfig-r004-20230326   gcc  
openrisc             randconfig-r004-20230329   gcc  
openrisc             randconfig-r006-20230329   gcc  
openrisc             randconfig-r021-20230329   gcc  
openrisc             randconfig-r026-20230329   gcc  
openrisc             randconfig-r032-20230329   gcc  
openrisc             randconfig-r034-20230329   gcc  
openrisc             randconfig-r036-20230329   gcc  
parisc       buildonly-randconfig-r006-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230327   gcc  
parisc               randconfig-r001-20230329   gcc  
parisc               randconfig-r006-20230326   gcc  
parisc               randconfig-r026-20230327   gcc  
parisc               randconfig-r032-20230329   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r011-20230329   clang
powerpc              randconfig-r023-20230326   gcc  
powerpc              randconfig-r024-20230329   clang
powerpc              randconfig-r032-20230329   gcc  
powerpc              randconfig-r034-20230329   gcc  
powerpc                    socrates_defconfig   clang
powerpc                     tqm8548_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                    nommu_virt_defconfig   clang
riscv                randconfig-r014-20230329   clang
riscv                randconfig-r021-20230327   clang
riscv                randconfig-r022-20230329   clang
riscv                randconfig-r032-20230329   gcc  
riscv                randconfig-r035-20230329   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                randconfig-r042-20230329   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230329   gcc  
s390                 randconfig-r003-20230329   gcc  
s390                 randconfig-r005-20230329   gcc  
s390                 randconfig-r014-20230329   clang
s390                 randconfig-r015-20230326   gcc  
s390                 randconfig-r016-20230329   clang
s390                 randconfig-r022-20230329   clang
s390                 randconfig-r023-20230329   clang
s390                 randconfig-r035-20230329   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
s390                 randconfig-r044-20230329   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230329   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r004-20230329   gcc  
sh                   randconfig-r006-20230329   gcc  
sh                   randconfig-r011-20230327   gcc  
sh                   randconfig-r022-20230326   gcc  
sh                   randconfig-r022-20230329   gcc  
sh                   randconfig-r031-20230326   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sparc        buildonly-randconfig-r003-20230329   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230329   gcc  
sparc                randconfig-r016-20230326   gcc  
sparc                randconfig-r033-20230326   gcc  
sparc64      buildonly-randconfig-r002-20230327   gcc  
sparc64      buildonly-randconfig-r003-20230329   gcc  
sparc64      buildonly-randconfig-r005-20230327   gcc  
sparc64      buildonly-randconfig-r005-20230329   gcc  
sparc64      buildonly-randconfig-r006-20230329   gcc  
sparc64              randconfig-r003-20230327   gcc  
sparc64              randconfig-r013-20230329   gcc  
sparc64              randconfig-r024-20230327   gcc  
sparc64              randconfig-r031-20230329   gcc  
um                               alldefconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230327   gcc  
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230327   gcc  
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230327   gcc  
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230327   clang
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230327   clang
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230327   clang
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230327   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r014-20230327   clang
x86_64               randconfig-r023-20230327   clang
x86_64               randconfig-r025-20230327   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230329   gcc  
xtensa                              defconfig   gcc  
xtensa               randconfig-r002-20230327   gcc  
xtensa               randconfig-r003-20230329   gcc  
xtensa               randconfig-r011-20230329   gcc  
xtensa               randconfig-r012-20230329   gcc  
xtensa               randconfig-r021-20230329   gcc  
xtensa               randconfig-r022-20230327   gcc  
xtensa               randconfig-r024-20230329   gcc  
xtensa               randconfig-r031-20230329   gcc  
xtensa               randconfig-r033-20230329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
