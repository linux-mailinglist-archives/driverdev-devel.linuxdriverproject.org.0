Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2F31D308
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 00:37:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA1F687244;
	Tue, 16 Feb 2021 23:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZUcFmkFvBG6; Tue, 16 Feb 2021 23:37:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AE0E8721C;
	Tue, 16 Feb 2021 23:37:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4DC1BF5F6
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 23:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AE9F86D69
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 23:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IYr8o+k8Pov for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 23:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A13986D56
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 23:37:29 +0000 (UTC)
IronPort-SDR: YuPGUOoUd86SmWFXs+SxU5xoySEkWbe1+qUcDyPjnaeuxLgSxSdvIBC9ciJzHPF1AjpwUq6uSg
 vk528OlyXK8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="244523453"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="244523453"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 15:37:27 -0800
IronPort-SDR: u+dTugTUlM6eiVLy7JN7TlIa4YGwLlkLrutiN8h13al0+KzFqTZodkQq35HzZ+ooful0SsG3kz
 t3X1snAeyFCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="361844188"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 16 Feb 2021 15:37:26 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lC9uH-0008So-IW; Tue, 16 Feb 2021 23:37:25 +0000
Date: Wed, 17 Feb 2021 07:37:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD REGRESSION
 5187c2360ee1d023078e4302dad32fda1e895772
Message-ID: <602c571c.naTr9Uz1WiI3Zdvj%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: 5187c2360ee1d023078e4302dad32fda1e895772  USB: gadget: s3c2410_udc: remove dentry storage for debugfs file

Error/Warning in current branch:

drivers/net/wireless/broadcom/b43legacy/debugfs.c:354:28: error: void value not ignored as it ought to be

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- arc-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- arm-allmodconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- arm-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- arm64-allmodconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- arm64-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- c6x-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- h8300-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- i386-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- ia64-allmodconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- ia64-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- m68k-allmodconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- m68k-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- nios2-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- powerpc-allmodconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- powerpc-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- riscv-allmodconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- riscv-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- sparc-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- x86_64-allyesconfig
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|-- x86_64-randconfig-a001-20210216
|   `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
`-- xtensa-allyesconfig
    `-- drivers-net-wireless-broadcom-b43legacy-debugfs.c:error:void-value-not-ignored-as-it-ought-to-be

elapsed time: 725m

configs tested: 148
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                           efm32_defconfig
arm                     eseries_pxa_defconfig
sparc                            alldefconfig
powerpc                      ppc6xx_defconfig
mips                           jazz_defconfig
powerpc                        fsp2_defconfig
csky                             alldefconfig
arc                           tb10x_defconfig
sh                           se7343_defconfig
h8300                       h8s-sim_defconfig
arm                       omap2plus_defconfig
ia64                          tiger_defconfig
mips                           ip32_defconfig
xtensa                              defconfig
powerpc                     ppa8548_defconfig
arm                        clps711x_defconfig
mips                         tb0219_defconfig
arm                           corgi_defconfig
powerpc                      katmai_defconfig
powerpc                     tqm8555_defconfig
c6x                         dsk6455_defconfig
arm                         mv78xx0_defconfig
sh                          lboxre2_defconfig
powerpc                  mpc866_ads_defconfig
arm                         axm55xx_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                    mvme5100_defconfig
arm                      footbridge_defconfig
sh                          kfr2r09_defconfig
nds32                             allnoconfig
sh                  sh7785lcr_32bit_defconfig
mips                       lemote2f_defconfig
arc                        nsimosci_defconfig
mips                     cu1830-neo_defconfig
arm                        shmobile_defconfig
c6x                        evmc6678_defconfig
m68k                          atari_defconfig
arm                              zx_defconfig
openrisc                  or1klitex_defconfig
c6x                                 defconfig
powerpc                mpc7448_hpc2_defconfig
arc                        vdk_hs38_defconfig
arm                         bcm2835_defconfig
sh                          r7780mp_defconfig
arm                          badge4_defconfig
powerpc                     ksi8560_defconfig
powerpc                    sam440ep_defconfig
arm                         s3c6400_defconfig
sh                         apsh4a3a_defconfig
powerpc                  storcenter_defconfig
ia64                         bigsur_defconfig
sh                        dreamcast_defconfig
sh                           se7722_defconfig
mips                     cu1000-neo_defconfig
sh                             espt_defconfig
arm                            xcep_defconfig
powerpc                  iss476-smp_defconfig
h8300                    h8300h-sim_defconfig
arm                          lpd270_defconfig
mips                        nlm_xlp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
s390                             allmodconfig
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
i386                 randconfig-a003-20210216
i386                 randconfig-a005-20210216
i386                 randconfig-a002-20210216
i386                 randconfig-a006-20210216
i386                 randconfig-a001-20210216
i386                 randconfig-a004-20210216
i386                 randconfig-a003-20210215
i386                 randconfig-a005-20210215
i386                 randconfig-a002-20210215
i386                 randconfig-a006-20210215
i386                 randconfig-a004-20210215
i386                 randconfig-a001-20210215
x86_64               randconfig-a003-20210216
x86_64               randconfig-a002-20210216
x86_64               randconfig-a004-20210216
x86_64               randconfig-a001-20210216
x86_64               randconfig-a005-20210216
x86_64               randconfig-a006-20210216
x86_64               randconfig-a016-20210215
x86_64               randconfig-a013-20210215
x86_64               randconfig-a012-20210215
x86_64               randconfig-a015-20210215
x86_64               randconfig-a014-20210215
x86_64               randconfig-a011-20210215
i386                 randconfig-a016-20210216
i386                 randconfig-a014-20210216
i386                 randconfig-a012-20210216
i386                 randconfig-a013-20210216
i386                 randconfig-a011-20210216
i386                 randconfig-a015-20210216
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
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210216
x86_64               randconfig-a016-20210216
x86_64               randconfig-a012-20210216
x86_64               randconfig-a015-20210216
x86_64               randconfig-a014-20210216
x86_64               randconfig-a011-20210216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
