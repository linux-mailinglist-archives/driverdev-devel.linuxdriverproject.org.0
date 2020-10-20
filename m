Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 049152941BA
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 19:50:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3AEC02E1EF;
	Tue, 20 Oct 2020 17:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oeidMpYPxd-X; Tue, 20 Oct 2020 17:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74DF12E1E0;
	Tue, 20 Oct 2020 17:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C58C01BF2AB
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 17:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF8768682C
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 17:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjXOlpi0pfyd for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 17:49:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5276867FF
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 17:49:49 +0000 (UTC)
IronPort-SDR: ufZPOpSmL0qttX+u4mtJU9HxRQpbKVC6aSSXGYYYdQh33tWMFJdWhS0Y01LjsP9Ymx12ZeBhsw
 c5+1E19l5K/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="251949253"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="251949253"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 10:49:49 -0700
IronPort-SDR: RoPglduUcr1p8znsnV6uQLmmB/VX/xc6AlhMXzdyPNM//TPy2t1v45YmHfn3nLdqBHwLkP0RiY
 UzwMoS+9dxRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="347957977"
Received: from lkp-server02.sh.intel.com (HELO 5d721fc6b6d3) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 20 Oct 2020 10:49:48 -0700
Received: from kbuild by 5d721fc6b6d3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kUvlb-00008y-FA; Tue, 20 Oct 2020 17:49:47 +0000
Date: Wed, 21 Oct 2020 01:49:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 02166a777a594be49bb1cc432502fdf2ae78db6a
Message-ID: <5f8f232b.7+QbpyNRNLefVLCb%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: 02166a777a594be49bb1cc432502fdf2ae78db6a  staging: qlge: remove extra blank lines

elapsed time: 720m

configs tested: 145
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           ip28_defconfig
m68k                          amiga_defconfig
sh                   sh7770_generic_defconfig
powerpc                        warp_defconfig
mips                      maltasmvp_defconfig
ia64                                defconfig
sh                        edosk7760_defconfig
arm                        realview_defconfig
i386                                defconfig
mips                       rbtx49xx_defconfig
powerpc                       maple_defconfig
um                           x86_64_defconfig
sh                            titan_defconfig
mips                          rb532_defconfig
sh                          lboxre2_defconfig
powerpc                   motionpro_defconfig
m68k                          sun3x_defconfig
arm                        vexpress_defconfig
m68k                        mvme147_defconfig
arm                          pxa910_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                         rt305x_defconfig
arm                        clps711x_defconfig
sh                          kfr2r09_defconfig
powerpc                    gamecube_defconfig
arm64                            alldefconfig
arm                        keystone_defconfig
riscv                          rv32_defconfig
c6x                        evmc6474_defconfig
sh                           se7721_defconfig
mips                         tb0287_defconfig
m68k                            q40_defconfig
riscv                            allyesconfig
powerpc                     ep8248e_defconfig
powerpc                      ppc6xx_defconfig
xtensa                              defconfig
powerpc                    sam440ep_defconfig
nios2                            alldefconfig
arm                         assabet_defconfig
arm                            mps2_defconfig
nios2                               defconfig
arm                         ebsa110_defconfig
powerpc                      pcm030_defconfig
csky                                defconfig
powerpc64                        alldefconfig
mips                       lemote2f_defconfig
openrisc                         alldefconfig
arm                           omap1_defconfig
openrisc                 simple_smp_defconfig
mips                        vocore2_defconfig
um                             i386_defconfig
powerpc                      makalu_defconfig
mips                        nlm_xlp_defconfig
arc                        nsimosci_defconfig
powerpc                 linkstation_defconfig
xtensa                    smp_lx200_defconfig
powerpc                     skiroot_defconfig
mips                     cu1830-neo_defconfig
arm                         lpc18xx_defconfig
powerpc                      ep88xc_defconfig
x86_64                           alldefconfig
sh                        sh7757lcr_defconfig
sh                           se7722_defconfig
sh                          urquell_defconfig
arm                           stm32_defconfig
powerpc                 canyonlands_defconfig
arm                       aspeed_g4_defconfig
arm                          moxart_defconfig
powerpc                     rainier_defconfig
arm                          badge4_defconfig
m68k                          multi_defconfig
sh                          polaris_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                       imx_v6_v7_defconfig
mips                        nlm_xlr_defconfig
riscv                               defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20201020
i386                 randconfig-a005-20201020
i386                 randconfig-a003-20201020
i386                 randconfig-a001-20201020
i386                 randconfig-a006-20201020
i386                 randconfig-a004-20201020
x86_64               randconfig-a011-20201020
x86_64               randconfig-a013-20201020
x86_64               randconfig-a016-20201020
x86_64               randconfig-a015-20201020
x86_64               randconfig-a012-20201020
x86_64               randconfig-a014-20201020
i386                 randconfig-a016-20201020
i386                 randconfig-a014-20201020
i386                 randconfig-a015-20201020
i386                 randconfig-a013-20201020
i386                 randconfig-a012-20201020
i386                 randconfig-a011-20201020
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20201020
x86_64               randconfig-a002-20201020
x86_64               randconfig-a003-20201020
x86_64               randconfig-a006-20201020
x86_64               randconfig-a005-20201020
x86_64               randconfig-a004-20201020

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
