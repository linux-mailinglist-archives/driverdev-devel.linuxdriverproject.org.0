Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FA8361321
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Apr 2021 21:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D068846AA;
	Thu, 15 Apr 2021 19:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CyY4HiYKZwXu; Thu, 15 Apr 2021 19:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29BB0846A3;
	Thu, 15 Apr 2021 19:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45FCC1BF3E6
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 19:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34DB16085C
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 19:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G6B2HhtGJLI5 for <devel@linuxdriverproject.org>;
 Thu, 15 Apr 2021 19:51:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 038CC607D4
 for <devel@driverdev.osuosl.org>; Thu, 15 Apr 2021 19:51:51 +0000 (UTC)
IronPort-SDR: ix7H2p+H2sKOlsSPrEhjLAFe4zyq/IK3Us6fT5uZ8bxLzufoCF/c9B1oAe07rfm+cK6/hELLBQ
 usIXZLQJacTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="256244970"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; d="scan'208";a="256244970"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 12:51:51 -0700
IronPort-SDR: bILYOmBJnfHF87U37reEz/qHkVEQ+clvPdrojRIQFjc7Ntyu1XOP2SQ4wa5zMQId2HSkgX2WqE
 Bdrsg0iz5CJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; d="scan'208";a="382836970"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 15 Apr 2021 12:51:49 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lX81k-00013v-V3; Thu, 15 Apr 2021 19:51:48 +0000
Date: Fri, 16 Apr 2021 03:50:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 71d3edc61e29e45b613b841108688d711846f969
Message-ID: <6078991a.CqjCr7ovwMZXx6yB%lkp@intel.com>
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
branch HEAD: 71d3edc61e29e45b613b841108688d711846f969  staging: rtl8723bs: Remove led_blink_hdl() and everything related

Error/Warning in current branch:

drivers/comedi/drivers/comedi_isadma.c:25:10: error: implicit declaration of function 'claim_dma_lock' [-Werror=implicit-function-declaration]
drivers/comedi/drivers/comedi_isadma.c:31:2: error: implicit declaration of function 'release_dma_lock'; did you mean 'release_task'? [-Werror=implicit-function-declaration]
drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

possible Error/Warning in current branch:

