Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F7073F029
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jun 2023 03:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44E514085B;
	Tue, 27 Jun 2023 01:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44E514085B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUGw7HfNMTEl; Tue, 27 Jun 2023 01:12:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EE33417FB;
	Tue, 27 Jun 2023 01:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EE33417FB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67C5F1BF371
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 01:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F9DC4085B
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 01:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F9DC4085B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KjYqm-uvrBCN for <devel@linuxdriverproject.org>;
 Tue, 27 Jun 2023 01:12:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52C314069B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52C314069B
 for <devel@driverdev.osuosl.org>; Tue, 27 Jun 2023 01:12:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="447821159"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="447821159"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 18:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="840491085"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="840491085"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2023 18:12:35 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qDxFz-000BCi-0h;
 Tue, 27 Jun 2023 01:12:35 +0000
Date: Tue, 27 Jun 2023 09:11:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 c92637f6a517a69a9254e68a10e33f0451f76a95
Message-ID: <202306270945.JVSHwV5J-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687828358; x=1719364358;
 h=date:from:to:cc:subject:message-id;
 bh=wKpHglFqsGwLGHEMiI4lqiBubAnUTkp8SMLVbvGB8oE=;
 b=bGB5ZQfZinETkMQw2F3PmSuzPrJpEB9LsKDIG3juBvQcQ2laCzzZEZeb
 0D44fA33Mk5uxqGcZBUMlb8p1Gz8Iwu3inkbXvdKCB1xrUFV6KoC1dLHb
 WfBNvAiPHn/WVFFFrphmKYoHkbVOjSfUCycKl373RRN1RjV+5dgNTXWFX
 OuYaiwwPTNeLgE78Jro/U9shUqVbXyQm/0oDhASMAqbmIo0n2memtK08/
 qvSX7a/qFdyHhXP5Sw/Pz/EYPsrmFZDCnuHFbMP547JYvYbw0dCu19asv
 9JeJsB35Enp+pOMHPE7dLoQCzL1Syc1mf36P1hQGN6ol9uEw0sMo4cDSx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bGB5ZQfZ
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
branch HEAD: c92637f6a517a69a9254e68a10e33f0451f76a95  extcon: make extcon_class a static const structure

elapsed time: 9030m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r043-20230620   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                  randconfig-r014-20230620   clang
arm                  randconfig-r016-20230620   clang
arm                  randconfig-r025-20230620   clang
arm                  randconfig-r033-20230620   gcc  
arm                  randconfig-r046-20230620   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230620   clang
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230620   clang
hexagon              randconfig-r045-20230620   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230620   clang
i386         buildonly-randconfig-r005-20230620   clang
i386         buildonly-randconfig-r006-20230620   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230620   clang
i386                 randconfig-i002-20230620   clang
i386                 randconfig-i003-20230620   clang
i386                 randconfig-i004-20230620   clang
i386                 randconfig-i005-20230620   clang
i386                 randconfig-i006-20230620   clang
i386                 randconfig-i011-20230620   gcc  
i386                 randconfig-i012-20230620   gcc  
i386                 randconfig-i013-20230620   gcc  
i386                 randconfig-i014-20230620   gcc  
i386                 randconfig-i015-20230620   gcc  
i386                 randconfig-i016-20230620   gcc  
i386                 randconfig-r024-20230620   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230620   gcc  
loongarch            randconfig-r015-20230620   gcc  
loongarch            randconfig-r022-20230620   gcc  
loongarch            randconfig-r023-20230620   gcc  
loongarch            randconfig-r031-20230620   gcc  
loongarch            randconfig-r036-20230620   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230620   gcc  
m68k                 randconfig-r026-20230620   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r021-20230620   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                 randconfig-r032-20230620   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r002-20230620   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230620   gcc  
riscv                randconfig-r034-20230620   clang
riscv                randconfig-r035-20230620   clang
riscv                randconfig-r042-20230620   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230620   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230620   clang
x86_64       buildonly-randconfig-r002-20230620   clang
x86_64       buildonly-randconfig-r003-20230620   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r003-20230620   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230620   gcc  
xtensa               randconfig-r006-20230620   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
