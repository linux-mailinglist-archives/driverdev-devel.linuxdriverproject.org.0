Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B6644FC8C
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 01:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A8AA40298;
	Mon, 15 Nov 2021 00:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riditvGYIK5d; Mon, 15 Nov 2021 00:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2DF340166;
	Mon, 15 Nov 2021 00:17:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9E91BF977
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 00:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFB114024F
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 00:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nyVWhvBZKt5o for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 00:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DEE7D4024E
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 00:17:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="232075875"
X-IronPort-AV: E=Sophos;i="5.87,235,1631602800"; d="scan'208";a="232075875"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2021 16:17:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,235,1631602800"; d="scan'208";a="671318519"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 14 Nov 2021 16:16:58 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mmPg9-000Luw-Vl; Mon, 15 Nov 2021 00:16:57 +0000
Date: Mon, 15 Nov 2021 08:16:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 501d3e5056387568baf1f60e1d0929d912f5893f
Message-ID: <6191a6e0.ZoAjSndtJBA1dg04%lkp@intel.com>
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
branch HEAD: 501d3e5056387568baf1f60e1d0929d912f5893f  staging: wlan-ng: Removed unused comments

possible Error/Warning in current branch (please contact us if interested):

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:458:5: error: no previous prototype for 'vchiq_platform_init' [-Werror=missing-prototypes]
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:586:1: error: no previous prototype for 'vchiq_platform_get_arm_state' [-Werror=missing-prototypes]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allmodconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- arm-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- h8300-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- m68k-allmodconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- m68k-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- nios2-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- powerpc-allmodconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- powerpc-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- riscv-allmodconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- riscv-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- s390-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- sh-allmodconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
`-- xtensa-allyesconfig
    |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
    `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init

elapsed time: 725m

configs tested: 154
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
i386                             alldefconfig
powerpc                     mpc83xx_defconfig
microblaze                      mmu_defconfig
arm                         orion5x_defconfig
sh                          urquell_defconfig
sh                        sh7763rdp_defconfig
powerpc                          g5_defconfig
arm                          ixp4xx_defconfig
mips                       lemote2f_defconfig
h8300                            allyesconfig
riscv                    nommu_k210_defconfig
arm                         lpc18xx_defconfig
powerpc                      ppc44x_defconfig
arm                          imote2_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc6xx_defconfig
arm                           h3600_defconfig
sh                            titan_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                           sh2007_defconfig
ia64                             alldefconfig
sh                           se7721_defconfig
mips                        omega2p_defconfig
arm                           spitz_defconfig
sh                           se7724_defconfig
arm                           u8500_defconfig
sh                     magicpanelr2_defconfig
sh                                  defconfig
sh                           se7722_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc8272_ads_defconfig
mips                      pic32mzda_defconfig
mips                        bcm63xx_defconfig
powerpc                     pq2fads_defconfig
mips                     loongson1b_defconfig
arm                           sama7_defconfig
arm                          collie_defconfig
arc                      axs103_smp_defconfig
sh                           se7751_defconfig
sh                             sh03_defconfig
xtensa                              defconfig
powerpc64                        alldefconfig
powerpc                 mpc8315_rdb_defconfig
arm                         socfpga_defconfig
arm                            pleb_defconfig
arm                      pxa255-idp_defconfig
arm                        mini2440_defconfig
arm                          moxart_defconfig
arm                        magician_defconfig
arm                       multi_v4t_defconfig
arm                  randconfig-c002-20211114
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a015-20211114
x86_64               randconfig-a013-20211114
x86_64               randconfig-a012-20211114
x86_64               randconfig-a011-20211114
x86_64               randconfig-a014-20211114
x86_64               randconfig-a016-20211114
i386                 randconfig-a014-20211114
i386                 randconfig-a016-20211114
i386                 randconfig-a012-20211114
i386                 randconfig-a013-20211114
i386                 randconfig-a011-20211114
i386                 randconfig-a015-20211114
arc                  randconfig-r043-20211114
s390                 randconfig-r044-20211114
riscv                randconfig-r042-20211114
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-c007-20211114
i386                 randconfig-c001-20211114
arm                  randconfig-c002-20211114
riscv                randconfig-c006-20211114
powerpc              randconfig-c003-20211114
s390                 randconfig-c005-20211114
mips                 randconfig-c004-20211114
x86_64               randconfig-a005-20211114
x86_64               randconfig-a003-20211114
x86_64               randconfig-a001-20211114
x86_64               randconfig-a002-20211114
x86_64               randconfig-a006-20211114
x86_64               randconfig-a004-20211114
i386                 randconfig-a003-20211114
i386                 randconfig-a005-20211114
i386                 randconfig-a001-20211114
i386                 randconfig-a004-20211114
i386                 randconfig-a002-20211114
i386                 randconfig-a006-20211114
x86_64               randconfig-a015-20211115
x86_64               randconfig-a013-20211115
x86_64               randconfig-a011-20211115
x86_64               randconfig-a012-20211115
x86_64               randconfig-a016-20211115
x86_64               randconfig-a014-20211115
i386                 randconfig-a014-20211115
i386                 randconfig-a016-20211115
i386                 randconfig-a012-20211115
i386                 randconfig-a013-20211115
i386                 randconfig-a011-20211115
i386                 randconfig-a015-20211115
hexagon              randconfig-r045-20211114
hexagon              randconfig-r041-20211114
hexagon              randconfig-r045-20211115
hexagon              randconfig-r041-20211115
s390                 randconfig-r044-20211115
riscv                randconfig-r042-20211115

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
