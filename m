Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6517A49797D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jan 2022 08:32:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7693A60B78;
	Mon, 24 Jan 2022 07:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WsIik8uiMZDV; Mon, 24 Jan 2022 07:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55D6960AD2;
	Mon, 24 Jan 2022 07:32:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC3C1BF356
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E50F940923
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 07:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K8eNvEPMasn1 for <devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 07:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D26E44091D
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 07:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643009541; x=1674545541;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vjB57r0avtp/WeD9zAVg+5dSq26Y1brNnrl+vEBh4ts=;
 b=Am3u6Q43ZCuDWUkP2X1EZx9gb30e5zDjD2jzKKck0oZ1jjxdXQSvd/SS
 yY64r3uvx4FVH8ydCNRP3ROwhrICL/Jd9Uo2KPr2HdSdkHiQSr2cpiXvk
 q0XLls6ltKo9LXPctDCAqXQVLHCsamSi2gppjF0yjKxglpXOcWjq+OPdo
 aN2ILPtKu5gZ5wc9LiwSg+h/GkATv3VUJ8KCOvI8Mf2os7p9tUgMZOtJt
 c36NmuKsxn7X+QRE0fJuZu2dOGwlndK4SddO4hGLeI+/H/AtAkrAbmK30
 V+u13o5JHi/5uMWiZti5CpMGy5ea+eaqy12Fi3GYs8xrWerQ3NYj62+Go Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="309306887"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="309306887"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2022 23:32:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534109631"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2022 23:32:19 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBtpq-000Hrj-Ie; Mon, 24 Jan 2022 07:32:18 +0000
Date: Mon, 24 Jan 2022 15:31:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 95facebf63c7c6e9654aa1fb34d797554e433268
Message-ID: <61ee55d9.bJU7uPj8CuFHBnZ7%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 95facebf63c7c6e9654aa1fb34d797554e433268  moxart: fix potential use-after-free on remove path

elapsed time: 1205m

configs tested: 230
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220124
arc                 nsimosci_hs_smp_defconfig
arm                       imx_v6_v7_defconfig
xtensa                       common_defconfig
m68k                          multi_defconfig
mips                     decstation_defconfig
powerpc                     taishan_defconfig
powerpc                     mpc83xx_defconfig
sh                          r7780mp_defconfig
m68k                        m5407c3_defconfig
sh                         apsh4a3a_defconfig
arm                        cerfcube_defconfig
sh                           se7343_defconfig
sh                          urquell_defconfig
arm                       aspeed_g5_defconfig
powerpc64                        alldefconfig
openrisc                 simple_smp_defconfig
h8300                       h8s-sim_defconfig
arc                        vdk_hs38_defconfig
mips                     loongson1b_defconfig
powerpc                      bamboo_defconfig
mips                        bcm47xx_defconfig
sh                          landisk_defconfig
powerpc                       eiger_defconfig
parisc                              defconfig
sh                           se7750_defconfig
powerpc                      cm5200_defconfig
sparc64                          alldefconfig
mips                         rt305x_defconfig
sh                            titan_defconfig
powerpc                      ppc6xx_defconfig
mips                        vocore2_defconfig
arm                         cm_x300_defconfig
powerpc                      pasemi_defconfig
arm                          badge4_defconfig
sh                          rsk7269_defconfig
arm                         vf610m4_defconfig
sh                            shmin_defconfig
parisc                           alldefconfig
powerpc                 mpc85xx_cds_defconfig
s390                          debug_defconfig
nios2                            alldefconfig
xtensa                           allyesconfig
xtensa                generic_kc705_defconfig
mips                         tb0226_defconfig
sh                  sh7785lcr_32bit_defconfig
nds32                            alldefconfig
xtensa                  audio_kc705_defconfig
powerpc                      ppc40x_defconfig
sh                           se7619_defconfig
sh                           se7705_defconfig
um                             i386_defconfig
powerpc                     tqm8548_defconfig
mips                           ci20_defconfig
i386                             alldefconfig
sh                           se7780_defconfig
mips                           jazz_defconfig
powerpc                        warp_defconfig
s390                       zfcpdump_defconfig
sh                             sh03_defconfig
sh                           se7724_defconfig
arm                            lart_defconfig
arm                       multi_v4t_defconfig
sh                             shx3_defconfig
sh                         ap325rxa_defconfig
arc                         haps_hs_defconfig
h8300                            alldefconfig
sparc64                             defconfig
powerpc                   currituck_defconfig
h8300                    h8300h-sim_defconfig
sh                        edosk7705_defconfig
arm                       omap2plus_defconfig
powerpc                     rainier_defconfig
h8300                               defconfig
ia64                             alldefconfig
arm                      integrator_defconfig
sh                          sdk7780_defconfig
arm                         lubbock_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                           u8500_defconfig
arm                           h5000_defconfig
arm                        oxnas_v6_defconfig
xtensa                  cadence_csp_defconfig
arm                        shmobile_defconfig
powerpc                     sequoia_defconfig
sh                            migor_defconfig
arm                  randconfig-c002-20220123
arm                  randconfig-c002-20220124
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220123
riscv                randconfig-r042-20220123
s390                 randconfig-r044-20220123
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220123
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
riscv                randconfig-c006-20220123
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220123
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220123
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
x86_64                        randconfig-c007
i386                          randconfig-c001
mips                  cavium_octeon_defconfig
powerpc                     tqm5200_defconfig
arm                          imote2_defconfig
powerpc                       ebony_defconfig
mips                       rbtx49xx_defconfig
arm                        spear3xx_defconfig
mips                        qi_lb60_defconfig
mips                        bcm63xx_defconfig
powerpc                   lite5200b_defconfig
arm                           sama7_defconfig
powerpc                    gamecube_defconfig
powerpc                      obs600_defconfig
powerpc                      acadia_defconfig
powerpc                          allmodconfig
mips                            e55_defconfig
powerpc                     mpc512x_defconfig
mips                           ip22_defconfig
mips                   sb1250_swarm_defconfig
arm                         bcm2835_defconfig
powerpc                          g5_defconfig
riscv                          rv32_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
powerpc                  mpc885_ads_defconfig
mips                     cu1000-neo_defconfig
arm                         lpc32xx_defconfig
arm                        multi_v5_defconfig
arm                          ixp4xx_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
riscv                randconfig-r042-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r041-20220124
hexagon              randconfig-r045-20220123
hexagon              randconfig-r041-20220123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
