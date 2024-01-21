Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1910B8354D5
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jan 2024 08:35:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7CA88266C;
	Sun, 21 Jan 2024 07:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7CA88266C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9-atQ_x0FwA; Sun, 21 Jan 2024 07:35:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90DF5824DD;
	Sun, 21 Jan 2024 07:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90DF5824DD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6536E1BF476
 for <devel@linuxdriverproject.org>; Sun, 21 Jan 2024 07:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AED382451
 for <devel@linuxdriverproject.org>; Sun, 21 Jan 2024 07:35:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AED382451
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vPWF4C4UzEcx for <devel@linuxdriverproject.org>;
 Sun, 21 Jan 2024 07:35:11 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 21 Jan 2024 07:35:11 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FA9C82430
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FA9C82430
 for <devel@driverdev.osuosl.org>; Sun, 21 Jan 2024 07:35:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10959"; a="876946"
X-IronPort-AV: E=Sophos;i="6.05,209,1701158400"; 
   d="scan'208";a="876946"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2024 23:32:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,209,1701158400"; 
   d="scan'208";a="917242"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 20 Jan 2024 23:32:05 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rRSJG-0005l2-10;
 Sun, 21 Jan 2024 07:32:02 +0000
Date: Sun, 21 Jan 2024 15:31:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 f412bccf204e61dc674d4127dcefa062711a83be
Message-ID: <202401211505.47rkTwmh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705822511; x=1737358511;
 h=date:from:to:cc:subject:message-id;
 bh=fAjv1RHtqTQz7IqOeUmE0J5WoJ4W6v/fLnvfkhy8o84=;
 b=CneHPaCwZRL41GY3fI1Q9wpeIUzZcy265+e8t8YBY75aTa2QtQpaltyH
 uCHujZYDpOGBZQd+bJZwSGsobLMm/VX9oPGvGy9sJJQlnBQjWqThPYSfB
 gOFlS1EuFwxCFJUjspNYvTiQdgRiB8pzQe//UiwfaUejdkamPetZA7AN2
 p3wZijW1UrG6cMaW7Z/+Z94BCwvi/j8ju9+nEkhO1keYC3UpG/L669jdi
 5rkI58Fe3O0tjwccfdE5u2pPn3tX+2Y6f7TqcADUhFyLEC+vKWO0W295K
 XkNiAxsmNZwuioxRv5rgOCwX2JP8qThc1QsXpeIV6oyzX1sCbWD8KnuNm
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CneHPaCw
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
branch HEAD: f412bccf204e61dc674d4127dcefa062711a83be  sysfs: do not create empty directories if no attributes are present

elapsed time: 1458m

configs tested: 151
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240121   gcc  
arc                   randconfig-002-20240121   gcc  
arm                               allnoconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20240121   gcc  
arm                   randconfig-002-20240121   gcc  
arm                   randconfig-003-20240121   gcc  
arm                   randconfig-004-20240121   gcc  
arm                        realview_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240121   gcc  
arm64                 randconfig-002-20240121   gcc  
arm64                 randconfig-003-20240121   gcc  
arm64                 randconfig-004-20240121   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240121   gcc  
csky                  randconfig-002-20240121   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240120   clang
i386         buildonly-randconfig-002-20240120   clang
i386         buildonly-randconfig-003-20240120   clang
i386         buildonly-randconfig-004-20240120   clang
i386         buildonly-randconfig-005-20240120   clang
i386         buildonly-randconfig-006-20240120   clang
i386                  randconfig-001-20240120   clang
i386                  randconfig-002-20240120   clang
i386                  randconfig-003-20240120   clang
i386                  randconfig-004-20240120   clang
i386                  randconfig-005-20240120   clang
i386                  randconfig-006-20240120   clang
i386                  randconfig-011-20240120   gcc  
i386                  randconfig-011-20240121   clang
i386                  randconfig-012-20240120   gcc  
i386                  randconfig-012-20240121   clang
i386                  randconfig-013-20240120   gcc  
i386                  randconfig-013-20240121   clang
i386                  randconfig-014-20240120   gcc  
i386                  randconfig-014-20240121   clang
i386                  randconfig-015-20240120   gcc  
i386                  randconfig-015-20240121   clang
i386                  randconfig-016-20240120   gcc  
i386                  randconfig-016-20240121   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240121   gcc  
loongarch             randconfig-002-20240121   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240121   gcc  
nios2                 randconfig-002-20240121   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240121   gcc  
parisc                randconfig-002-20240121   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                     ksi8560_defconfig   gcc  
powerpc               randconfig-001-20240121   gcc  
powerpc               randconfig-002-20240121   gcc  
powerpc               randconfig-003-20240121   gcc  
powerpc                     tqm8540_defconfig   gcc  
powerpc64             randconfig-001-20240121   gcc  
powerpc64             randconfig-002-20240121   gcc  
powerpc64             randconfig-003-20240121   gcc  
riscv                            allmodconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240121   gcc  
riscv                 randconfig-002-20240121   gcc  
s390                              allnoconfig   gcc  
s390                                defconfig   gcc  
sh                                allnoconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                    randconfig-001-20240121   gcc  
sh                    randconfig-002-20240121   gcc  
sparc                            allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240121   gcc  
sparc64               randconfig-002-20240121   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240121   gcc  
um                    randconfig-002-20240121   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240121   gcc  
x86_64       buildonly-randconfig-002-20240121   gcc  
x86_64       buildonly-randconfig-003-20240121   gcc  
x86_64       buildonly-randconfig-004-20240121   gcc  
x86_64       buildonly-randconfig-005-20240121   gcc  
x86_64       buildonly-randconfig-006-20240121   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20240121   gcc  
x86_64                randconfig-012-20240121   gcc  
x86_64                randconfig-013-20240121   gcc  
x86_64                randconfig-014-20240121   gcc  
x86_64                randconfig-015-20240121   gcc  
x86_64                randconfig-016-20240121   gcc  
x86_64                randconfig-071-20240121   gcc  
x86_64                randconfig-072-20240121   gcc  
x86_64                randconfig-073-20240121   gcc  
x86_64                randconfig-074-20240121   gcc  
x86_64                randconfig-075-20240121   gcc  
x86_64                randconfig-076-20240121   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                randconfig-001-20240121   gcc  
xtensa                randconfig-002-20240121   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
