Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4361214FE3
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 23:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26814887BE;
	Sun,  5 Jul 2020 21:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vW2XC3si-ltY; Sun,  5 Jul 2020 21:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 912C788796;
	Sun,  5 Jul 2020 21:36:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAAB51BF3D1
 for <devel@linuxdriverproject.org>; Sun,  5 Jul 2020 21:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C74FA8878C
 for <devel@linuxdriverproject.org>; Sun,  5 Jul 2020 21:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id epXUO+NQYNai for <devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 21:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0386D886BE
 for <devel@driverdev.osuosl.org>; Sun,  5 Jul 2020 21:36:06 +0000 (UTC)
IronPort-SDR: TdpkzhkcEV0ENHbJDgRHk6SHSH14A9OmdAdqzUcBYfgb/iNPH5nYF9PGuaUItpmcXZD4fZErnh
 MnGY8SKCFoeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="144838520"
X-IronPort-AV: E=Sophos;i="5.75,317,1589266800"; d="scan'208";a="144838520"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2020 14:36:06 -0700
IronPort-SDR: JKP6ATkpne3NNWXpHN4wVRSxJrukzqijZNToztFGC/C19dQov3tgl4qfDorNpZyYu4A6YROEIs
 HIFvYI9n888g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,317,1589266800"; d="scan'208";a="266385674"
Received: from lkp-server01.sh.intel.com (HELO 6dc8ab148a5d) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jul 2020 14:36:05 -0700
Received: from kbuild by 6dc8ab148a5d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jsCIt-0001wY-Mh; Sun, 05 Jul 2020 21:36:03 +0000
Date: Mon, 06 Jul 2020 05:35:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 0a2fae2aea4a21b59d4a920b9765aaa696270b16
Message-ID: <5f02479e.I7HMQI1laxHEwYTO%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 0a2fae2aea4a21b59d4a920b9765aaa696270b16  lib: update DEBUG_SHIRQ docs to match reality

elapsed time: 3722m

configs tested: 222
configs skipped: 25

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                       aspeed_g4_defconfig
m68k                       m5249evb_defconfig
arm                            mmp2_defconfig
sh                            shmin_defconfig
powerpc                      pmac32_defconfig
parisc                           allmodconfig
sh                                  defconfig
arm                          moxart_defconfig
arm                            qcom_defconfig
arm                          iop32x_defconfig
arm                         at91_dt_defconfig
m68k                         amcore_defconfig
arc                             nps_defconfig
arm                        trizeps4_defconfig
microblaze                    nommu_defconfig
m68k                        m5407c3_defconfig
sh                               allmodconfig
arm                         s5pv210_defconfig
arm                             ezx_defconfig
arm                  colibri_pxa270_defconfig
h8300                       h8s-sim_defconfig
arc                        nsim_700_defconfig
c6x                        evmc6472_defconfig
m68k                        m5272c3_defconfig
arc                        nsimosci_defconfig
powerpc                     pq2fads_defconfig
mips                      malta_kvm_defconfig
arm                          ep93xx_defconfig
openrisc                 simple_smp_defconfig
arm                         assabet_defconfig
powerpc                      ppc40x_defconfig
arm                         cm_x300_defconfig
sh                 kfr2r09-romimage_defconfig
mips                         tb0219_defconfig
sh                               j2_defconfig
arm                          lpd270_defconfig
arm                          pxa3xx_defconfig
arm                       imx_v6_v7_defconfig
powerpc                      ppc6xx_defconfig
mips                          ath25_defconfig
powerpc                       maple_defconfig
mips                      pistachio_defconfig
h8300                               defconfig
arm                          simpad_defconfig
xtensa                         virt_defconfig
sh                          landisk_defconfig
m68k                        stmark2_defconfig
sh                           se7780_defconfig
arm                           efm32_defconfig
sh                               alldefconfig
powerpc                    mvme5100_defconfig
mips                          rb532_defconfig
xtensa                          iss_defconfig
powerpc                  mpc885_ads_defconfig
arm                   milbeaut_m10v_defconfig
sh                        dreamcast_defconfig
openrisc                    or1ksim_defconfig
m68k                             alldefconfig
arc                      axs103_smp_defconfig
ia64                          tiger_defconfig
arm                         vf610m4_defconfig
arm                             pxa_defconfig
powerpc                      mgcoge_defconfig
arm                         bcm2835_defconfig
mips                        maltaup_defconfig
m68k                            mac_defconfig
sh                     magicpanelr2_defconfig
sh                         apsh4a3a_defconfig
arc                           tb10x_defconfig
ia64                         bigsur_defconfig
powerpc                     mpc5200_defconfig
s390                          debug_defconfig
ia64                                defconfig
s390                             alldefconfig
sh                           se7705_defconfig
arc                        vdk_hs38_defconfig
parisc                           alldefconfig
arm                          imote2_defconfig
nios2                               defconfig
arm                        clps711x_defconfig
xtensa                    xip_kc705_defconfig
sparc                            alldefconfig
arm                           viper_defconfig
arm                         orion5x_defconfig
m68k                          multi_defconfig
arm                       imx_v4_v5_defconfig
arm                             rpc_defconfig
arm                         mv78xx0_defconfig
s390                                defconfig
sh                           cayman_defconfig
arm                         socfpga_defconfig
mips                            e55_defconfig
powerpc                     powernv_defconfig
arm                         s3c6400_defconfig
m68k                          atari_defconfig
arm                           u8500_defconfig
mips                    maltaup_xpa_defconfig
powerpc                      tqm8xx_defconfig
mips                     loongson1b_defconfig
powerpc                    gamecube_defconfig
sh                      rts7751r2d1_defconfig
arm                         ebsa110_defconfig
powerpc                       ppc64_defconfig
m68k                       bvme6000_defconfig
sh                     sh7710voipgw_defconfig
mips                           xway_defconfig
ia64                              allnoconfig
arm                          tango4_defconfig
mips                     cu1000-neo_defconfig
alpha                            allyesconfig
powerpc                      ppc44x_defconfig
nios2                         10m50_defconfig
powerpc                          alldefconfig
arm                           stm32_defconfig
arc                            hsdk_defconfig
mips                        jmr3927_defconfig
i386                             alldefconfig
mips                      fuloong2e_defconfig
mips                           jazz_defconfig
parisc                generic-64bit_defconfig
arm                           spitz_defconfig
powerpc                          allyesconfig
mips                         db1xxx_defconfig
arm                         lubbock_defconfig
mips                        vocore2_defconfig
mips                      pic32mzda_defconfig
arm                              zx_defconfig
sh                           se7619_defconfig
mips                        nlm_xlp_defconfig
arm                      jornada720_defconfig
powerpc                  storcenter_defconfig
sh                          r7785rp_defconfig
arm                      footbridge_defconfig
arm                          badge4_defconfig
m68k                            q40_defconfig
arc                    vdk_hs38_smp_defconfig
arc                     nsimosci_hs_defconfig
sh                              ul2_defconfig
arm                          pxa168_defconfig
mips                           gcw0_defconfig
nios2                         3c120_defconfig
c6x                        evmc6678_defconfig
sh                   sh7770_generic_defconfig
sparc                               defconfig
arm                             mxs_defconfig
riscv                            allyesconfig
m68k                          sun3x_defconfig
sparc                       sparc32_defconfig
ia64                        generic_defconfig
um                             i386_defconfig
arm                           sunxi_defconfig
mips                 decstation_r4k_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
nios2                            allyesconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allyesconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
powerpc                             defconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             allyesconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
um                               allyesconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
