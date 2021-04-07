Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6DA35761F
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Apr 2021 22:33:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 359064036A;
	Wed,  7 Apr 2021 20:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VL2dGW_V0br; Wed,  7 Apr 2021 20:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 420CF40295;
	Wed,  7 Apr 2021 20:33:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AF191BF232
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 20:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4566D41904
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 20:32:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAFME4zMhXz8 for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 20:32:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F56B41863
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 20:32:46 +0000 (UTC)
IronPort-SDR: aR1drhgEgzuEz+Z9uU1eh73bQcjJfXAkO7dLvmfjm+yCjz5LPuTQaNsaLrmCIdaxKJPuXYHtXb
 xWFjYxf4iRhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193435793"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="193435793"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 13:32:45 -0700
IronPort-SDR: AqLoYndCT4Fz4IprmiSiwH7DYWqX2oRZhXBfNNBRD3FP1xe4brerCMAN43LHKRBuRMVdWtZgt8
 OrTfuvoXriRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="458514193"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 07 Apr 2021 13:32:44 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUEqx-000Dn2-Ej; Wed, 07 Apr 2021 20:32:43 +0000
Date: Thu, 08 Apr 2021 04:32:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 6470a8206a10cae1f18a3e5a95dde2b364a06e10
Message-ID: <606e16cb.XeV3WD5K5LSpEoV+%lkp@intel.com>
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
branch HEAD: 6470a8206a10cae1f18a3e5a95dde2b364a06e10  Merge tag 'iio-for-5.13b-take2' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-next

elapsed time: 726m

