Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC3F7E12BE
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Nov 2023 10:23:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 117EA60FF0;
	Sun,  5 Nov 2023 09:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 117EA60FF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T2iBrMCT8Ge7; Sun,  5 Nov 2023 09:23:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CB4960D58;
	Sun,  5 Nov 2023 09:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CB4960D58
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11DE61BF578
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 09:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCC45400A6
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 09:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCC45400A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Z50F7j1pf_o for <devel@linuxdriverproject.org>;
 Sun,  5 Nov 2023 09:23:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41A58404F6
 for <devel@driverdev.osuosl.org>; Sun,  5 Nov 2023 09:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41A58404F6
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="10672373"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="10672373"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2023 01:23:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="738522498"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="738522498"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 05 Nov 2023 01:23:16 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qzZLd-0005Ga-2n;
 Sun, 05 Nov 2023 09:23:13 +0000
Date: Sun, 05 Nov 2023 17:22:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 88503f3201dbe515e58238bff78dd8bee3f731b3
Message-ID: <202311051720.e2A8hesG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699176198; x=1730712198;
 h=date:from:to:cc:subject:message-id;
 bh=Z/mAVOPFFOcNoS+dDmQhWv23J+uyvrHP2W8Cw7ggpIY=;
 b=NYf9/TUUiY/3ZkO8URJZavTsRAF7m1mdKjP9j4HtfQ2s9+UIN78u1yMS
 Kjf4A8VKTUCMOHux5SNGUrteWt8hy8HiK0JQPfUNIyrPCDM5LInjiCexi
 ei95RW6KqXN2+z8MJb1TnIMQ3UOsWBWvCkHmt6qsDjh/0xZRm9E3oP9B4
 qQrMVmYfgK/yWnBvab3E7hoG5RnKsqefwtHIo7TDryY2AMm609z/7YGkc
 FJVc3SfWwcitBAomU2mBpggV02PJj7cG1zAOdpYCtGkhiMivPT6QEfZwC
 Tr2eOXcC8xL9mtlVbFT0Db3FZrx3lEx0KMoJtR0b2kh3CwPyq2AegirqK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NYf9/TUU
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
branch HEAD: 88503f3201dbe515e58238bff78dd8bee3f731b3  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 1447m

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
arc                   randconfig-001-20231104   gcc  
arc                   randconfig-002-20231104   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                       omap2plus_defconfig   gcc  
arm                   randconfig-001-20231105   gcc  
arm                   randconfig-002-20231105   gcc  
arm                   randconfig-003-20231105   gcc  
arm                   randconfig-004-20231105   gcc  
arm                             rpc_defconfig   gcc  
arm                       versatile_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231105   gcc  
arm64                 randconfig-002-20231105   gcc  
arm64                 randconfig-003-20231105   gcc  
arm64                 randconfig-004-20231105   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231104   gcc  
csky                  randconfig-002-20231104   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231104   gcc  
i386         buildonly-randconfig-001-20231105   gcc  
i386         buildonly-randconfig-002-20231104   gcc  
i386         buildonly-randconfig-002-20231105   gcc  
i386         buildonly-randconfig-003-20231104   gcc  
i386         buildonly-randconfig-003-20231105   gcc  
i386         buildonly-randconfig-004-20231104   gcc  
i386         buildonly-randconfig-004-20231105   gcc  
i386         buildonly-randconfig-005-20231104   gcc  
i386         buildonly-randconfig-005-20231105   gcc  
i386         buildonly-randconfig-006-20231104   gcc  
i386         buildonly-randconfig-006-20231105   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231105   gcc  
i386                  randconfig-002-20231105   gcc  
i386                  randconfig-003-20231105   gcc  
i386                  randconfig-004-20231105   gcc  
i386                  randconfig-005-20231105   gcc  
i386                  randconfig-006-20231105   gcc  
i386                  randconfig-011-20231104   gcc  
i386                  randconfig-011-20231105   gcc  
i386                  randconfig-012-20231104   gcc  
i386                  randconfig-012-20231105   gcc  
i386                  randconfig-013-20231104   gcc  
i386                  randconfig-013-20231105   gcc  
i386                  randconfig-014-20231104   gcc  
i386                  randconfig-014-20231105   gcc  
i386                  randconfig-015-20231104   gcc  
i386                  randconfig-015-20231105   gcc  
i386                  randconfig-016-20231104   gcc  
i386                  randconfig-016-20231105   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20231104   gcc  
loongarch             randconfig-002-20231104   gcc  
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
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                          malta_defconfig   clang
mips                    maltaup_xpa_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231104   gcc  
nios2                 randconfig-001-20231105   gcc  
nios2                 randconfig-002-20231104   gcc  
nios2                 randconfig-002-20231105   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231104   gcc  
parisc                randconfig-001-20231105   gcc  
parisc                randconfig-002-20231104   gcc  
parisc                randconfig-002-20231105   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                    klondike_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc               randconfig-001-20231104   gcc  
powerpc               randconfig-001-20231105   gcc  
powerpc               randconfig-002-20231104   gcc  
powerpc               randconfig-002-20231105   gcc  
powerpc               randconfig-003-20231105   gcc  
powerpc64             randconfig-001-20231104   gcc  
powerpc64             randconfig-001-20231105   gcc  
powerpc64             randconfig-002-20231105   gcc  
powerpc64             randconfig-003-20231104   gcc  
powerpc64             randconfig-003-20231105   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231104   gcc  
riscv                 randconfig-001-20231105   gcc  
riscv                 randconfig-002-20231104   gcc  
riscv                 randconfig-002-20231105   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231104   gcc  
s390                  randconfig-001-20231105   gcc  
s390                  randconfig-002-20231104   gcc  
s390                  randconfig-002-20231105   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                    randconfig-001-20231105   gcc  
sh                    randconfig-002-20231105   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231105   gcc  
sparc                 randconfig-002-20231105   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231105   gcc  
sparc64               randconfig-002-20231105   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231105   gcc  
um                    randconfig-002-20231105   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231104   gcc  
x86_64       buildonly-randconfig-001-20231105   gcc  
x86_64       buildonly-randconfig-002-20231104   gcc  
x86_64       buildonly-randconfig-002-20231105   gcc  
x86_64       buildonly-randconfig-003-20231104   gcc  
x86_64       buildonly-randconfig-003-20231105   gcc  
x86_64       buildonly-randconfig-004-20231104   gcc  
x86_64       buildonly-randconfig-004-20231105   gcc  
x86_64       buildonly-randconfig-005-20231104   gcc  
x86_64       buildonly-randconfig-005-20231105   gcc  
x86_64       buildonly-randconfig-006-20231104   gcc  
x86_64       buildonly-randconfig-006-20231105   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231105   gcc  
x86_64                randconfig-002-20231105   gcc  
x86_64                randconfig-003-20231105   gcc  
x86_64                randconfig-004-20231105   gcc  
x86_64                randconfig-005-20231105   gcc  
x86_64                randconfig-006-20231105   gcc  
x86_64                randconfig-011-20231104   gcc  
x86_64                randconfig-011-20231105   gcc  
x86_64                randconfig-012-20231104   gcc  
x86_64                randconfig-012-20231105   gcc  
x86_64                randconfig-013-20231104   gcc  
x86_64                randconfig-013-20231105   gcc  
x86_64                randconfig-014-20231104   gcc  
x86_64                randconfig-014-20231105   gcc  
x86_64                randconfig-015-20231104   gcc  
x86_64                randconfig-015-20231105   gcc  
x86_64                randconfig-016-20231104   gcc  
x86_64                randconfig-016-20231105   gcc  
x86_64                randconfig-071-20231105   gcc  
x86_64                randconfig-072-20231105   gcc  
x86_64                randconfig-073-20231104   gcc  
x86_64                randconfig-073-20231105   gcc  
x86_64                randconfig-074-20231104   gcc  
x86_64                randconfig-074-20231105   gcc  
x86_64                randconfig-075-20231105   gcc  
x86_64                randconfig-076-20231104   gcc  
x86_64                randconfig-076-20231105   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231105   gcc  
xtensa                randconfig-002-20231105   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
