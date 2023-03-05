Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8F16AADBC
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 02:20:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8511781D3A;
	Sun,  5 Mar 2023 01:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8511781D3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wsBtzQlry8X4; Sun,  5 Mar 2023 01:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DB8781D35;
	Sun,  5 Mar 2023 01:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DB8781D35
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A55E11BF3DB
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 01:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C24081D3A
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 01:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C24081D3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRBED5JHHiwe for <devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 01:20:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E58081D35
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E58081D35
 for <devel@driverdev.osuosl.org>; Sun,  5 Mar 2023 01:20:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="362934425"
X-IronPort-AV: E=Sophos;i="5.98,234,1673942400"; d="scan'208";a="362934425"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 17:20:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="669064470"
X-IronPort-AV: E=Sophos;i="5.98,234,1673942400"; d="scan'208";a="669064470"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 04 Mar 2023 17:20:11 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYd2o-0002T0-1A;
 Sun, 05 Mar 2023 01:20:10 +0000
Date: Sun, 05 Mar 2023 09:20:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 416ca04cc251b11c991d466dae592f7308f52079
Message-ID: <6403ee43.pEg5P03Qca6ugzbf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677979213; x=1709515213;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sK11RPP/EVgADj/yvVz25G9jPv4zm/s6e1rokFjPcGA=;
 b=ijtSzLhxqkAIduGk1CPYVkSQEGVmlPhfgKHckVN4Hn6MMtw04iOdQH47
 pCOtT0MVe0TpUvcp3TBC5B1g3ERXiBis7ytQuSdCAecWeM/ByYwq16wRB
 BSmMirQyGSH4cv8nTR0U9T7LxkgRIU521C3TzloyRN2XaI6kRzJNzhwXB
 d9q9iqNUEtDW9zdb3HV2z0+M2kxYA1VdnpebhQhsL4tmpeJ6v8ZDzP4+F
 9ECzktwGbq31gGAfJVDlE+0iWI1ugI65uiZgt43MX/yXOyONYYyTKgTey
 ge+oytoDgwcP0qLz3Ku5JT7DfC7irPZ930sGb1KCl9wNdDKXOslYxMFvX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ijtSzLhx
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
branch HEAD: 416ca04cc251b11c991d466dae592f7308f52079  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 720m

configs tested: 125
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230303   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230304   gcc  
alpha                randconfig-r012-20230302   gcc  
alpha                randconfig-r034-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230304   gcc  
arc                  randconfig-r043-20230302   gcc  
arc                  randconfig-r043-20230303   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230304   gcc  
arm                  randconfig-r033-20230302   clang
arm                  randconfig-r036-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm                  randconfig-r046-20230303   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230302   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230302   gcc  
arm64                randconfig-r032-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
hexagon              randconfig-r004-20230302   clang
hexagon              randconfig-r021-20230302   clang
hexagon              randconfig-r035-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r041-20230303   clang
hexagon              randconfig-r045-20230302   clang
hexagon              randconfig-r045-20230303   clang
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
ia64         buildonly-randconfig-r001-20230303   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230302   gcc  
ia64                 randconfig-r011-20230302   gcc  
ia64                 randconfig-r022-20230304   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230302   gcc  
loongarch            randconfig-r004-20230304   gcc  
loongarch            randconfig-r013-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230304   clang
mips                 randconfig-r015-20230302   gcc  
mips                 randconfig-r016-20230302   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230304   gcc  
nios2                randconfig-r006-20230304   gcc  
nios2                randconfig-r026-20230304   gcc  
openrisc     buildonly-randconfig-r005-20230302   gcc  
openrisc             randconfig-r005-20230302   gcc  
openrisc             randconfig-r025-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230304   gcc  
parisc               randconfig-r024-20230302   gcc  
parisc               randconfig-r031-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230303   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230302   clang
riscv                randconfig-r042-20230303   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r024-20230304   clang
s390                 randconfig-r044-20230302   clang
s390                 randconfig-r044-20230303   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230304   gcc  
sh                   randconfig-r014-20230302   gcc  
sparc        buildonly-randconfig-r001-20230302   gcc  
sparc        buildonly-randconfig-r003-20230302   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r004-20230303   gcc  
sparc64      buildonly-randconfig-r006-20230303   gcc  
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
xtensa       buildonly-randconfig-r002-20230302   gcc  
xtensa       buildonly-randconfig-r003-20230303   gcc  
xtensa               randconfig-r026-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
