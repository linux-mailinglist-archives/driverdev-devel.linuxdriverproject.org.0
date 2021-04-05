Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDBD35471D
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Apr 2021 21:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B763060B53;
	Mon,  5 Apr 2021 19:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhHvfUVKp2tB; Mon,  5 Apr 2021 19:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E74960B42;
	Mon,  5 Apr 2021 19:26:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0506C1BF350
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 19:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E71FF8492F
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 19:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 581pKDi5CYTo for <devel@linuxdriverproject.org>;
 Mon,  5 Apr 2021 19:25:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9CD684931
 for <devel@driverdev.osuosl.org>; Mon,  5 Apr 2021 19:25:36 +0000 (UTC)
IronPort-SDR: irwKtJNASLhTfnjR44ZDbdG9CtIY7lj3a9Sw85CqVmGTwZ06wZH0CuHy5Siaq9WPvOpk6HjqwP
 GQoJfs9wrUbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="278157363"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="278157363"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 12:25:36 -0700
IronPort-SDR: ikdCkVDiNMSTmY9V2LrgusD0L0knxXiWLcS0tOud2es75PETLx1i0EWhVEzZjnZmf2tLP2zRNq
 pXCcCiYX275Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="457532236"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 05 Apr 2021 12:25:34 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lTUqr-000Aat-T8; Mon, 05 Apr 2021 19:25:33 +0000
Date: Tue, 06 Apr 2021 03:24:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 e5c7bccc3775b49cd7006331826aa90cb76c1992
Message-ID: <606b6401.okRJJX8c5x7s2U6x%lkp@intel.com>
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
branch HEAD: e5c7bccc3775b49cd7006331826aa90cb76c1992  Merge 5.12-rc6 into staging-next

elapsed time: 726m

configs tested: 195
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
arm                             pxa_defconfig
mips                           gcw0_defconfig
sparc                       sparc32_defconfig
h8300                    h8300h-sim_defconfig
ia64                      gensparse_defconfig
arm                            mps2_defconfig
mips                        workpad_defconfig
xtensa                generic_kc705_defconfig
sh                         microdev_defconfig
arm                            mmp2_defconfig
sparc64                             defconfig
sh                           se7343_defconfig
powerpc                   motionpro_defconfig
arm                         hackkit_defconfig
mips                      pic32mzda_defconfig
arm                     am200epdkit_defconfig
microblaze                      mmu_defconfig
powerpc                     akebono_defconfig
powerpc                    ge_imp3a_defconfig
arm                       mainstone_defconfig
mips                         mpc30x_defconfig
powerpc                     mpc5200_defconfig
powerpc                     tqm5200_defconfig
arm                      pxa255-idp_defconfig
sh                          lboxre2_defconfig
sh                           se7705_defconfig
arm                     davinci_all_defconfig
sh                           se7751_defconfig
sh                           sh2007_defconfig
powerpc                     tqm8540_defconfig
riscv                          rv32_defconfig
mips                         tb0219_defconfig
mips                           mtx1_defconfig
arm                         s5pv210_defconfig
arm                           spitz_defconfig
ia64                             allyesconfig
sh                         ap325rxa_defconfig
arm                         at91_dt_defconfig
mips                           jazz_defconfig
mips                             allyesconfig
mips                           rs90_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                      obs600_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                      cm5200_defconfig
arm                        realview_defconfig
m68k                          hp300_defconfig
arm                         lubbock_defconfig
powerpc                        cell_defconfig
mips                       lemote2f_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                        spear3xx_defconfig
powerpc                    sam440ep_defconfig
arm                           h3600_defconfig
powerpc                     ep8248e_defconfig
arm                        cerfcube_defconfig
mips                      loongson3_defconfig
mips                   sb1250_swarm_defconfig
arc                                 defconfig
arm                        spear6xx_defconfig
sh                         apsh4a3a_defconfig
openrisc                            defconfig
sh                             shx3_defconfig
arm                      tct_hammer_defconfig
mips                      malta_kvm_defconfig
powerpc                     skiroot_defconfig
mips                           ci20_defconfig
nios2                               defconfig
sh                               allmodconfig
mips                  cavium_octeon_defconfig
arc                     haps_hs_smp_defconfig
m68k                         apollo_defconfig
sh                   sh7770_generic_defconfig
powerpc                 mpc837x_mds_defconfig
mips                        nlm_xlp_defconfig
arm                         cm_x300_defconfig
arm                      integrator_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      ep88xc_defconfig
arm                         palmz72_defconfig
openrisc                  or1klitex_defconfig
arm                       aspeed_g5_defconfig
sh                           se7780_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc40x_defconfig
arm                          ixp4xx_defconfig
sh                           se7721_defconfig
sh                   sh7724_generic_defconfig
m68k                          sun3x_defconfig
mips                      pistachio_defconfig
mips                          ath25_defconfig
powerpc                 mpc8313_rdb_defconfig
openrisc                         alldefconfig
powerpc                     sbc8548_defconfig
i386                                defconfig
mips                        omega2p_defconfig
parisc                generic-64bit_defconfig
arm                        neponset_defconfig
arm                            hisi_defconfig
powerpc                     mpc512x_defconfig
arm                          simpad_defconfig
riscv                    nommu_k210_defconfig
mips                        qi_lb60_defconfig
powerpc                      pmac32_defconfig
m68k                             alldefconfig
sh                           se7712_defconfig
powerpc                        fsp2_defconfig
powerpc                       ppc64_defconfig
arm                       versatile_defconfig
arc                          axs101_defconfig
um                               alldefconfig
mips                            gpr_defconfig
sh                         ecovec24_defconfig
s390                       zfcpdump_defconfig
mips                           ip27_defconfig
mips                     cu1000-neo_defconfig
powerpc                     mpc83xx_defconfig
mips                malta_kvm_guest_defconfig
arc                        vdk_hs38_defconfig
arm                            qcom_defconfig
arm                       multi_v4t_defconfig
h8300                     edosk2674_defconfig
powerpc                    klondike_defconfig
mips                          rm200_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210405
i386                 randconfig-a003-20210405
i386                 randconfig-a001-20210405
i386                 randconfig-a004-20210405
i386                 randconfig-a002-20210405
i386                 randconfig-a005-20210405
x86_64               randconfig-a014-20210405
x86_64               randconfig-a015-20210405
x86_64               randconfig-a013-20210405
x86_64               randconfig-a011-20210405
x86_64               randconfig-a012-20210405
x86_64               randconfig-a016-20210405
i386                 randconfig-a014-20210405
i386                 randconfig-a011-20210405
i386                 randconfig-a016-20210405
i386                 randconfig-a012-20210405
i386                 randconfig-a015-20210405
i386                 randconfig-a013-20210405
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210405
x86_64               randconfig-a003-20210405
x86_64               randconfig-a005-20210405
x86_64               randconfig-a001-20210405
x86_64               randconfig-a002-20210405
x86_64               randconfig-a006-20210405

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
