Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7885C52FFE0
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 May 2022 01:58:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BD7741870;
	Sat, 21 May 2022 23:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KvPI7aCTttVO; Sat, 21 May 2022 23:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD988418AE;
	Sat, 21 May 2022 23:58:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E535F1BF239
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 23:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3A8360A82
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 23:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tlY6AZM-lV2 for <devel@linuxdriverproject.org>;
 Sat, 21 May 2022 23:57:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AEEC60A46
 for <devel@driverdev.osuosl.org>; Sat, 21 May 2022 23:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653177479; x=1684713479;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hJHLI6QUvuzbum3bSBYZrnVM4Z8EVlg4PvqTtLTCAzE=;
 b=MSsIdZ1KNSOGk4iFSPZ/0L6z0L1F8qZ51Llt7CvcTdoM6oxFggKAZher
 Oa9C15KYtq/7gjHFHHNFGd5k3tnF9dUxlMJ8fO+WijJj1NGmb7nRbT2vt
 u0AGs91KbBkYVfHwEq03kT0CS6vp4AwqWyR2fgQtLrSaNNeVAJxuXOgs+
 W4ngIEbPbgyOX0lE8m92dExcKN6VFkfohZaRelhf74ZXcWVOmsStn1Csx
 mPnMU1kqCznrvfV9vKBpfDZFWkEGfUa7Kox63KI6m7t/vI8xORDrM/Abc
 nPpteR5A2xK1KHqWsadyRJ7BKLAFVu11ScSRc61Hv/U40M80CSHwg1ROJ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10354"; a="271744445"
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="271744445"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2022 16:57:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="702344424"
Received: from lkp-server02.sh.intel.com (HELO 242b25809ac7) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 21 May 2022 16:57:55 -0700
Received: from kbuild by 242b25809ac7 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nsYyp-0006jU-49;
 Sat, 21 May 2022 23:57:55 +0000
Date: Sun, 22 May 2022 07:57:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 6a31a95135da0bb2c5349e49e37d76e9909ab7ea
Message-ID: <62897c5b.nDaL4X/UiYHVGhKh%lkp@intel.com>
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
branch HEAD: 6a31a95135da0bb2c5349e49e37d76e9909ab7ea  staging: r8188eu: remove include/rtw_debug.h

elapsed time: 2893m

