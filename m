Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E08973231A
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Jun 2023 01:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BABCF402C3;
	Thu, 15 Jun 2023 23:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BABCF402C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DIHpvTz-P2Mx; Thu, 15 Jun 2023 23:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7528B400D2;
	Thu, 15 Jun 2023 23:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7528B400D2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A9631BF2C3
 for <devel@linuxdriverproject.org>; Thu, 15 Jun 2023 23:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 032FA402C3
 for <devel@linuxdriverproject.org>; Thu, 15 Jun 2023 23:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 032FA402C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O3kus_WRy3-9 for <devel@linuxdriverproject.org>;
 Thu, 15 Jun 2023 23:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE170400D2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE170400D2
 for <devel@driverdev.osuosl.org>; Thu, 15 Jun 2023 23:08:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="339402183"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="339402183"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 16:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715788075"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="715788075"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2023 16:08:56 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9w5H-0000VN-1P;
 Thu, 15 Jun 2023 23:08:55 +0000
Date: Fri, 16 Jun 2023 07:08:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 01da3efafe060ba685fcd08f8db665e5a9f1f9fc
Message-ID: <202306160751.1yHJ2nqF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686870537; x=1718406537;
 h=date:from:to:cc:subject:message-id;
 bh=Z2gm6i5XnA4+4TEYHnY3OQTU1NRhjX5zZrKi5EeJ97g=;
 b=JdDcHgEr9iObZxvVaBJNzZmiZTGI+e9hi+a5pzsrEW6yY4NKr2NaL/4P
 mCYJGeD8yC3t/dAICCDjMDMvGQCQTf5whNa7Sw/URbENEQBUaenFMBDl9
 t+8/g/ZR23QcnER3Ak/oC0+6aeGg6cSxqR0/56LryoGmJ2P/BJ3o1vmmz
 p2ourK+xIi2ytcRWN/L4mlN9JpPqsyAT5K/rBo11+vptUa3q8NEhwZ2qy
 DOoc/4Die5bPSaVZHrCS3ghCmfql1zShjFYXvedrPJDilIxmd5ZRa2LbY
 mInsmsKpIVQdiVMOQAma4Bw20j3PeYlB5PKXbJxysp2BBS3IS0xFQqA5q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JdDcHgEr
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 01da3efafe060ba685fcd08f8db665e5a9f1f9fc  staging: rtl8192e: Use standard api to calculate channel to frequency

elapsed time: 724m

configs tested: 151
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230615   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230614   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r001-20230615   gcc  
arc                  randconfig-r043-20230615   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                         axm55xx_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          ep93xx_defconfig   clang
arm                      integrator_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r003-20230615   clang
arm                  randconfig-r046-20230615   gcc  
arm                         s5pv210_defconfig   clang
arm                        spear6xx_defconfig   gcc  
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230615   clang
csky                                defconfig   gcc  
csky                 randconfig-r002-20230615   gcc  
csky                 randconfig-r005-20230615   gcc  
csky                 randconfig-r012-20230614   gcc  
hexagon      buildonly-randconfig-r002-20230615   clang
hexagon      buildonly-randconfig-r004-20230614   clang
hexagon              randconfig-r041-20230615   clang
hexagon              randconfig-r045-20230615   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230615   gcc  
i386                 randconfig-i002-20230615   gcc  
i386                 randconfig-i003-20230615   gcc  
i386                 randconfig-i004-20230615   gcc  
i386                 randconfig-i005-20230615   gcc  
i386                 randconfig-i006-20230615   gcc  
i386                 randconfig-i011-20230615   clang
i386                 randconfig-i012-20230615   clang
i386                 randconfig-i013-20230615   clang
i386                 randconfig-i014-20230615   clang
i386                 randconfig-i015-20230615   clang
i386                 randconfig-i016-20230615   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230615   gcc  
loongarch            randconfig-r014-20230614   gcc  
loongarch            randconfig-r034-20230615   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r002-20230614   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r005-20230615   gcc  
m68k                 randconfig-r012-20230614   gcc  
m68k                 randconfig-r013-20230614   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze   buildonly-randconfig-r006-20230614   gcc  
microblaze           randconfig-r016-20230614   gcc  
microblaze           randconfig-r023-20230615   gcc  
microblaze           randconfig-r025-20230615   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   clang
mips                     decstation_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r004-20230615   clang
mips                 randconfig-r023-20230615   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230615   gcc  
nios2                randconfig-r032-20230615   gcc  
openrisc             randconfig-r024-20230615   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r025-20230615   gcc  
parisc               randconfig-r036-20230615   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                     kilauea_defconfig   clang
powerpc                     mpc83xx_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc              randconfig-r015-20230614   gcc  
powerpc              randconfig-r033-20230615   gcc  
powerpc              randconfig-r034-20230615   gcc  
powerpc                     tqm8555_defconfig   gcc  
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r001-20230615   clang
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230615   gcc  
riscv                randconfig-r015-20230614   gcc  
riscv                randconfig-r035-20230615   gcc  
riscv                randconfig-r042-20230615   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230614   gcc  
s390                 randconfig-r026-20230615   clang
s390                 randconfig-r044-20230615   clang
sh                               allmodconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r024-20230615   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230614   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230614   clang
x86_64               randconfig-a001-20230615   gcc  
x86_64               randconfig-a002-20230614   clang
x86_64               randconfig-a002-20230615   gcc  
x86_64               randconfig-a003-20230614   clang
x86_64               randconfig-a003-20230615   gcc  
x86_64               randconfig-a004-20230614   clang
x86_64               randconfig-a004-20230615   gcc  
x86_64               randconfig-a005-20230614   clang
x86_64               randconfig-a005-20230615   gcc  
x86_64               randconfig-a006-20230614   clang
x86_64               randconfig-a006-20230615   gcc  
x86_64               randconfig-a011-20230615   clang
x86_64               randconfig-a012-20230615   clang
x86_64               randconfig-a013-20230615   clang
x86_64               randconfig-a014-20230615   clang
x86_64               randconfig-a015-20230615   clang
x86_64               randconfig-a016-20230615   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                       common_defconfig   gcc  
xtensa               randconfig-r006-20230615   gcc  
xtensa               randconfig-r014-20230614   gcc  
xtensa               randconfig-r032-20230615   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
