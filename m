Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB5D3549F7
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Apr 2021 03:19:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB14060B6D;
	Tue,  6 Apr 2021 01:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCvyfPFs3XDk; Tue,  6 Apr 2021 01:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B2C6606D4;
	Tue,  6 Apr 2021 01:19:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44EF61BF37B
 for <devel@linuxdriverproject.org>; Tue,  6 Apr 2021 01:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E2D18482C
 for <devel@linuxdriverproject.org>; Tue,  6 Apr 2021 01:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CkVlhPUszT3p for <devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 01:19:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 021DC8480E
 for <devel@driverdev.osuosl.org>; Tue,  6 Apr 2021 01:19:04 +0000 (UTC)
IronPort-SDR: EjPRd+/G/4eKkt+HK9tbpBVuAxVkP4iMRDVARMV+CElmbSRZF7Lx4ob5ZaIDNUxZxYDdHbo+ox
 4GjypnOTKocg==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="213306692"
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; d="scan'208";a="213306692"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 18:19:04 -0700
IronPort-SDR: yNuMwTNrQhfj9M5ufKCgnildzTzhDjNBGliDGVRyvNqc1vACzaO2672J65U1+h4kvExE0B5dVD
 LZ95pQh/a+GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; d="scan'208";a="440715593"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 05 Apr 2021 18:19:03 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lTaMw-000B0B-FZ; Tue, 06 Apr 2021 01:19:02 +0000
Date: Tue, 06 Apr 2021 09:18:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 988a63edfccc64b73f380e60a3769a8775ae050e
Message-ID: <606bb6fc.1/4H1IBmjAR4X0/r%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 988a63edfccc64b73f380e60a3769a8775ae050e  readfile.2: new page describing readfile(2)

elapsed time: 720m

configs tested: 217
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
riscv                            allyesconfig
i386                             allyesconfig
mips                        workpad_defconfig
xtensa                generic_kc705_defconfig
sh                         microdev_defconfig
arm                            mmp2_defconfig
sparc64                             defconfig
sh                           se7343_defconfig
powerpc                     akebono_defconfig
arm                       aspeed_g4_defconfig
sh                          sdk7786_defconfig
csky                             alldefconfig
arm                          lpd270_defconfig
arm                        spear3xx_defconfig
mips                        qi_lb60_defconfig
sh                   sh7770_generic_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                 canyonlands_defconfig
sh                     sh7710voipgw_defconfig
arm                            mps2_defconfig
powerpc                    ge_imp3a_defconfig
arm                       mainstone_defconfig
mips                         mpc30x_defconfig
powerpc                      mgcoge_defconfig
arm                             rpc_defconfig
arm                           spitz_defconfig
arm                          imote2_defconfig
sh                           se7705_defconfig
arm                     davinci_all_defconfig
sh                           se7751_defconfig
sh                           sh2007_defconfig
powerpc                     tqm8540_defconfig
riscv                          rv32_defconfig
mips                         tb0219_defconfig
mips                           mtx1_defconfig
arm                         s5pv210_defconfig
ia64                             allyesconfig
powerpc                   lite5200b_defconfig
parisc                generic-64bit_defconfig
mips                          malta_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                 mpc85xx_cds_defconfig
m68k                          hp300_defconfig
arm                         lubbock_defconfig
powerpc                        cell_defconfig
mips                       lemote2f_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                    sam440ep_defconfig
arm                           h3600_defconfig
powerpc                     ep8248e_defconfig
arm                        cerfcube_defconfig
mips                      loongson3_defconfig
mips                   sb1250_swarm_defconfig
xtensa                  audio_kc705_defconfig
arm                        magician_defconfig
powerpc                     kilauea_defconfig
mips                        nlm_xlp_defconfig
s390                             allyesconfig
openrisc                 simple_smp_defconfig
mips                 decstation_r4k_defconfig
m68k                        stmark2_defconfig
mips                  cavium_octeon_defconfig
arc                     haps_hs_smp_defconfig
m68k                         apollo_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                      ep88xc_defconfig
arm                         palmz72_defconfig
h8300                     edosk2674_defconfig
m68k                             alldefconfig
sh                               j2_defconfig
sh                         ecovec24_defconfig
openrisc                  or1klitex_defconfig
arm                       aspeed_g5_defconfig
x86_64                              defconfig
sh                           se7780_defconfig
arm                       cns3420vb_defconfig
um                             i386_defconfig
arm                            hisi_defconfig
powerpc                     mpc5200_defconfig
openrisc                         alldefconfig
mips                     loongson1c_defconfig
mips                        bcm63xx_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
mips                           ip32_defconfig
sh                            migor_defconfig
mips                           ip22_defconfig
arm                             pxa_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc40x_defconfig
arm                          ixp4xx_defconfig
sh                           se7721_defconfig
sh                   sh7724_generic_defconfig
m68k                          sun3x_defconfig
arm                     am200epdkit_defconfig
mips                      pistachio_defconfig
mips                          ath25_defconfig
sh                          lboxre2_defconfig
arm                      tct_hammer_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                          rsk7203_defconfig
sh                          landisk_defconfig
i386                                defconfig
mips                       rbtx49xx_defconfig
mips                      maltasmvp_defconfig
xtensa                  nommu_kc705_defconfig
arm                       omap2plus_defconfig
riscv                    nommu_k210_defconfig
powerpc                      pmac32_defconfig
sh                           se7712_defconfig
powerpc                        fsp2_defconfig
powerpc                       ppc64_defconfig
arm                       versatile_defconfig
arc                          axs101_defconfig
um                               alldefconfig
mips                            gpr_defconfig
arm                          simpad_defconfig
mips                malta_kvm_guest_defconfig
arc                        vdk_hs38_defconfig
arm                            qcom_defconfig
arm                       multi_v4t_defconfig
powerpc                    klondike_defconfig
mips                          rm200_defconfig
ia64                             allmodconfig
ia64                                defconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210406
i386                 randconfig-a003-20210406
i386                 randconfig-a001-20210406
i386                 randconfig-a004-20210406
i386                 randconfig-a005-20210406
i386                 randconfig-a002-20210406
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
i386                 randconfig-a014-20210406
i386                 randconfig-a016-20210406
i386                 randconfig-a011-20210406
i386                 randconfig-a012-20210406
i386                 randconfig-a015-20210406
i386                 randconfig-a013-20210406
x86_64               randconfig-a004-20210406
x86_64               randconfig-a003-20210406
x86_64               randconfig-a005-20210406
x86_64               randconfig-a001-20210406
x86_64               randconfig-a002-20210406
x86_64               randconfig-a006-20210406
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
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
x86_64               randconfig-a014-20210406
x86_64               randconfig-a015-20210406
x86_64               randconfig-a013-20210406
x86_64               randconfig-a011-20210406
x86_64               randconfig-a012-20210406
x86_64               randconfig-a016-20210406

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
