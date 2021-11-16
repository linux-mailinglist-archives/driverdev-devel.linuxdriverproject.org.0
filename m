Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55552452B97
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Nov 2021 08:33:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B97FD4041B;
	Tue, 16 Nov 2021 07:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xmc_GB_RX7aE; Tue, 16 Nov 2021 07:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB8184011A;
	Tue, 16 Nov 2021 07:33:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5021BF36E
 for <devel@linuxdriverproject.org>; Tue, 16 Nov 2021 07:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 138DF4011A
 for <devel@linuxdriverproject.org>; Tue, 16 Nov 2021 07:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNp9JK0K8Cnh for <devel@linuxdriverproject.org>;
 Tue, 16 Nov 2021 07:33:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A0D5400EB
 for <devel@driverdev.osuosl.org>; Tue, 16 Nov 2021 07:33:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="231098401"
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="231098401"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 23:33:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="454156008"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 15 Nov 2021 23:33:06 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mmsxl-0000BM-Hw; Tue, 16 Nov 2021 07:33:05 +0000
Date: Tue, 16 Nov 2021 15:32:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 272958bf8ec342c65bf732213f65f8e6e9b6ec6a
Message-ID: <61935e9f.tpUvRM6IR3uDI8Qu%lkp@intel.com>
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
branch HEAD: 272958bf8ec342c65bf732213f65f8e6e9b6ec6a  staging: r8188eu: remove the efuse_hal structure

possible Error/Warning in current branch (please contact us if interested):

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:458:5: error: no previous prototype for 'vchiq_platform_init' [-Werror=missing-prototypes]
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:586:1: error: no previous prototype for 'vchiq_platform_get_arm_state' [-Werror=missing-prototypes]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-allyesconfig
|   |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
|   `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init
|-- arm-allmodconfig
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

elapsed time: 1305m

configs tested: 113
configs skipped: 3

gcc tested configs:
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20211115
powerpc                      pasemi_defconfig
powerpc                      walnut_defconfig
powerpc                     sequoia_defconfig
arm                        mvebu_v7_defconfig
arm                           tegra_defconfig
sh                     sh7710voipgw_defconfig
sh                          r7780mp_defconfig
ia64                                defconfig
arm                            xcep_defconfig
sh                        apsh4ad0a_defconfig
openrisc                 simple_smp_defconfig
mips                           rs90_defconfig
arc                        nsim_700_defconfig
mips                       capcella_defconfig
arm                       netwinder_defconfig
arm                        cerfcube_defconfig
xtensa                generic_kc705_defconfig
arm                            qcom_defconfig
m68k                        mvme16x_defconfig
sh                        sh7757lcr_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                      ppc64e_defconfig
powerpc                      katmai_defconfig
powerpc                         wii_defconfig
mips                           ip32_defconfig
arm                  randconfig-c002-20211115
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
i386                 randconfig-a006-20211115
i386                 randconfig-a003-20211115
i386                 randconfig-a005-20211115
i386                 randconfig-a001-20211115
i386                 randconfig-a004-20211115
i386                 randconfig-a002-20211115
x86_64               randconfig-a005-20211115
x86_64               randconfig-a003-20211115
x86_64               randconfig-a002-20211115
x86_64               randconfig-a001-20211115
x86_64               randconfig-a006-20211115
x86_64               randconfig-a004-20211115
arc                  randconfig-r043-20211115
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-c007-20211115
i386                 randconfig-c001-20211115
arm                  randconfig-c002-20211115
riscv                randconfig-c006-20211115
powerpc              randconfig-c003-20211115
s390                 randconfig-c005-20211115
mips                 randconfig-c004-20211115
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
