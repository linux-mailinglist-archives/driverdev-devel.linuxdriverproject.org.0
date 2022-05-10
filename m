Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B2520F41
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 May 2022 09:57:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 867D8402FE;
	Tue, 10 May 2022 07:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTrMZxdThWcD; Tue, 10 May 2022 07:57:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5E1741528;
	Tue, 10 May 2022 07:57:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30A921BF20D
 for <devel@linuxdriverproject.org>; Tue, 10 May 2022 07:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DF6460F77
 for <devel@linuxdriverproject.org>; Tue, 10 May 2022 07:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2W9wDdqxnSB for <devel@linuxdriverproject.org>;
 Tue, 10 May 2022 07:57:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A02C860F76
 for <devel@driverdev.osuosl.org>; Tue, 10 May 2022 07:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652169446; x=1683705446;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dUZ+SIQguLqrcW6qtWn3O4leA1ji+CyukFEX8M0u8kA=;
 b=E/R7HRT+N1AOlO/XumlQzFzynk/cH1M+O6BgNcBOwymyh3RuzJ+KzzIb
 HJ3sDEGfHiPlzNJo581DC26M4qD5QDOg1Zd83bjTxxr68zc3HXr5boy2E
 tkNUDO6zOVPyxNKRrP5F7mXGi+/N88xdjiLj6oJjiwTwRS1gnhObwfvlI
 TvZJcfGoPAG8MTcYxW06glIs/0TW9QQLYUmV8GAf7NYbC5FW8w33Lhv+f
 LIpHN6lMFekHeXsQu5OIq94LpztKBp7l/XEQDTwJ6ueTBSePKg5cz+kvO
 8QeF0ilmEFDaJ38hjCbcfQfjDOUeiRDmd9FhOHHKQHpPwSULds0mVrc/Y A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="251344364"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="251344364"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:57:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="738563550"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 10 May 2022 00:57:17 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1noKk8-000HWL-LN;
 Tue, 10 May 2022 07:57:16 +0000
Date: Tue, 10 May 2022 15:56:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 bc443c31def574e3bfaed50cb493b8305ad79435
Message-ID: <627a1ab5.eWa0zi2sVp+1K2pA%lkp@intel.com>
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
branch HEAD: bc443c31def574e3bfaed50cb493b8305ad79435  driver core: location: Check for allocations failure

elapsed time: 5665m

