Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6880F4472B6
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Nov 2021 12:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC89440251;
	Sun,  7 Nov 2021 11:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RyMsEUlNPAmN; Sun,  7 Nov 2021 11:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BC6F401A2;
	Sun,  7 Nov 2021 11:27:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA5071BF471
 for <devel@linuxdriverproject.org>; Sun,  7 Nov 2021 11:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9CF36063F
 for <devel@linuxdriverproject.org>; Sun,  7 Nov 2021 11:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoL5NwH5xm-i for <devel@linuxdriverproject.org>;
 Sun,  7 Nov 2021 11:27:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A679C6061C
 for <devel@driverdev.osuosl.org>; Sun,  7 Nov 2021 11:27:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10160"; a="219002141"
X-IronPort-AV: E=Sophos;i="5.87,216,1631602800"; d="scan'208";a="219002141"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2021 03:27:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,216,1631602800"; d="scan'208";a="533037238"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 07 Nov 2021 03:27:03 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mjgKF-000AXU-2i; Sun, 07 Nov 2021 11:27:03 +0000
Date: Sun, 07 Nov 2021 19:26:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 8a90ee69bff5d56d90c8a9d69d681df877a1cb74
Message-ID: <6187b7d6.nM7n51q/0RTzbxIE%lkp@intel.com>
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
branch HEAD: 8a90ee69bff5d56d90c8a9d69d681df877a1cb74  staging: rtl8723bs: core: remove unused local variable padapter

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
|-- parisc-allyesconfig
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

elapsed time: 1154m

configs tested: 53
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
