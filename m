Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0507562E4E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Nov 2022 19:57:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 255E761051;
	Thu, 17 Nov 2022 18:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 255E761051
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7F5c1hkxPSV; Thu, 17 Nov 2022 18:57:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ABF16103A;
	Thu, 17 Nov 2022 18:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ABF16103A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA8121BF20F
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B1CA041916
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1CA041916
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U_4Wf9-sGFle for <devel@linuxdriverproject.org>;
 Thu, 17 Nov 2022 18:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2746041920
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2746041920
 for <devel@driverdev.osuosl.org>; Thu, 17 Nov 2022 18:57:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="292648044"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="292648044"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 10:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="671039168"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="671039168"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 17 Nov 2022 10:57:09 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovk4S-0000Yr-2t;
 Thu, 17 Nov 2022 18:57:08 +0000
Date: Fri, 18 Nov 2022 02:56:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 335140116703920ddcbd9a09ae9edfb02902f3d1
Message-ID: <637683d9.lxNpTOjjTQxs4Azq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668711432; x=1700247432;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6alHTqzw7TfGDnUDpu07w5oW4EEnGOBVSfWSFfzlL1o=;
 b=koM1cAJMfCj6AjbepetyL6ctiyZVrFrn4/PIIrToSp6HqYj5KXLv7Q8q
 kRjCl88epE9lSrzVKoH/gu6A9764entjyyf8ugZEg7gMZxyTQ4XiIoHQl
 rDX2c1oKPfj8U9knS+y9ew8Je2rscnPBEb7ERYkipYGC20bo6TNnH2tif
 cCgSnOCc7GdMU6rsuGYv/Z9XGbDRSUUCgWtVAjjP+ZF5nyfu7PN4huUzq
 1lhrFB0Jiv8hxS5iBzwD5n78Jirt6Z0dOuWUI4iMVWnbAErB7LnIwitzm
 pbfaVH2f6TX18/ahQdLhiAHcYMdlPBzvZ3XvV1tpHIk+h8mIMI1/3baVm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=koM1cAJM
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
branch HEAD: 335140116703920ddcbd9a09ae9edfb02902f3d1  staging: rtl8192u: remove redundant macro definitions

elapsed time: 11819m

