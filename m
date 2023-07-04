Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E947478CD
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jul 2023 21:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04B3940252;
	Tue,  4 Jul 2023 19:48:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04B3940252
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFVeeSjDcCJv; Tue,  4 Jul 2023 19:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B6D24025F;
	Tue,  4 Jul 2023 19:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B6D24025F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 182871BF5F8
 for <devel@linuxdriverproject.org>; Tue,  4 Jul 2023 19:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F30E5817C3
 for <devel@linuxdriverproject.org>; Tue,  4 Jul 2023 19:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F30E5817C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5S6Z9H_Jc3i for <devel@linuxdriverproject.org>;
 Tue,  4 Jul 2023 19:48:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F38BF817C0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F38BF817C0
 for <devel@driverdev.osuosl.org>; Tue,  4 Jul 2023 19:48:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="342774831"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="342774831"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 12:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="788943075"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="788943075"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jul 2023 12:48:06 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qGm0L-000IV9-1w;
 Tue, 04 Jul 2023 19:48:05 +0000
Date: Wed, 05 Jul 2023 03:47:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 d4af51e544651cf38194dc0462ff73398b3e7432
Message-ID: <202307050337.NLJG3htL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688500088; x=1720036088;
 h=date:from:to:cc:subject:message-id;
 bh=QKhF+4usXbKSVSRja6ZtSQ0hlwGR9y7EoIx9yI48NQw=;
 b=HtPGeE3sCnOHnJCur6lMP2/810dxpC+PwmK6zxWgTytFJ2XpFX8FUeqf
 Z1+EpoPIb6q+1CtRZGWmD0nXPbmJKvY1Q5LkQbgEQubS5wSzFMDwK76HT
 8LKZCtJAuMAbPn8+SDEDItJ/chbSwwEB8X/3gCLpmwWxcrWVwoIhHaH6E
 S91QOEdb/Q6iwyCmzF6TS2pzMmMvbKqKIjiZqLdxcn3/fD2uTFOS7USaE
 ouKlfMTeYZKaLqULtww/+dxrOg7LiCXqxUJLJfK2OArEpCnzgWoQIHNih
 mcFoJBYigdNcIzN0JMNSXFZ1t6e9m9T15N6jXqnSAo2JtTqsQAoFA7kiy
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HtPGeE3s
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
branch HEAD: d4af51e544651cf38194dc0462ff73398b3e7432  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 726m

configs tested: 117
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r036-20230704   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230703   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                  randconfig-r046-20230703   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230704   clang
arm64                randconfig-r012-20230704   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230704   gcc  
csky                 randconfig-r024-20230704   gcc  
hexagon              randconfig-r022-20230704   clang
hexagon              randconfig-r041-20230703   clang
hexagon              randconfig-r045-20230703   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230703   gcc  
i386         buildonly-randconfig-r005-20230703   gcc  
i386         buildonly-randconfig-r006-20230703   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230704   clang
i386                 randconfig-i002-20230704   clang
i386                 randconfig-i003-20230704   clang
i386                 randconfig-i004-20230704   clang
i386                 randconfig-i005-20230704   clang
i386                 randconfig-i006-20230704   clang
i386                 randconfig-i011-20230703   clang
i386                 randconfig-i012-20230703   clang
i386                 randconfig-i013-20230703   clang
i386                 randconfig-i014-20230703   clang
i386                 randconfig-i015-20230703   clang
i386                 randconfig-i016-20230703   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                 randconfig-r031-20230704   gcc  
m68k                 randconfig-r032-20230704   gcc  
microblaze           randconfig-r005-20230704   gcc  
microblaze           randconfig-r013-20230704   gcc  
microblaze           randconfig-r025-20230704   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r026-20230704   clang
mips                 randconfig-r034-20230704   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230704   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                  mpc866_ads_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                    nommu_virt_defconfig   clang
riscv                randconfig-r004-20230704   clang
riscv                randconfig-r042-20230703   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230704   gcc  
s390                 randconfig-r044-20230703   clang
sh                               allmodconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r001-20230704   gcc  
sh                   randconfig-r016-20230704   gcc  
sh                            titan_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r033-20230704   gcc  
sparc64              randconfig-r014-20230704   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r021-20230704   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230703   gcc  
x86_64       buildonly-randconfig-r002-20230703   gcc  
x86_64       buildonly-randconfig-r003-20230703   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230703   clang
x86_64               randconfig-x002-20230703   clang
x86_64               randconfig-x003-20230703   clang
x86_64               randconfig-x004-20230703   clang
x86_64               randconfig-x005-20230703   clang
x86_64               randconfig-x006-20230703   clang
x86_64               randconfig-x011-20230704   clang
x86_64               randconfig-x012-20230704   clang
x86_64               randconfig-x013-20230704   clang
x86_64               randconfig-x014-20230704   clang
x86_64               randconfig-x015-20230704   clang
x86_64               randconfig-x016-20230704   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r035-20230704   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
