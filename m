Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117FE81AF44
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Dec 2023 08:18:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F06CD43752;
	Thu, 21 Dec 2023 07:18:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F06CD43752
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bZJeJ6uzMkn7; Thu, 21 Dec 2023 07:18:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A6124373F;
	Thu, 21 Dec 2023 07:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A6124373F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 555B71BF387
 for <devel@linuxdriverproject.org>; Thu, 21 Dec 2023 07:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A33260EDC
 for <devel@linuxdriverproject.org>; Thu, 21 Dec 2023 07:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A33260EDC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5cSXNBC2AJj for <devel@linuxdriverproject.org>;
 Thu, 21 Dec 2023 07:18:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 172D760B73
 for <devel@driverdev.osuosl.org>; Thu, 21 Dec 2023 07:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 172D760B73
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3171821"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="3171821"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 23:18:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="752850866"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="752850866"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 20 Dec 2023 23:18:15 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rGDJt-00083F-1Y;
 Thu, 21 Dec 2023 07:18:13 +0000
Date: Thu, 21 Dec 2023 15:17:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 64c166821e034dda14e7a1a2d648347662054e0e
Message-ID: <202312211535.ZJYEFqBK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703143111; x=1734679111;
 h=date:from:to:cc:subject:message-id;
 bh=FiZpq8fFb2mZuzAhZGRSXs5O8Mu8kPgGgq92bpwRTJ0=;
 b=Qgmf3Wk+yuVyQb3YOaiWJKdmbonVvyvSUFldaVblZr+Me6+i8J8lvgZo
 Fes38ufcy/Rk4ecrpCAfLazSIIvnO8JFdlS479v2k+w201nzihOB4B5Wt
 ay2w4DQpchq6dlv3YkQcZMST6tpcw26eFXEORbvIRxMOh67KKBbXM38Gv
 +FGZZg0bJkghDYVCE9iQiilAVkx4pKivcKyawtx3eu+1kEfXbuuRaNaW5
 Q2BDokdelpGw9My2JPqlvHGAmnfACfw7MnJZae7FUmQehMJyWMY66EozJ
 ASKxBiz0rmyFn5DLyFpTojEsk0JrL+prdY9JejrunrPeMc1vUlKekWwzl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qgmf3Wk+
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 64c166821e034dda14e7a1a2d648347662054e0e  kernfs: d_obtain_alias(NULL) will do the right thing...

elapsed time: 1474m

configs tested: 153
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
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20231221   gcc  
arc                   randconfig-002-20231221   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                        multi_v5_defconfig   clang
arm                   randconfig-001-20231221   clang
arm                   randconfig-002-20231221   clang
arm                   randconfig-003-20231221   clang
arm                   randconfig-004-20231221   clang
arm                           sama7_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231221   clang
arm64                 randconfig-002-20231221   clang
arm64                 randconfig-003-20231221   clang
arm64                 randconfig-004-20231221   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231221   gcc  
csky                  randconfig-002-20231221   gcc  
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231221   clang
hexagon               randconfig-002-20231221   clang
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
i386                  randconfig-012-20231220   clang
i386                  randconfig-013-20231220   clang
i386                  randconfig-014-20231220   clang
i386                  randconfig-015-20231220   clang
i386                  randconfig-016-20231220   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231221   gcc  
loongarch             randconfig-002-20231221   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          multi_defconfig   gcc  
microblaze                       alldefconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231221   gcc  
nios2                 randconfig-002-20231221   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231221   gcc  
parisc                randconfig-002-20231221   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20231221   clang
powerpc               randconfig-002-20231221   clang
powerpc               randconfig-003-20231221   clang
powerpc                     taishan_defconfig   gcc  
powerpc64             randconfig-001-20231221   clang
powerpc64             randconfig-002-20231221   clang
powerpc64             randconfig-003-20231221   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_virt_defconfig   clang
riscv                 randconfig-001-20231221   clang
riscv                 randconfig-002-20231221   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231221   gcc  
s390                  randconfig-002-20231221   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                    randconfig-001-20231221   gcc  
sh                    randconfig-002-20231221   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231221   gcc  
sparc64               randconfig-002-20231221   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231221   clang
um                    randconfig-002-20231221   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231221   gcc  
xtensa                randconfig-002-20231221   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
