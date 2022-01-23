Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7C0496FAA
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jan 2022 04:03:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6616408AE;
	Sun, 23 Jan 2022 03:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7o3r4s-IFmsy; Sun, 23 Jan 2022 03:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D84740896;
	Sun, 23 Jan 2022 03:03:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 602791BF3A3
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 03:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E14740878
 for <devel@linuxdriverproject.org>; Sun, 23 Jan 2022 03:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGEr08Eq8KsZ for <devel@linuxdriverproject.org>;
 Sun, 23 Jan 2022 03:03:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2948402EC
 for <devel@driverdev.osuosl.org>; Sun, 23 Jan 2022 03:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642906994; x=1674442994;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dMLMr5+AGbt/NqTf4ST4bInKRr38ziEzSiN+lY9lb9U=;
 b=R2j03PDIYkLYO5n6bvHDs0n9RAp0VXKaNTt6TdNMoMMbGK8g/UEgcveL
 HrMdOkpKNmM2vCuNWnuredXFX3AMo/7yuqRlGwuQmr5YovEBeJYQuxjAi
 3eE0x2BLEZNtgSdQf9BJfaNU9yNyqZXGYCVyxFjlAAWE6c0SPHNNQcaKN
 NPGRd4F8XEOaRD12THCg+6sGIbQYC6VGQ3WtaFFTI/zzj5X0BxhmtOkW5
 iMn7SgYgxqy1uZn9q/3TO5qEQ8U1K+YUylX0Gna70xdhJKLMeWDpNMfjr
 rhPZcR/ImK+JNpVQWR0ieOyyqaeUWgxrVJRH1s2M50PRsjrd94MjSeHL5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10235"; a="226538411"
X-IronPort-AV: E=Sophos;i="5.88,309,1635231600"; d="scan'208";a="226538411"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2022 19:03:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,309,1635231600"; d="scan'208";a="579992970"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jan 2022 19:03:12 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBT9s-000Gvn-0y; Sun, 23 Jan 2022 03:03:12 +0000
Date: Sun, 23 Jan 2022 11:02:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:module_ns] BUILD SUCCESS
 b39a8bd86fa65ef5523601f82ca5731e0f64504c
Message-ID: <61ecc538.rCn3Ln6XFLChn9TG%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git module_ns
branch HEAD: b39a8bd86fa65ef5523601f82ca5731e0f64504c  export: fix string handling of namespace in EXPORT_SYMBOL_NS

elapsed time: 724m

configs tested: 146
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
powerpc                 mpc8540_ads_defconfig
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
