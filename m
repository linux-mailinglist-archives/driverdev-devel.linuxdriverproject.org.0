Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2AD81AFFF
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Dec 2023 09:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9CA24375C;
	Thu, 21 Dec 2023 08:07:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9CA24375C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iKXXW-IE33HR; Thu, 21 Dec 2023 08:07:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09BB14375D;
	Thu, 21 Dec 2023 08:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09BB14375D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 426B11BF4D5
 for <devel@linuxdriverproject.org>; Thu, 21 Dec 2023 08:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17DEB4375C
 for <devel@linuxdriverproject.org>; Thu, 21 Dec 2023 08:07:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17DEB4375C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QK9hXLFhaO8 for <devel@linuxdriverproject.org>;
 Thu, 21 Dec 2023 08:07:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02BF843753
 for <devel@driverdev.osuosl.org>; Thu, 21 Dec 2023 08:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02BF843753
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="380926459"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="380926459"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 00:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="810893437"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="810893437"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 21 Dec 2023 00:07:32 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rGE5Z-00087c-2d;
 Thu, 21 Dec 2023 08:07:29 +0000
Date: Thu, 21 Dec 2023 16:06:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 9d2f0cb7e5a3e8c0ecd5afb5cfdf0d42003db384
Message-ID: <202312211627.PnBgZl41-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703146055; x=1734682055;
 h=date:from:to:cc:subject:message-id;
 bh=OTqK9uSlfSMx7oPPkF9GjFS65fLte95zA4lGJhnOQJg=;
 b=lGl7ZfWnTGybD+82ndABsOVOrtCo3uEyM6C4UqBj578E6TJbJ+81fR3T
 Ek7bxZ+lSTPDWBen0XE5b6kCUBCaFKa7b9HQf1FdjJES4y6mcVQH16gSO
 NaEk+hGp1tqfTMNETIUeiBCcnYremBxJ23LvrtDHzJSdRuY+y/PpXGQU9
 pigcHaI3eB3zpcJSiKFyBRT8Nq5re3OVcFt/Zx+QGA/VAEm/Y480YL0pG
 jl/7lkI0S4Zm8q2S4uZkPoeq2U0BY6SAsUm9mxAVnTSGDF6G/zwD+TXQP
 WrCzWUCza3BD0o+gOSZ8gJQre8vmat3ET23EmMl/haFPLWhip3Z4qU9Zp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lGl7ZfWn
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 9d2f0cb7e5a3e8c0ecd5afb5cfdf0d42003db384  make a bunch of struct bus_type const.

elapsed time: 1463m