configs tested: 214
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
riscv                            allyesconfig
i386                             allyesconfig
nds32                            alldefconfig
powerpc                   motionpro_defconfig
powerpc                 linkstation_defconfig
mips                       capcella_defconfig
arm                          pxa168_defconfig
nios2                               defconfig
arc                          axs101_defconfig
alpha                            alldefconfig
s390                                defconfig
mips                        nlm_xlp_defconfig
m68k                                defconfig
powerpc                    amigaone_defconfig
arc                      axs103_smp_defconfig
mips                             allyesconfig
mips                        bcm47xx_defconfig
powerpc                 mpc834x_itx_defconfig
mips                  maltasmvp_eva_defconfig
arm                       netwinder_defconfig
arm                     am200epdkit_defconfig
mips                          rb532_defconfig
powerpc                   currituck_defconfig
xtensa                         virt_defconfig
arm                         lubbock_defconfig
powerpc                     tqm8555_defconfig
s390                             alldefconfig
sh                           se7619_defconfig
powerpc                 mpc836x_mds_defconfig
mips                         tb0287_defconfig
arm                         lpc18xx_defconfig
powerpc                      ep88xc_defconfig
arm                     eseries_pxa_defconfig
sparc                            alldefconfig
sparc                       sparc32_defconfig
mips                           ip28_defconfig
sh                               alldefconfig
powerpc               mpc834x_itxgp_defconfig
sh                             espt_defconfig
powerpc64                           defconfig
powerpc                    mvme5100_defconfig
m68k                          sun3x_defconfig
arm                         mv78xx0_defconfig
m68k                         amcore_defconfig
sh                            hp6xx_defconfig
arc                     nsimosci_hs_defconfig
arm                             pxa_defconfig
arm                          iop32x_defconfig
sh                           sh2007_defconfig
mips                           ip27_defconfig
powerpc                           allnoconfig
sh                      rts7751r2d1_defconfig
sh                          rsk7264_defconfig
powerpc                          allyesconfig
mips                     loongson1c_defconfig
sh                           se7780_defconfig
s390                       zfcpdump_defconfig
nios2                         3c120_defconfig
m68k                        m5407c3_defconfig
powerpc                    klondike_defconfig
powerpc                      ppc44x_defconfig
sh                          sdk7780_defconfig
powerpc                      arches_defconfig
csky                             alldefconfig
powerpc                     mpc5200_defconfig
arm                       omap2plus_defconfig
arm                        mvebu_v7_defconfig
arm                        neponset_defconfig
powerpc                        fsp2_defconfig
arm                           sunxi_defconfig
sh                          urquell_defconfig
sh                          kfr2r09_defconfig
m68k                        mvme16x_defconfig
xtensa                  audio_kc705_defconfig
xtensa                          iss_defconfig
arm                        spear3xx_defconfig
powerpc                     pq2fads_defconfig
mips                           rs90_defconfig
sh                             shx3_defconfig
arm                            qcom_defconfig
arm                            hisi_defconfig
ia64                            zx1_defconfig
mips                           ci20_defconfig
arm                  colibri_pxa300_defconfig
arm                         axm55xx_defconfig
mips                      malta_kvm_defconfig
arm                      footbridge_defconfig
arm                            zeus_defconfig
openrisc                  or1klitex_defconfig
arm                         at91_dt_defconfig
sh                   rts7751r2dplus_defconfig
arm                          badge4_defconfig
ia64                             allyesconfig
arm                          pxa910_defconfig
xtensa                           alldefconfig
mips                      loongson3_defconfig
h8300                     edosk2674_defconfig
arm                       versatile_defconfig
mips                      pistachio_defconfig
sh                          rsk7201_defconfig
sh                               j2_defconfig
sh                            titan_defconfig
arm                           omap1_defconfig
powerpc                       maple_defconfig
arm                        shmobile_defconfig
mips                        maltaup_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                     powernv_defconfig
powerpc                 mpc8313_rdb_defconfig
ia64                        generic_defconfig
sh                              ul2_defconfig
xtensa                generic_kc705_defconfig
powerpc                    adder875_defconfig
mips                        jmr3927_defconfig
arm                             rpc_defconfig
arm                        vexpress_defconfig
powerpc                          allmodconfig
powerpc                 mpc834x_mds_defconfig
sh                           se7721_defconfig
arm                         cm_x300_defconfig
arm                         bcm2835_defconfig
m68k                        m5307c3_defconfig
arm                      tct_hammer_defconfig
arc                                 defconfig
powerpc                   lite5200b_defconfig
ia64                          tiger_defconfig
mips                            gpr_defconfig
powerpc                        warp_defconfig
powerpc                      katmai_defconfig
arm                        mini2440_defconfig
powerpc                      acadia_defconfig
mips                           gcw0_defconfig
m68k                       m5249evb_defconfig
sh                        sh7763rdp_defconfig
h8300                               defconfig
powerpc                         ps3_defconfig
x86_64                           alldefconfig
arm                            xcep_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          landisk_defconfig
powerpc                       eiger_defconfig
arm                        trizeps4_defconfig
arm                     davinci_all_defconfig
powerpc                      mgcoge_defconfig
powerpc                         wii_defconfig
powerpc                     stx_gp3_defconfig
sh                          rsk7203_defconfig
powerpc                      pcm030_defconfig
arm                       multi_v4t_defconfig
arm                       spear13xx_defconfig
riscv                          rv32_defconfig
sh                         ap325rxa_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      bamboo_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allmodconfig
i386                 randconfig-a006-20210407
i386                 randconfig-a003-20210407
i386                 randconfig-a001-20210407
i386                 randconfig-a004-20210407
i386                 randconfig-a002-20210407
i386                 randconfig-a005-20210407
x86_64               randconfig-a014-20210407
x86_64               randconfig-a015-20210407
x86_64               randconfig-a013-20210407
x86_64               randconfig-a011-20210407
x86_64               randconfig-a012-20210407
x86_64               randconfig-a016-20210407
i386                 randconfig-a014-20210407
i386                 randconfig-a011-20210407
i386                 randconfig-a016-20210407
i386                 randconfig-a012-20210407
i386                 randconfig-a015-20210407
i386                 randconfig-a013-20210407
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
