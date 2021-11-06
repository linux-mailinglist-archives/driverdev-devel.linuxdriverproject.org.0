Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DEA446CB5
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Nov 2021 07:08:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5042182882;
	Sat,  6 Nov 2021 06:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vy38uWKJz0y0; Sat,  6 Nov 2021 06:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7807182733;
	Sat,  6 Nov 2021 06:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9CE1BF2C7
 for <devel@linuxdriverproject.org>; Sat,  6 Nov 2021 06:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A2F940124
 for <devel@linuxdriverproject.org>; Sat,  6 Nov 2021 06:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRomreQFuIIz for <devel@linuxdriverproject.org>;
 Sat,  6 Nov 2021 06:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7153A400EE
 for <devel@driverdev.osuosl.org>; Sat,  6 Nov 2021 06:07:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10159"; a="232279036"
X-IronPort-AV: E=Sophos;i="5.87,213,1631602800"; d="scan'208";a="232279036"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 23:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,213,1631602800"; d="scan'208";a="469051970"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 05 Nov 2021 23:07:51 -0700
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mjErm-0008n3-JM; Sat, 06 Nov 2021 06:07:50 +0000
Date: Sat, 06 Nov 2021 14:06:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 b14c60d6a0ea709f852c5198b3f4314f2c2b2515
Message-ID: <61861b7a.icWfza14peccj38U%lkp@intel.com>
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
branch HEAD: b14c60d6a0ea709f852c5198b3f4314f2c2b2515  staging: r8188eu: remove MSG_88E call from odm_TXPowerTrackingThermalMeterInit

possible Error/Warning in current branch (please contact us if interested):

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:458:5: error: no previous prototype for 'vchiq_platform_init' [-Werror=missing-prototypes]
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:586:1: error: no previous prototype for 'vchiq_platform_get_arm_state' [-Werror=missing-prototypes]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allyesconfig
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
`-- xtensa-allyesconfig
    |-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_get_arm_state
    `-- drivers-staging-vc04_services-interface-vchiq_arm-vchiq_arm.c:error:no-previous-prototype-for-vchiq_platform_init

elapsed time: 1161m

configs tested: 53
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
