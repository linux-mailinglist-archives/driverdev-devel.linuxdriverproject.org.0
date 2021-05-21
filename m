Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7919638BD04
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 May 2021 05:50:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC6E78455F;
	Fri, 21 May 2021 03:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9xlctuApN4p; Fri, 21 May 2021 03:50:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB8F84523;
	Fri, 21 May 2021 03:50:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 442701C1162
 for <devel@linuxdriverproject.org>; Fri, 21 May 2021 03:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33A3A84523
 for <devel@linuxdriverproject.org>; Fri, 21 May 2021 03:50:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yCsEbJK3LDsY for <devel@linuxdriverproject.org>;
 Fri, 21 May 2021 03:50:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6CA284437
 for <devel@driverdev.osuosl.org>; Fri, 21 May 2021 03:50:34 +0000 (UTC)
IronPort-SDR: PIQDaA6MB9FUo7JFPlPFAL1CN9zj8GYq1oSdemQnbcjINEPCjHbJtH0jU8Uacuer1LvHbmCxRF
 cRRxyJL9NrGQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="201433900"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="201433900"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 20:50:32 -0700
IronPort-SDR: N8LXISLRSdRCXcoukFhBFXCwRA/HMjRJwlZWpZWfLCudbOOLt3g8jOuA9Oc5v888mogWBOHfKV
 4ep8A/AILH9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="474330581"
Received: from lkp-server02.sh.intel.com (HELO 1b329be5b008) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 20 May 2021 20:50:31 -0700
Received: from kbuild by 1b329be5b008 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ljwBD-0000vO-0R; Fri, 21 May 2021 03:50:31 +0000
Date: Fri, 21 May 2021 11:49:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 e0112a7c9e847ada15a631b88e279d547e8f26a7
Message-ID: <60a72dde.8e+h4l0WNL650Lkr%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: e0112a7c9e847ada15a631b88e279d547e8f26a7  staging: emxx_udc: fix loop in _nbu2ss_nuke()

elapsed time: 722m

configs tested: 181
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
um                               allmodconfig
riscv                            allyesconfig
mips                             allyesconfig
um                               allyesconfig
mips                             allmodconfig
riscv                            allmodconfig
powerpc                          allyesconfig
s390                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
sparc                            allyesconfig
arc                              allyesconfig
nios2                            allyesconfig
alpha                            allyesconfig
arm                  colibri_pxa300_defconfig
powerpc                      mgcoge_defconfig
mips                      bmips_stb_defconfig
mips                        jmr3927_defconfig
sh                           se7343_defconfig
powerpc                  mpc885_ads_defconfig
mips                           gcw0_defconfig
powerpc                 mpc834x_itx_defconfig
arm                           sunxi_defconfig
mips                malta_qemu_32r6_defconfig
mips                           ci20_defconfig
arc                        nsimosci_defconfig
openrisc                  or1klitex_defconfig
arc                     haps_hs_smp_defconfig
arm                        mvebu_v5_defconfig
arm                     am200epdkit_defconfig
mips                          rb532_defconfig
powerpc                         ps3_defconfig
powerpc                     tqm5200_defconfig
m68k                       m5275evb_defconfig
sh                          lboxre2_defconfig
arm                            qcom_defconfig
powerpc                    klondike_defconfig
arm                        realview_defconfig
mips                        qi_lb60_defconfig
mips                           rs90_defconfig
sh                           se7721_defconfig
arm                          moxart_defconfig
m68k                       m5208evb_defconfig
sh                   secureedge5410_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     skiroot_defconfig
mips                           ip27_defconfig
powerpc                      ep88xc_defconfig
arm                        spear6xx_defconfig
arm                       aspeed_g5_defconfig
arm                         shannon_defconfig
powerpc                       maple_defconfig
mips                       capcella_defconfig
powerpc                     tqm8560_defconfig
powerpc                     tqm8541_defconfig
powerpc                      pcm030_defconfig
m68k                       m5475evb_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                    mvme5100_defconfig
powerpc                     pq2fads_defconfig
xtensa                    xip_kc705_defconfig
sparc                       sparc64_defconfig
arm                         s5pv210_defconfig
powerpc                 mpc8315_rdb_defconfig
sh                           se7722_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                         apsh4a3a_defconfig
arm                       omap2plus_defconfig
arc                         haps_hs_defconfig
m68k                          sun3x_defconfig
powerpc                     tqm8555_defconfig
mips                      pic32mzda_defconfig
arm                           stm32_defconfig
arm                         cm_x300_defconfig
mips                           ip28_defconfig
powerpc                     asp8347_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      makalu_defconfig
powerpc                     rainier_defconfig
arm                         lubbock_defconfig
arm                            zeus_defconfig
parisc                generic-64bit_defconfig
arm                           viper_defconfig
mips                         tb0287_defconfig
arm                       aspeed_g4_defconfig
mips                      malta_kvm_defconfig
arm                       netwinder_defconfig
arm                         palmz72_defconfig
arm                        vexpress_defconfig
powerpc                       ebony_defconfig
arm                             ezx_defconfig
arm                  colibri_pxa270_defconfig
arm                         mv78xx0_defconfig
powerpc                     mpc83xx_defconfig
powerpc                      chrp32_defconfig
nios2                         3c120_defconfig
nds32                             allnoconfig
sh                               j2_defconfig
sh                             espt_defconfig
s390                       zfcpdump_defconfig
arc                                 defconfig
powerpc                        warp_defconfig
powerpc                     tqm8548_defconfig
mips                            gpr_defconfig
um                                  defconfig
powerpc                      walnut_defconfig
arc                    vdk_hs38_smp_defconfig
openrisc                 simple_smp_defconfig
mips                        vocore2_defconfig
arm                     davinci_all_defconfig
sh                          landisk_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
nios2                               defconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210520
x86_64               randconfig-a006-20210520
x86_64               randconfig-a005-20210520
x86_64               randconfig-a003-20210520
x86_64               randconfig-a004-20210520
x86_64               randconfig-a002-20210520
i386                 randconfig-a001-20210520
i386                 randconfig-a005-20210520
i386                 randconfig-a002-20210520
i386                 randconfig-a006-20210520
i386                 randconfig-a004-20210520
i386                 randconfig-a003-20210520
i386                 randconfig-a001-20210521
i386                 randconfig-a005-20210521
i386                 randconfig-a002-20210521
i386                 randconfig-a006-20210521
i386                 randconfig-a003-20210521
i386                 randconfig-a004-20210521
i386                 randconfig-a016-20210520
i386                 randconfig-a011-20210520
i386                 randconfig-a015-20210520
i386                 randconfig-a012-20210520
i386                 randconfig-a014-20210520
i386                 randconfig-a013-20210520
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                                allnoconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210521
x86_64               randconfig-b001-20210520
x86_64               randconfig-a013-20210520
x86_64               randconfig-a014-20210520
x86_64               randconfig-a012-20210520
x86_64               randconfig-a016-20210520
x86_64               randconfig-a015-20210520
x86_64               randconfig-a011-20210520

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
