Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9A74516E9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 22:50:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26DDC403D1;
	Mon, 15 Nov 2021 21:50:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWyQyIwd8clg; Mon, 15 Nov 2021 21:50:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EA2C400CE;
	Mon, 15 Nov 2021 21:50:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7E41BF2F9
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 21:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1080400CE
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 21:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4n06S6tkCM3 for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 21:49:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A09C540012
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 21:49:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="233781112"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="233781112"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 13:49:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="453994570"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 15 Nov 2021 13:49:51 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mmjrK-000N3R-NF; Mon, 15 Nov 2021 21:49:50 +0000
Date: Tue, 16 Nov 2021 05:49:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 ac0c9be91ae82c281637d3413bf321d3f8920230
Message-ID: <6192d5f0.kXht8jARbG/Bx1Hw%lkp@intel.com>
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
branch HEAD: ac0c9be91ae82c281637d3413bf321d3f8920230  staging: wlan-ng: Removed unused comments

elapsed time: 722m

configs tested: 174
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211115
arc                                 defconfig
sh                           se7751_defconfig
arm                        mini2440_defconfig
mips                        bcm63xx_defconfig
sh                           se7721_defconfig
s390                          debug_defconfig
arm64                            alldefconfig
arc                            hsdk_defconfig
arm                         lpc32xx_defconfig
powerpc                      pasemi_defconfig
powerpc                      walnut_defconfig
powerpc                     sequoia_defconfig
arm                        mvebu_v7_defconfig
arm                           tegra_defconfig
sh                     sh7710voipgw_defconfig
arm                       omap2plus_defconfig
arm                       cns3420vb_defconfig
sh                            shmin_defconfig
powerpc                    ge_imp3a_defconfig
xtensa                  audio_kc705_defconfig
arm                          ixp4xx_defconfig
m68k                          multi_defconfig
arm                      jornada720_defconfig
powerpc                   bluestone_defconfig
mips                     loongson2k_defconfig
mips                          rb532_defconfig
mips                          ath79_defconfig
arc                        nsimosci_defconfig
sh                          r7780mp_defconfig
ia64                                defconfig
arm                            xcep_defconfig
sh                        apsh4ad0a_defconfig
openrisc                 simple_smp_defconfig
m68k                        m5307c3_defconfig
powerpc                     stx_gp3_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                           rs90_defconfig
arc                        nsim_700_defconfig
mips                       capcella_defconfig
arm                       netwinder_defconfig
arm                        cerfcube_defconfig
powerpc                      katmai_defconfig
openrisc                  or1klitex_defconfig
mips                     loongson1c_defconfig
powerpc                        warp_defconfig
powerpc                        icon_defconfig
m68k                       m5475evb_defconfig
mips                          ath25_defconfig
arm                        spear3xx_defconfig
sh                          rsk7203_defconfig
arm                            qcom_defconfig
arm                        multi_v5_defconfig
microblaze                      mmu_defconfig
xtensa                generic_kc705_defconfig
m68k                        mvme16x_defconfig
sh                        sh7757lcr_defconfig
powerpc                     redwood_defconfig
arc                         haps_hs_defconfig
powerpc                       holly_defconfig
powerpc                       ppc64_defconfig
powerpc                  iss476-smp_defconfig
arm                     eseries_pxa_defconfig
powerpc                 xes_mpc85xx_defconfig
x86_64                           allyesconfig
powerpc                     taishan_defconfig
mips                           ip28_defconfig
arm                         socfpga_defconfig
arm                        shmobile_defconfig
powerpc                     tqm8548_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                      ppc64e_defconfig
powerpc                         wii_defconfig
mips                           ip32_defconfig
arm                         at91_dt_defconfig
m68k                         amcore_defconfig
powerpc                      ppc6xx_defconfig
sh                   sh7770_generic_defconfig
arm                          pxa3xx_defconfig
mips                      malta_kvm_defconfig
arm                      pxa255-idp_defconfig
powerpc                     pq2fads_defconfig
arm                         palmz72_defconfig
h8300                               defconfig
mips                      maltaaprp_defconfig
xtensa                    xip_kc705_defconfig
sh                          sdk7786_defconfig
mips                  decstation_64_defconfig
um                                  defconfig
arm                  randconfig-c002-20211115
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a005-20211115
x86_64               randconfig-a003-20211115
x86_64               randconfig-a002-20211115
x86_64               randconfig-a001-20211115
x86_64               randconfig-a006-20211115
x86_64               randconfig-a004-20211115
i386                 randconfig-a006-20211115
i386                 randconfig-a003-20211115
i386                 randconfig-a005-20211115
i386                 randconfig-a001-20211115
i386                 randconfig-a004-20211115
i386                 randconfig-a002-20211115
arc                  randconfig-r043-20211115
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c007-20211115
i386                 randconfig-c001-20211115
arm                  randconfig-c002-20211115
riscv                randconfig-c006-20211115
powerpc              randconfig-c003-20211115
s390                 randconfig-c005-20211115
mips                 randconfig-c004-20211115
x86_64               randconfig-a015-20211115
x86_64               randconfig-a013-20211115
x86_64               randconfig-a011-20211115
x86_64               randconfig-a012-20211115
x86_64               randconfig-a016-20211115
x86_64               randconfig-a014-20211115
i386                 randconfig-a014-20211115
i386                 randconfig-a016-20211115
i386                 randconfig-a012-20211115
i386                 randconfig-a013-20211115
i386                 randconfig-a011-20211115
i386                 randconfig-a015-20211115
hexagon              randconfig-r045-20211115
hexagon              randconfig-r041-20211115
s390                 randconfig-r044-20211115
riscv                randconfig-r042-20211115

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
