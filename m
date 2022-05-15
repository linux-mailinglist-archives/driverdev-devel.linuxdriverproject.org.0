Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE8A5274BA
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 May 2022 02:08:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47BA9409F6;
	Sun, 15 May 2022 00:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hc9UbdM2KKA9; Sun, 15 May 2022 00:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11A094093A;
	Sun, 15 May 2022 00:08:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 962D21BF947
 for <devel@linuxdriverproject.org>; Sun, 15 May 2022 00:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80CC7826E5
 for <devel@linuxdriverproject.org>; Sun, 15 May 2022 00:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPdhv2xTk_a9 for <devel@linuxdriverproject.org>;
 Sun, 15 May 2022 00:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0450881C38
 for <devel@driverdev.osuosl.org>; Sun, 15 May 2022 00:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652573277; x=1684109277;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZTWZOWZZIeZnTq22mj7TCUcHDp8Eh6b+pSIzBNDlOV4=;
 b=XZp2HeoMZ893qCbFKTuFUSponhtaGdonFV/MKzbl7hj+S+PfJHWVk8h1
 VAX2kW/Azf8YpuM2ijLa9tPmJi0pDcxlZ9TfvKhvBb5t0+XgHhps22/lV
 6p7273zP+2x7Cu/X3IVJfTydWWcTwlDElIvrA5+lZf/Tws04XQ618O/lB
 VlUCNW3nX+mxTitvQYGC7V+jhA3BMzbOw4i/j3vHnjSrYC4yeCtr1WWqu
 7Va+PJGRMfnD6fosZryjab7JQygZp97iZyNt8WZ8nqg4quwIAoWiyvSqZ
 iZVfvcUF/MKYia4fVrbQONHWp8dG5YmRLxtXRexsH2rbYd39Odp1+5fOa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10347"; a="270510945"
X-IronPort-AV: E=Sophos;i="5.91,227,1647327600"; d="scan'208";a="270510945"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2022 17:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,227,1647327600"; d="scan'208";a="671840990"
Received: from lkp-server01.sh.intel.com (HELO d1462bc4b09b) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2022 17:07:48 -0700
Received: from kbuild by d1462bc4b09b with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nq1nX-00017p-Pu;
 Sun, 15 May 2022 00:07:47 +0000
Date: Sun, 15 May 2022 08:07:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 e41f7a5521d7f03dca99e3207633df71740569dd
Message-ID: <6280443f.P3wkJd527UXVeboA%lkp@intel.com>
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
branch HEAD: e41f7a5521d7f03dca99e3207633df71740569dd  staging: r8188eu: remove unused IEEE_* defines

elapsed time: 12996m

