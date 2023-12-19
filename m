Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AFD8188C9
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Dec 2023 14:42:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C12C4064F;
	Tue, 19 Dec 2023 13:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C12C4064F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnseYm1YwRNd; Tue, 19 Dec 2023 13:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DD1B40A47;
	Tue, 19 Dec 2023 13:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DD1B40A47
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC8401BF35C
 for <devel@linuxdriverproject.org>; Tue, 19 Dec 2023 13:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8565C41D83
 for <devel@linuxdriverproject.org>; Tue, 19 Dec 2023 13:42:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8565C41D83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofnFnhldDjF0 for <devel@linuxdriverproject.org>;
 Tue, 19 Dec 2023 13:42:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67EB4415B5
 for <devel@driverdev.osuosl.org>; Tue, 19 Dec 2023 13:42:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67EB4415B5
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="460000402"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="460000402"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 05:42:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17601088"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 19 Dec 2023 05:42:44 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rFaMq-0005OV-2z;
 Tue, 19 Dec 2023 13:42:40 +0000
Date: Tue, 19 Dec 2023 21:42:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 561426334312b859f0658992ed1720a7b8925f54
Message-ID: <202312192115.ETkKEzio-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702993365; x=1734529365;
 h=date:from:to:cc:subject:message-id;
 bh=ZfQjxT+98GYnb3gyuQSG9kTB+v9wDCo8jJgeLCkknOc=;
 b=Nx/8l8ncSa2BilYIxH/63CgS682Y/1bzGkPjUGu3NpRvlyeS5XWflFos
 8LmaxxxhuaqfYlIuV+l/PvOlzm65SaAYhxuA7UfobyWsSaCXPw/N0tB56
 np3p0bnTZnx/mjuhD+WdpM2MmzohS/JXfMxRqfmZBroQTsiDFl2ZMGm5I
 soZJ4AFAwz2gcNL9mmFM0ijs69WTYYkoupeIP8risneAFbfVnppAiqnTC
 oOfIh7IXg9Xg/VEOHOXy68BEGIAXmgfFSiPOmznxqgnuFGj1nzwvTfDzA
 IiYwMXpUq6x+KLZGCNhq778KhE7KKQiidx0S8c3bZynhoVTrDqGHnAobz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nx/8l8nc
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
branch HEAD: 561426334312b859f0658992ed1720a7b8925f54  sysfs: do not create empty directories if no attributes are present

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- x86_64-allyesconfig
    `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 1476m

configs tested: 134
configs skipped: 4

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231218   gcc  
i386         buildonly-randconfig-002-20231218   gcc  
i386         buildonly-randconfig-003-20231218   gcc  
i386         buildonly-randconfig-004-20231218   gcc  
i386         buildonly-randconfig-005-20231218   gcc  
i386         buildonly-randconfig-006-20231218   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231218   gcc  
i386                  randconfig-002-20231218   gcc  
i386                  randconfig-003-20231218   gcc  
i386                  randconfig-004-20231218   gcc  
i386                  randconfig-005-20231218   gcc  
i386                  randconfig-006-20231218   gcc  
i386                  randconfig-011-20231218   clang
i386                  randconfig-011-20231219   gcc  
i386                  randconfig-012-20231218   clang
i386                  randconfig-012-20231219   gcc  
i386                  randconfig-013-20231218   clang
i386                  randconfig-013-20231219   gcc  
i386                  randconfig-014-20231218   clang
i386                  randconfig-014-20231219   gcc  
i386                  randconfig-015-20231218   clang
i386                  randconfig-015-20231219   gcc  
i386                  randconfig-016-20231218   clang
i386                  randconfig-016-20231219   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                       lemote2f_defconfig   gcc  
mips                     loongson2k_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231219   clang
x86_64       buildonly-randconfig-002-20231219   clang
x86_64       buildonly-randconfig-003-20231219   clang
x86_64       buildonly-randconfig-004-20231219   clang
x86_64       buildonly-randconfig-005-20231219   clang
x86_64       buildonly-randconfig-006-20231219   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231219   clang
x86_64                randconfig-012-20231219   clang
x86_64                randconfig-013-20231219   clang
x86_64                randconfig-014-20231219   clang
x86_64                randconfig-015-20231219   clang
x86_64                randconfig-016-20231219   clang
x86_64                randconfig-071-20231219   clang
x86_64                randconfig-072-20231219   clang
x86_64                randconfig-073-20231219   clang
x86_64                randconfig-074-20231219   clang
x86_64                randconfig-075-20231219   clang
x86_64                randconfig-076-20231219   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