configs tested: 230
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20231220   gcc  
arc                   randconfig-001-20231221   gcc  
arc                   randconfig-002-20231220   gcc  
arc                   randconfig-002-20231221   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                      footbridge_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20231220   gcc  
arm                   randconfig-002-20231220   gcc  
arm                   randconfig-003-20231220   gcc  
arm                   randconfig-004-20231220   gcc  
arm                       spear13xx_defconfig   clang
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231220   gcc  
arm64                 randconfig-002-20231220   gcc  
arm64                 randconfig-003-20231220   gcc  
arm64                 randconfig-004-20231220   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231220   gcc  
csky                  randconfig-001-20231221   gcc  
csky                  randconfig-002-20231220   gcc  
csky                  randconfig-002-20231221   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231220   gcc  
i386         buildonly-randconfig-002-20231220   gcc  
i386         buildonly-randconfig-003-20231220   gcc  
i386         buildonly-randconfig-004-20231220   gcc  
i386         buildonly-randconfig-005-20231220   gcc  
i386         buildonly-randconfig-006-20231220   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231220   gcc  
i386                  randconfig-002-20231220   gcc  
i386                  randconfig-003-20231220   gcc  
i386                  randconfig-004-20231220   gcc  
i386                  randconfig-005-20231220   gcc  
i386                  randconfig-006-20231220   gcc  
i386                  randconfig-011-20231220   clang
i386                  randconfig-011-20231221   gcc  
i386                  randconfig-012-20231220   clang
i386                  randconfig-012-20231221   gcc  
i386                  randconfig-013-20231220   clang
i386                  randconfig-013-20231221   gcc  
i386                  randconfig-014-20231220   clang
i386                  randconfig-014-20231221   gcc  
i386                  randconfig-015-20231220   clang
i386                  randconfig-015-20231221   gcc  
i386                  randconfig-016-20231220   clang
i386                  randconfig-016-20231221   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231220   gcc  
loongarch             randconfig-001-20231221   gcc  
loongarch             randconfig-002-20231220   gcc  
loongarch             randconfig-002-20231221   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips                         db1xxx_defconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                        maltaup_defconfig   clang
mips                      pic32mzda_defconfig   clang
mips                         rt305x_defconfig   gcc  
mips                           xway_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231220   gcc  
nios2                 randconfig-001-20231221   gcc  
nios2                 randconfig-002-20231220   gcc  
nios2                 randconfig-002-20231221   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231220   gcc  
parisc                randconfig-001-20231221   gcc  
parisc                randconfig-002-20231220   gcc  
parisc                randconfig-002-20231221   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     asp8347_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc               randconfig-001-20231220   gcc  
powerpc               randconfig-002-20231220   gcc  
powerpc               randconfig-003-20231220   gcc  
powerpc                      walnut_defconfig   clang
powerpc64             randconfig-001-20231220   gcc  
powerpc64             randconfig-002-20231220   gcc  
powerpc64             randconfig-003-20231220   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231220   gcc  
riscv                 randconfig-002-20231220   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231221   gcc  
s390                  randconfig-002-20231221   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20231220   gcc  
sh                    randconfig-001-20231221   gcc  
sh                    randconfig-002-20231220   gcc  
sh                    randconfig-002-20231221   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231220   gcc  
sparc64               randconfig-001-20231221   gcc  
sparc64               randconfig-002-20231220   gcc  
sparc64               randconfig-002-20231221   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231220   gcc  
um                    randconfig-002-20231220   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231220   gcc  
x86_64       buildonly-randconfig-001-20231221   clang
x86_64       buildonly-randconfig-002-20231220   gcc  
x86_64       buildonly-randconfig-002-20231221   clang
x86_64       buildonly-randconfig-003-20231220   gcc  
x86_64       buildonly-randconfig-003-20231221   clang
x86_64       buildonly-randconfig-004-20231220   gcc  
x86_64       buildonly-randconfig-004-20231221   clang
x86_64       buildonly-randconfig-005-20231220   gcc  
x86_64       buildonly-randconfig-005-20231221   clang
x86_64       buildonly-randconfig-006-20231220   gcc  
x86_64       buildonly-randconfig-006-20231221   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231220   gcc  
x86_64                randconfig-011-20231221   clang
x86_64                randconfig-012-20231220   gcc  
x86_64                randconfig-012-20231221   clang
x86_64                randconfig-013-20231220   gcc  
x86_64                randconfig-013-20231221   clang
x86_64                randconfig-014-20231220   gcc  
x86_64                randconfig-014-20231221   clang
x86_64                randconfig-015-20231220   gcc  
x86_64                randconfig-015-20231221   clang
x86_64                randconfig-016-20231220   gcc  
x86_64                randconfig-016-20231221   clang
x86_64                randconfig-071-20231220   gcc  
x86_64                randconfig-071-20231221   clang
x86_64                randconfig-072-20231220   gcc  
x86_64                randconfig-072-20231221   clang
x86_64                randconfig-073-20231220   gcc  
x86_64                randconfig-073-20231221   clang
x86_64                randconfig-074-20231220   gcc  
x86_64                randconfig-074-20231221   clang
x86_64                randconfig-075-20231220   gcc  
x86_64                randconfig-075-20231221   clang
x86_64                randconfig-076-20231220   gcc  
x86_64                randconfig-076-20231221   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231220   gcc  
xtensa                randconfig-001-20231221   gcc  
xtensa                randconfig-002-20231220   gcc  
xtensa                randconfig-002-20231221   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
