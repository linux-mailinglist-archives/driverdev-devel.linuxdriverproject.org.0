Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB2429CCCA
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 01:27:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2556F86B72;
	Wed, 28 Oct 2020 00:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyrUOYbrkj0X; Wed, 28 Oct 2020 00:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F258086A77;
	Wed, 28 Oct 2020 00:26:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B35691BF5D7
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 00:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFAC32E15C
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 00:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iu2hhTCzH2v6 for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 00:26:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 5EA962E154
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 00:26:52 +0000 (UTC)
IronPort-SDR: INJXtMw8zkSFkYDujB1GM11XT84gOWA1Q3oDIfJdX8/B7CvI3G+i32YaUb+vMCNCywCyfxySWY
 0xMTtDq2iyVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="167404451"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="167404451"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 17:26:50 -0700
IronPort-SDR: PLXTnBXVocUpgmNWKcyHM+6VMEXcNxcej+ONLFCb2WOEQpubKjqfvkJ2JVTtM46DrXn3eujs5y
 b7TWH83+TVlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="536015070"
Received: from lkp-server02.sh.intel.com (HELO 74b0a1e0e619) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 27 Oct 2020 17:26:49 -0700
Received: from kbuild by 74b0a1e0e619 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kXZIe-0000Af-Qd; Wed, 28 Oct 2020 00:26:48 +0000
Date: Wed, 28 Oct 2020 08:26:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 7e97e4cbf30026b49b0145c3bfe06087958382c5
Message-ID: <5f98baa9.cr7O0V9HCf23qvo7%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-linus
branch HEAD: 7e97e4cbf30026b49b0145c3bfe06087958382c5  staging: fieldbus: anybuss: jump to correct label in an error path

elapsed time: 721m

