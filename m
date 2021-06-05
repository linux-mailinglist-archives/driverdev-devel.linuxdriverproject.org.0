Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8370839C505
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Jun 2021 04:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CCC4842D8;
	Sat,  5 Jun 2021 02:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S6ibD9HGZAJ7; Sat,  5 Jun 2021 02:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1712583AE6;
	Sat,  5 Jun 2021 02:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 465D51BF5F8
 for <devel@linuxdriverproject.org>; Sat,  5 Jun 2021 02:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 339B340388
 for <devel@linuxdriverproject.org>; Sat,  5 Jun 2021 02:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gYBbYDkDXPlC for <devel@linuxdriverproject.org>;
 Sat,  5 Jun 2021 02:20:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EBDC4039D
 for <devel@driverdev.osuosl.org>; Sat,  5 Jun 2021 02:20:34 +0000 (UTC)
IronPort-SDR: G5ve8gQJvFpgTCfjdFTmq9RsNclB43JqCVI5QOqLpBRH2sOiBEOHKrzQeCQl+lRMsP8BOGrfwt
 aHj9Gg7NVcgA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204376992"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="204376992"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 19:20:32 -0700
IronPort-SDR: pvicagwcF6SSSWmL7jCvhOMbCIM8gvkUPv9QH9TnNFATRhNAlHqPSV/23VRZnab03eukEPU4oy
 KyHQqTUEXNJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="475655486"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jun 2021 19:20:31 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lpLvK-0007Da-GR; Sat, 05 Jun 2021 02:20:30 +0000
Date: Sat, 05 Jun 2021 10:19:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 5a576764e4190f7b48cf3cf40f4294f001918605
Message-ID: <60badf42.qbV/DcoeshxYMlpS%lkp@intel.com>
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
branch HEAD: 5a576764e4190f7b48cf3cf40f4294f001918605  drivers/base: Constify static attribute_group structs

elapsed time: 728m

configs tested: 200
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     cu1830-neo_defconfig
arm                        clps711x_defconfig
arc                         haps_hs_defconfig
mips                          rb532_defconfig
arm                          collie_defconfig
xtensa                generic_kc705_defconfig
powerpc                      mgcoge_defconfig
mips                          rm200_defconfig
powerpc                        fsp2_defconfig
arm                           stm32_defconfig
powerpc                 mpc8540_ads_defconfig
arc                            hsdk_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                  colibri_pxa270_defconfig
powerpc                    adder875_defconfig
powerpc                       ebony_defconfig
sh                        apsh4ad0a_defconfig
arm                        keystone_defconfig
powerpc                    gamecube_defconfig
mips                      maltasmvp_defconfig
powerpc                         ps3_defconfig
mips                         tb0287_defconfig
sh                          landisk_defconfig
mips                        maltaup_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                           gcw0_defconfig
powerpc                      obs600_defconfig
arm                           sama5_defconfig
mips                    maltaup_xpa_defconfig
powerpc                       eiger_defconfig
powerpc                      chrp32_defconfig
arm                           corgi_defconfig
um                               alldefconfig
powerpc                  iss476-smp_defconfig
nios2                               defconfig
mips                           xway_defconfig
powerpc                          allmodconfig
riscv                    nommu_virt_defconfig
arm                           tegra_defconfig
sh                           sh2007_defconfig
arm                            mmp2_defconfig
sparc                            alldefconfig
mips                           rs90_defconfig
i386                                defconfig
sh                        edosk7705_defconfig
arm                         shannon_defconfig
arm                       omap2plus_defconfig
mips                        qi_lb60_defconfig
powerpc                        warp_defconfig
mips                 decstation_r4k_defconfig
openrisc                            defconfig
arc                        nsim_700_defconfig
mips                        bcm47xx_defconfig
mips                            gpr_defconfig
mips                           ci20_defconfig
arm                         hackkit_defconfig
ia64                                defconfig
powerpc                     taishan_defconfig
powerpc                 xes_mpc85xx_defconfig
sh                         apsh4a3a_defconfig
powerpc                      ppc40x_defconfig
h8300                    h8300h-sim_defconfig
powerpc                 canyonlands_defconfig
arm                          pxa168_defconfig
arm                         at91_dt_defconfig
mips                           jazz_defconfig
sh                           se7619_defconfig
mips                           mtx1_defconfig
sh                           se7712_defconfig
powerpc                     rainier_defconfig
arm                         orion5x_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                        dreamcast_defconfig
arm                      integrator_defconfig
arm                            mps2_defconfig
arm                          simpad_defconfig
powerpc                       maple_defconfig
nds32                             allnoconfig
sh                          r7780mp_defconfig
m68k                         apollo_defconfig
arm                            xcep_defconfig
sh                         ap325rxa_defconfig
sh                            titan_defconfig
powerpc                     stx_gp3_defconfig
sh                          rsk7201_defconfig
powerpc                    klondike_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     sbc8548_defconfig
arm                   milbeaut_m10v_defconfig
sh                               allmodconfig
powerpc                      tqm8xx_defconfig
mips                           ip28_defconfig
powerpc                       holly_defconfig
xtensa                              defconfig
powerpc                     kmeter1_defconfig
mips                         cobalt_defconfig
powerpc                   motionpro_defconfig
m68k                            q40_defconfig
powerpc                     ppa8548_defconfig
powerpc                     kilauea_defconfig
mips                           ip22_defconfig
alpha                            alldefconfig
arm                         mv78xx0_defconfig
xtensa                          iss_defconfig
mips                       lemote2f_defconfig
mips                      maltaaprp_defconfig
nios2                         3c120_defconfig
sparc                       sparc32_defconfig
sh                        sh7785lcr_defconfig
arm                        multi_v7_defconfig
m68k                                defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210604
x86_64               randconfig-a004-20210604
x86_64               randconfig-a003-20210604
x86_64               randconfig-a006-20210604
x86_64               randconfig-a005-20210604
x86_64               randconfig-a001-20210604
i386                 randconfig-a003-20210604
i386                 randconfig-a006-20210604
i386                 randconfig-a004-20210604
i386                 randconfig-a001-20210604
i386                 randconfig-a005-20210604
i386                 randconfig-a002-20210604
i386                 randconfig-a003-20210603
i386                 randconfig-a006-20210603
i386                 randconfig-a004-20210603
i386                 randconfig-a001-20210603
i386                 randconfig-a002-20210603
i386                 randconfig-a005-20210603
x86_64               randconfig-a015-20210603
x86_64               randconfig-a011-20210603
x86_64               randconfig-a012-20210603
x86_64               randconfig-a014-20210603
x86_64               randconfig-a016-20210603
x86_64               randconfig-a013-20210603
i386                 randconfig-a015-20210604
i386                 randconfig-a013-20210604
i386                 randconfig-a016-20210604
i386                 randconfig-a011-20210604
i386                 randconfig-a014-20210604
i386                 randconfig-a012-20210604
i386                 randconfig-a015-20210603
i386                 randconfig-a013-20210603
i386                 randconfig-a011-20210603
i386                 randconfig-a016-20210603
i386                 randconfig-a014-20210603
i386                 randconfig-a012-20210603
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210604
x86_64               randconfig-a015-20210604
x86_64               randconfig-a011-20210604
x86_64               randconfig-a014-20210604
x86_64               randconfig-a012-20210604
x86_64               randconfig-a016-20210604
x86_64               randconfig-a013-20210604

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