drivers/comedi/drivers/das1800.c:1302:8-10: WARNING: possible condition with no effect (if == else)
drivers/comedi/drivers/ni_atmio.c:210:35: warning: unused variable 'device_ids' [-Wunused-const-variable]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- alpha-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- alpha-randconfig-r034-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arc-randconfig-r033-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-randconfig-r015-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm64-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- csky-randconfig-r033-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-allyesconfig
|   |-- drivers-comedi-drivers-das1800.c:WARNING:possible-condition-with-no-effect-(if-else)
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-randconfig-a002-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-randconfig-a006-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-randconfig-r016-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-randconfig-r032-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-randconfig-r016-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- m68k-randconfig-r006-20210415
|   |-- drivers-comedi-drivers-comedi_isadma.c:error:implicit-declaration-of-function-claim_dma_lock
|   `-- drivers-comedi-drivers-comedi_isadma.c:error:implicit-declaration-of-function-release_dma_lock
|-- mips-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- mips-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- mips-randconfig-r016-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- parisc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- parisc-randconfig-r013-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- parisc-randconfig-r022-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- powerpc-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- powerpc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- powerpc64-randconfig-c004-20210415
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- riscv-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- riscv-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- s390-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- sparc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- x86_64-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- x86_64-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- xtensa-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
`-- xtensa-allyesconfig
    `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used

clang_recent_errors
`-- s390-randconfig-r011-20210415
    `-- drivers-comedi-drivers-ni_atmio.c:warning:unused-variable-device_ids

elapsed time: 722m

configs tested: 173
configs skipped: 2

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
powerpc                    amigaone_defconfig
mips                        qi_lb60_defconfig
powerpc                 canyonlands_defconfig
arm                       aspeed_g4_defconfig
xtensa                         virt_defconfig
arm                          gemini_defconfig
h8300                            alldefconfig
powerpc                      obs600_defconfig
arm                          iop32x_defconfig
mips                           ip32_defconfig
sh                     sh7710voipgw_defconfig
mips                       lemote2f_defconfig
m68k                             alldefconfig
arc                         haps_hs_defconfig
powerpc                      ppc64e_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      makalu_defconfig
sh                          rsk7269_defconfig
arm                        realview_defconfig
mips                      maltaaprp_defconfig
arm                         shannon_defconfig
arm                         lpc32xx_defconfig
m68k                           sun3_defconfig
powerpc                      ppc44x_defconfig
um                                allnoconfig
sh                          polaris_defconfig
m68k                        m5307c3_defconfig
ia64                            zx1_defconfig
sh                           se7619_defconfig
arm                       spear13xx_defconfig
arm                           corgi_defconfig
powerpc                     ep8248e_defconfig
arm                       netwinder_defconfig
powerpc                      katmai_defconfig
arm                       multi_v4t_defconfig
powerpc                   lite5200b_defconfig
arm                         vf610m4_defconfig
sh                            shmin_defconfig
powerpc                     tqm8548_defconfig
powerpc                         ps3_defconfig
openrisc                         alldefconfig
sh                           se7751_defconfig
arm                        vexpress_defconfig
powerpc                    gamecube_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                     tqm8555_defconfig
sh                           sh2007_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7705_defconfig
mips                        maltaup_defconfig
ia64                         bigsur_defconfig
um                               alldefconfig
powerpc                  mpc885_ads_defconfig
nds32                            alldefconfig
powerpc                      acadia_defconfig
arm                          imote2_defconfig
arm                          moxart_defconfig
powerpc                     redwood_defconfig
powerpc                      arches_defconfig
m68k                        m5272c3_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                            titan_defconfig
arm                        magician_defconfig
powerpc                     skiroot_defconfig
sh                        sh7757lcr_defconfig
nios2                         3c120_defconfig
powerpc                        fsp2_defconfig
m68k                       m5275evb_defconfig
arm                         palmz72_defconfig
arm                            mps2_defconfig
powerpc                    sam440ep_defconfig
mips                           ip28_defconfig
arm                          pcm027_defconfig
m68k                       bvme6000_defconfig
powerpc                       eiger_defconfig
powerpc                   bluestone_defconfig
arm                          lpd270_defconfig
mips                        nlm_xlp_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                        nlm_xlr_defconfig
arm                  colibri_pxa270_defconfig
arm                      jornada720_defconfig
arc                        vdk_hs38_defconfig
powerpc                    mvme5100_defconfig
mips                       capcella_defconfig
arm                          ixp4xx_defconfig
sh                        edosk7705_defconfig
powerpc                   motionpro_defconfig
powerpc                 mpc834x_itx_defconfig
mips                         db1xxx_defconfig
sh                   rts7751r2dplus_defconfig
mips                        workpad_defconfig
arm                         s3c6400_defconfig
i386                             alldefconfig
sh                             shx3_defconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210415
x86_64               randconfig-a002-20210415
x86_64               randconfig-a005-20210415
x86_64               randconfig-a001-20210415
x86_64               randconfig-a006-20210415
x86_64               randconfig-a004-20210415
i386                 randconfig-a003-20210415
i386                 randconfig-a006-20210415
i386                 randconfig-a001-20210415
i386                 randconfig-a005-20210415
i386                 randconfig-a004-20210415
i386                 randconfig-a002-20210415
i386                 randconfig-a015-20210415
i386                 randconfig-a014-20210415
i386                 randconfig-a013-20210415
i386                 randconfig-a012-20210415
i386                 randconfig-a016-20210415
i386                 randconfig-a011-20210415
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210415
x86_64               randconfig-a015-20210415
x86_64               randconfig-a011-20210415
x86_64               randconfig-a013-20210415
x86_64               randconfig-a012-20210415
x86_64               randconfig-a016-20210415

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
