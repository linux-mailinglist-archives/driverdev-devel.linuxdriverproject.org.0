Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACFC358D83
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Apr 2021 21:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D92F940156;
	Thu,  8 Apr 2021 19:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fc6IohAnhbYe; Thu,  8 Apr 2021 19:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ADEA4011B;
	Thu,  8 Apr 2021 19:36:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 567281BF289
 for <devel@linuxdriverproject.org>; Thu,  8 Apr 2021 19:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4480440497
 for <devel@linuxdriverproject.org>; Thu,  8 Apr 2021 19:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P98pBeeo9GGF for <devel@linuxdriverproject.org>;
 Thu,  8 Apr 2021 19:35:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 068D14048F
 for <devel@driverdev.osuosl.org>; Thu,  8 Apr 2021 19:35:57 +0000 (UTC)
IronPort-SDR: sT/BR5VFUhRqg3MZJcrk4Nr3ZCDQ2Bc4pVV0QwMR1mbh9PibEoW3OI/Ts9ILzpdEoSyIxC3uFM
 +imshdOtZSEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="191466487"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="191466487"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 12:35:56 -0700
IronPort-SDR: epHMMgbwzd32x96rXsy0KI+WMOlOT2fcC5sAk8QcoIaP6RjCBVCa6Sx4vrTZ6XUIB+qBvPtDPn
 mjQqxfUk7aWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="397211926"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 08 Apr 2021 12:35:55 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUaRW-000FZ7-A6; Thu, 08 Apr 2021 19:35:54 +0000
Date: Fri, 09 Apr 2021 03:35:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4e35b91390fcd13bf46e12acd3b6f94a082a6cf3
Message-ID: <606f5aec.2FxUT5lyqEFdH+vN%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 4e35b91390fcd13bf46e12acd3b6f94a082a6cf3  staging: rtl8723bs: remove extra indent

elapsed time: 723m

configs tested: 199
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
i386                             allyesconfig
riscv                            allyesconfig
mips                         rt305x_defconfig
um                                allnoconfig
sh                          urquell_defconfig
sh                            titan_defconfig
arm                             ezx_defconfig
arm                        oxnas_v6_defconfig
arm                            lart_defconfig
arm                         assabet_defconfig
arm                          exynos_defconfig
arm                           viper_defconfig
sh                          lboxre2_defconfig
mips                        maltaup_defconfig
mips                         mpc30x_defconfig
arm                        cerfcube_defconfig
xtensa                  cadence_csp_defconfig
m68k                             allyesconfig
m68k                        m5307c3_defconfig
m68k                       m5208evb_defconfig
mips                malta_qemu_32r6_defconfig
sh                           se7712_defconfig
mips                           ci20_defconfig
m68k                         apollo_defconfig
sh                          r7785rp_defconfig
powerpc                      pmac32_defconfig
openrisc                 simple_smp_defconfig
mips                       lemote2f_defconfig
powerpc                      mgcoge_defconfig
powerpc                 linkstation_defconfig
arm                            pleb_defconfig
sh                            migor_defconfig
sh                               j2_defconfig
powerpc                      ppc40x_defconfig
powerpc                     tqm8548_defconfig
m68k                        m5407c3_defconfig
arm                           spitz_defconfig
arm                         palmz72_defconfig
arm                         lpc32xx_defconfig
ia64                             alldefconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
arm                       imx_v6_v7_defconfig
mips                           jazz_defconfig
m68k                        stmark2_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      ppc6xx_defconfig
sh                   sh7770_generic_defconfig
sh                           sh2007_defconfig
xtensa                    xip_kc705_defconfig
sh                             sh03_defconfig
arm                           omap1_defconfig
arm                     am200epdkit_defconfig
sh                     sh7710voipgw_defconfig
m68k                          multi_defconfig
mips                           gcw0_defconfig
arm                          moxart_defconfig
m68k                       m5475evb_defconfig
s390                             allyesconfig
riscv                    nommu_k210_defconfig
mips                     loongson1b_defconfig
arm                        multi_v5_defconfig
mips                  decstation_64_defconfig
m68k                             alldefconfig
arm                          gemini_defconfig
mips                           mtx1_defconfig
arm                         lubbock_defconfig
arc                           tb10x_defconfig
mips                            gpr_defconfig
powerpc                       maple_defconfig
powerpc64                           defconfig
mips                     cu1000-neo_defconfig
sh                   secureedge5410_defconfig
arm                         nhk8815_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                      ppc64e_defconfig
sh                           se7343_defconfig
sh                        sh7785lcr_defconfig
sh                          rsk7201_defconfig
m68k                          hp300_defconfig
s390                          debug_defconfig
sh                 kfr2r09-romimage_defconfig
arm                             mxs_defconfig
mips                          malta_defconfig
arm                           u8500_defconfig
powerpc                    socrates_defconfig
mips                            ar7_defconfig
sh                          sdk7786_defconfig
sh                            shmin_defconfig
arm                           sunxi_defconfig
arm                            zeus_defconfig
powerpc                     sbc8548_defconfig
arm                       netwinder_defconfig
powerpc                        warp_defconfig
arm                          pxa3xx_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
mips                           ip28_defconfig
sh                   sh7724_generic_defconfig
sh                          rsk7269_defconfig
mips                        bcm47xx_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                      footbridge_defconfig
mips                           ip22_defconfig
arm                         hackkit_defconfig
nios2                            alldefconfig
powerpc                     mpc5200_defconfig
powerpc                      ep88xc_defconfig
m68k                          amiga_defconfig
arm                  colibri_pxa270_defconfig
powerpc                    mvme5100_defconfig
mips                    maltaup_xpa_defconfig
arm                        trizeps4_defconfig
arm                            xcep_defconfig
ia64                            zx1_defconfig
sh                  sh7785lcr_32bit_defconfig
um                               allmodconfig
powerpc                      pasemi_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                          ep93xx_defconfig
arc                    vdk_hs38_smp_defconfig
mips                           ip32_defconfig
arc                     nsimosci_hs_defconfig
arm                         shannon_defconfig
powerpc                 mpc8272_ads_defconfig
openrisc                            defconfig
riscv             nommu_k210_sdcard_defconfig
mips                          ath25_defconfig
mips                          ath79_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a004-20210408
x86_64               randconfig-a005-20210408
x86_64               randconfig-a003-20210408
x86_64               randconfig-a001-20210408
x86_64               randconfig-a002-20210408
x86_64               randconfig-a006-20210408
i386                 randconfig-a006-20210408
i386                 randconfig-a003-20210408
i386                 randconfig-a001-20210408
i386                 randconfig-a004-20210408
i386                 randconfig-a005-20210408
i386                 randconfig-a002-20210408
i386                 randconfig-a014-20210408
i386                 randconfig-a016-20210408
i386                 randconfig-a011-20210408
i386                 randconfig-a012-20210408
i386                 randconfig-a013-20210408
i386                 randconfig-a015-20210408
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210408
x86_64               randconfig-a015-20210408
x86_64               randconfig-a012-20210408
x86_64               randconfig-a011-20210408
x86_64               randconfig-a013-20210408
x86_64               randconfig-a016-20210408

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
