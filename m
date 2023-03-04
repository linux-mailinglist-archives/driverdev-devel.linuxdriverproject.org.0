Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2243D6AA7ED
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Mar 2023 05:03:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A2C9416BB;
	Sat,  4 Mar 2023 04:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A2C9416BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOAa8S-OVdR4; Sat,  4 Mar 2023 04:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04CB4416BA;
	Sat,  4 Mar 2023 04:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04CB4416BA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C39BE1BF852
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 04:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DD2440B3F
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 04:03:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DD2440B3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zaz04my8soJY for <devel@linuxdriverproject.org>;
 Sat,  4 Mar 2023 04:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66486401CA
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66486401CA
 for <devel@driverdev.osuosl.org>; Sat,  4 Mar 2023 04:03:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="397805620"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="397805620"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 20:03:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="921313729"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="921313729"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 Mar 2023 20:03:34 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYJ7N-0001qs-1G;
 Sat, 04 Mar 2023 04:03:33 +0000
Date: Sat, 04 Mar 2023 12:02:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 d6b1776e7d0ed5afabaf9c8ea8e4581bbeab3e60
Message-ID: <6402c2d9.gtPUCJyqVH3yrjRq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677902616; x=1709438616;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZVgmOcswEGKLdGvqG2V63A9Bkr/z7BqiFu7x+TSPHak=;
 b=ILnBXXqO6GuVGRDEdr1hKbTW74I11K+bRx2hhe7KDpS0IeLhkmTKCxNW
 ATI/3Py5kIeHw9lTe+SuCws30Q0fKxctFo+zklt+ISLS9NlDVMVpC2Vip
 vOtnDHP2kR57fk77VkB4/nCBas99OI/imaQZVa7xCX7/d66UsB2tF+YvJ
 ypjkFDKl0lUSNmv/NRBvO+Qi2Re/65sxPJJZdeaxoFETWK4COhLUzvHn4
 iXLY5woji8nvIDnqXDlXnvOlTPOXdALoVkx4ucplEYNygMHTpDDi/jXQT
 plJCchn7FmJZn+ZvfneSAtZ5/ihkuTb0TitchJP6oNbaHZ0LFFmK9qmwm
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ILnBXXqO
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: d6b1776e7d0ed5afabaf9c8ea8e4581bbeab3e60  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 727m

configs tested: 117
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230303   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230302   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230302   clang
arm                  randconfig-r015-20230302   gcc  
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230303   clang
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230303   gcc  
arm64                randconfig-r016-20230303   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230302   gcc  
csky                 randconfig-r005-20230303   gcc  
csky                 randconfig-r013-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
hexagon      buildonly-randconfig-r001-20230302   clang
hexagon              randconfig-r001-20230303   clang
hexagon              randconfig-r021-20230302   clang
hexagon              randconfig-r033-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
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
ia64                                defconfig   gcc  
ia64                 randconfig-r016-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r006-20230303   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r034-20230302   gcc  
microblaze   buildonly-randconfig-r002-20230302   gcc  
microblaze   buildonly-randconfig-r005-20230303   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
nios2        buildonly-randconfig-r006-20230302   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230302   gcc  
nios2                randconfig-r012-20230302   gcc  
nios2                randconfig-r015-20230303   gcc  
openrisc             randconfig-r012-20230303   gcc  
openrisc             randconfig-r025-20230302   gcc  
openrisc             randconfig-r032-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r003-20230303   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230302   clang
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230303   clang
riscv                randconfig-r004-20230303   clang
riscv                randconfig-r006-20230303   clang
riscv                randconfig-r035-20230302   gcc  
riscv                randconfig-r036-20230302   gcc  
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230303   gcc  
sparc        buildonly-randconfig-r001-20230303   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230302   gcc  
sparc64              randconfig-r014-20230302   gcc  
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
xtensa               randconfig-r011-20230303   gcc  
xtensa               randconfig-r026-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
