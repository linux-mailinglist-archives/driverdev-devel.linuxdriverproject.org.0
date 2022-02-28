Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D444C7876
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Feb 2022 20:05:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41875405E3;
	Mon, 28 Feb 2022 19:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nw-48csayhsq; Mon, 28 Feb 2022 19:05:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6874140124;
	Mon, 28 Feb 2022 19:05:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A4631BF2CC
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 19:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 008D840865
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 19:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWT9ZuXre5rX for <devel@linuxdriverproject.org>;
 Mon, 28 Feb 2022 19:05:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15BED403C7
 for <devel@driverdev.osuosl.org>; Mon, 28 Feb 2022 19:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646075121; x=1677611121;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sspoMm+rftlO/Ua50PTtdwNEejqekyJSt3Pm9yv36xQ=;
 b=ECBbAlP7KIf7XQjdp1gu5meVnVS/4Cl0dA4ploFqxXl7vKbdztR1Wk/t
 7+iYLj8a5Q86gawYMHdO2w+AUGuAJ9RroLafHc8pTQKk0jCow+0Ddq+su
 FMWnPm8Mtw96dzhzCRXrYoYnGrB78MV8+Im3zjSb2HUY3Wym4H5+nLrKo
 97EvxR1vHfBxdVGaH+TAksp+DdkNoBps5sINRWCHFjMeh1RnCK9ON6sJB
 lZunB5RjqfLoPci+U380uQciZwVyicER423l3nDPbsAIU0DAF9kNaAp8G
 uLf+ywTmVO/WTbwUKIF+q9fC5PteqDuOnU37l8OyPyvFYFeUKEuTQxmKq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="316176392"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="316176392"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 11:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="534572297"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2022 11:05:18 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOlKf-0007iL-U5; Mon, 28 Feb 2022 19:05:17 +0000
Date: Tue, 01 Mar 2022 03:05:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 4a248f85b3dd8e010ff8335755c927130e9b0764
Message-ID: <621d1ce8.VSUnW+MZrFA2/t85%lkp@intel.com>
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
branch HEAD: 4a248f85b3dd8e010ff8335755c927130e9b0764  Merge 5.17-rc6 into driver-core-next

elapsed time: 721m

configs tested: 187
configs skipped: 3

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
arm                          lpd270_defconfig
m68k                           sun3_defconfig
arm                            zeus_defconfig
mips                           ip32_defconfig
mips                      loongson3_defconfig
powerpc                      pcm030_defconfig
m68k                       m5208evb_defconfig
openrisc                    or1ksim_defconfig
arm                        trizeps4_defconfig
arm                          pxa3xx_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                       m5249evb_defconfig
arc                         haps_hs_defconfig
powerpc                      cm5200_defconfig
arc                        nsim_700_defconfig
xtensa                           alldefconfig
arm                       aspeed_g5_defconfig
sparc                       sparc64_defconfig
powerpc                    amigaone_defconfig
powerpc                     sequoia_defconfig
alpha                               defconfig
sh                          rsk7264_defconfig
openrisc                 simple_smp_defconfig
arc                     haps_hs_smp_defconfig
arc                           tb10x_defconfig
arm                           stm32_defconfig
riscv                            allyesconfig
arm                        clps711x_defconfig
sh                 kfr2r09-romimage_defconfig
um                                  defconfig
powerpc                       maple_defconfig
powerpc                   currituck_defconfig
m68k                             allyesconfig
powerpc                    adder875_defconfig
mips                      fuloong2e_defconfig
sh                         microdev_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
xtensa                          iss_defconfig
arm                      integrator_defconfig
m68k                                defconfig
sh                      rts7751r2d1_defconfig
sh                          polaris_defconfig
sh                             sh03_defconfig
xtensa                    smp_lx200_defconfig
sh                             espt_defconfig
mips                            ar7_defconfig
arc                        vdk_hs38_defconfig
arm                             ezx_defconfig
sh                           se7206_defconfig
nds32                               defconfig
s390                       zfcpdump_defconfig
powerpc                      mgcoge_defconfig
arm                            pleb_defconfig
arm                        multi_v7_defconfig
arc                          axs101_defconfig
powerpc                      chrp32_defconfig
m68k                         amcore_defconfig
powerpc                     taishan_defconfig
sh                     sh7710voipgw_defconfig
m68k                        mvme16x_defconfig
sh                          urquell_defconfig
powerpc                     rainier_defconfig
arm                          pxa910_defconfig
arm                  randconfig-c002-20220228
arm                  randconfig-c002-20220227
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
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
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64               randconfig-a011-20220228
x86_64               randconfig-a015-20220228
x86_64               randconfig-a014-20220228
x86_64               randconfig-a013-20220228
x86_64               randconfig-a016-20220228
x86_64               randconfig-a012-20220228
x86_64                        randconfig-a015
i386                 randconfig-a011-20220228
i386                 randconfig-a012-20220228
i386                 randconfig-a013-20220228
i386                 randconfig-a014-20220228
i386                 randconfig-a015-20220228
i386                 randconfig-a016-20220228
s390                 randconfig-r044-20220228
arc                  randconfig-r043-20220228
arc                  randconfig-r043-20220227
riscv                randconfig-r042-20220228
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
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
mips                          rm200_defconfig
hexagon                          alldefconfig
mips                   sb1250_swarm_defconfig
mips                       rbtx49xx_defconfig
mips                        bcm63xx_defconfig
mips                      bmips_stb_defconfig
powerpc                       ebony_defconfig
powerpc                      ppc44x_defconfig
riscv                    nommu_virt_defconfig
powerpc                     ksi8560_defconfig
powerpc                        icon_defconfig
mips                      maltaaprp_defconfig
arm                         s5pv210_defconfig
powerpc                      pmac32_defconfig
powerpc                          allmodconfig
arm                    vt8500_v6_v7_defconfig
arm                         mv78xx0_defconfig
arm                         bcm2835_defconfig
riscv                             allnoconfig
arm                       mainstone_defconfig
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
hexagon              randconfig-r045-20220228
hexagon              randconfig-r041-20220228
hexagon              randconfig-r045-20220227
hexagon              randconfig-r041-20220227
riscv                randconfig-r042-20220227
s390                 randconfig-r044-20220227

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
