Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B930297A24
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Oct 2020 03:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2EEEA22CCE;
	Sat, 24 Oct 2020 01:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tJ2+ZOJzcGE; Sat, 24 Oct 2020 01:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A2B320348;
	Sat, 24 Oct 2020 01:16:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1F041BF5DB
 for <devel@linuxdriverproject.org>; Sat, 24 Oct 2020 01:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE8008778E
 for <devel@linuxdriverproject.org>; Sat, 24 Oct 2020 01:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wpj8W7EmvlD1 for <devel@linuxdriverproject.org>;
 Sat, 24 Oct 2020 01:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1673187789
 for <devel@driverdev.osuosl.org>; Sat, 24 Oct 2020 01:16:05 +0000 (UTC)
IronPort-SDR: 6jWMl6Fb8dVnztjNoeu9RfqlfnJInpQRehRGyCbwPA+Na5tEP4kbT65DcSfOYWL36aOOGeVQCB
 IgCQYzDfYTIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="166963907"
X-IronPort-AV: E=Sophos;i="5.77,410,1596524400"; d="scan'208";a="166963907"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 18:16:01 -0700
IronPort-SDR: bLeBuj+G5w+Cg0HRZW8AhRlVMiU9CbjDgaqbwHWCWlUG9OCuxV1UbgHCcPcpSWtEaXAhxfRpmQ
 iDwKzvGwgBxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,410,1596524400"; d="scan'208";a="354619481"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 Oct 2020 18:16:00 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kW8A3-0000IL-JY; Sat, 24 Oct 2020 01:15:59 +0000
Date: Sat, 24 Oct 2020 09:15:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 1fa890009b542ad9b2a4a7b0e9f400c6ee6a59cc
Message-ID: <5f938045.zE/yGb7St1lITaKN%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 1fa890009b542ad9b2a4a7b0e9f400c6ee6a59cc  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 725m

configs tested: 163
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          landisk_defconfig
sh                          r7780mp_defconfig
openrisc                            defconfig
arm                        cerfcube_defconfig
sh                               allmodconfig
powerpc                          g5_defconfig
arm                         s5pv210_defconfig
powerpc                     tqm8548_defconfig
sh                           se7619_defconfig
arm                         orion5x_defconfig
arm                        spear6xx_defconfig
riscv                            alldefconfig
arm                            xcep_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
powerpc                     ksi8560_defconfig
arm                         s3c6400_defconfig
mips                        maltaup_defconfig
arm                           omap1_defconfig
arm                         lubbock_defconfig
arm                           spitz_defconfig
mips                      malta_kvm_defconfig
arm                             mxs_defconfig
arc                        nsim_700_defconfig
mips                          ath79_defconfig
powerpc                      ppc44x_defconfig
arm                            zeus_defconfig
sh                           se7722_defconfig
mips                     decstation_defconfig
arm                      jornada720_defconfig
sh                          lboxre2_defconfig
nios2                         3c120_defconfig
arm                           tegra_defconfig
arm                          lpd270_defconfig
arc                          axs103_defconfig
arm                           efm32_defconfig
sh                      rts7751r2d1_defconfig
i386                             alldefconfig
powerpc                    klondike_defconfig
arm                            pleb_defconfig
xtensa                              defconfig
sh                           se7705_defconfig
sh                          polaris_defconfig
arm                           stm32_defconfig
powerpc                         wii_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     redwood_defconfig
sh                             sh03_defconfig
mips                      bmips_stb_defconfig
sparc64                          alldefconfig
sh                     magicpanelr2_defconfig
sh                           se7206_defconfig
parisc                generic-64bit_defconfig
arm                      integrator_defconfig
powerpc                     mpc5200_defconfig
arm                              zx_defconfig
mips                malta_qemu_32r6_defconfig
mips                        bcm47xx_defconfig
xtensa                           alldefconfig
xtensa                  nommu_kc705_defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
arm                        neponset_defconfig
sh                           se7724_defconfig
arm                      pxa255-idp_defconfig
powerpc                      ppc40x_defconfig
arm                           viper_defconfig
xtensa                         virt_defconfig
powerpc                      ppc6xx_defconfig
arm                       versatile_defconfig
h8300                               defconfig
m68k                        stmark2_defconfig
powerpc                        icon_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                        qi_lb60_defconfig
arm                          iop32x_defconfig
sh                              ul2_defconfig
arm                        magician_defconfig
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
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20201023
x86_64               randconfig-a002-20201023
x86_64               randconfig-a003-20201023
x86_64               randconfig-a006-20201023
x86_64               randconfig-a004-20201023
x86_64               randconfig-a005-20201023
i386                 randconfig-a002-20201023
i386                 randconfig-a005-20201023
i386                 randconfig-a003-20201023
i386                 randconfig-a001-20201023
i386                 randconfig-a006-20201023
i386                 randconfig-a004-20201023
x86_64               randconfig-a011-20201022
x86_64               randconfig-a013-20201022
x86_64               randconfig-a016-20201022
x86_64               randconfig-a015-20201022
x86_64               randconfig-a012-20201022
x86_64               randconfig-a014-20201022
i386                 randconfig-a016-20201022
i386                 randconfig-a014-20201022
i386                 randconfig-a015-20201022
i386                 randconfig-a012-20201022
i386                 randconfig-a013-20201022
i386                 randconfig-a011-20201022
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20201023
x86_64               randconfig-a013-20201023
x86_64               randconfig-a016-20201023
x86_64               randconfig-a015-20201023
x86_64               randconfig-a012-20201023
x86_64               randconfig-a014-20201023
x86_64               randconfig-a001-20201022
x86_64               randconfig-a002-20201022
x86_64               randconfig-a003-20201022
x86_64               randconfig-a006-20201022
x86_64               randconfig-a004-20201022
x86_64               randconfig-a005-20201022

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
