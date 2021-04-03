Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D123535BC
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Apr 2021 01:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5A2984CFA;
	Sat,  3 Apr 2021 23:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c_c_FJa-cDmK; Sat,  3 Apr 2021 23:18:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B629384CA9;
	Sat,  3 Apr 2021 23:18:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 443121BF489
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 23:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E60884CA9
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 23:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0X_Q-aQ5ykN3 for <devel@linuxdriverproject.org>;
 Sat,  3 Apr 2021 23:18:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B37484CA8
 for <devel@driverdev.osuosl.org>; Sat,  3 Apr 2021 23:18:10 +0000 (UTC)
IronPort-SDR: kx+pv2y8nZMkzvgr+GpsvX698x3+jl1KtISrYRZAUD/pVuJVWSd2AqJn5lB+TI3wPVqSodP+2P
 IlDkjga+w6Rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9943"; a="172698635"
X-IronPort-AV: E=Sophos;i="5.81,303,1610438400"; d="scan'208";a="172698635"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2021 16:18:10 -0700
IronPort-SDR: BBx1dtQ7C9jjiHwl7uP7tgH9871BF0cI0V7E74Wz9KyDeaistnFkGxydqzCYWiEFjFmH+ZH4f9
 XhUKRzjzKFbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,303,1610438400"; d="scan'208";a="417496789"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 03 Apr 2021 16:18:08 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lSpWq-0007vU-7b; Sat, 03 Apr 2021 23:18:08 +0000
Date: Sun, 04 Apr 2021 07:17:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD REGRESSION
 49df3607c64bd48afbc4ce729ee310364c134def
Message-ID: <6068f792.FOIpw+HBHKfuNkb3%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 49df3607c64bd48afbc4ce729ee310364c134def  readfile.2: new page describing readfile(2)

Error/Warning in current branch:

arch/arm64/include/asm/unistd32.h:897:11: error: array designator index (443) exceeds array bounds (443)

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- arm64-randconfig-r025-20210404
    `-- arch-arm64-include-asm-unistd32.h:error:array-designator-index-()-exceeds-array-bounds-()

elapsed time: 725m

configs tested: 174
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                     powernv_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
powerpc                      ppc40x_defconfig
mips                         tb0226_defconfig
arm                             rpc_defconfig
xtensa                       common_defconfig
powerpc                     ksi8560_defconfig
arm                          lpd270_defconfig
ia64                             allmodconfig
m68k                         amcore_defconfig
m68k                       bvme6000_defconfig
arm                       spear13xx_defconfig
powerpc                     ppa8548_defconfig
sh                          polaris_defconfig
sh                         ap325rxa_defconfig
sh                          urquell_defconfig
mips                        bcm47xx_defconfig
arm                            mps2_defconfig
sh                             sh03_defconfig
powerpc                          g5_defconfig
powerpc                      katmai_defconfig
arm                        mini2440_defconfig
sh                            migor_defconfig
arm                         socfpga_defconfig
sh                             espt_defconfig
xtensa                  nommu_kc705_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          sdk7780_defconfig
powerpc                     ep8248e_defconfig
powerpc                   bluestone_defconfig
sh                          rsk7269_defconfig
sh                           se7751_defconfig
mips                        omega2p_defconfig
arm                        mvebu_v7_defconfig
um                            kunit_defconfig
powerpc                      chrp32_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                     taishan_defconfig
mips                             allmodconfig
arm                          ep93xx_defconfig
sh                           se7712_defconfig
powerpc                     tqm8555_defconfig
arm                         mv78xx0_defconfig
xtensa                          iss_defconfig
arm                          pxa910_defconfig
mips                  cavium_octeon_defconfig
mips                     loongson1c_defconfig
arm                         palmz72_defconfig
sh                     sh7710voipgw_defconfig
sh                          rsk7201_defconfig
sh                           se7705_defconfig
mips                     decstation_defconfig
powerpc                      ppc64e_defconfig
arm                        multi_v5_defconfig
arm                         nhk8815_defconfig
powerpc                      ep88xc_defconfig
parisc                generic-32bit_defconfig
mips                         mpc30x_defconfig
sh                           sh2007_defconfig
arm                         hackkit_defconfig
arm                          moxart_defconfig
arm                           stm32_defconfig
sh                            hp6xx_defconfig
mips                           ip22_defconfig
sh                   sh7724_generic_defconfig
arm                      jornada720_defconfig
mips                         db1xxx_defconfig
h8300                               defconfig
microblaze                          defconfig
arm                          collie_defconfig
powerpc                 mpc8315_rdb_defconfig
arc                        nsim_700_defconfig
arc                           tb10x_defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210404
i386                 randconfig-a003-20210404
i386                 randconfig-a001-20210404
i386                 randconfig-a004-20210404
i386                 randconfig-a005-20210404
i386                 randconfig-a002-20210404
i386                 randconfig-a006-20210403
i386                 randconfig-a003-20210403
i386                 randconfig-a001-20210403
i386                 randconfig-a004-20210403
i386                 randconfig-a002-20210403
i386                 randconfig-a005-20210403
x86_64               randconfig-a014-20210403
x86_64               randconfig-a015-20210403
x86_64               randconfig-a011-20210403
x86_64               randconfig-a013-20210403
x86_64               randconfig-a012-20210403
x86_64               randconfig-a016-20210403
i386                 randconfig-a014-20210403
i386                 randconfig-a011-20210403
i386                 randconfig-a016-20210403
i386                 randconfig-a012-20210403
i386                 randconfig-a013-20210403
i386                 randconfig-a015-20210403
i386                 randconfig-a014-20210404
i386                 randconfig-a016-20210404
i386                 randconfig-a011-20210404
i386                 randconfig-a012-20210404
i386                 randconfig-a015-20210404
i386                 randconfig-a013-20210404
x86_64               randconfig-a004-20210404
x86_64               randconfig-a003-20210404
x86_64               randconfig-a005-20210404
x86_64               randconfig-a001-20210404
x86_64               randconfig-a002-20210404
x86_64               randconfig-a006-20210404
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210403
x86_64               randconfig-a005-20210403
x86_64               randconfig-a003-20210403
x86_64               randconfig-a001-20210403
x86_64               randconfig-a002-20210403
x86_64               randconfig-a006-20210403
x86_64               randconfig-a014-20210404
x86_64               randconfig-a015-20210404
x86_64               randconfig-a013-20210404
x86_64               randconfig-a011-20210404
x86_64               randconfig-a012-20210404
x86_64               randconfig-a016-20210404

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
