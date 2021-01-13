Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F6B2F412A
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Jan 2021 02:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B2FA204DE;
	Wed, 13 Jan 2021 01:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-8hWv4f13TH; Wed, 13 Jan 2021 01:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1ACD4204AD;
	Wed, 13 Jan 2021 01:27:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CF7B1BF38B
 for <devel@linuxdriverproject.org>; Wed, 13 Jan 2021 01:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 89C7D85AE4
 for <devel@linuxdriverproject.org>; Wed, 13 Jan 2021 01:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXdAQiFwWNbz for <devel@linuxdriverproject.org>;
 Wed, 13 Jan 2021 01:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB8C385A5A
 for <devel@driverdev.osuosl.org>; Wed, 13 Jan 2021 01:27:42 +0000 (UTC)
IronPort-SDR: BLFnL1RJo808ayxNBIh253nEbRaCKKLOZ1RImnR8I+OwNjgZybuh4xG+QaizVAI29qwGzgyqym
 ulWnAxnzJjnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="178225659"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="178225659"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 17:27:41 -0800
IronPort-SDR: DEVrPfEsBH9orYL3zKy+IKehS/fTYUwooxxtNwboczt5so1Lq3frLDxnkCi7yb569EXC2HHIKq
 WfK4XPtCbSlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="464726984"
Received: from lkp-server01.sh.intel.com (HELO 974c6bfa98f0) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2021 17:27:40 -0800
Received: from kbuild by 974c6bfa98f0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kzUwl-00004Z-LN; Wed, 13 Jan 2021 01:27:39 +0000
Date: Wed, 13 Jan 2021 09:27:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 3ac6e56c325e4660837efcf995e8460d917b4778
Message-ID: <5ffe4c83.gHeUECTcyBY+7A0q%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 3ac6e56c325e4660837efcf995e8460d917b4778  Revert "drivers: core: Detach device from power domain on shutdown"

elapsed time: 728m

configs tested: 180
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          r7780mp_defconfig
c6x                         dsk6455_defconfig
mips                         tb0226_defconfig
powerpc                     akebono_defconfig
powerpc                  mpc866_ads_defconfig
mips                         db1xxx_defconfig
mips                           rs90_defconfig
powerpc                mpc7448_hpc2_defconfig
xtensa                  cadence_csp_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                   motionpro_defconfig
c6x                        evmc6678_defconfig
m68k                       m5275evb_defconfig
h8300                               defconfig
arm                         shannon_defconfig
sparc64                             defconfig
arm                            xcep_defconfig
arm                            hisi_defconfig
powerpc                     tqm8548_defconfig
mips                           jazz_defconfig
powerpc                      cm5200_defconfig
arm                          iop32x_defconfig
sh                            titan_defconfig
mips                     loongson1c_defconfig
powerpc                      bamboo_defconfig
powerpc                      katmai_defconfig
sh                           se7343_defconfig
arm                         cm_x300_defconfig
m68k                       m5475evb_defconfig
ia64                          tiger_defconfig
mips                      loongson3_defconfig
arm                          collie_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                     cu1000-neo_defconfig
xtensa                          iss_defconfig
powerpc                     stx_gp3_defconfig
powerpc                     kmeter1_defconfig
arm                      integrator_defconfig
m68k                          amiga_defconfig
mips                        qi_lb60_defconfig
ia64                         bigsur_defconfig
powerpc                 mpc836x_mds_defconfig
sh                           se7780_defconfig
powerpc                       ebony_defconfig
arm                            lart_defconfig
arm                         lubbock_defconfig
arm                     am200epdkit_defconfig
mips                        bcm47xx_defconfig
ia64                      gensparse_defconfig
arm                          moxart_defconfig
powerpc                      arches_defconfig
arm                             rpc_defconfig
arc                        nsimosci_defconfig
m68k                          multi_defconfig
mips                  cavium_octeon_defconfig
riscv                            alldefconfig
arc                            hsdk_defconfig
powerpc                     ksi8560_defconfig
sh                          kfr2r09_defconfig
powerpc                     ep8248e_defconfig
powerpc                     asp8347_defconfig
powerpc64                        alldefconfig
mips                       lemote2f_defconfig
arc                     nsimosci_hs_defconfig
arm                           corgi_defconfig
sh                          r7785rp_defconfig
powerpc                       eiger_defconfig
m68k                            mac_defconfig
arm                       spear13xx_defconfig
sh                                  defconfig
mips                      malta_kvm_defconfig
sh                ecovec24-romimage_defconfig
mips                        maltaup_defconfig
sh                        dreamcast_defconfig
powerpc                    socrates_defconfig
um                           x86_64_defconfig
arm                         palmz72_defconfig
arm                         assabet_defconfig
sh                   rts7751r2dplus_defconfig
m68k                       bvme6000_defconfig
arm                        cerfcube_defconfig
sh                             shx3_defconfig
m68k                           sun3_defconfig
sh                           se7206_defconfig
powerpc                  storcenter_defconfig
sparc64                          alldefconfig
xtensa                  nommu_kc705_defconfig
powerpc                       maple_defconfig
mips                           gcw0_defconfig
arm                        magician_defconfig
sh                           sh2007_defconfig
powerpc                        icon_defconfig
arm                          prima2_defconfig
arm                           stm32_defconfig
arc                           tb10x_defconfig
arc                              alldefconfig
mips                 decstation_r4k_defconfig
arm                           omap1_defconfig
powerpc                       holly_defconfig
microblaze                      mmu_defconfig
arm                         hackkit_defconfig
m68k                          atari_defconfig
arm                              zx_defconfig
powerpc                          g5_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20210112
i386                 randconfig-a005-20210112
i386                 randconfig-a006-20210112
i386                 randconfig-a003-20210112
i386                 randconfig-a001-20210112
i386                 randconfig-a004-20210112
x86_64               randconfig-a016-20210112
x86_64               randconfig-a015-20210112
x86_64               randconfig-a012-20210112
x86_64               randconfig-a013-20210112
x86_64               randconfig-a014-20210112
x86_64               randconfig-a011-20210112
i386                 randconfig-a012-20210112
i386                 randconfig-a011-20210112
i386                 randconfig-a016-20210112
i386                 randconfig-a013-20210112
i386                 randconfig-a015-20210112
i386                 randconfig-a014-20210112
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin

clang tested configs:
x86_64               randconfig-a006-20210112
x86_64               randconfig-a004-20210112
x86_64               randconfig-a001-20210112
x86_64               randconfig-a005-20210112
x86_64               randconfig-a003-20210112
x86_64               randconfig-a002-20210112

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
