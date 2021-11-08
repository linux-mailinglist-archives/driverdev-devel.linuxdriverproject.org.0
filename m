Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CCB4476C6
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Nov 2021 01:02:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D3A140241;
	Mon,  8 Nov 2021 00:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2pWoxbaNGIn; Mon,  8 Nov 2021 00:02:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 702A84023E;
	Mon,  8 Nov 2021 00:02:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53FC81BF3E5
 for <devel@linuxdriverproject.org>; Mon,  8 Nov 2021 00:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E66040257
 for <devel@linuxdriverproject.org>; Mon,  8 Nov 2021 00:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TxaYsfLm6m6l for <devel@linuxdriverproject.org>;
 Mon,  8 Nov 2021 00:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F19340206
 for <devel@driverdev.osuosl.org>; Mon,  8 Nov 2021 00:01:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="231985269"
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="231985269"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2021 16:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="668821375"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 07 Nov 2021 16:01:50 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mjs6f-000BHb-Qj; Mon, 08 Nov 2021 00:01:49 +0000
Date: Mon, 08 Nov 2021 08:01:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 8a893759d0075ea9556abcf86a4826d9865ba4bf
Message-ID: <618868e8.YF5om+tszCfj/wYc%lkp@intel.com>
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
branch HEAD: 8a893759d0075ea9556abcf86a4826d9865ba4bf  staging: r8188eu: remove MSG_88E macro

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
|-- openrisc-buildonly-randconfig-r003-20211107
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

elapsed time: 723m

configs tested: 53
configs skipped: 3

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
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
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
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
