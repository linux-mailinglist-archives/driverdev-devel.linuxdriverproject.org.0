Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9E2496FAC
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jan 2022 04:03:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2453A408D4;
	Sun, 23 Jan 2022 03:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N12TQ3bR_b4H; Sun, 23 Jan 2022 03:03:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABF8A40878;
	Sun, 23 Jan 2022 03:03:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FD1D1BF3A3
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 03:03:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B4EB402FD
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 03:03:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhebHckByQDs for <devel@linuxdriverproject.org>;
 Sun, 23 Jan 2022 03:03:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB827402F8
 for <devel@driverdev.osuosl.org>; Sun, 23 Jan 2022 03:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642906994; x=1674442994;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wkfeuVzozYDFXGCWEomKfwu30PqvKE8pv0ZETp2fM5M=;
 b=jeR/ac7qkvMmwfS/s4DBmmHGiGg0ugdbQBmCqVhz7jVAyARCvbToSvAV
 runxD7/v264GaD65mpSWdO/xQJS9dtT5GhO6WXdBvkET0ixSYYPd2xLLf
 Oj3mqnIQ/2tBqBYNgpptAlHpIiglC2kkbg8L1MWwHZAiDAUpOr8jsoVSb
 11tYmNHvaGWePqi/7NUBwnLS8IN31fR658o/yKrjHT+59RyLcx6dPh2nQ
 +1Ldj7gtrjPlN1uJwSwDxvWfHqdGSfhtSRRR3FS3tCMVg7dIFHe9KL0eX
 LMFFCHQGKxxBSlGmg1LdHkESLxt8fXW93sbCGZB7I5+dpR8QWVfS1pT6+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10235"; a="244690198"
X-IronPort-AV: E=Sophos;i="5.88,309,1635231600"; d="scan'208";a="244690198"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2022 19:03:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,309,1635231600"; d="scan'208";a="673298287"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jan 2022 19:03:12 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBT9s-000Gvp-1Z; Sun, 23 Jan 2022 03:03:12 +0000
Date: Sun, 23 Jan 2022 11:02:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 2c53d2e11a6d7bcfc84914afa1a1a1772a5b12a2
Message-ID: <61ecc53e.PhfqXP8NWAIVK/vn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 2c53d2e11a6d7bcfc84914afa1a1a1772a5b12a2  moxart: fix potential use-after-free on remove path

elapsed time: 725m

configs tested: 150
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
sh                                  defconfig
sh                           se7722_defconfig
sh                          sdk7786_defconfig
ia64                      gensparse_defconfig
m68k                        stmark2_defconfig
powerpc                     pq2fads_defconfig
powerpc                    amigaone_defconfig
mips                         cobalt_defconfig
arm                         cm_x300_defconfig
powerpc                      pasemi_defconfig
arm                          badge4_defconfig
m68k                       m5475evb_defconfig
powerpc                    klondike_defconfig
arm64                            alldefconfig
powerpc                  iss476-smp_defconfig
alpha                            alldefconfig
powerpc                 mpc8540_ads_defconfig
sh                         apsh4a3a_defconfig
openrisc                            defconfig
parisc                generic-32bit_defconfig
m68k                       m5208evb_defconfig
arm                            lart_defconfig
xtensa                              defconfig
sh                           se7724_defconfig
arm                       multi_v4t_defconfig
sh                             shx3_defconfig
mips                           gcw0_defconfig
nios2                         10m50_defconfig
arm                           h5000_defconfig
arm                          exynos_defconfig
sh                          urquell_defconfig
sparc64                             defconfig
powerpc                   currituck_defconfig
h8300                    h8300h-sim_defconfig
sh                        edosk7705_defconfig
sh                            shmin_defconfig
powerpc64                        alldefconfig
arm                      integrator_defconfig
openrisc                 simple_smp_defconfig
arm                           u8500_defconfig
arm                        oxnas_v6_defconfig
xtensa                  cadence_csp_defconfig
arm                  randconfig-c002-20220123
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220123
arc                  randconfig-r043-20220123
s390                 randconfig-r044-20220123
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
arm                  randconfig-c002-20220123
riscv                randconfig-c006-20220123
powerpc              randconfig-c003-20220123
mips                 randconfig-c004-20220123
i386                          randconfig-c001
arm                  randconfig-c002-20220122
riscv                randconfig-c006-20220122
powerpc              randconfig-c003-20220122
mips                 randconfig-c004-20220122
powerpc                      obs600_defconfig
powerpc                      acadia_defconfig
powerpc                          allmodconfig
mips                            e55_defconfig
powerpc                          g5_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220123
hexagon              randconfig-r041-20220123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
