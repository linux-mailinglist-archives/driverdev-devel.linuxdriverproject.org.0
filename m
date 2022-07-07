Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4DD569A66
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jul 2022 08:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97B984194B;
	Thu,  7 Jul 2022 06:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97B984194B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWP_CBLfqLBj; Thu,  7 Jul 2022 06:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3005417D9;
	Thu,  7 Jul 2022 06:21:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3005417D9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CF661BF344
 for <devel@linuxdriverproject.org>; Thu,  7 Jul 2022 06:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 566EE6109D
 for <devel@linuxdriverproject.org>; Thu,  7 Jul 2022 06:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 566EE6109D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QuQlXQDmndx5 for <devel@linuxdriverproject.org>;
 Thu,  7 Jul 2022 06:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4417E60087
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4417E60087
 for <devel@driverdev.osuosl.org>; Thu,  7 Jul 2022 06:21:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="345631256"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="345631256"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 23:21:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="568381620"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 06 Jul 2022 23:21:27 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o9KtC-000Leo-HT;
 Thu, 07 Jul 2022 06:21:26 +0000
Date: Thu, 07 Jul 2022 14:21:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 2fd26970cf66bd52dc42843c46968040caa8c9a1
Message-ID: <62c67b56.9+nR6gGQJdS82CBH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657174889; x=1688710889;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=k+fFG1UjS56/+ma1mKXl9De7fTuwnDecoog5EFfmjuQ=;
 b=ZNigAXjp0+yYYJOLCOVysnqge01IKdSpV0seut6Ky9ef1OY2CRKmtLzw
 NzaGVmUCySfu6Q+QwMFMuekXgwOXnmqHzfhsB3cTYw5MDNKEeGCNy2Y6H
 xhADspdnO+ERQeY/a8wVhjTz0VgzoIHF8+D18lXOTWFRIStIels709wGz
 mlsIPWAeCrwIFtxAoObgbC8Kt/H2ZQzPhvIvGd1A0qG+qUnkiByaSdyWJ
 u5/UcyaK74NVyw98Qq+aFnM2xBX7GD2Zw8UNeHT2WmmufiNkoI+g2Ur45
 5ejLvc4gL/K+VyPu2kwZnxLTnF3123rN9jlwdeWo/Ol2WOywvgA08EjB1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZNigAXjp
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 2fd26970cf66bd52dc42843c46968040caa8c9a1  Revert "kernfs: Change kernfs_notify_list to llist."

elapsed time: 1069m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc                         wii_defconfig
m68k                       m5249evb_defconfig
sh                        apsh4ad0a_defconfig
arm                          lpd270_defconfig
arm                           viper_defconfig
arc                     nsimosci_hs_defconfig
xtensa                         virt_defconfig
mips                         mpc30x_defconfig
arc                        nsimosci_defconfig
arm                          exynos_defconfig
powerpc                      cm5200_defconfig
s390                          debug_defconfig
arm                          simpad_defconfig
xtensa                           allyesconfig
sh                           se7721_defconfig
mips                           ip32_defconfig
sh                          lboxre2_defconfig
sh                           se7722_defconfig
um                             i386_defconfig
riscv                            allyesconfig
xtensa                  audio_kc705_defconfig
sh                            titan_defconfig
mips                  decstation_64_defconfig
powerpc                     mpc83xx_defconfig
m68k                        m5407c3_defconfig
arm                        spear6xx_defconfig
powerpc                    adder875_defconfig
xtensa                generic_kc705_defconfig
sh                          kfr2r09_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                 mpc834x_itx_defconfig
sh                         microdev_defconfig
nios2                         3c120_defconfig
powerpc                      pasemi_defconfig
arm                      jornada720_defconfig
arm                        mini2440_defconfig
arm                             rpc_defconfig
sh                           se7705_defconfig
sparc64                             defconfig
um                               alldefconfig
mips                       capcella_defconfig
powerpc                       eiger_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220706
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220706
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                      maltaaprp_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                        icon_defconfig
powerpc                      walnut_defconfig
arm                            dove_defconfig
mips                malta_qemu_32r6_defconfig
arm                       spear13xx_defconfig
mips                           ip27_defconfig
powerpc                     mpc5200_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220706
hexagon              randconfig-r045-20220706
hexagon              randconfig-r041-20220706
s390                 randconfig-r044-20220706

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
