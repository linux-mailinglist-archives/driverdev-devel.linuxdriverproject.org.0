Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6056B1C3B
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Mar 2023 08:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 474744184E;
	Thu,  9 Mar 2023 07:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 474744184E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0pj2lirdE9iv; Thu,  9 Mar 2023 07:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E49D4418DC;
	Thu,  9 Mar 2023 07:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E49D4418DC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 280401BF40A
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 07:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0292E40C3A
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 07:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0292E40C3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNMkMQupNQdb for <devel@linuxdriverproject.org>;
 Thu,  9 Mar 2023 07:26:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23A0440111
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23A0440111
 for <devel@driverdev.osuosl.org>; Thu,  9 Mar 2023 07:26:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="364013343"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="364013343"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 23:26:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="923129892"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="923129892"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 08 Mar 2023 23:26:14 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paAfF-0002kJ-1s;
 Thu, 09 Mar 2023 07:26:13 +0000
Date: Thu, 09 Mar 2023 15:25:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 d17789edd6a8270c38459e592ee536a84c6202db
Message-ID: <640989e1.OJgfkBcZiPoPUNJ1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678346776; x=1709882776;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PZOE34A5Kem6HD8GkoHGcatx2rLPX/9lPIYj5BbyRug=;
 b=HI1IqgDfdVgcshs2Dc0bb1Wmz825cs+c/doc8PC2WmAuVd2MTRjcshMg
 5zVi0Vk5op+uOzMtmwG3cP05BfaBq56kCfmfEciG0KqJM6lYKzyOYuyrU
 a2w9xku7O9MaPkXT7g355Hh2T5EjYsJPk/m5CspjihdElKnX1kd0KWTu1
 8cFYoDrXS57xPeQbtu0ZaiZbATzlnglJRnRiLE39yo/ygLUqNIVSCRC2c
 6i+kQQX4QQD+O7VyUHwqFDdMD0JZN+jxLJqbolR3fu7wpbiY26nYNT1Gl
 pJyQiKCRGk5BDO4UE2O42YF9/lXG/BmN2pSq9tCeOzBB9hjpiYZk71yHp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HI1IqgDf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: d17789edd6a8270c38459e592ee536a84c6202db  staging: rtl8723bs: Pass correct parameters to cfg80211_get_bss()

elapsed time: 722m

configs tested: 101
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230308   gcc  
alpha                randconfig-r011-20230308   gcc  
alpha                randconfig-r015-20230308   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230308   gcc  
arc                  randconfig-r014-20230308   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230308   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230308   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230308   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230308   gcc  
arm64                randconfig-r033-20230308   gcc  
csky         buildonly-randconfig-r005-20230308   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230308   gcc  
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
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
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230308   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230308   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r031-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230308   gcc  
mips                 randconfig-r026-20230308   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r006-20230308   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230308   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r036-20230308   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230308   gcc  
riscv                randconfig-r034-20230308   gcc  
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230308   gcc  
s390                 randconfig-r032-20230308   gcc  
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r021-20230308   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230308   gcc  
sparc64      buildonly-randconfig-r001-20230308   gcc  
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
xtensa               randconfig-r016-20230308   gcc  
xtensa               randconfig-r025-20230308   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
