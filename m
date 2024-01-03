Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A60822B9B
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jan 2024 11:48:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80807414FE;
	Wed,  3 Jan 2024 10:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80807414FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s2t3Va7LOOHo; Wed,  3 Jan 2024 10:48:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5CBD40B5D;
	Wed,  3 Jan 2024 10:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5CBD40B5D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 944D41BF409
 for <devel@linuxdriverproject.org>; Wed,  3 Jan 2024 10:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CF3C410BA
 for <devel@linuxdriverproject.org>; Wed,  3 Jan 2024 10:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CF3C410BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiefAe-yFKDy for <devel@linuxdriverproject.org>;
 Wed,  3 Jan 2024 10:48:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C9C04054E
 for <devel@driverdev.osuosl.org>; Wed,  3 Jan 2024 10:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C9C04054E
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="4076474"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; 
   d="scan'208";a="4076474"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 02:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="1111330998"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="1111330998"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2024 02:48:37 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rKynS-000LyQ-0R;
 Wed, 03 Jan 2024 10:48:29 +0000
Date: Wed, 03 Jan 2024 18:47:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 c810729fe6471aa18e2b05bde4b7fb9d872b4ca0
Message-ID: <202401031816.5H2DrjY2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704278920; x=1735814920;
 h=date:from:to:cc:subject:message-id;
 bh=7lll3g1p01a0g0Y/st4w4gTbs2y3jCrA2fg1ZAiQxN8=;
 b=j6IPdKfQjGaw/tKBdVzZAZdxsrhZi1IIBNhrdzSvNmnieoBdtVAhNJz/
 tA1ah9GD1h7avS81/dV9KaVuJGKJq7CJWDh7FDK2WOz6inT+fxopWfbnV
 7/cnR8mPVcc6mVe/b95AMO7Z3xVh0Y2K1AZtUtYUvlShGvJu+ISxhTGf1
 gHYUf85mGkMw9dhe3yz8wygcpKWJ8YkiETcJQl2thK+EvYyL1wQhCftye
 qAYlvPDK4crkDLW5ZBTKwpPdPKDDo/JQxQChzyzf5UqgakOJVWTEam254
 3EiL9ujblToRc4gsYyCZ4gxzjWfTplqnIPPLzpHBwQRU4w9PmSV1Kni1G
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j6IPdKfQ
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
branch HEAD: c810729fe6471aa18e2b05bde4b7fb9d872b4ca0  kernfs: fix reference to renamed function

elapsed time: 1464m

configs tested: 203
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              alldefconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20240103   gcc  
arc                   randconfig-002-20240103   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   clang
arm                      jornada720_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                          sp7021_defconfig   clang
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             alldefconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240103   gcc  
csky                  randconfig-002-20240103   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240102   gcc  
i386         buildonly-randconfig-001-20240103   clang
i386         buildonly-randconfig-002-20240102   gcc  
i386         buildonly-randconfig-002-20240103   clang
i386         buildonly-randconfig-003-20240102   gcc  
i386         buildonly-randconfig-003-20240103   clang
i386         buildonly-randconfig-004-20240102   gcc  
i386         buildonly-randconfig-004-20240103   clang
i386         buildonly-randconfig-005-20240102   gcc  
i386         buildonly-randconfig-005-20240103   clang
i386         buildonly-randconfig-006-20240102   gcc  
i386         buildonly-randconfig-006-20240103   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240103   clang
i386                  randconfig-002-20240103   clang
i386                  randconfig-003-20240103   clang
i386                  randconfig-004-20240103   clang
i386                  randconfig-005-20240103   clang
i386                  randconfig-006-20240103   clang
i386                  randconfig-011-20240103   gcc  
i386                  randconfig-012-20240103   gcc  
i386                  randconfig-013-20240103   gcc  
i386                  randconfig-014-20240103   gcc  
i386                  randconfig-015-20240103   gcc  
i386                  randconfig-016-20240103   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240103   gcc  
loongarch             randconfig-002-20240103   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                         db1xxx_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                       lemote2f_defconfig   gcc  
mips                          rm200_defconfig   gcc  
mips                         rt305x_defconfig   gcc  
mips                           xway_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240103   gcc  
nios2                 randconfig-002-20240103   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240103   gcc  
parisc                randconfig-002-20240103   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc                     ksi8560_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc                 mpc832x_rdb_defconfig   clang
powerpc                     skiroot_defconfig   clang
powerpc                     stx_gp3_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240103   gcc  
s390                  randconfig-002-20240103   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20240103   gcc  
sh                    randconfig-002-20240103   gcc  
sh                          sdk7780_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          alldefconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240103   gcc  
sparc64               randconfig-002-20240103   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240103   clang
x86_64       buildonly-randconfig-002-20240103   clang
x86_64       buildonly-randconfig-003-20240103   clang
x86_64       buildonly-randconfig-004-20240103   clang
x86_64       buildonly-randconfig-005-20240103   clang
x86_64       buildonly-randconfig-006-20240103   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20240103   clang
x86_64                randconfig-012-20240103   clang
x86_64                randconfig-013-20240103   clang
x86_64                randconfig-014-20240103   clang
x86_64                randconfig-015-20240103   clang
x86_64                randconfig-016-20240103   clang
x86_64                randconfig-071-20240103   clang
x86_64                randconfig-072-20240103   clang
x86_64                randconfig-073-20240103   clang
x86_64                randconfig-074-20240103   clang
x86_64                randconfig-075-20240103   clang
x86_64                randconfig-076-20240103   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240103   gcc  
xtensa                randconfig-002-20240103   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
