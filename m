Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 644137A59D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Sep 2023 08:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6ED06149E;
	Tue, 19 Sep 2023 06:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6ED06149E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id awNSZohHJke0; Tue, 19 Sep 2023 06:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41D7060A7D;
	Tue, 19 Sep 2023 06:17:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41D7060A7D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94A281BF33B
 for <devel@linuxdriverproject.org>; Tue, 19 Sep 2023 06:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AA4E416B1
 for <devel@linuxdriverproject.org>; Tue, 19 Sep 2023 06:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AA4E416B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LvcLfLPcaXav for <devel@linuxdriverproject.org>;
 Tue, 19 Sep 2023 06:17:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27AF040C10
 for <devel@driverdev.osuosl.org>; Tue, 19 Sep 2023 06:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27AF040C10
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="364909470"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="364909470"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:17:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="1076859859"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="1076859859"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 18 Sep 2023 23:17:19 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qiU2r-0006zG-12;
 Tue, 19 Sep 2023 06:17:13 +0000
Date: Tue, 19 Sep 2023 14:16:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 33e70736f9fe5224a7a4bdb835477043172c9d4c
Message-ID: <202309191434.3cUHcIKr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695104243; x=1726640243;
 h=date:from:to:cc:subject:message-id;
 bh=MDk5HYwo4c7rEJZ0vzZLv1UzlTnWzJT5uNEFqGvKc/c=;
 b=XJl4i6Z6yf/HsiXVrsQXX52aPNN9PXvUHW2qjdyOlIQgvrxPHHp7UIXl
 ijJyR2s9VLC/M3UAus1LaqQVgKWiBIUwKFCDbXB3iMwJgBRAQc9inJs0o
 97EcYpkFmwopEGKqddu4DnkPlVFj9Ac6tSXVIYNBOMWomR2kY/GzACgnN
 c8+WM4ENQY58LS2wKJZM6NMh4CNF25lCIsbh7Bo/QSJ6wtl1sbLnWzjF8
 3tkqKjj6EBej1XDLtwmfhmUfzeQkFO94eIfjI3QZnLZK+Dhx3H89K7EnJ
 mMD9jjByny4V99rB1M721anxi5lvcHtE37K9w8LYkPGQ8+9afLbCzIvbo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XJl4i6Z6
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
branch HEAD: 33e70736f9fe5224a7a4bdb835477043172c9d4c  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 1367m

configs tested: 196
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
arc                            hsdk_defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20230918   gcc  
arc                   randconfig-001-20230919   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                      footbridge_defconfig   gcc  
arm                   randconfig-001-20230918   gcc  
arm                   randconfig-001-20230919   gcc  
arm                           stm32_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230918   gcc  
i386         buildonly-randconfig-001-20230919   gcc  
i386         buildonly-randconfig-002-20230918   gcc  
i386         buildonly-randconfig-002-20230919   gcc  
i386         buildonly-randconfig-003-20230918   gcc  
i386         buildonly-randconfig-003-20230919   gcc  
i386         buildonly-randconfig-004-20230919   gcc  
i386         buildonly-randconfig-005-20230919   gcc  
i386         buildonly-randconfig-006-20230919   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230919   gcc  
i386                  randconfig-002-20230919   gcc  
i386                  randconfig-003-20230919   gcc  
i386                  randconfig-004-20230919   gcc  
i386                  randconfig-005-20230919   gcc  
i386                  randconfig-006-20230919   gcc  
i386                  randconfig-011-20230918   gcc  
i386                  randconfig-011-20230919   gcc  
i386                  randconfig-012-20230918   gcc  
i386                  randconfig-012-20230919   gcc  
i386                  randconfig-013-20230918   gcc  
i386                  randconfig-013-20230919   gcc  
i386                  randconfig-014-20230918   gcc  
i386                  randconfig-014-20230919   gcc  
i386                  randconfig-015-20230918   gcc  
i386                  randconfig-015-20230919   gcc  
i386                  randconfig-016-20230918   gcc  
i386                  randconfig-016-20230919   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230918   gcc  
loongarch             randconfig-001-20230919   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        vocore2_defconfig   gcc  
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
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                 randconfig-001-20230918   gcc  
riscv                 randconfig-001-20230919   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230918   gcc  
s390                  randconfig-001-20230919   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7751_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230918   gcc  
sparc                 randconfig-001-20230919   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230918   gcc  
x86_64       buildonly-randconfig-001-20230919   gcc  
x86_64       buildonly-randconfig-002-20230918   gcc  
x86_64       buildonly-randconfig-002-20230919   gcc  
x86_64       buildonly-randconfig-003-20230918   gcc  
x86_64       buildonly-randconfig-003-20230919   gcc  
x86_64       buildonly-randconfig-004-20230918   gcc  
x86_64       buildonly-randconfig-004-20230919   gcc  
x86_64       buildonly-randconfig-005-20230918   gcc  
x86_64       buildonly-randconfig-005-20230919   gcc  
x86_64       buildonly-randconfig-006-20230918   gcc  
x86_64       buildonly-randconfig-006-20230919   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230918   gcc  
x86_64                randconfig-001-20230919   gcc  
x86_64                randconfig-002-20230919   gcc  
x86_64                randconfig-003-20230918   gcc  
x86_64                randconfig-003-20230919   gcc  
x86_64                randconfig-004-20230919   gcc  
x86_64                randconfig-005-20230919   gcc  
x86_64                randconfig-006-20230918   gcc  
x86_64                randconfig-006-20230919   gcc  
x86_64                randconfig-011-20230918   gcc  
x86_64                randconfig-011-20230919   gcc  
x86_64                randconfig-012-20230918   gcc  
x86_64                randconfig-012-20230919   gcc  
x86_64                randconfig-013-20230918   gcc  
x86_64                randconfig-013-20230919   gcc  
x86_64                randconfig-014-20230918   gcc  
x86_64                randconfig-014-20230919   gcc  
x86_64                randconfig-015-20230918   gcc  
x86_64                randconfig-015-20230919   gcc  
x86_64                randconfig-016-20230919   gcc  
x86_64                randconfig-071-20230919   gcc  
x86_64                randconfig-072-20230919   gcc  
x86_64                randconfig-073-20230919   gcc  
x86_64                randconfig-074-20230919   gcc  
x86_64                randconfig-075-20230919   gcc  
x86_64                randconfig-076-20230918   gcc  
x86_64                randconfig-076-20230919   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                              defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
