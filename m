Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4E5290C58
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 21:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD63A2E844;
	Fri, 16 Oct 2020 19:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPEOXi1OpQel; Fri, 16 Oct 2020 19:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52D4F2E83F;
	Fri, 16 Oct 2020 19:36:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 493621BF28A
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 19:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 462D888A9C
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 19:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hlh1mJ9awSBO for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 19:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7DEC288A99
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 19:36:16 +0000 (UTC)
IronPort-SDR: Xs203mf+/2KNqBnujG5yceszkJ083vg/HTOsXYRUMn16yfy1i5lLvA3H9Ebb6/DNtjBhNhQbI1
 cj1yk4grDxIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="184255299"
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="184255299"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 12:36:12 -0700
IronPort-SDR: bI9Gaho62dUCyCWxbE6hk57MLnwvJ6YurQ7XWun8FcUCx7xR0teV2+c9HlB6MmkJ0SfNR7aAd9
 xswTJNv8O6Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="391422437"
Received: from lkp-server02.sh.intel.com (HELO 262a2cdd3070) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 16 Oct 2020 12:36:10 -0700
Received: from kbuild by 262a2cdd3070 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kTVWM-00006q-17; Fri, 16 Oct 2020 19:36:10 +0000
Date: Sat, 17 Oct 2020 03:36:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 065b4f86f7cfb6c95cbe4d5d81ae1b13d753b5f6
Message-ID: <5f89f623.J1YG5kSEYTbbY03w%lkp@intel.com>
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
branch HEAD: 065b4f86f7cfb6c95cbe4d5d81ae1b13d753b5f6  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 722m

configs tested: 105
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
mips                          rb532_defconfig
powerpc64                        alldefconfig
arm                            mps2_defconfig
h8300                     edosk2674_defconfig
mips                           mtx1_defconfig
arm                       aspeed_g5_defconfig
arm                          exynos_defconfig
ia64                        generic_defconfig
arm                            xcep_defconfig
arm                          tango4_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                     cu1830-neo_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                           sama5_defconfig
arm                         mv78xx0_defconfig
powerpc                     tqm8540_defconfig
arm                        multi_v7_defconfig
arm                         socfpga_defconfig
powerpc                      pasemi_defconfig
arm                         palmz72_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                        cell_defconfig
sh                        sh7785lcr_defconfig
sh                        sh7757lcr_defconfig
openrisc                    or1ksim_defconfig
h8300                            allyesconfig
powerpc                   motionpro_defconfig
sh                           se7724_defconfig
m68k                         apollo_defconfig
powerpc                mpc7448_hpc2_defconfig
riscv                               defconfig
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
arc                                 defconfig
sh                               allmodconfig
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
i386                 randconfig-a005-20201016
i386                 randconfig-a006-20201016
i386                 randconfig-a001-20201016
i386                 randconfig-a003-20201016
i386                 randconfig-a004-20201016
i386                 randconfig-a002-20201016
x86_64               randconfig-a016-20201016
x86_64               randconfig-a012-20201016
x86_64               randconfig-a015-20201016
x86_64               randconfig-a013-20201016
x86_64               randconfig-a014-20201016
x86_64               randconfig-a011-20201016
i386                 randconfig-a016-20201016
i386                 randconfig-a013-20201016
i386                 randconfig-a015-20201016
i386                 randconfig-a011-20201016
i386                 randconfig-a012-20201016
i386                 randconfig-a014-20201016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201016
x86_64               randconfig-a002-20201016
x86_64               randconfig-a006-20201016
x86_64               randconfig-a001-20201016
x86_64               randconfig-a005-20201016
x86_64               randconfig-a003-20201016

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
