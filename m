Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4FC6FBE78
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 May 2023 06:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ACE4844AC;
	Tue,  9 May 2023 04:58:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ACE4844AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOrRZw813Jwb; Tue,  9 May 2023 04:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EA7984453;
	Tue,  9 May 2023 04:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EA7984453
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45A191BF869
 for <devel@linuxdriverproject.org>; Tue,  9 May 2023 04:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1B2C84488
 for <devel@linuxdriverproject.org>; Tue,  9 May 2023 04:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1B2C84488
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsWrj3ooM58u for <devel@linuxdriverproject.org>;
 Tue,  9 May 2023 04:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04F04844AC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04F04844AC
 for <devel@driverdev.osuosl.org>; Tue,  9 May 2023 04:58:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="334259403"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="334259403"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 21:58:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="692836040"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="692836040"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 May 2023 21:58:03 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pwFQD-0001is-3B;
 Tue, 09 May 2023 04:57:57 +0000
Date: Tue, 09 May 2023 12:57:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 b3dad076a058916c443c93074dc3ee80baaff4ea
Message-ID: <20230509045703.IF7EG%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683608286; x=1715144286;
 h=date:from:to:cc:subject:message-id;
 bh=wZifPYBcAt9MijjGFdyJ9dUoOOmHNnLAe1xMnnwczDc=;
 b=oKDM5kSPpQ7BcVOajPWfuoGEH/9uzh1H1DTij49lZYxY87+AH4uSxpNh
 FHcvtmaUJ2M8QHXaWCBlDHto+ZQMbk5wVXYOu4PpQAoPKbehjlABKStqu
 N6qmKd28lIjEa+6+cfHaVbs+jdPMBC7hFavEdfo9Gy7j74oLqHmT/sUf4
 uY/HlbBP1YwZiUeAKwOZ7QFw7u2CtyK+QeGaF7yEq7HozF9rWDts3Hg1Q
 ZUBbFGdUBtH3bdYwq0F0l2ptTROOnCFx8w0EIyQ6ZFrfCUII5EHrIITLO
 /tx1GbLkpepNkeoAfzhsvnZUaYLHbiGJH3YlEVqB0a7HZC2gWftt4Adlg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oKDM5kSP
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: b3dad076a058916c443c93074dc3ee80baaff4ea  staging: octeon: delete my name from TODO contact

elapsed time: 732m

configs tested: 122
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230507   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230507   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230508   gcc  
arc                  randconfig-r043-20230507   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r011-20230507   gcc  
arm                  randconfig-r024-20230507   gcc  
arm                  randconfig-r025-20230507   gcc  
arm                  randconfig-r046-20230507   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230507   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230508   gcc  
csky                 randconfig-r015-20230507   gcc  
csky                 randconfig-r021-20230507   gcc  
csky                 randconfig-r031-20230507   gcc  
hexagon      buildonly-randconfig-r006-20230508   clang
hexagon              randconfig-r002-20230508   clang
hexagon              randconfig-r014-20230508   clang
hexagon              randconfig-r015-20230508   clang
hexagon              randconfig-r024-20230508   clang
hexagon              randconfig-r034-20230507   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r045-20230507   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230508   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230507   gcc  
ia64                 randconfig-r012-20230508   gcc  
ia64                 randconfig-r035-20230507   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230507   gcc  
loongarch            randconfig-r036-20230507   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230507   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230507   gcc  
m68k                 randconfig-r033-20230507   gcc  
microblaze   buildonly-randconfig-r004-20230507   gcc  
microblaze   buildonly-randconfig-r004-20230508   gcc  
microblaze   buildonly-randconfig-r006-20230507   gcc  
microblaze           randconfig-r002-20230507   gcc  
microblaze           randconfig-r016-20230508   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230508   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230508   gcc  
nios2                randconfig-r023-20230508   gcc  
parisc       buildonly-randconfig-r001-20230507   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r012-20230507   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230507   clang
riscv                randconfig-r026-20230508   gcc  
riscv                randconfig-r042-20230507   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230508   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r032-20230507   gcc  
s390                 randconfig-r044-20230507   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230507   gcc  
sh                   randconfig-r022-20230508   gcc  
sh                   randconfig-r025-20230508   gcc  
sh                   randconfig-r026-20230507   gcc  
sparc        buildonly-randconfig-r002-20230508   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230508   gcc  
sparc64              randconfig-r004-20230508   gcc  
sparc64              randconfig-r021-20230508   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230508   clang
x86_64               randconfig-a002-20230508   clang
x86_64               randconfig-a003-20230508   clang
x86_64               randconfig-a004-20230508   clang
x86_64               randconfig-a005-20230508   clang
x86_64               randconfig-a006-20230508   clang
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230508   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