configs tested: 229
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                            zeus_defconfig
arm                         ebsa110_defconfig
arm                        shmobile_defconfig
sparc                            allyesconfig
powerpc                     sequoia_defconfig
c6x                        evmc6457_defconfig
sh                            titan_defconfig
powerpc                     tqm8548_defconfig
arm                          pxa168_defconfig
mips                           ip22_defconfig
arm                     davinci_all_defconfig
powerpc                       maple_defconfig
arm                           omap1_defconfig
powerpc                       holly_defconfig
m68k                        mvme147_defconfig
powerpc                     mpc83xx_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     pseries_defconfig
powerpc                     tqm8560_defconfig
sh                             sh03_defconfig
ia64                             alldefconfig
arm                           sunxi_defconfig
powerpc                        icon_defconfig
sh                     magicpanelr2_defconfig
arm                  colibri_pxa300_defconfig
arm                          pxa3xx_defconfig
powerpc                    mvme5100_defconfig
riscv                    nommu_virt_defconfig
arm                            mps2_defconfig
mips                         tb0219_defconfig
sh                          landisk_defconfig
arm                             mxs_defconfig
ia64                             allyesconfig
arm                          pxa910_defconfig
powerpc                     tqm8541_defconfig
parisc                           alldefconfig
arm                        spear6xx_defconfig
sh                   secureedge5410_defconfig
mips                       rbtx49xx_defconfig
sh                     sh7710voipgw_defconfig
powerpc                 mpc85xx_cds_defconfig
arc                      axs103_smp_defconfig
arm                       cns3420vb_defconfig
arc                              alldefconfig
arm                            dove_defconfig
m68k                                defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                 mpc834x_itx_defconfig
sh                          polaris_defconfig
mips                      malta_kvm_defconfig
mips                      bmips_stb_defconfig
arc                     haps_hs_smp_defconfig
arm                      pxa255-idp_defconfig
arm                        neponset_defconfig
xtensa                  nommu_kc705_defconfig
sh                      rts7751r2d1_defconfig
arm                         assabet_defconfig
sh                           se7343_defconfig
powerpc                    adder875_defconfig
m68k                       m5208evb_defconfig
arm                     am200epdkit_defconfig
arm                          lpd270_defconfig
xtensa                         virt_defconfig
powerpc                 linkstation_defconfig
parisc                generic-32bit_defconfig
arm                      integrator_defconfig
arm                          simpad_defconfig
sh                               allmodconfig
powerpc                      bamboo_defconfig
powerpc                     kmeter1_defconfig
c6x                        evmc6474_defconfig
powerpc                  iss476-smp_defconfig
arc                          axs103_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                malta_qemu_32r6_defconfig
arm                     eseries_pxa_defconfig
sh                          r7785rp_defconfig
c6x                         dsk6455_defconfig
arc                            hsdk_defconfig
m68k                          sun3x_defconfig
powerpc                       ppc64_defconfig
powerpc                        warp_defconfig
arm                             ezx_defconfig
h8300                            allyesconfig
mips                     cu1000-neo_defconfig
mips                     loongson1c_defconfig
powerpc                         wii_defconfig
arm                           h5000_defconfig
powerpc                      walnut_defconfig
c6x                        evmc6472_defconfig
mips                        nlm_xlp_defconfig
arc                        nsimosci_defconfig
sh                           se7780_defconfig
powerpc                 mpc8313_rdb_defconfig
ia64                        generic_defconfig
m68k                       m5275evb_defconfig
m68k                        m5272c3_defconfig
arm                          moxart_defconfig
arm                      footbridge_defconfig
arm                  colibri_pxa270_defconfig
powerpc                   motionpro_defconfig
mips                           gcw0_defconfig
powerpc                 mpc8272_ads_defconfig
sh                          r7780mp_defconfig
mips                            ar7_defconfig
s390                       zfcpdump_defconfig
sh                           se7705_defconfig
mips                        qi_lb60_defconfig
h8300                       h8s-sim_defconfig
powerpc                      pasemi_defconfig
mips                         bigsur_defconfig
xtensa                    smp_lx200_defconfig
arm                          exynos_defconfig
mips                malta_kvm_guest_defconfig
sh                           se7750_defconfig
powerpc                   bluestone_defconfig
powerpc                   lite5200b_defconfig
arm                         mv78xx0_defconfig
xtensa                              defconfig
sh                          rsk7264_defconfig
nds32                             allnoconfig
arm                         vf610m4_defconfig
mips                      fuloong2e_defconfig
mips                           mtx1_defconfig
m68k                            mac_defconfig
sh                        dreamcast_defconfig
powerpc                     ppa8548_defconfig
powerpc                 mpc836x_mds_defconfig
arm                       imx_v6_v7_defconfig
arm                           u8500_defconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                      chrp32_defconfig
mips                        maltaup_defconfig
mips                         mpc30x_defconfig
sh                          lboxre2_defconfig
mips                           ip28_defconfig
mips                             allyesconfig
arm                           spitz_defconfig
mips                          rb532_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a002-20201026
i386                 randconfig-a003-20201026
i386                 randconfig-a005-20201026
i386                 randconfig-a001-20201026
i386                 randconfig-a006-20201026
i386                 randconfig-a004-20201026
i386                 randconfig-a002-20201027
i386                 randconfig-a003-20201027
i386                 randconfig-a005-20201027
i386                 randconfig-a001-20201027
i386                 randconfig-a006-20201027
i386                 randconfig-a004-20201027
x86_64               randconfig-a011-20201026
x86_64               randconfig-a013-20201026
x86_64               randconfig-a016-20201026
x86_64               randconfig-a015-20201026
x86_64               randconfig-a012-20201026
x86_64               randconfig-a014-20201026
i386                 randconfig-a016-20201027
i386                 randconfig-a015-20201027
i386                 randconfig-a014-20201027
i386                 randconfig-a012-20201027
i386                 randconfig-a013-20201027
i386                 randconfig-a011-20201027
i386                 randconfig-a016-20201026
i386                 randconfig-a015-20201026
i386                 randconfig-a014-20201026
i386                 randconfig-a012-20201026
i386                 randconfig-a013-20201026
i386                 randconfig-a011-20201026
x86_64               randconfig-a001-20201027
x86_64               randconfig-a003-20201027
x86_64               randconfig-a002-20201027
x86_64               randconfig-a006-20201027
x86_64               randconfig-a004-20201027
x86_64               randconfig-a005-20201027
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20201026
x86_64               randconfig-a003-20201026
x86_64               randconfig-a002-20201026
x86_64               randconfig-a006-20201026
x86_64               randconfig-a004-20201026
x86_64               randconfig-a005-20201026
x86_64               randconfig-a011-20201027
x86_64               randconfig-a013-20201027
x86_64               randconfig-a016-20201027
x86_64               randconfig-a015-20201027
x86_64               randconfig-a012-20201027
x86_64               randconfig-a014-20201027

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
