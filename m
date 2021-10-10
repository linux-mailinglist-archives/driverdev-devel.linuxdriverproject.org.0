Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCC0427E84
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Oct 2021 05:18:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7826C4022C;
	Sun, 10 Oct 2021 03:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id li--dRWnuLeb; Sun, 10 Oct 2021 03:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DE0E401EE;
	Sun, 10 Oct 2021 03:18:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 899281BF976
 for <devel@linuxdriverproject.org>; Sun, 10 Oct 2021 03:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 746D560750
 for <devel@linuxdriverproject.org>; Sun, 10 Oct 2021 03:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i0G8iUEpn3HE for <devel@linuxdriverproject.org>;
 Sun, 10 Oct 2021 03:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 477B76006A
 for <devel@driverdev.osuosl.org>; Sun, 10 Oct 2021 03:18:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10132"; a="312903695"
X-IronPort-AV: E=Sophos;i="5.85,361,1624345200"; d="scan'208";a="312903695"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2021 20:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,361,1624345200"; d="scan'208";a="440337124"
Received: from lkp-server02.sh.intel.com (HELO 08b2c502c3de) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 09 Oct 2021 20:18:07 -0700
Received: from kbuild by 08b2c502c3de with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mZPLj-0000rQ-38; Sun, 10 Oct 2021 03:18:07 +0000
Date: Sun, 10 Oct 2021 11:17:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 e538e8649892a5890dcc2b2b157f3876573a7773
Message-ID: <61625b49.TcMY+EvgwUNdoLjV%lkp@intel.com>
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
branch HEAD: e538e8649892a5890dcc2b2b157f3876573a7773  MIPS: asm: pci: define arch-specific 'pci_remap_iospace()' dependent on 'CONFIG_PCI_DRIVERS_GENERIC'

elapsed time: 1047m