configs tested: 225
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc64                           defconfig
powerpc                     asp8347_defconfig
m68k                            mac_defconfig
ia64                            zx1_defconfig
ia64                      gensparse_defconfig
arm                            pleb_defconfig
sh                            titan_defconfig
sh                            migor_defconfig
arm                      footbridge_defconfig
s390                          debug_defconfig
xtensa                    xip_kc705_defconfig
sh                               j2_defconfig
um                                  defconfig
um                               alldefconfig
arm                        shmobile_defconfig
mips                      maltasmvp_defconfig
powerpc                    sam440ep_defconfig
powerpc                      cm5200_defconfig
mips                           ci20_defconfig
s390                             allyesconfig
xtensa                          iss_defconfig
ia64                        generic_defconfig
powerpc                      chrp32_defconfig
mips                  maltasmvp_eva_defconfig
riscv                            allyesconfig
powerpc                      pcm030_defconfig
sh                   sh7770_generic_defconfig
h8300                    h8300h-sim_defconfig
arm                        mini2440_defconfig
xtensa                           allyesconfig
sh                           se7721_defconfig
arm                           tegra_defconfig
arm                        cerfcube_defconfig
arm                           corgi_defconfig
sh                        sh7763rdp_defconfig
sh                         microdev_defconfig
arm                      jornada720_defconfig
powerpc                     sequoia_defconfig
powerpc                        cell_defconfig
sh                                  defconfig
powerpc                    klondike_defconfig
xtensa                  audio_kc705_defconfig
arm                           h3600_defconfig
parisc                generic-64bit_defconfig
sh                           se7619_defconfig
h8300                            allyesconfig
alpha                               defconfig
arm                           h5000_defconfig
arm                        multi_v7_defconfig
ia64                         bigsur_defconfig
sh                          landisk_defconfig
alpha                            allyesconfig
arm                        realview_defconfig
arm                            qcom_defconfig
sh                           se7343_defconfig
nios2                            alldefconfig
arc                        nsimosci_defconfig
powerpc                     stx_gp3_defconfig
sparc64                          alldefconfig
i386                                defconfig
powerpc                      ep88xc_defconfig
h8300                       h8s-sim_defconfig
powerpc                     mpc83xx_defconfig
powerpc                 mpc834x_mds_defconfig
arm                            lart_defconfig
sh                          urquell_defconfig
x86_64                           alldefconfig
powerpc                 canyonlands_defconfig
powerpc                       eiger_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                   motionpro_defconfig
arc                          axs103_defconfig
sh                          sdk7786_defconfig
mips                 decstation_r4k_defconfig
um                             i386_defconfig
s390                       zfcpdump_defconfig
arm                           sama5_defconfig
m68k                             allyesconfig
m68k                          hp300_defconfig
mips                         mpc30x_defconfig
powerpc                        warp_defconfig
m68k                            q40_defconfig
powerpc                 mpc837x_mds_defconfig
arm                           viper_defconfig
arm                        keystone_defconfig
openrisc                 simple_smp_defconfig
xtensa                generic_kc705_defconfig
powerpc                       holly_defconfig
arc                          axs101_defconfig
powerpc                     rainier_defconfig
m68k                       m5208evb_defconfig
powerpc                      mgcoge_defconfig
mips                     loongson1b_defconfig
arc                         haps_hs_defconfig
sh                               allmodconfig
sh                   secureedge5410_defconfig
sparc64                             defconfig
arm                            xcep_defconfig
m68k                       bvme6000_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                mpc7448_hpc2_defconfig
nios2                         3c120_defconfig
m68k                          sun3x_defconfig
sh                        sh7757lcr_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220519
arm                  randconfig-c002-20220522
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
riscv                             allnoconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
arc                                 defconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220522
s390                 randconfig-r044-20220522
riscv                randconfig-r042-20220522
arc                  randconfig-r043-20220519
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc              randconfig-c003-20220519
x86_64                        randconfig-c007
riscv                randconfig-c006-20220519
mips                 randconfig-c004-20220519
i386                          randconfig-c001
arm                  randconfig-c002-20220519
s390                 randconfig-c005-20220519
arm                  randconfig-c002-20220522
s390                 randconfig-c005-20220522
powerpc              randconfig-c003-20220522
riscv                randconfig-c006-20220522
mips                 randconfig-c004-20220522
powerpc                          g5_defconfig
hexagon                             defconfig
arm                          ep93xx_defconfig
mips                      malta_kvm_defconfig
arm                              alldefconfig
arm                          ixp4xx_defconfig
powerpc                      pmac32_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                           rs90_defconfig
arm                     davinci_all_defconfig
arm                         mv78xx0_defconfig
powerpc                    ge_imp3a_defconfig
mips                      pic32mzda_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                   bluestone_defconfig
powerpc                      katmai_defconfig
powerpc                        icon_defconfig
powerpc                      ppc44x_defconfig
arm                       spear13xx_defconfig
powerpc                          allmodconfig
powerpc                 mpc8272_ads_defconfig
arm                         palmz72_defconfig
mips                            e55_defconfig
arm                        mvebu_v5_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                    gamecube_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220522
hexagon              randconfig-r041-20220522
hexagon              randconfig-r045-20220519
riscv                randconfig-r042-20220519
hexagon              randconfig-r041-20220519
s390                 randconfig-r044-20220519
hexagon              randconfig-r045-20220521
hexagon              randconfig-r041-20220521
s390                 randconfig-r044-20220521
riscv                randconfig-r042-20220521

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
