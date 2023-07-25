Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8992C7621CC
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jul 2023 20:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2125E6110E;
	Tue, 25 Jul 2023 18:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2125E6110E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UaBRWp73tZ5; Tue, 25 Jul 2023 18:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB19B610EF;
	Tue, 25 Jul 2023 18:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB19B610EF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3C891BF47E
 for <devel@linuxdriverproject.org>; Tue, 25 Jul 2023 18:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8B8B61101
 for <devel@linuxdriverproject.org>; Tue, 25 Jul 2023 18:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8B8B61101
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhTuitA9o9u4 for <devel@linuxdriverproject.org>;
 Tue, 25 Jul 2023 18:53:03 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 25 Jul 2023 18:53:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85E4B61099
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85E4B61099
 for <devel@driverdev.osuosl.org>; Tue, 25 Jul 2023 18:53:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="431625740"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="431625740"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 11:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="755871477"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="755871477"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 25 Jul 2023 11:45:54 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qON2f-0000EN-39;
 Tue, 25 Jul 2023 18:45:53 +0000
Date: Wed, 26 Jul 2023 02:45:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 b649665b5793186628d564d2e3d477db9d48db39
Message-ID: <202307260237.jBQ7731L-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690311183; x=1721847183;
 h=date:from:to:cc:subject:message-id;
 bh=y+JQhV6dQb+kj7xL8zSbbNVnQF21jvdZHaWNf9n8jXI=;
 b=aOigUi4G5Y0mSSe+e9p2WbNTYLhpAZsQoOE7nl9FRh42PgG0xssNPjWs
 6HlYjHfNTS+fr3gIqZkbTvYTblMlBL/Kj63/md2RSRpmYKzMz8jRIkUex
 zJ7v8w78Nj6Sfh1XcIfXpvPngXOVqCjuBA+4G6PrKMwqYdHvcHp6KoJYY
 Hg5rLR7QYN482VqN0f5k1KajRMF7ql/43YmF33sJ33g51MGRJMdcPcoHL
 e7x0EZoaojZrZkxQZniQ7BJLjVy/UUJ6VJJLFbYaVgOiI/jrZwmFBtK2x
 BUv81+eWVm7QziUbrdphDdHbNGsOW8OyUM3T18fs4R5HPO620UOJD8bs7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aOigUi4G
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
branch HEAD: b649665b5793186628d564d2e3d477db9d48db39  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 721m

configs tested: 155
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230725   gcc  
alpha                randconfig-r024-20230725   gcc  
alpha                randconfig-r033-20230725   gcc  
alpha                randconfig-r034-20230725   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230725   gcc  
arc                  randconfig-r013-20230725   gcc  
arc                  randconfig-r023-20230725   gcc  
arc                  randconfig-r024-20230725   gcc  
arc                  randconfig-r033-20230725   gcc  
arc                  randconfig-r035-20230725   gcc  
arc                  randconfig-r036-20230725   gcc  
arc                  randconfig-r043-20230725   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                       multi_v4t_defconfig   gcc  
arm                  randconfig-r003-20230725   gcc  
arm                  randconfig-r011-20230725   clang
arm                  randconfig-r031-20230725   gcc  
arm                  randconfig-r046-20230725   clang
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230725   gcc  
arm64                randconfig-r026-20230725   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230725   gcc  
csky                 randconfig-r016-20230725   gcc  
csky                 randconfig-r031-20230725   gcc  
csky                 randconfig-r036-20230725   gcc  
hexagon              randconfig-r004-20230725   clang
hexagon              randconfig-r023-20230725   clang
hexagon              randconfig-r041-20230725   clang
hexagon              randconfig-r045-20230725   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230725   clang
i386         buildonly-randconfig-r005-20230725   clang
i386         buildonly-randconfig-r006-20230725   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230725   clang
i386                 randconfig-i002-20230725   clang
i386                 randconfig-i003-20230725   clang
i386                 randconfig-i004-20230725   clang
i386                 randconfig-i005-20230725   clang
i386                 randconfig-i006-20230725   clang
i386                 randconfig-i011-20230725   gcc  
i386                 randconfig-i012-20230725   gcc  
i386                 randconfig-i013-20230725   gcc  
i386                 randconfig-i014-20230725   gcc  
i386                 randconfig-i015-20230725   gcc  
i386                 randconfig-i016-20230725   gcc  
i386                 randconfig-r006-20230725   clang
i386                 randconfig-r022-20230725   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230725   gcc  
loongarch            randconfig-r023-20230725   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230725   gcc  
m68k                 randconfig-r035-20230725   gcc  
microblaze           randconfig-r015-20230725   gcc  
microblaze           randconfig-r021-20230725   gcc  
microblaze           randconfig-r025-20230725   gcc  
microblaze           randconfig-r032-20230725   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                      malta_kvm_defconfig   clang
mips                 randconfig-r005-20230725   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230725   gcc  
nios2                randconfig-r034-20230725   gcc  
openrisc             randconfig-r005-20230725   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230725   gcc  
parisc               randconfig-r024-20230725   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r022-20230725   gcc  
powerpc              randconfig-r035-20230725   clang
powerpc              randconfig-r036-20230725   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r024-20230725   gcc  
riscv                randconfig-r042-20230725   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230725   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230725   gcc  
sh                   randconfig-r015-20230725   gcc  
sh                   randconfig-r021-20230725   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230725   gcc  
sparc                randconfig-r022-20230725   gcc  
sparc                randconfig-r023-20230725   gcc  
sparc                randconfig-r031-20230725   gcc  
sparc64              randconfig-r001-20230725   gcc  
sparc64              randconfig-r012-20230725   gcc  
sparc64              randconfig-r014-20230725   gcc  
sparc64              randconfig-r016-20230725   gcc  
sparc64              randconfig-r026-20230725   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r016-20230725   clang
um                   randconfig-r032-20230725   gcc  
um                   randconfig-r033-20230725   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230725   clang
x86_64       buildonly-randconfig-r002-20230725   clang
x86_64       buildonly-randconfig-r003-20230725   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r016-20230725   gcc  
x86_64               randconfig-r031-20230725   clang
x86_64               randconfig-x001-20230725   gcc  
x86_64               randconfig-x002-20230725   gcc  
x86_64               randconfig-x003-20230725   gcc  
x86_64               randconfig-x004-20230725   gcc  
x86_64               randconfig-x005-20230725   gcc  
x86_64               randconfig-x006-20230725   gcc  
x86_64               randconfig-x011-20230725   clang
x86_64               randconfig-x012-20230725   clang
x86_64               randconfig-x013-20230725   clang
x86_64               randconfig-x014-20230725   clang
x86_64               randconfig-x015-20230725   clang
x86_64               randconfig-x016-20230725   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230725   gcc  
xtensa               randconfig-r012-20230725   gcc  
xtensa               randconfig-r015-20230725   gcc  
xtensa               randconfig-r022-20230725   gcc  
xtensa               randconfig-r025-20230725   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
