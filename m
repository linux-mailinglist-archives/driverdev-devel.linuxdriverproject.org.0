Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4AD6F1DDA
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Apr 2023 20:13:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83FEB81FE4;
	Fri, 28 Apr 2023 18:13:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83FEB81FE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTT_D2GprxkQ; Fri, 28 Apr 2023 18:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 604C881B35;
	Fri, 28 Apr 2023 18:13:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 604C881B35
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25D171BF578
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70C1342A6F
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70C1342A6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zbx4HcEXOsGu for <devel@linuxdriverproject.org>;
 Fri, 28 Apr 2023 18:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91A6042A74
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91A6042A74
 for <devel@driverdev.osuosl.org>; Fri, 28 Apr 2023 18:13:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="349847673"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="349847673"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="838940653"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="838940653"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2023 11:13:40 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psSbD-0000b5-1s;
 Fri, 28 Apr 2023 18:13:39 +0000
Date: Sat, 29 Apr 2023 02:13:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 f6243e678ab40f945a9e07fa24f33c7ceb787627
Message-ID: <20230428181328.5Ys7A%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682705622; x=1714241622;
 h=date:from:to:cc:subject:message-id;
 bh=WvpRDtWXKfEhpqqzslL1UfBNC5Awhu3Xg2LKVP8XgKo=;
 b=HSp/9vFf1rIKcq6CsA1ZGjWTeuvBsm7QmF0nb16XXy2BKy/mQU62D2F7
 UG1TeFtLTi8N3YkLLbt9SDQepEgP0nMxNcoULM7/04BAfBQ+M7PDl6I/f
 UA5IoxdTlbtMIeMxVSlY5PcFs8cAjpXAnX9vDf1HpLOoU6Lrtyi0xZO0U
 35Qh0+VAeveXRTyU2WtZivsx2jW//2xm+LZy4Rz+ULN9907Ale/5+ormI
 Pe5zEtzwuhkRJ73Y1RYMecoTuka2grtpFPykxu4xiJGExNT9H+0oKeveN
 RjjUsWzEuyARrJJa+9Ai8qijGEOrICfEB2FebnZo2tSgOmcj9GU2OA6fn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HSp/9vFf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: f6243e678ab40f945a9e07fa24f33c7ceb787627  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 722m

configs tested: 122
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230428   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230427   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230427   gcc  
arc                  randconfig-r034-20230428   gcc  
arc                  randconfig-r043-20230428   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                        mvebu_v7_defconfig   gcc  
arm                  randconfig-r015-20230427   gcc  
arm                  randconfig-r046-20230428   clang
arm                         s3c6400_defconfig   gcc  
arm                           spitz_defconfig   clang
arm                           u8500_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230427   gcc  
csky         buildonly-randconfig-r002-20230427   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230428   gcc  
csky                 randconfig-r016-20230427   gcc  
csky                 randconfig-r025-20230427   gcc  
hexagon      buildonly-randconfig-r001-20230427   clang
hexagon              randconfig-r031-20230427   clang
hexagon              randconfig-r041-20230428   clang
hexagon              randconfig-r045-20230428   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230427   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r014-20230427   gcc  
ia64                 randconfig-r022-20230427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r033-20230427   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230428   gcc  
microblaze   buildonly-randconfig-r004-20230427   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r003-20230427   gcc  
microblaze           randconfig-r023-20230427   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230427   gcc  
mips                 randconfig-r014-20230428   clang
mips                          rm200_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230428   gcc  
nios2                randconfig-r012-20230427   gcc  
openrisc             randconfig-r016-20230428   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230427   gcc  
parisc               randconfig-r032-20230428   gcc  
parisc               randconfig-r034-20230427   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                 mpc837x_mds_defconfig   gcc  
powerpc              randconfig-r021-20230427   clang
powerpc                     tqm8541_defconfig   gcc  
powerpc                      walnut_defconfig   clang
powerpc                        warp_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230427   gcc  
riscv                randconfig-r036-20230428   clang
riscv                randconfig-r042-20230428   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230427   gcc  
s390                 randconfig-r044-20230428   gcc  
sh                               allmodconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                   randconfig-r013-20230428   gcc  
sh                          sdk7786_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r033-20230428   gcc  
sparc64              randconfig-r035-20230427   gcc  
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
xtensa               randconfig-r015-20230428   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
