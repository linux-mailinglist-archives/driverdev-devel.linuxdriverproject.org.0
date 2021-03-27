Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1185C34B406
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Mar 2021 04:24:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 597BB60DC4;
	Sat, 27 Mar 2021 03:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJdmM5wgsdbf; Sat, 27 Mar 2021 03:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7089E60622;
	Sat, 27 Mar 2021 03:24:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1A01C116E
 for <devel@linuxdriverproject.org>; Sat, 27 Mar 2021 03:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6AAF760657
 for <devel@linuxdriverproject.org>; Sat, 27 Mar 2021 03:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ro0zww0EDNKD for <devel@linuxdriverproject.org>;
 Sat, 27 Mar 2021 03:24:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 67F6260614
 for <devel@driverdev.osuosl.org>; Sat, 27 Mar 2021 03:24:43 +0000 (UTC)
IronPort-SDR: uMqxA0nqvxRNJAGD2QiIdKsvghdZBBH/eynG9kIRa3FbV6GCvvq1ngtuw2AmJfrCYIkyXGMa0a
 gH/nDByXp3sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="178386286"
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400"; d="scan'208";a="178386286"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 20:24:40 -0700
IronPort-SDR: oj8jA69HD5NDwHyBfP3qe3u1pVEDWE6xXxJWjmYnB42Kn4XcqSGA5a4WAeS/g3M0FyZkmYdosE
 OUa977PWVVMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400"; d="scan'208";a="392443692"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2021 20:24:38 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lPzZ0-0003Bl-8y; Sat, 27 Mar 2021 03:24:38 +0000
Date: Sat, 27 Mar 2021 11:23:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 ecdc996baf291b903342cc704f4086a88c361967
Message-ID: <605ea540.WaOgLvWRnwu1yvzC%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: ecdc996baf291b903342cc704f4086a88c361967  power: supply: axp20x_usb_power: fix work-queue init

elapsed time: 728m

configs tested: 159
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
sh                ecovec24-romimage_defconfig
arc                    vdk_hs38_smp_defconfig
m68k                         amcore_defconfig
m68k                           sun3_defconfig
powerpc                      pmac32_defconfig
arm                         hackkit_defconfig
arm                         lpc18xx_defconfig
sh                          kfr2r09_defconfig
sh                           se7780_defconfig
arm                          moxart_defconfig
powerpc                     ep8248e_defconfig
openrisc                            defconfig
sh                         microdev_defconfig
powerpc                          allmodconfig
arm                          ixp4xx_defconfig
nios2                         10m50_defconfig
powerpc                       holly_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                         orion5x_defconfig
powerpc                      pasemi_defconfig
ia64                          tiger_defconfig
powerpc                         wii_defconfig
mips                      pistachio_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                       ebony_defconfig
arm                            pleb_defconfig
m68k                        mvme147_defconfig
microblaze                          defconfig
mips                            ar7_defconfig
powerpc                          g5_defconfig
ia64                            zx1_defconfig
arm                       spear13xx_defconfig
arm                          pxa3xx_defconfig
arm                       aspeed_g5_defconfig
mips                     loongson1c_defconfig
sparc                            alldefconfig
mips                           rs90_defconfig
sh                             sh03_defconfig
arm                   milbeaut_m10v_defconfig
arm                        multi_v7_defconfig
powerpc                          allyesconfig
powerpc                   bluestone_defconfig
xtensa                generic_kc705_defconfig
powerpc                      acadia_defconfig
arm                       multi_v4t_defconfig
arm                            mps2_defconfig
arm                          pxa910_defconfig
arm                            qcom_defconfig
sh                          r7785rp_defconfig
powerpc                      arches_defconfig
arc                           tb10x_defconfig
mips                           ip32_defconfig
arc                          axs103_defconfig
powerpc                       eiger_defconfig
powerpc                    sam440ep_defconfig
sparc                       sparc64_defconfig
arm                         s3c2410_defconfig
arm                     eseries_pxa_defconfig
sh                            titan_defconfig
arm                       cns3420vb_defconfig
arm                          imote2_defconfig
mips                          rb532_defconfig
arm                         palmz72_defconfig
arm                         mv78xx0_defconfig
alpha                            allyesconfig
mips                            gpr_defconfig
powerpc                       maple_defconfig
powerpc                    socrates_defconfig
powerpc                      bamboo_defconfig
sh                           se7206_defconfig
sh                           sh2007_defconfig
powerpc                 mpc834x_mds_defconfig
sh                        sh7763rdp_defconfig
m68k                       m5275evb_defconfig
mips                           ci20_defconfig
arc                        nsimosci_defconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210327
x86_64               randconfig-a003-20210327
x86_64               randconfig-a006-20210327
x86_64               randconfig-a001-20210327
x86_64               randconfig-a004-20210327
x86_64               randconfig-a005-20210327
i386                 randconfig-a004-20210326
i386                 randconfig-a003-20210326
i386                 randconfig-a001-20210326
i386                 randconfig-a002-20210326
i386                 randconfig-a006-20210326
i386                 randconfig-a005-20210326
x86_64               randconfig-a012-20210326
x86_64               randconfig-a015-20210326
x86_64               randconfig-a014-20210326
x86_64               randconfig-a013-20210326
x86_64               randconfig-a016-20210326
x86_64               randconfig-a011-20210326
i386                 randconfig-a014-20210326
i386                 randconfig-a011-20210326
i386                 randconfig-a015-20210326
i386                 randconfig-a016-20210326
i386                 randconfig-a012-20210326
i386                 randconfig-a013-20210326
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
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
x86_64               randconfig-a002-20210326
x86_64               randconfig-a003-20210326
x86_64               randconfig-a001-20210326
x86_64               randconfig-a006-20210326
x86_64               randconfig-a004-20210326
x86_64               randconfig-a005-20210326

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