configs tested: 519
configs skipped: 6

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
powerpc              randconfig-c003-20220512
arm                        clps711x_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                         tb0226_defconfig
m68k                             allmodconfig
xtensa                       common_defconfig
arm                      jornada720_defconfig
arm                           h5000_defconfig
m68k                          hp300_defconfig
alpha                            alldefconfig
arm                         nhk8815_defconfig
sh                               j2_defconfig
sh                         ap325rxa_defconfig
sh                      rts7751r2d1_defconfig
arm                         lpc18xx_defconfig
sh                          rsk7269_defconfig
mips                          rb532_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                  storcenter_defconfig
arm                           stm32_defconfig
csky                                defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                     tqm8555_defconfig
sh                ecovec24-romimage_defconfig
arm                           sunxi_defconfig
ia64                             alldefconfig
arm                          exynos_defconfig
h8300                    h8300h-sim_defconfig
sh                              ul2_defconfig
mips                           ci20_defconfig
sparc                       sparc64_defconfig
nios2                         3c120_defconfig
sh                           se7619_defconfig
powerpc64                           defconfig
sh                        edosk7760_defconfig
arc                          axs101_defconfig
h8300                       h8s-sim_defconfig
xtensa                generic_kc705_defconfig
powerpc                      arches_defconfig
mips                           ip32_defconfig
arm                          simpad_defconfig
arm                        cerfcube_defconfig
sh                          r7785rp_defconfig
sh                          urquell_defconfig
sparc64                             defconfig
m68k                       m5475evb_defconfig
arm                        shmobile_defconfig
m68k                        mvme16x_defconfig
m68k                       m5249evb_defconfig
arm                            pleb_defconfig
powerpc                      makalu_defconfig
arm                         axm55xx_defconfig
powerpc                 linkstation_defconfig
mips                       capcella_defconfig
xtensa                         virt_defconfig
um                                  defconfig
ia64                         bigsur_defconfig
xtensa                          iss_defconfig
xtensa                  audio_kc705_defconfig
xtensa                           alldefconfig
m68k                       m5275evb_defconfig
ia64                      gensparse_defconfig
xtensa                    xip_kc705_defconfig
h8300                     edosk2674_defconfig
arm                            hisi_defconfig
mips                        bcm47xx_defconfig
sh                           se7712_defconfig
powerpc                       ppc64_defconfig
csky                             alldefconfig
sh                             sh03_defconfig
sh                   sh7724_generic_defconfig
m68k                          atari_defconfig
powerpc                      cm5200_defconfig
powerpc                       eiger_defconfig
powerpc                     redwood_defconfig
mips                  decstation_64_defconfig
sh                          kfr2r09_defconfig
arm                       omap2plus_defconfig
xtensa                  cadence_csp_defconfig
ia64                        generic_defconfig
arm                            qcom_defconfig
arc                     nsimosci_hs_defconfig
powerpc                        warp_defconfig
sh                           se7721_defconfig
arm                           corgi_defconfig
mips                 decstation_r4k_defconfig
mips                           xway_defconfig
powerpc                      pasemi_defconfig
arm                        mini2440_defconfig
arm                        multi_v7_defconfig
m68k                        m5272c3_defconfig
sh                          rsk7201_defconfig
arm                         at91_dt_defconfig
arc                        nsim_700_defconfig
mips                             allyesconfig
arm                        spear6xx_defconfig
x86_64                           alldefconfig
powerpc                     tqm8548_defconfig
m68k                       bvme6000_defconfig
sh                           se7705_defconfig
mips                       bmips_be_defconfig
arm                         lubbock_defconfig
parisc                           alldefconfig
sh                          rsk7203_defconfig
arm                          iop32x_defconfig
arm                         cm_x300_defconfig
arm                           h3600_defconfig
um                               alldefconfig
sh                        sh7763rdp_defconfig
powerpc                     sequoia_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                      mgcoge_defconfig
sh                          landisk_defconfig
xtensa                  nommu_kc705_defconfig
arm                             rpc_defconfig
mips                         cobalt_defconfig
riscv                            allyesconfig
parisc64                         alldefconfig
m68k                            mac_defconfig
powerpc                     taishan_defconfig
sh                                  defconfig
arm                       aspeed_g5_defconfig
ia64                          tiger_defconfig
s390                       zfcpdump_defconfig
riscv                               defconfig
m68k                           sun3_defconfig
sh                          sdk7780_defconfig
powerpc                    sam440ep_defconfig
powerpc                      ppc40x_defconfig
powerpc                    adder875_defconfig
sh                         ecovec24_defconfig
sh                               allmodconfig
sh                        dreamcast_defconfig
powerpc64                        alldefconfig
arc                        nsimosci_defconfig
um                           x86_64_defconfig
arc                              alldefconfig
powerpc                           allnoconfig
arm                            zeus_defconfig
nios2                            alldefconfig
sh                           sh2007_defconfig
i386                                defconfig
powerpc                      tqm8xx_defconfig
x86_64                              defconfig
mips                      loongson3_defconfig
sparc                            alldefconfig
powerpc                 mpc837x_rdb_defconfig
sh                          polaris_defconfig
sh                            hp6xx_defconfig
arc                         haps_hs_defconfig
m68k                            q40_defconfig
arm                        keystone_defconfig
powerpc                 mpc85xx_cds_defconfig
parisc                generic-64bit_defconfig
sh                   secureedge5410_defconfig
arc                                 defconfig
mips                             allmodconfig
powerpc                     ep8248e_defconfig
sh                             espt_defconfig
arm                       multi_v4t_defconfig
arm                             ezx_defconfig
xtensa                              defconfig
arm                           sama5_defconfig
mips                    maltaup_xpa_defconfig
arc                        vdk_hs38_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                       imx_v6_v7_defconfig
mips                     decstation_defconfig
ia64                            zx1_defconfig
parisc64                            defconfig
openrisc                            defconfig
powerpc                  iss476-smp_defconfig
sparc                            allyesconfig
sh                         microdev_defconfig
powerpc                       holly_defconfig
mips                        vocore2_defconfig
arm                          pxa910_defconfig
arm                        realview_defconfig
arm                         vf610m4_defconfig
sh                        sh7785lcr_defconfig
openrisc                    or1ksim_defconfig
powerpc                     stx_gp3_defconfig
h8300                               defconfig
arc                      axs103_smp_defconfig
sh                        edosk7705_defconfig
nios2                            allyesconfig
m68k                          multi_defconfig
s390                             allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
mips                  maltasmvp_eva_defconfig
mips                            ar7_defconfig
arm                        trizeps4_defconfig
arm                            xcep_defconfig
arm                           viper_defconfig
powerpc                         wii_defconfig
powerpc                    klondike_defconfig
arc                          axs103_defconfig
sparc                       sparc32_defconfig
sh                           se7750_defconfig
sparc                               defconfig
arm64                            alldefconfig
m68k                          sun3x_defconfig
arm                         assabet_defconfig
h8300                            allyesconfig
powerpc                     rainier_defconfig
s390                                defconfig
arc                     haps_hs_smp_defconfig
m68k                         apollo_defconfig
powerpc                     tqm8541_defconfig
powerpc                 mpc834x_itx_defconfig
mips                         mpc30x_defconfig
arm                     eseries_pxa_defconfig
sh                           se7343_defconfig
parisc                generic-32bit_defconfig
alpha                               defconfig
arm                      footbridge_defconfig
sh                           se7751_defconfig
sh                 kfr2r09-romimage_defconfig
m68k                       m5208evb_defconfig
mips                      fuloong2e_defconfig
powerpc                      ep88xc_defconfig
m68k                        m5307c3_defconfig
powerpc                      pcm030_defconfig
arc                    vdk_hs38_smp_defconfig
sh                        apsh4ad0a_defconfig
sh                   rts7751r2dplus_defconfig
m68k                                defconfig
powerpc                   motionpro_defconfig
arm                      integrator_defconfig
arm                          gemini_defconfig
alpha                            allyesconfig
arm                          lpd270_defconfig
sh                         apsh4a3a_defconfig
powerpc                 canyonlands_defconfig
xtensa                    smp_lx200_defconfig
i386                             alldefconfig
m68k                        mvme147_defconfig
xtensa                           allyesconfig
arm                          badge4_defconfig
nios2                               defconfig
mips                           gcw0_defconfig
powerpc                 mpc837x_mds_defconfig
sh                          lboxre2_defconfig
arm                             pxa_defconfig
arc                           tb10x_defconfig
microblaze                          defconfig
mips                         db1xxx_defconfig
powerpc                   currituck_defconfig
mips                      maltasmvp_defconfig
powerpc                      chrp32_defconfig
sh                           se7724_defconfig
sh                            migor_defconfig
sh                           se7206_defconfig
sh                             shx3_defconfig
arm                            mps2_defconfig
mips                         rt305x_defconfig
sh                               alldefconfig
arm                        mvebu_v7_defconfig
powerpc                       maple_defconfig
powerpc                      ppc6xx_defconfig
sh                          sdk7786_defconfig
arm                         s3c6400_defconfig
m68k                        stmark2_defconfig
arm                          pxa3xx_defconfig
powerpc                        cell_defconfig
ia64                                defconfig
m68k                         amcore_defconfig
sh                            titan_defconfig
m68k                          amiga_defconfig
m68k                             alldefconfig
parisc                           allyesconfig
arm                           tegra_defconfig
sh                        sh7757lcr_defconfig
sh                           se7722_defconfig
openrisc                  or1klitex_defconfig
m68k                        m5407c3_defconfig
sh                     sh7710voipgw_defconfig
arm                        oxnas_v6_defconfig
arm                            lart_defconfig
powerpc                     pq2fads_defconfig
sh                          r7780mp_defconfig
sh                           se7780_defconfig
sh                            shmin_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                            gpr_defconfig
powerpc                    amigaone_defconfig
sh                     magicpanelr2_defconfig
powerpc                         ps3_defconfig
arc                            hsdk_defconfig
microblaze                      mmu_defconfig
powerpc                      bamboo_defconfig
mips                         bigsur_defconfig
mips                     loongson1b_defconfig
powerpc                     asp8347_defconfig
riscv                    nommu_k210_defconfig
openrisc                         alldefconfig
sh                          rsk7264_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220506
x86_64               randconfig-c001-20220509
arm                  randconfig-c002-20220509
arm                  randconfig-c002-20220505
arm                  randconfig-c002-20220507
arm                  randconfig-c002-20220508
arm                  randconfig-c002-20220512
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
s390                             allmodconfig
parisc                              defconfig
i386                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
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
arc                  randconfig-r043-20220505
s390                 randconfig-r044-20220505
riscv                randconfig-r042-20220505
arc                  randconfig-r043-20220509
s390                 randconfig-r044-20220509
riscv                randconfig-r042-20220509
s390                 randconfig-r044-20220512
riscv                randconfig-r042-20220512
arc                  randconfig-r043-20220512
arc                  randconfig-r043-20220513
arc                  randconfig-r043-20220507
s390                 randconfig-r044-20220507
riscv                randconfig-r042-20220507
s390                 randconfig-r044-20220510
riscv                randconfig-r042-20220510
arc                  randconfig-r043-20220510
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
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
powerpc              randconfig-c003-20220507
riscv                randconfig-c006-20220507
mips                 randconfig-c004-20220507
arm                  randconfig-c002-20220507
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
s390                 randconfig-c005-20220509
powerpc              randconfig-c003-20220512
riscv                randconfig-c006-20220512
mips                 randconfig-c004-20220512
arm                  randconfig-c002-20220512
powerpc              randconfig-c003-20220510
riscv                randconfig-c006-20220510
mips                 randconfig-c004-20220510
arm                  randconfig-c002-20220510
s390                 randconfig-c005-20220512
powerpc              randconfig-c003-20220505
riscv                randconfig-c006-20220505
arm                  randconfig-c002-20220505
powerpc                     tqm5200_defconfig
powerpc                          allyesconfig
arm                           omap1_defconfig
mips                     cu1830-neo_defconfig
powerpc                      acadia_defconfig
arm                  colibri_pxa300_defconfig
arm                          pcm027_defconfig
powerpc                    mvme5100_defconfig
arm                                 defconfig
mips                        omega2p_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                         orion5x_defconfig
mips                         tb0219_defconfig
powerpc                     mpc5200_defconfig
arm                       cns3420vb_defconfig
arm                          collie_defconfig
powerpc                     kmeter1_defconfig
arm                        spear3xx_defconfig
i386                             allyesconfig
mips                           mtx1_defconfig
arm                         socfpga_defconfig
arm                       imx_v4_v5_defconfig
powerpc                     ppa8548_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     ksi8560_defconfig
mips                          ath25_defconfig
mips                           rs90_defconfig
mips                          malta_defconfig
powerpc                      katmai_defconfig
powerpc                     tqm8540_defconfig
mips                          ath79_defconfig
powerpc                      ppc64e_defconfig
mips                        workpad_defconfig
powerpc                     akebono_defconfig
powerpc                     powernv_defconfig
powerpc                          allmodconfig
mips                       rbtx49xx_defconfig
mips                        maltaup_defconfig
mips                      maltaaprp_defconfig
powerpc                     pseries_defconfig
arm                      pxa255-idp_defconfig
hexagon                             defconfig
arm                        mvebu_v5_defconfig
powerpc                  mpc885_ads_defconfig
arm                        vexpress_defconfig
arm                     davinci_all_defconfig
arm                       netwinder_defconfig
riscv                    nommu_virt_defconfig
arm                           spitz_defconfig
arm                         bcm2835_defconfig
mips                  cavium_octeon_defconfig
riscv                             allnoconfig
arm                       mainstone_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     skiroot_defconfig
powerpc                   bluestone_defconfig
powerpc                     tqm8560_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                      walnut_defconfig
arm                     am200epdkit_defconfig
mips                            e55_defconfig
arm                             mxs_defconfig
arm                        neponset_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                      malta_kvm_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                       lemote2f_defconfig
arm                       aspeed_g4_defconfig
arm                       versatile_defconfig
arm                         s3c2410_defconfig
powerpc                 mpc8272_ads_defconfig
arm                          ixp4xx_defconfig
arm                            mmp2_defconfig
arm                            dove_defconfig
mips                      pic32mzda_defconfig
arm                         lpc32xx_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                          moxart_defconfig
powerpc                   lite5200b_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                   sb1250_swarm_defconfig
arm                       spear13xx_defconfig
mips                     loongson1c_defconfig
arm                         shannon_defconfig
mips                     cu1000-neo_defconfig
arm                         s5pv210_defconfig
mips                malta_qemu_32r6_defconfig
arm                          pxa168_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64               randconfig-a006-20220509
x86_64               randconfig-a002-20220509
x86_64               randconfig-a001-20220509
x86_64               randconfig-a004-20220509
x86_64               randconfig-a005-20220509
x86_64               randconfig-a003-20220509
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                 randconfig-a004-20220509
i386                 randconfig-a006-20220509
i386                 randconfig-a002-20220509
i386                 randconfig-a003-20220509
i386                 randconfig-a001-20220509
i386                 randconfig-a005-20220509
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220512
hexagon              randconfig-r041-20220512
hexagon              randconfig-r045-20220506
riscv                randconfig-r042-20220506
hexagon              randconfig-r041-20220506
hexagon              randconfig-r045-20220509
hexagon              randconfig-r041-20220509
hexagon              randconfig-r045-20220505
hexagon              randconfig-r041-20220505
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
