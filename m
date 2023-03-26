Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2FE6C978C
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Mar 2023 21:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FE9741523;
	Sun, 26 Mar 2023 19:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FE9741523
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_ljHyr-Br8E; Sun, 26 Mar 2023 19:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F07D841525;
	Sun, 26 Mar 2023 19:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F07D841525
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 526A21BF3C6
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 19:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 258F081E18
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 19:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 258F081E18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xj17paglp6EX for <devel@linuxdriverproject.org>;
 Sun, 26 Mar 2023 19:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06C3D81E17
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06C3D81E17
 for <devel@driverdev.osuosl.org>; Sun, 26 Mar 2023 19:12:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="320522002"
X-IronPort-AV: E=Sophos;i="5.98,293,1673942400"; d="scan'208";a="320522002"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 12:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="929242781"
X-IronPort-AV: E=Sophos;i="5.98,293,1673942400"; d="scan'208";a="929242781"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 26 Mar 2023 12:12:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgVnN-000HJd-15;
 Sun, 26 Mar 2023 19:12:49 +0000
Date: Mon, 27 Mar 2023 03:12:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b07c8ef8c60a4714fad3d7c95a8e464ad83ca715
Message-ID: <64209911.eSCMplbWjWvnGxDo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679857972; x=1711393972;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3EquJX/VYrKE28OWGtJeJmjl/FrbZt+k0zu8e1pTnOc=;
 b=mdOgCRZ90eiJBP+qJh4f3NcMfwXKrUFHD/rgdEtIezQM5C/+fyoKMYml
 85R9Z6wSrvOQLHckRNpDorMBcgTaS2s0ltAFw3iXFTvzm/UUQCXyIFdEp
 J3+VfmRAc8+/GbkItyiDhuVDpWaaE/UK6XZnDLbHenMfbWJPtpQwuzfFq
 YcJtH/VZ2m5yPeq6jFOLa+DIfFU+EkFNG4J0OWgtqDjzPzOrqqp/GX0I9
 M3AJbBlRhQZbVoWtdPbHwVAw4snkhqQ2PgpdW1Uxoi12RXxhKc77Zxtpw
 7yCmtg9JM/Q+jcu88NO4W9o+ClTmgqUy4x6eolx9ZNk+IgNkom8z5JoMO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mdOgCRZ9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: b07c8ef8c60a4714fad3d7c95a8e464ad83ca715  staging: greybus: Inline pwm_chip_to_gb_pwm_chip()

elapsed time: 725m

configs tested: 110
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r025-20230326   gcc  
alpha                randconfig-r033-20230326   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r024-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230326   clang
arm                                 defconfig   gcc  
arm                       omap2plus_defconfig   gcc  
arm                  randconfig-r001-20230326   gcc  
arm                  randconfig-r006-20230326   gcc  
arm                  randconfig-r046-20230326   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230326   clang
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230326   gcc  
csky                 randconfig-r023-20230326   gcc  
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r045-20230326   clang
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
ia64                                defconfig   gcc  
ia64                 randconfig-r035-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r006-20230326   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r012-20230326   gcc  
m68k                 randconfig-r034-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230326   gcc  
mips                           ci20_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                 randconfig-r036-20230326   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230326   gcc  
parisc               randconfig-r013-20230326   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 mpc834x_mds_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230326   clang
riscv                randconfig-r042-20230326   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230326   gcc  
s390                 randconfig-r044-20230326   gcc  
sh                               allmodconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230326   gcc  
sparc64      buildonly-randconfig-r004-20230326   gcc  
sparc64              randconfig-r005-20230326   gcc  
sparc64              randconfig-r022-20230326   gcc  
sparc64              randconfig-r026-20230326   gcc  
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
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
