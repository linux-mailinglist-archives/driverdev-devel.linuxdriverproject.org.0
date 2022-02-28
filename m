Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D34C7D9A
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Feb 2022 23:40:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45AE9405F8;
	Mon, 28 Feb 2022 22:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5rE4ssMPE5j; Mon, 28 Feb 2022 22:40:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7150C4014D;
	Mon, 28 Feb 2022 22:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41EB51BF304
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 22:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C3AE82538
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 22:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DocS6_lSs0gd for <devel@linuxdriverproject.org>;
 Mon, 28 Feb 2022 22:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A89508254A
 for <devel@driverdev.osuosl.org>; Mon, 28 Feb 2022 22:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646088032; x=1677624032;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lO7BLmnhEwkB0F2GcNC6N2Uc+pD1fbC9P8Lh5WtL0QM=;
 b=YBSAOsKIIpKipb34nHxDAs/TyOipWKij1dgUTbxuo2xY0GJ9lp+dIbiR
 VGfOFgdV0piu0sxhPTQCtXGwTrJj3VA5A/GGXqRU6llyIuAvCHcDVEREm
 6S2mrabSmiImeJUm3lNtAoav69lbuji0SCCUQqYQWBC9MLGJe16Ig1B9J
 jXa4Z1GPMJXOZOOnO4KATga+97jUGxftaeCW1tNUm/nzsB2ORK1RzDC0N
 +yPdhdWlFa6Lutxe73wyg9S78xLiimKKEqFexrs97/dG2E6dOb1DdCmx+
 WRlQlr7PmO29dQ9/ceQ8qgdAcesywHhyI7+aRWg0IZGFoVASgCkOKCxyC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="232974050"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="232974050"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 14:40:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="510269977"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 28 Feb 2022 14:40:30 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOogv-0007qI-JP; Mon, 28 Feb 2022 22:40:29 +0000
Date: Tue, 01 Mar 2022 06:40:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 dbbe23c31922ff773a0847a5c1d3c41050fe1c67
Message-ID: <621d4f45.I9vZvj6USyhSRQct%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: dbbe23c31922ff773a0847a5c1d3c41050fe1c67  Merge 5.17-rc6 into staging-next

elapsed time: 722m

configs tested: 179
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
i386                 randconfig-c001-20220228
powerpc                    sam440ep_defconfig
sparc                            allyesconfig
mips                           xway_defconfig
sh                        sh7785lcr_defconfig
mips                         db1xxx_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                ecovec24-romimage_defconfig
m68k                            mac_defconfig
sh                     sh7710voipgw_defconfig
powerpc                      bamboo_defconfig
parisc                generic-32bit_defconfig
powerpc                      pcm030_defconfig
m68k                       m5208evb_defconfig
openrisc                    or1ksim_defconfig
arm                        trizeps4_defconfig
arc                         haps_hs_defconfig
powerpc                      cm5200_defconfig
arc                        nsim_700_defconfig
xtensa                           alldefconfig
powerpc                    amigaone_defconfig
powerpc                     sequoia_defconfig
alpha                               defconfig
powerpc                       maple_defconfig
powerpc                   currituck_defconfig
m68k                             allyesconfig
m68k                        mvme16x_defconfig
sh                           se7619_defconfig
powerpc                    adder875_defconfig
mips                      fuloong2e_defconfig
sh                         microdev_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
nios2                               defconfig
sh                        sh7757lcr_defconfig
powerpc                   motionpro_defconfig
sh                               alldefconfig
um                           x86_64_defconfig
sh                      rts7751r2d1_defconfig
sh                          polaris_defconfig
sh                             sh03_defconfig
xtensa                    smp_lx200_defconfig
mips                            ar7_defconfig
sh                             espt_defconfig
xtensa                       common_defconfig
arm                        oxnas_v6_defconfig
sh                           se7206_defconfig
arc                        vdk_hs38_defconfig
nds32                               defconfig
arm                             ezx_defconfig
openrisc                         alldefconfig
sh                           se7751_defconfig
powerpc                 linkstation_defconfig
arm                          badge4_defconfig
arc                          axs101_defconfig
powerpc                      chrp32_defconfig
powerpc                      mgcoge_defconfig
m68k                         amcore_defconfig
powerpc                     taishan_defconfig
sh                          urquell_defconfig
powerpc                     rainier_defconfig
arm                          pxa910_defconfig
ia64                             allmodconfig
m68k                         apollo_defconfig
arm                        spear6xx_defconfig
m68k                          amiga_defconfig
arm                           viper_defconfig
arm                  randconfig-c002-20220228
arm                  randconfig-c002-20220227
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a011-20220228
x86_64               randconfig-a015-20220228
x86_64               randconfig-a014-20220228
x86_64               randconfig-a013-20220228
x86_64               randconfig-a016-20220228
x86_64               randconfig-a012-20220228
i386                 randconfig-a016-20220228
i386                 randconfig-a012-20220228
i386                 randconfig-a015-20220228
i386                 randconfig-a011-20220228
i386                 randconfig-a013-20220228
i386                 randconfig-a014-20220228
riscv                randconfig-r042-20220228
s390                 randconfig-r044-20220228
arc                  randconfig-r043-20220228
arc                  randconfig-r043-20220227
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc              randconfig-c003-20220227
x86_64                        randconfig-c007
arm                  randconfig-c002-20220227
mips                 randconfig-c004-20220227
s390                 randconfig-c005-20220227
i386                          randconfig-c001
riscv                randconfig-c006-20220227
arm                          imote2_defconfig
hexagon                          alldefconfig
arm                          collie_defconfig
mips                           mtx1_defconfig
powerpc                     pseries_defconfig
powerpc                     tqm8560_defconfig
riscv                    nommu_virt_defconfig
powerpc                     ksi8560_defconfig
powerpc                        icon_defconfig
arm                       imx_v4_v5_defconfig
mips                      bmips_stb_defconfig
powerpc                      pmac32_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     mpc5200_defconfig
arm                           sama7_defconfig
arm                         s5pv210_defconfig
powerpc                     tqm5200_defconfig
x86_64               randconfig-a003-20220228
x86_64               randconfig-a005-20220228
x86_64               randconfig-a002-20220228
x86_64               randconfig-a006-20220228
x86_64               randconfig-a001-20220228
x86_64               randconfig-a004-20220228
i386                 randconfig-a002-20220228
i386                 randconfig-a001-20220228
i386                 randconfig-a005-20220228
i386                 randconfig-a003-20220228
i386                 randconfig-a006-20220228
i386                 randconfig-a004-20220228
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220227
hexagon              randconfig-r045-20220228
riscv                randconfig-r042-20220227
s390                 randconfig-r044-20220227
hexagon              randconfig-r041-20220227
hexagon              randconfig-r041-20220228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
