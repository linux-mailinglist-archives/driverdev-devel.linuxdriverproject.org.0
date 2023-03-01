Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CFE6A673C
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Mar 2023 06:09:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5616E4089D;
	Wed,  1 Mar 2023 05:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5616E4089D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r7RjhDK70F8m; Wed,  1 Mar 2023 05:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 915B94089B;
	Wed,  1 Mar 2023 05:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 915B94089B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 150401BF853
 for <devel@linuxdriverproject.org>; Wed,  1 Mar 2023 05:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2788812BA
 for <devel@linuxdriverproject.org>; Wed,  1 Mar 2023 05:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2788812BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jYqly_tNK59j for <devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 05:09:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC4C781E86
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC4C781E86
 for <devel@driverdev.osuosl.org>; Wed,  1 Mar 2023 05:09:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="318123492"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400"; d="scan'208";a="318123492"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 21:09:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="624344306"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400"; d="scan'208";a="624344306"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2023 21:09:06 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXEi9-0005uH-12;
 Wed, 01 Mar 2023 05:09:05 +0000
Date: Wed, 01 Mar 2023 13:08:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 dbc2f6da37b6ea70d6cc3ba626c2935dd24eae4c
Message-ID: <63feddb9.XuLelQjxRGRhOzs8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677647347; x=1709183347;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=irPN53D4Rofj/11ND8mI7LJIwoMR3r3I6RLm1fkELqc=;
 b=RPSlvqF8iwIiUYBbutqnqiZm4ocDbJ10d2LqKhPbcx0aCjLDUwydJFEH
 /9CV8iDbbLeTwUeCQYyjYgnQxphy1QoaLYV1UxoAiuFdBuRq1Ca8ID89b
 pNFW5/6Se8jUXflj5nN8a54TfpP7V/8IXvYXp8XBSQNxgkV8XIGt70l6A
 2qfNSUMtVCmiCUimrCUgdE/s5zQnsNOGM1VLIAiJexUJ5WMUF2IXDsezD
 9VuVD6avSX0lZsUHNshZ91iT3ZSeXllhmKx2naW5RnVSzH+Od+u0V7Qxl
 DnY/KK78mLmNZXPDRemmls0jCskgt2Wb+L9mp8XJxg0k2r3JozVVsHxWj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RPSlvqF8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: dbc2f6da37b6ea70d6cc3ba626c2935dd24eae4c  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 1272m

configs tested: 139
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230227   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r026-20230226   gcc  
alpha                randconfig-r026-20230227   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r002-20230226   gcc  
arc                  randconfig-r021-20230227   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230227   clang
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                        mvebu_v5_defconfig   clang
arm                  randconfig-r006-20230227   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm                           spitz_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230227   clang
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230227   clang
arm64                randconfig-r022-20230227   gcc  
csky         buildonly-randconfig-r003-20230227   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230227   gcc  
csky                 randconfig-r025-20230226   gcc  
hexagon      buildonly-randconfig-r001-20230226   clang
hexagon              randconfig-r013-20230226   clang
hexagon              randconfig-r015-20230226   clang
hexagon              randconfig-r024-20230227   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230227   clang
i386                 randconfig-a002-20230227   clang
i386                 randconfig-a003-20230227   clang
i386                 randconfig-a004-20230227   clang
i386                 randconfig-a005-20230227   clang
i386                 randconfig-a006-20230227   clang
i386                 randconfig-a011-20230227   gcc  
i386                 randconfig-a012-20230227   gcc  
i386                 randconfig-a013-20230227   gcc  
i386                 randconfig-a014-20230227   gcc  
i386                 randconfig-a015-20230227   gcc  
i386                 randconfig-a016-20230227   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230226   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230226   gcc  
loongarch            randconfig-r022-20230226   gcc  
loongarch            randconfig-r035-20230228   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230226   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r001-20230226   gcc  
m68k                 randconfig-r013-20230227   gcc  
m68k                 randconfig-r016-20230227   gcc  
microblaze   buildonly-randconfig-r006-20230227   gcc  
microblaze           randconfig-r003-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                 randconfig-r014-20230227   clang
mips                 randconfig-r033-20230228   clang
mips                         rt305x_defconfig   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r002-20230227   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230226   gcc  
parisc               randconfig-r015-20230227   gcc  
parisc               randconfig-r034-20230228   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      pmac32_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r005-20230226   clang
riscv                               defconfig   gcc  
riscv                randconfig-r031-20230228   gcc  
riscv                randconfig-r036-20230228   gcc  
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230226   clang
s390                 randconfig-r032-20230228   gcc  
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                   randconfig-r012-20230226   gcc  
sh                           se7724_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230227   gcc  
sparc                randconfig-r016-20230226   gcc  
sparc64      buildonly-randconfig-r004-20230226   gcc  
sparc64              randconfig-r001-20230227   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230227   clang
x86_64               randconfig-a002-20230227   clang
x86_64               randconfig-a003-20230227   clang
x86_64               randconfig-a004-20230227   clang
x86_64               randconfig-a005-20230227   clang
x86_64               randconfig-a006-20230227   clang
x86_64               randconfig-a011-20230227   gcc  
x86_64               randconfig-a012-20230227   gcc  
x86_64               randconfig-a013-20230227   gcc  
x86_64               randconfig-a014-20230227   gcc  
x86_64               randconfig-a015-20230227   gcc  
x86_64               randconfig-a016-20230227   gcc  
x86_64               randconfig-r025-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r021-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
