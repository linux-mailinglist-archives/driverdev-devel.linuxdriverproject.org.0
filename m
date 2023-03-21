Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFC66C3DC7
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Mar 2023 23:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3172418B0;
	Tue, 21 Mar 2023 22:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3172418B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GuViM2rJknlY; Tue, 21 Mar 2023 22:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2298841858;
	Tue, 21 Mar 2023 22:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2298841858
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5A01BF95C
 for <devel@linuxdriverproject.org>; Tue, 21 Mar 2023 22:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57946400B6
 for <devel@linuxdriverproject.org>; Tue, 21 Mar 2023 22:37:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57946400B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LsC4TUaIQ9dl for <devel@linuxdriverproject.org>;
 Tue, 21 Mar 2023 22:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB89C40B98
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB89C40B98
 for <devel@driverdev.osuosl.org>; Tue, 21 Mar 2023 22:37:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="339115182"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="339115182"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="855885276"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="855885276"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 21 Mar 2023 15:36:58 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pekbB-000CUs-2T;
 Tue, 21 Mar 2023 22:36:57 +0000
Date: Wed, 22 Mar 2023 06:36:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 6b301ded45a6d9538f5f579a2e9f4b6c45fa988b
Message-ID: <641a3182.gSfzd8SjHH9wGvrV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679438220; x=1710974220;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XJmhqIYGSqUpyxRAV2ytTVqtWJ+6pswHEnvVWe6YmC4=;
 b=XJciQ6aHMGkASjod12ajg8E6v7BPzTdyrx/mF9MEKuvuCAwyX1SbLeG8
 XXxV4FK9brjTIqB5H15dIqtndQ0n4bs8X3DOdcaN7z76Zbe3X+KMEnJwn
 F4yD9WGZXBf5PpdBS8XQTZDU266mA0lYZeGMIPVVTuXq5bba6qBJJM9az
 +qpqj2e+TvojhCJ9+xTDUAw1hD8DpNaUWIsRyfmqEkeGobLcCl823Z3MA
 BH0BsMAtwadVhaJFnv5Laucr/Cvn4gkTjs5qN5pr6ku5oNIBDNfd+gkt1
 fB4UCvi0kX81rvXeePwd7LMNOZYikW8GS/4sGj6F8hJ5X8vMRCN4W0ENH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XJciQ6aH
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 6b301ded45a6d9538f5f579a2e9f4b6c45fa988b  tpm: Fix a possible dereference of ERR_PTR in tpm_init()

elapsed time: 860m

configs tested: 140
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230320   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230320   gcc  
alpha                randconfig-r036-20230319   gcc  
alpha                randconfig-r036-20230320   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r033-20230319   gcc  
arc                  randconfig-r043-20230319   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                  randconfig-r032-20230319   clang
arm                  randconfig-r046-20230319   gcc  
arm                        realview_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230319   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230320   clang
arm64                randconfig-r013-20230319   clang
arm64                randconfig-r014-20230319   clang
csky         buildonly-randconfig-r003-20230320   gcc  
csky         buildonly-randconfig-r005-20230319   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230320   gcc  
hexagon      buildonly-randconfig-r001-20230319   clang
hexagon              randconfig-r001-20230319   clang
hexagon              randconfig-r015-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r045-20230319   clang
i386                             allyesconfig   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230320   clang
i386                 randconfig-a002-20230320   clang
i386                 randconfig-a003-20230320   clang
i386                 randconfig-a004-20230320   clang
i386                 randconfig-a005-20230320   clang
i386                 randconfig-a006-20230320   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230319   gcc  
ia64                 randconfig-r033-20230319   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230320   gcc  
loongarch    buildonly-randconfig-r006-20230319   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230320   gcc  
loongarch            randconfig-r034-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r014-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230320   gcc  
mips                 randconfig-r026-20230319   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230319   gcc  
nios2                randconfig-r035-20230319   gcc  
openrisc     buildonly-randconfig-r002-20230319   gcc  
openrisc             randconfig-r002-20230319   gcc  
openrisc             randconfig-r021-20230319   gcc  
openrisc             randconfig-r024-20230319   gcc  
openrisc             randconfig-r025-20230319   gcc  
parisc       buildonly-randconfig-r003-20230319   gcc  
parisc       buildonly-randconfig-r004-20230319   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230319   gcc  
parisc               randconfig-r022-20230319   gcc  
parisc               randconfig-r031-20230319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230319   gcc  
powerpc              randconfig-r016-20230319   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r031-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230319   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230319   gcc  
sh                   randconfig-r032-20230319   gcc  
sh                          rsk7269_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230320   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230320   gcc  
sparc                randconfig-r004-20230319   gcc  
sparc                randconfig-r012-20230319   gcc  
sparc                randconfig-r033-20230320   gcc  
sparc64              randconfig-r006-20230319   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230320   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230320   gcc  
x86_64               randconfig-a012-20230320   gcc  
x86_64               randconfig-a013-20230320   gcc  
x86_64               randconfig-a014-20230320   gcc  
x86_64               randconfig-a015-20230320   gcc  
x86_64               randconfig-a016-20230320   gcc  
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa                           allyesconfig   gcc  
xtensa       buildonly-randconfig-r006-20230320   gcc  
xtensa               randconfig-r002-20230320   gcc  
xtensa               randconfig-r035-20230320   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
