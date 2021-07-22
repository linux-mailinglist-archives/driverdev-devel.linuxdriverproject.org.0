Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D733D2475
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jul 2021 15:17:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC6C482451;
	Thu, 22 Jul 2021 13:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CzL-q_RzOff9; Thu, 22 Jul 2021 13:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 030D081BFA;
	Thu, 22 Jul 2021 13:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9076F1BF3DA
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 13:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8977940538
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 13:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id glmGXNWZt4rx for <devel@linuxdriverproject.org>;
 Thu, 22 Jul 2021 13:17:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F0F1400DF
 for <devel@driverdev.osuosl.org>; Thu, 22 Jul 2021 13:17:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="208526562"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="208526562"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 06:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="470638192"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jul 2021 06:17:34 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m6YZx-0000Jz-DM; Thu, 22 Jul 2021 13:17:33 +0000
Date: Thu, 22 Jul 2021 21:16:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 e7deeb9d79d8691f1e6c4c6707471ec3d7b9886b
Message-ID: <60f96fb2.KhdXl0nxhBkzkGqx%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: e7deeb9d79d8691f1e6c4c6707471ec3d7b9886b  driver: base: Prefer unsigned int to bare use of unsigned

elapsed time: 1233m

configs tested: 165
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210722
i386                 randconfig-c001-20210720
mips                         tb0287_defconfig
m68k                       m5475evb_defconfig
mips                      fuloong2e_defconfig
sh                        apsh4ad0a_defconfig
h8300                       h8s-sim_defconfig
mips                  cavium_octeon_defconfig
arm                          pxa168_defconfig
xtensa                generic_kc705_defconfig
powerpc                     pq2fads_defconfig
powerpc                      pasemi_defconfig
mips                           rs90_defconfig
sh                         ecovec24_defconfig
mips                           jazz_defconfig
sh                          sdk7786_defconfig
arm                           stm32_defconfig
arm                           viper_defconfig
mips                        vocore2_defconfig
sh                          rsk7201_defconfig
powerpc                         ps3_defconfig
m68k                         apollo_defconfig
sparc                            alldefconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
arm                           sama5_defconfig
arm                             mxs_defconfig
arm                       aspeed_g5_defconfig
powerpc                      ppc64e_defconfig
arm                            xcep_defconfig
powerpc                 mpc834x_mds_defconfig
sh                            titan_defconfig
arc                        nsim_700_defconfig
riscv                          rv32_defconfig
nds32                            alldefconfig
sh                          rsk7269_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     asp8347_defconfig
microblaze                          defconfig
powerpc                  mpc866_ads_defconfig
mips                     loongson2k_defconfig
sh                ecovec24-romimage_defconfig
arm                          ep93xx_defconfig
powerpc                         wii_defconfig
sh                           se7343_defconfig
m68k                        m5407c3_defconfig
arm                        realview_defconfig
arm                            dove_defconfig
arm                  colibri_pxa270_defconfig
openrisc                 simple_smp_defconfig
arm                         hackkit_defconfig
sh                          kfr2r09_defconfig
arm                          badge4_defconfig
nios2                               defconfig
powerpc                   motionpro_defconfig
sh                             espt_defconfig
arm                          collie_defconfig
arm                           u8500_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
arm                              alldefconfig
nds32                               defconfig
arm                        spear6xx_defconfig
powerpc                   currituck_defconfig
arm                      integrator_defconfig
arm                       omap2plus_defconfig
arm                            qcom_defconfig
arm                           h3600_defconfig
arm                         lpc32xx_defconfig
arm                       spear13xx_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210720
x86_64               randconfig-a006-20210720
x86_64               randconfig-a001-20210720
x86_64               randconfig-a005-20210720
x86_64               randconfig-a004-20210720
x86_64               randconfig-a002-20210720
x86_64               randconfig-a003-20210722
x86_64               randconfig-a006-20210722
x86_64               randconfig-a001-20210722
x86_64               randconfig-a005-20210722
x86_64               randconfig-a004-20210722
x86_64               randconfig-a002-20210722
i386                 randconfig-a005-20210722
i386                 randconfig-a003-20210722
i386                 randconfig-a004-20210722
i386                 randconfig-a002-20210722
i386                 randconfig-a001-20210722
i386                 randconfig-a006-20210722
i386                 randconfig-a005-20210719
i386                 randconfig-a004-20210719
i386                 randconfig-a006-20210719
i386                 randconfig-a001-20210719
i386                 randconfig-a003-20210719
i386                 randconfig-a002-20210719
i386                 randconfig-a016-20210722
i386                 randconfig-a013-20210722
i386                 randconfig-a012-20210722
i386                 randconfig-a011-20210722
i386                 randconfig-a014-20210722
i386                 randconfig-a015-20210722
i386                 randconfig-a016-20210720
i386                 randconfig-a013-20210720
i386                 randconfig-a012-20210720
i386                 randconfig-a014-20210720
i386                 randconfig-a011-20210720
i386                 randconfig-a015-20210720
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                      rhel-8.3-kbuiltin

clang tested configs:
x86_64               randconfig-c001-20210722
x86_64               randconfig-b001-20210720
x86_64               randconfig-b001-20210722
x86_64               randconfig-a011-20210722
x86_64               randconfig-a016-20210722
x86_64               randconfig-a013-20210722
x86_64               randconfig-a014-20210722
x86_64               randconfig-a012-20210722
x86_64               randconfig-a015-20210722

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
