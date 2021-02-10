Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6656C316126
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:40:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAF618670F;
	Wed, 10 Feb 2021 08:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id la5xgJ3GdNmy; Wed, 10 Feb 2021 08:40:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B01BE85BDF;
	Wed, 10 Feb 2021 08:40:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 325241BF330
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A83685682
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8IWeDk+3CSiy for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 08:40:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6850E855F1
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 08:40:35 +0000 (UTC)
IronPort-SDR: zxn7LcDSq9xoD3t7QMXAOrOQQITr10U2KWzUBMF4vqx9moecAZlwoI4Vc3F/ylvBSLTo6kuMDM
 DQANPIJTTYQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="201136326"
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="201136326"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 00:40:35 -0800
IronPort-SDR: i0XaNXfWt9F5dZDHtdbIIjCdpXVKnGTkpEeIUmqedoopnRtx8Wljb7F3TD5lcohCLWQDZzAI7n
 zDYSYiqvyr8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="420169243"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2021 00:40:33 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l9l33-0002q9-2i; Wed, 10 Feb 2021 08:40:33 +0000
Date: Wed, 10 Feb 2021 16:40:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 6953026f21092199a59f2c641a880b1c4025f932
Message-ID: <60239bf2.k80ULEgn3W97wXDx%lkp@intel.com>
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
branch HEAD: 6953026f21092199a59f2c641a880b1c4025f932  staging: rtl8712: Remove multiple blank lines

elapsed time: 727m

configs tested: 164
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                     davinci_all_defconfig
s390                          debug_defconfig
arm                         hackkit_defconfig
powerpc                    socrates_defconfig
sh                           se7721_defconfig
sh                          r7785rp_defconfig
sparc64                             defconfig
arm                     am200epdkit_defconfig
sh                            shmin_defconfig
powerpc                     tqm8540_defconfig
mips                           ci20_defconfig
m68k                       m5249evb_defconfig
sh                   sh7770_generic_defconfig
c6x                        evmc6472_defconfig
mips                         cobalt_defconfig
arc                        nsimosci_defconfig
sh                         apsh4a3a_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     ep8248e_defconfig
powerpc                       holly_defconfig
arm                       multi_v4t_defconfig
mips                      maltasmvp_defconfig
sh                      rts7751r2d1_defconfig
powerpc                    klondike_defconfig
arm                           sunxi_defconfig
xtensa                         virt_defconfig
microblaze                          defconfig
powerpc                     ksi8560_defconfig
powerpc                     pseries_defconfig
arm                       spear13xx_defconfig
powerpc                     kmeter1_defconfig
mips                       lemote2f_defconfig
nios2                         3c120_defconfig
arc                        vdk_hs38_defconfig
arm                         s3c6400_defconfig
arm                         vf610m4_defconfig
arc                              alldefconfig
c6x                        evmc6474_defconfig
m68k                          atari_defconfig
powerpc                 mpc8560_ads_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                     ppa8548_defconfig
mips                        nlm_xlp_defconfig
riscv                    nommu_k210_defconfig
sh                 kfr2r09-romimage_defconfig
mips                           rs90_defconfig
arm                         s5pv210_defconfig
arm                       versatile_defconfig
powerpc                     stx_gp3_defconfig
sh                        sh7785lcr_defconfig
arm                           sama5_defconfig
sh                        sh7763rdp_defconfig
mips                        bcm47xx_defconfig
openrisc                    or1ksim_defconfig
powerpc                      pasemi_defconfig
arm                             mxs_defconfig
mips                          ath79_defconfig
sh                           se7751_defconfig
mips                     decstation_defconfig
arm                        magician_defconfig
m68k                        m5272c3_defconfig
arm                          pxa3xx_defconfig
xtensa                    smp_lx200_defconfig
mips                        jmr3927_defconfig
powerpc                       ppc64_defconfig
c6x                              allyesconfig
sh                               allmodconfig
xtensa                  audio_kc705_defconfig
powerpc                     sequoia_defconfig
powerpc                     taishan_defconfig
alpha                               defconfig
mips                      maltaaprp_defconfig
arc                              allyesconfig
m68k                       m5475evb_defconfig
arm                           stm32_defconfig
mips                          malta_defconfig
m68k                        mvme147_defconfig
arm                       cns3420vb_defconfig
alpha                            allyesconfig
sh                             shx3_defconfig
arm                          ixp4xx_defconfig
xtensa                  nommu_kc705_defconfig
arm                        mvebu_v7_defconfig
arm                         s3c2410_defconfig
powerpc                        cell_defconfig
sh                          rsk7201_defconfig
m68k                             allyesconfig
nds32                               defconfig
arm                       imx_v4_v5_defconfig
microblaze                      mmu_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     powernv_defconfig
sh                     sh7710voipgw_defconfig
arm                         orion5x_defconfig
m68k                        stmark2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210209
x86_64               randconfig-a001-20210209
x86_64               randconfig-a005-20210209
x86_64               randconfig-a004-20210209
x86_64               randconfig-a002-20210209
x86_64               randconfig-a003-20210209
i386                 randconfig-a001-20210209
i386                 randconfig-a005-20210209
i386                 randconfig-a003-20210209
i386                 randconfig-a002-20210209
i386                 randconfig-a006-20210209
i386                 randconfig-a004-20210209
i386                 randconfig-a016-20210209
i386                 randconfig-a013-20210209
i386                 randconfig-a012-20210209
i386                 randconfig-a014-20210209
i386                 randconfig-a011-20210209
i386                 randconfig-a015-20210209
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210209
x86_64               randconfig-a014-20210209
x86_64               randconfig-a015-20210209
x86_64               randconfig-a012-20210209
x86_64               randconfig-a016-20210209
x86_64               randconfig-a011-20210209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