configs tested: 397
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
arc                                 defconfig
s390                             allmodconfig
arc                  randconfig-r043-20221110
m68k                             allmodconfig
alpha                               defconfig
i386                          randconfig-a005
arc                              allyesconfig
alpha                            allyesconfig
s390                                defconfig
m68k                             allyesconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
arm                        cerfcube_defconfig
sh                               alldefconfig
sh                        sh7757lcr_defconfig
arm                                 defconfig
x86_64                              defconfig
s390                       zfcpdump_defconfig
powerpc                      arches_defconfig
powerpc                     sequoia_defconfig
mips                         cobalt_defconfig
arm                      footbridge_defconfig
xtensa                  cadence_csp_defconfig
mips                         db1xxx_defconfig
arm                        spear6xx_defconfig
powerpc                      pasemi_defconfig
powerpc              randconfig-c003-20221110
x86_64                           allyesconfig
x86_64                               rhel-8.3
sh                           se7722_defconfig
arm                         lpc18xx_defconfig
nios2                         10m50_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                      rts7751r2d1_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
powerpc                          allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
powerpc                    amigaone_defconfig
arc                        nsimosci_defconfig
arm64                            allyesconfig
arm                              allyesconfig
powerpc                       ppc64_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                               allmodconfig
sh                           se7724_defconfig
microblaze                          defconfig
parisc                           alldefconfig
arm                          pxa910_defconfig
arm                         cm_x300_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
sh                   secureedge5410_defconfig
parisc                generic-64bit_defconfig
xtensa                    xip_kc705_defconfig
xtensa                          iss_defconfig
powerpc                 mpc834x_mds_defconfig
ia64                        generic_defconfig
openrisc                         alldefconfig
i386                          randconfig-c001
sparc                               defconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
xtensa                           alldefconfig
parisc                generic-32bit_defconfig
powerpc                     taishan_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                         vf610m4_defconfig
s390                 randconfig-r044-20221111
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                randconfig-r042-20221111
arc                  randconfig-r043-20221111
arm                      integrator_defconfig
arc                          axs101_defconfig
loongarch                 loongson3_defconfig
mips                 randconfig-c004-20221111
powerpc                         ps3_defconfig
sh                         apsh4a3a_defconfig
loongarch                        alldefconfig
arm                            pleb_defconfig
arc                          axs103_defconfig
arm                       imx_v6_v7_defconfig
mips                 decstation_r4k_defconfig
arm                        oxnas_v6_defconfig
m68k                          hp300_defconfig
arm                         at91_dt_defconfig
sh                          r7780mp_defconfig
arm                           u8500_defconfig
mips                           gcw0_defconfig
mips                     loongson1b_defconfig
arm                           sunxi_defconfig
mips                            gpr_defconfig
xtensa                           allyesconfig
sh                        apsh4ad0a_defconfig
sh                   rts7751r2dplus_defconfig
mips                      fuloong2e_defconfig
arm                         axm55xx_defconfig
openrisc                            defconfig
openrisc                  or1klitex_defconfig
m68k                       m5208evb_defconfig
mips                           jazz_defconfig
mips                      loongson3_defconfig
powerpc                      cm5200_defconfig
m68k                       m5275evb_defconfig
powerpc                 linkstation_defconfig
arm64                               defconfig
ia64                             allyesconfig
arm                              allmodconfig
m68k                                defconfig
ia64                                defconfig
mips                             allmodconfig
m68k                         apollo_defconfig
mips                  maltasmvp_eva_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                       maple_defconfig
ia64                             alldefconfig
sh                     magicpanelr2_defconfig
powerpc                      ppc6xx_defconfig
powerpc                    sam440ep_defconfig
powerpc                    adder875_defconfig
powerpc                  storcenter_defconfig
mips                           ip32_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
m68k                        m5407c3_defconfig
arm                          iop32x_defconfig
arm                             pxa_defconfig
sh                          sdk7786_defconfig
arc                    vdk_hs38_smp_defconfig
sh                   sh7724_generic_defconfig
mips                         rt305x_defconfig
m68k                           virt_defconfig
m68k                       m5249evb_defconfig
m68k                        mvme147_defconfig
sh                   sh7770_generic_defconfig
sh                         ecovec24_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                  decstation_64_defconfig
powerpc                      pcm030_defconfig
arc                     nsimosci_hs_defconfig
arm                        multi_v7_defconfig
mips                    maltaup_xpa_defconfig
um                               alldefconfig
mips                           ci20_defconfig
m68k                           sun3_defconfig
sparc64                          alldefconfig
arm                          pxa3xx_defconfig
arc                         haps_hs_defconfig
sh                              ul2_defconfig
arm64                            alldefconfig
powerpc                     pq2fads_defconfig
openrisc                    or1ksim_defconfig
sh                           se7619_defconfig
arc                        nsim_700_defconfig
arm                          simpad_defconfig
arm                        mini2440_defconfig
sh                            migor_defconfig
sh                         microdev_defconfig
arm                           tegra_defconfig
arm                           viper_defconfig
xtensa                  audio_kc705_defconfig
powerpc                     redwood_defconfig
xtensa                         virt_defconfig
powerpc                        warp_defconfig
m68k                          amiga_defconfig
sh                        edosk7760_defconfig
powerpc                     ep8248e_defconfig
sh                          r7785rp_defconfig
i386                 randconfig-a002-20221114
i386                 randconfig-a004-20221114
i386                 randconfig-a006-20221114
i386                 randconfig-a003-20221114
i386                 randconfig-a005-20221114
i386                 randconfig-a001-20221114
x86_64               randconfig-a003-20221114
x86_64               randconfig-a005-20221114
x86_64               randconfig-a004-20221114
x86_64               randconfig-a002-20221114
x86_64               randconfig-a001-20221114
x86_64               randconfig-a006-20221114
microblaze                      mmu_defconfig
m68k                          sun3x_defconfig
arc                     haps_hs_smp_defconfig
mips                       bmips_be_defconfig
ia64                          tiger_defconfig
sh                          rsk7201_defconfig
sh                           se7343_defconfig
sh                            shmin_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
powerpc                     stx_gp3_defconfig
sh                           sh2007_defconfig
m68k                       m5475evb_defconfig
sh                            hp6xx_defconfig
sparc64                             defconfig
ia64                         bigsur_defconfig
arc                  randconfig-r043-20221114
arm                               allnoconfig
sh                               j2_defconfig
arm                           stm32_defconfig
arm                         assabet_defconfig
arc                               allnoconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221115
sh                          kfr2r09_defconfig
xtensa                  nommu_kc705_defconfig
arm                       multi_v4t_defconfig
powerpc                      ppc40x_defconfig
mips                     decstation_defconfig
openrisc                 simple_smp_defconfig
m68k                            q40_defconfig
sh                        dreamcast_defconfig
sh                          rsk7203_defconfig
arm                         lubbock_defconfig
sh                           se7705_defconfig
arm                            hisi_defconfig
powerpc                   motionpro_defconfig
mips                      maltasmvp_defconfig
sh                 kfr2r09-romimage_defconfig
s390                          debug_defconfig
sh                          rsk7264_defconfig
sparc                       sparc32_defconfig
powerpc                      makalu_defconfig
arm                         s3c6400_defconfig
powerpc                     asp8347_defconfig
arm                        shmobile_defconfig
alpha                            alldefconfig
powerpc                     tqm8555_defconfig
sh                            titan_defconfig
mips                            ar7_defconfig
arm                            zeus_defconfig
arm                             ezx_defconfig
powerpc                        cell_defconfig
arc                  randconfig-r043-20221117
riscv                randconfig-r042-20221117
sh                         ap325rxa_defconfig
s390                 randconfig-r044-20221117
arm                       omap2plus_defconfig
sh                        edosk7705_defconfig
x86_64                           alldefconfig
arm                  randconfig-c002-20221117
arm                        trizeps4_defconfig
m68k                        stmark2_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                          sdk7780_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
hexagon              randconfig-r041-20221110
riscv                randconfig-r042-20221109
hexagon              randconfig-r045-20221109
riscv                randconfig-r042-20221110
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221110
powerpc                        fsp2_defconfig
powerpc                    gamecube_defconfig
s390                 randconfig-r044-20221110
x86_64                        randconfig-k001
hexagon              randconfig-r041-20221111
hexagon              randconfig-r045-20221111
riscv                randconfig-c006-20221110
mips                 randconfig-c004-20221110
powerpc              randconfig-c003-20221110
s390                 randconfig-c005-20221110
mips                malta_qemu_32r6_defconfig
arm                       aspeed_g4_defconfig
mips                      pic32mzda_defconfig
arm                         lpc32xx_defconfig
powerpc                      obs600_defconfig
powerpc                    socrates_defconfig
powerpc                        icon_defconfig
arm                         hackkit_defconfig
arm                       netwinder_defconfig
arm                          ixp4xx_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                         s3c2410_defconfig
arm                           sama7_defconfig
arm                          pcm027_defconfig
arm                           omap1_defconfig
mips                        qi_lb60_defconfig
mips                  cavium_octeon_defconfig
powerpc                     skiroot_defconfig
powerpc                  mpc866_ads_defconfig
riscv                randconfig-c006-20221111
mips                 randconfig-c004-20221111
powerpc              randconfig-c003-20221111
s390                 randconfig-c005-20221111
riscv                            alldefconfig
powerpc                      ppc44x_defconfig
mips                           rs90_defconfig
arm                          sp7021_defconfig
powerpc                 mpc8560_ads_defconfig
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20221111
riscv                    nommu_virt_defconfig
arm                       cns3420vb_defconfig
mips                        bcm63xx_defconfig
mips                     cu1000-neo_defconfig
mips                           ip22_defconfig
x86_64                           allyesconfig
powerpc                  mpc885_ads_defconfig
arm                      pxa255-idp_defconfig
arm                        vexpress_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                          ath25_defconfig
arm                        magician_defconfig
arm                       spear13xx_defconfig
powerpc                          g5_defconfig
powerpc                          allyesconfig
mips                        maltaup_defconfig
arm                     am200epdkit_defconfig
arm                         mv78xx0_defconfig
powerpc                 xes_mpc85xx_defconfig
hexagon                             defconfig
mips                          malta_defconfig
riscv                             allnoconfig
i386                 randconfig-a015-20221114
i386                 randconfig-a013-20221114
i386                 randconfig-a011-20221114
i386                 randconfig-a016-20221114
i386                 randconfig-a012-20221114
i386                 randconfig-a014-20221114
mips                       lemote2f_defconfig
powerpc                     kilauea_defconfig
s390                 randconfig-r044-20221114
riscv                randconfig-r042-20221114
hexagon              randconfig-r041-20221114
hexagon              randconfig-r045-20221114
x86_64               randconfig-a012-20221114
x86_64               randconfig-a013-20221114
x86_64               randconfig-a016-20221114
x86_64               randconfig-a014-20221114
x86_64               randconfig-a015-20221114
x86_64               randconfig-a011-20221114
mips                           mtx1_defconfig
arm                       mainstone_defconfig
i386                             allyesconfig
mips                      bmips_stb_defconfig
powerpc                     mpc512x_defconfig
hexagon              randconfig-r041-20221115
hexagon              randconfig-r045-20221115
powerpc                   bluestone_defconfig
powerpc               mpc834x_itxgp_defconfig
riscv                randconfig-c006-20221115
mips                 randconfig-c004-20221115
arm                  randconfig-c002-20221115
powerpc              randconfig-c003-20221115
s390                 randconfig-c005-20221115
s390                 randconfig-r044-20221116
riscv                randconfig-r042-20221116
hexagon              randconfig-r041-20221116
hexagon              randconfig-r045-20221116
powerpc                     pseries_defconfig
hexagon              randconfig-r041-20221117
hexagon              randconfig-r045-20221117
riscv                randconfig-c006-20221116
mips                 randconfig-c004-20221116
arm                  randconfig-c002-20221116
powerpc              randconfig-c003-20221116
s390                 randconfig-c005-20221116
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