configs tested: 326
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
i386                 randconfig-c001-20220509
arm                        clps711x_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                         tb0226_defconfig
arm                           h5000_defconfig
m68k                          hp300_defconfig
alpha                            alldefconfig
arm                         nhk8815_defconfig
sh                ecovec24-romimage_defconfig
arm                           sunxi_defconfig
ia64                             alldefconfig
arm                          exynos_defconfig
xtensa                       common_defconfig
h8300                    h8300h-sim_defconfig
sh                              ul2_defconfig
mips                           ci20_defconfig
sparc                       sparc64_defconfig
nios2                         3c120_defconfig
sh                           se7619_defconfig
m68k                       m5249evb_defconfig
m68k                       m5475evb_defconfig
arm                            pleb_defconfig
mips                          rb532_defconfig
powerpc                      makalu_defconfig
arm                         axm55xx_defconfig
powerpc                 linkstation_defconfig
ia64                         bigsur_defconfig
powerpc                     redwood_defconfig
mips                  decstation_64_defconfig
h8300                       h8s-sim_defconfig
sh                          kfr2r09_defconfig
sh                           se7712_defconfig
arm                       omap2plus_defconfig
csky                                defconfig
xtensa                  cadence_csp_defconfig
ia64                        generic_defconfig
arm                            qcom_defconfig
arc                     nsimosci_hs_defconfig
powerpc                        warp_defconfig
sh                           se7721_defconfig
arm                           corgi_defconfig
mips                 decstation_r4k_defconfig
arm                         lubbock_defconfig
parisc                           alldefconfig
sh                          urquell_defconfig
arm                             rpc_defconfig
mips                         cobalt_defconfig
arm                      footbridge_defconfig
sh                           se7750_defconfig
arc                         haps_hs_defconfig
mips                             allmodconfig
mips                        vocore2_defconfig
s390                       zfcpdump_defconfig
riscv                               defconfig
m68k                           sun3_defconfig
sh                          sdk7780_defconfig
powerpc64                        alldefconfig
arc                        nsimosci_defconfig
um                           x86_64_defconfig
arm                        spear6xx_defconfig
powerpc                      cm5200_defconfig
arc                              alldefconfig
sh                          landisk_defconfig
sh                         ap325rxa_defconfig
x86_64                              defconfig
powerpc                     ep8248e_defconfig
sh                             espt_defconfig
arm                       multi_v4t_defconfig
arm                             ezx_defconfig
arm                        mini2440_defconfig
sh                   sh7724_generic_defconfig
xtensa                              defconfig
arm                           sama5_defconfig
mips                    maltaup_xpa_defconfig
powerpc64                           defconfig
arc                        vdk_hs38_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                               j2_defconfig
powerpc                     tqm8548_defconfig
powerpc                       holly_defconfig
mips                           jazz_defconfig
um                               alldefconfig
xtensa                    smp_lx200_defconfig
openrisc                    or1ksim_defconfig
sh                          polaris_defconfig
arm                      jornada720_defconfig
powerpc                    klondike_defconfig
arm                        realview_defconfig
arc                          axs103_defconfig
mips                        bcm47xx_defconfig
mips                            gpr_defconfig
sparc                               defconfig
sh                                  defconfig
powerpc                 mpc837x_rdb_defconfig
sh                             sh03_defconfig
arc                                 defconfig
arm                     eseries_pxa_defconfig
powerpc                  storcenter_defconfig
sh                               allmodconfig
arm                           viper_defconfig
sh                           se7343_defconfig
powerpc                      ep88xc_defconfig
sh                          rsk7269_defconfig
m68k                        m5307c3_defconfig
arm                      integrator_defconfig
nios2                         10m50_defconfig
arm                          gemini_defconfig
alpha                               defconfig
powerpc                      pcm030_defconfig
arm                            zeus_defconfig
alpha                            allyesconfig
arm                          lpd270_defconfig
sh                           sh2007_defconfig
arm                         at91_dt_defconfig
xtensa                           allyesconfig
arm                          badge4_defconfig
m68k                          sun3x_defconfig
powerpc                      chrp32_defconfig
parisc                generic-32bit_defconfig
powerpc                 mpc8540_ads_defconfig
arm                            xcep_defconfig
powerpc                    adder875_defconfig
sparc64                             defconfig
nios2                            allyesconfig
sh                        apsh4ad0a_defconfig
sh                          lboxre2_defconfig
powerpc                     taishan_defconfig
powerpc                      ppc6xx_defconfig
arc                           tb10x_defconfig
sh                          sdk7786_defconfig
arm                         lpc18xx_defconfig
arm                         s3c6400_defconfig
arm                           stm32_defconfig
arm                       aspeed_g5_defconfig
m68k                        stmark2_defconfig
arm                          pxa3xx_defconfig
powerpc                     rainier_defconfig
m68k                        m5272c3_defconfig
powerpc                     stx_gp3_defconfig
arm                         cm_x300_defconfig
arm                            lart_defconfig
powerpc                     pq2fads_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                       eiger_defconfig
arm                        cerfcube_defconfig
m68k                          multi_defconfig
arm                        shmobile_defconfig
sh                           se7724_defconfig
sh                           se7780_defconfig
sh                        edosk7705_defconfig
m68k                         amcore_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                          amiga_defconfig
parisc                generic-64bit_defconfig
i386                                defconfig
powerpc                      ppc40x_defconfig
sh                        dreamcast_defconfig
um                             i386_defconfig
nios2                            alldefconfig
m68k                             allmodconfig
sh                         apsh4a3a_defconfig
mips                            ar7_defconfig
arc                    vdk_hs38_smp_defconfig
mips                         bigsur_defconfig
s390                                defconfig
mips                         mpc30x_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     asp8347_defconfig
powerpc                    sam440ep_defconfig
sh                           se7722_defconfig
arm                          iop32x_defconfig
openrisc                            defconfig
arm                            hisi_defconfig
sh                          rsk7264_defconfig
powerpc                     tqm8555_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                  maltasmvp_eva_defconfig
um                                  defconfig
sh                         ecovec24_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220506
arm                  randconfig-c002-20220508
x86_64               randconfig-c001-20220509
arm                  randconfig-c002-20220509
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
h8300                            allyesconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a015-20220509
x86_64               randconfig-a012-20220509
x86_64               randconfig-a016-20220509
x86_64               randconfig-a014-20220509
x86_64               randconfig-a013-20220509
x86_64               randconfig-a011-20220509
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                 randconfig-a011-20220509
i386                 randconfig-a013-20220509
i386                 randconfig-a016-20220509
i386                 randconfig-a015-20220509
i386                 randconfig-a014-20220509
i386                 randconfig-a012-20220509
arc                  randconfig-r043-20220509
s390                 randconfig-r044-20220509
riscv                randconfig-r042-20220509
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220506
riscv                randconfig-c006-20220506
mips                 randconfig-c004-20220506
arm                  randconfig-c002-20220506
s390                 randconfig-c005-20220506
powerpc              randconfig-c003-20220508
riscv                randconfig-c006-20220508
mips                 randconfig-c004-20220508
arm                  randconfig-c002-20220508
x86_64               randconfig-c007-20220509
i386                 randconfig-c001-20220509
powerpc              randconfig-c003-20220509
riscv                randconfig-c006-20220509
arm                  randconfig-c002-20220509
mips                 randconfig-c004-20220509
arm                           omap1_defconfig
arm                          moxart_defconfig
arm                          collie_defconfig
mips                         tb0219_defconfig
powerpc                     mpc5200_defconfig
arm                       cns3420vb_defconfig
powerpc                     tqm5200_defconfig
arm                                 defconfig
mips                      pic32mzda_defconfig
i386                             allyesconfig
powerpc                     ksi8560_defconfig
mips                          ath79_defconfig
powerpc                      ppc64e_defconfig
mips                        workpad_defconfig
arm                          pcm027_defconfig
arm                      pxa255-idp_defconfig
hexagon                             defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     skiroot_defconfig
powerpc                      walnut_defconfig
arm                     am200epdkit_defconfig
mips                            e55_defconfig
arm                       aspeed_g4_defconfig
arm                       versatile_defconfig
arm                         s3c2410_defconfig
arm                            mmp2_defconfig
arm                     davinci_all_defconfig
arm                            dove_defconfig
arm                         lpc32xx_defconfig
arm                          ixp4xx_defconfig
powerpc                     tqm8560_defconfig
arm                        vexpress_defconfig
mips                     loongson1c_defconfig
mips                     cu1830-neo_defconfig
mips                     cu1000-neo_defconfig
arm                        neponset_defconfig
x86_64               randconfig-a006-20220509
x86_64               randconfig-a002-20220509
x86_64               randconfig-a001-20220509
x86_64               randconfig-a004-20220509
x86_64               randconfig-a005-20220509
x86_64               randconfig-a003-20220509
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a004-20220509
i386                 randconfig-a006-20220509
i386                 randconfig-a002-20220509
i386                 randconfig-a003-20220509
i386                 randconfig-a001-20220509
i386                 randconfig-a005-20220509
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r045-20220506
riscv                randconfig-r042-20220506
hexagon              randconfig-r041-20220506
hexagon              randconfig-r045-20220509
hexagon              randconfig-r041-20220509
hexagon              randconfig-r045-20220508
riscv                randconfig-r042-20220508
hexagon              randconfig-r041-20220508

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
