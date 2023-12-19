Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AF88188C6
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Dec 2023 14:40:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABBC340470;
	Tue, 19 Dec 2023 13:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABBC340470
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JfX3otpqmi1M; Tue, 19 Dec 2023 13:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA4C1401D5;
	Tue, 19 Dec 2023 13:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA4C1401D5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 217101BF35C
 for <devel@linuxdriverproject.org>; Tue, 19 Dec 2023 13:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE49E41D86
 for <devel@linuxdriverproject.org>; Tue, 19 Dec 2023 13:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE49E41D86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5ylEM4CuyWH for <devel@linuxdriverproject.org>;
 Tue, 19 Dec 2023 13:40:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C674F41D83
 for <devel@driverdev.osuosl.org>; Tue, 19 Dec 2023 13:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C674F41D83
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2487166"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; 
   d="scan'208";a="2487166"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 05:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="804898666"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="804898666"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 19 Dec 2023 05:40:42 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rFaKu-0005O5-2G;
 Tue, 19 Dec 2023 13:40:40 +0000
Date: Tue, 19 Dec 2023 21:39:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 cd9d4522303932e2f31d4d7df05720f5b2a4e459
Message-ID: <202312192145.uw9sAV3U-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702993245; x=1734529245;
 h=date:from:to:cc:subject:message-id;
 bh=XpY8t4eN/eh+my+fRI08rYzJ1qa/CQiDDfj0ITTrCSU=;
 b=KWXwHcHwvHOVm2jOMgJjyEluYn4adtCHfW1VisLnSf0q6swtC6qb+LvL
 RABwa8B9LWGKYShPaNG5iFYi5wE4U2OlZCjJqZy5aQXFb4UZZ1cZaOiBr
 +vEfyOSdQZLaRJ026G6kvJ4tIf4ELhUWMpNwYvNb7OAqSvh1vcJ5qRr62
 70Z/X5QoMG0XSZ0W98vKSQ2wwhhxcq3vjS1NM1COCCTvCa7ZAGk9M5Eoc
 tABqekFcl+HVTHIvaNatE27gkfj3rgTAZWNTa2qSQDh2qqWWs349tHy/1
 CUGh6whK7DPYd6iRhr/jp2ESFp9D8PFqmoCy5APr3MsRbj7TIO++t2B1x
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KWXwHcHw
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
branch HEAD: cd9d4522303932e2f31d4d7df05720f5b2a4e459  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 1473m

configs tested: 151
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                         s3c6400_defconfig   gcc  
arm                        shmobile_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
i386                             alldefconfig   gcc  
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
m68k                        m5307c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                           ip32_defconfig   gcc  
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
parisc                generic-32bit_defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                            titan_defconfig   gcc  
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
xtensa                  audio_kc705_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
