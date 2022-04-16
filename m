Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110185036AB
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Apr 2022 14:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9525B409DE;
	Sat, 16 Apr 2022 12:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1UB5LpY3c0eV; Sat, 16 Apr 2022 12:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24586409DD;
	Sat, 16 Apr 2022 12:57:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2E4F1BF3E8
 for <devel@linuxdriverproject.org>; Sat, 16 Apr 2022 12:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D023260A74
 for <devel@linuxdriverproject.org>; Sat, 16 Apr 2022 12:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WDTqm0q62dq6 for <devel@linuxdriverproject.org>;
 Sat, 16 Apr 2022 12:57:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7052B607F9
 for <devel@driverdev.osuosl.org>; Sat, 16 Apr 2022 12:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650113826; x=1681649826;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9IlxsGPJ7HzS89mYW2WNqPThS3ODhYIjDSJhxh6NZCs=;
 b=m+ln6nLSoHoIcawOcxZlrj9E48wzen6+EuW52KG0TH9G07YeTsw3msuF
 rBkkl9yAVe2Fh8MRyitMCoOLplGP8T8xyKY00iyK4iFiEy4IOJbmNiN+4
 4LPsk3r2aYHP0JOE2haC+VcUDZaquX5iis7LVONTZHKDd0lT7NuAmOQyE
 o46WOcj+ny/ScKkqJagUcNZ1z2FwrW+FJk3YkbFg+DSFVYhwjTB+V6GCb
 dORfAp9Vsi3/CEL6mLPwfCOeEsI3jOJwG8rFcvu91xobQNdCaPqxUGjXZ
 AE3d4LYMSUI0S3xXjYN+R5k3cimuEmZytgTnnMolf56SC/YFTWePlsq11 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="250588518"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="250588518"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2022 05:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="662973135"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 16 Apr 2022 05:57:04 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nfhz5-00038d-Ct;
 Sat, 16 Apr 2022 12:57:03 +0000
Date: Sat, 16 Apr 2022 20:56:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 bed6d200f8ca38e1ecbdd8fb7e0564884002abd1
Message-ID: <625abd09.k2mihHND1zY/ODOH%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: bed6d200f8ca38e1ecbdd8fb7e0564884002abd1  staging: rtl8192u: make read-only array EWC11NHTCap static const

elapsed time: 2572m

configs tested: 162
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220415
s390                          debug_defconfig
powerpc                      ep88xc_defconfig
um                           x86_64_defconfig
h8300                       h8s-sim_defconfig
um                             i386_defconfig
x86_64                              defconfig
mips                        bcm47xx_defconfig
arm                       imx_v6_v7_defconfig
sh                               j2_defconfig
arm                         lubbock_defconfig
arm                           tegra_defconfig
arc                     haps_hs_smp_defconfig
arm                        trizeps4_defconfig
mips                         db1xxx_defconfig
mips                      fuloong2e_defconfig
powerpc                       eiger_defconfig
powerpc                 linkstation_defconfig
powerpc                    amigaone_defconfig
m68k                             allyesconfig
sh                        dreamcast_defconfig
m68k                          sun3x_defconfig
powerpc                        cell_defconfig
xtensa                    smp_lx200_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                        warp_defconfig
sparc                       sparc64_defconfig
arm                       multi_v4t_defconfig
powerpc                     mpc83xx_defconfig
sh                        sh7757lcr_defconfig
mips                      maltasmvp_defconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
arm                       aspeed_g5_defconfig
openrisc                            defconfig
mips                            gpr_defconfig
sh                           se7724_defconfig
powerpc                     taishan_defconfig
arm                        keystone_defconfig
arc                        vdk_hs38_defconfig
arm                          exynos_defconfig
sh                     magicpanelr2_defconfig
sh                          urquell_defconfig
m68k                        m5307c3_defconfig
sh                          rsk7264_defconfig
sh                            hp6xx_defconfig
arm                           corgi_defconfig
alpha                            alldefconfig
i386                             alldefconfig
powerpc                      ppc6xx_defconfig
powerpc                   motionpro_defconfig
powerpc                      cm5200_defconfig
arm                            mps2_defconfig
powerpc                     ep8248e_defconfig
arc                        nsim_700_defconfig
xtensa                  cadence_csp_defconfig
xtensa                  nommu_kc705_defconfig
sh                         microdev_defconfig
mips                         bigsur_defconfig
sh                           se7712_defconfig
sh                                  defconfig
m68k                          atari_defconfig
um                                  defconfig
powerpc                     tqm8555_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220414
arm                  randconfig-c002-20220415
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220415
arc                  randconfig-r043-20220415
s390                 randconfig-r044-20220415
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
arm                                 defconfig
powerpc                    gamecube_defconfig
mips                         tb0287_defconfig
i386                             allyesconfig
arm                          ixp4xx_defconfig
powerpc                     kmeter1_defconfig
powerpc                     akebono_defconfig
arm                        neponset_defconfig
powerpc                        icon_defconfig
riscv                          rv32_defconfig
arm                       aspeed_g4_defconfig
mips                           ip27_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                         hackkit_defconfig
arm                           omap1_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
riscv                randconfig-r042-20220414
hexagon              randconfig-r041-20220414
hexagon              randconfig-r045-20220414
hexagon              randconfig-r045-20220415
hexagon              randconfig-r041-20220415

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