configs tested: 244
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211009
i386                 randconfig-c001-20211010
powerpc              randconfig-c003-20211009
sh                          sdk7786_defconfig
arm                           stm32_defconfig
arm                             ezx_defconfig
arm                          exynos_defconfig
mips                          rb532_defconfig
mips                       bmips_be_defconfig
m68k                           sun3_defconfig
sh                           se7780_defconfig
powerpc                    sam440ep_defconfig
powerpc                      tqm8xx_defconfig
sh                          rsk7269_defconfig
arm                             mxs_defconfig
m68k                        mvme147_defconfig
sh                            shmin_defconfig
powerpc                      pcm030_defconfig
um                             i386_defconfig
arm                            xcep_defconfig
arm                         lpc32xx_defconfig
mips                      maltaaprp_defconfig
arm                         palmz72_defconfig
ia64                      gensparse_defconfig
arm                       spear13xx_defconfig
m68k                        stmark2_defconfig
arm                     eseries_pxa_defconfig
powerpc64                           defconfig
s390                             alldefconfig
sh                          lboxre2_defconfig
powerpc                     akebono_defconfig
powerpc                   bluestone_defconfig
mips                       capcella_defconfig
parisc                generic-32bit_defconfig
i386                                defconfig
powerpc                  mpc885_ads_defconfig
arm                         at91_dt_defconfig
arm                       cns3420vb_defconfig
mips                          ath25_defconfig
xtensa                  cadence_csp_defconfig
sh                               allmodconfig
arm                         axm55xx_defconfig
powerpc                     pseries_defconfig
xtensa                           alldefconfig
h8300                       h8s-sim_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                      ppc6xx_defconfig
arm                         vf610m4_defconfig
arm                              alldefconfig
powerpc                     redwood_defconfig
mips                           mtx1_defconfig
arm                        vexpress_defconfig
microblaze                      mmu_defconfig
mips                       lemote2f_defconfig
arm                          lpd270_defconfig
arm                           h5000_defconfig
xtensa                          iss_defconfig
arm                           viper_defconfig
sh                      rts7751r2d1_defconfig
m68k                          atari_defconfig
arc                         haps_hs_defconfig
sh                   sh7770_generic_defconfig
arm                        mvebu_v7_defconfig
arm                         bcm2835_defconfig
arm                        shmobile_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                     decstation_defconfig
mips                            e55_defconfig
mips                      maltasmvp_defconfig
arm                       imx_v4_v5_defconfig
mips                         mpc30x_defconfig
arm                          collie_defconfig
sh                           se7206_defconfig
powerpc                 mpc837x_rdb_defconfig
um                               alldefconfig
arm                        neponset_defconfig
powerpc                     tqm8560_defconfig
powerpc                      makalu_defconfig
mips                        omega2p_defconfig
powerpc                  storcenter_defconfig
x86_64                              defconfig
powerpc                    gamecube_defconfig
m68k                          multi_defconfig
sh                        edosk7705_defconfig
powerpc                     rainier_defconfig
mips                          malta_defconfig
arm                        keystone_defconfig
powerpc                      mgcoge_defconfig
sh                           se7712_defconfig
sh                   secureedge5410_defconfig
openrisc                            defconfig
powerpc                     asp8347_defconfig
sh                            titan_defconfig
powerpc                      ppc40x_defconfig
um                                  defconfig
mips                           ip22_defconfig
mips                   sb1250_swarm_defconfig
um                           x86_64_defconfig
powerpc                    mvme5100_defconfig
arm                            pleb_defconfig
sparc64                             defconfig
sh                        sh7785lcr_defconfig
sh                 kfr2r09-romimage_defconfig
alpha                            alldefconfig
powerpc                      acadia_defconfig
sh                     sh7710voipgw_defconfig
mips                           jazz_defconfig
arm                       aspeed_g5_defconfig
arm                            mmp2_defconfig
sh                            migor_defconfig
sh                               j2_defconfig
sh                           se7619_defconfig
sh                           se7721_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                            ar7_defconfig
sh                          r7785rp_defconfig
powerpc64                        alldefconfig
powerpc                      ppc44x_defconfig
powerpc                      arches_defconfig
arm                      footbridge_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     ksi8560_defconfig
arc                              allyesconfig
powerpc                      obs600_defconfig
arm                           sama7_defconfig
powerpc                     tqm8555_defconfig
arm                         s5pv210_defconfig
arm                          ep93xx_defconfig
sh                         ap325rxa_defconfig
arc                     haps_hs_smp_defconfig
mips                      pic32mzda_defconfig
arm                        realview_defconfig
arm                   milbeaut_m10v_defconfig
x86_64               randconfig-c001-20211009
arm                  randconfig-c002-20211009
arm                  randconfig-c002-20211010
x86_64               randconfig-c001-20211010
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
s390                             allmodconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20211009
x86_64               randconfig-a005-20211009
x86_64               randconfig-a001-20211009
x86_64               randconfig-a002-20211009
x86_64               randconfig-a004-20211009
x86_64               randconfig-a006-20211009
x86_64               randconfig-a004-20211010
x86_64               randconfig-a006-20211010
x86_64               randconfig-a001-20211010
x86_64               randconfig-a005-20211010
x86_64               randconfig-a002-20211010
x86_64               randconfig-a003-20211010
i386                 randconfig-a001-20211010
i386                 randconfig-a003-20211010
i386                 randconfig-a004-20211010
i386                 randconfig-a005-20211010
i386                 randconfig-a002-20211010
i386                 randconfig-a006-20211010
i386                 randconfig-a005-20211009
i386                 randconfig-a006-20211009
i386                 randconfig-a001-20211009
i386                 randconfig-a003-20211009
i386                 randconfig-a004-20211009
i386                 randconfig-a002-20211009
arc                  randconfig-r043-20211009
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
arm                  randconfig-c002-20211010
mips                 randconfig-c004-20211010
i386                 randconfig-c001-20211010
s390                 randconfig-c005-20211010
x86_64               randconfig-c007-20211010
powerpc              randconfig-c003-20211010
riscv                randconfig-c006-20211010
x86_64               randconfig-a015-20211010
x86_64               randconfig-a012-20211010
x86_64               randconfig-a016-20211010
x86_64               randconfig-a014-20211010
x86_64               randconfig-a013-20211010
x86_64               randconfig-a011-20211010
x86_64               randconfig-a015-20211009
x86_64               randconfig-a012-20211009
x86_64               randconfig-a016-20211009
x86_64               randconfig-a013-20211009
x86_64               randconfig-a011-20211009
x86_64               randconfig-a014-20211009
i386                 randconfig-a016-20211009
i386                 randconfig-a013-20211009
i386                 randconfig-a014-20211009
i386                 randconfig-a012-20211009
i386                 randconfig-a011-20211009
i386                 randconfig-a015-20211009
i386                 randconfig-a016-20211010
i386                 randconfig-a014-20211010
i386                 randconfig-a011-20211010
i386                 randconfig-a015-20211010
i386                 randconfig-a012-20211010
i386                 randconfig-a013-20211010
hexagon              randconfig-r041-20211010
s390                 randconfig-r044-20211010
riscv                randconfig-r042-20211010
hexagon              randconfig-r045-20211010
s390                 randconfig-r044-20211009
hexagon              randconfig-r045-20211009
hexagon              randconfig-r041-20211009
riscv                randconfig-r042-20211009

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
