Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D03371ECC
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 May 2021 19:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6231E842E0;
	Mon,  3 May 2021 17:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgQU2dxhkZkh; Mon,  3 May 2021 17:39:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95DA583CFC;
	Mon,  3 May 2021 17:39:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 613C11BF2C5
 for <devel@linuxdriverproject.org>; Mon,  3 May 2021 17:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CCF740531
 for <devel@linuxdriverproject.org>; Mon,  3 May 2021 17:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iiN7FB9sUZ8i for <devel@linuxdriverproject.org>;
 Mon,  3 May 2021 17:39:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 321374051B
 for <devel@driverdev.osuosl.org>; Mon,  3 May 2021 17:39:35 +0000 (UTC)
IronPort-SDR: bFmN7/j6KylaTe/hoV1OmZG/b8C4MlN2McQatpfpO3SKqParCK5/eqb3qMn1e2pMpMijl5d5Gp
 7KiQxz32o/uA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="197892661"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="197892661"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:39:34 -0700
IronPort-SDR: 8OdOtQpPji2QV8xL2uB5XD5f/SxuC3L0KJDKPHnCLCqKoh8SziLcSPo470rVUx84KXjNorG4tu
 IoGRrqwdu8/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432847806"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 03 May 2021 10:39:32 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ldcXc-0009JC-4Z; Mon, 03 May 2021 17:39:32 +0000
Date: Tue, 04 May 2021 01:38:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 47214aa268369347f1e4ae5a3fb2aabb559fc3b2
Message-ID: <6090351d.xIrxtGQ+XOLQ1Wz2%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 47214aa268369347f1e4ae5a3fb2aabb559fc3b2  debugfs: remove return value of debugfs_create_bool()

elapsed time: 720m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allyesconfig
openrisc                         alldefconfig
powerpc                     powernv_defconfig
xtensa                              defconfig
arm                        oxnas_v6_defconfig
arm                         orion5x_defconfig
sh                           se7721_defconfig
powerpc                    adder875_defconfig
powerpc                 mpc832x_mds_defconfig
um                             i386_defconfig
powerpc                       holly_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                    gamecube_defconfig
m68k                       m5208evb_defconfig
powerpc                      obs600_defconfig
riscv                    nommu_virt_defconfig
powerpc                      katmai_defconfig
powerpc                     skiroot_defconfig
arm                        trizeps4_defconfig
powerpc                      pcm030_defconfig
arm                       imx_v6_v7_defconfig
mips                         mpc30x_defconfig
mips                        bcm47xx_defconfig
powerpc                     mpc83xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210503
x86_64               randconfig-a005-20210503
x86_64               randconfig-a003-20210503
x86_64               randconfig-a002-20210503
x86_64               randconfig-a006-20210503
x86_64               randconfig-a004-20210503
i386                 randconfig-a003-20210503
i386                 randconfig-a006-20210503
i386                 randconfig-a001-20210503
i386                 randconfig-a005-20210503
i386                 randconfig-a004-20210503
i386                 randconfig-a002-20210503
i386                 randconfig-a013-20210503
i386                 randconfig-a015-20210503
i386                 randconfig-a016-20210503
i386                 randconfig-a014-20210503
i386                 randconfig-a011-20210503
i386                 randconfig-a012-20210503
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
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
x86_64               randconfig-a014-20210503
x86_64               randconfig-a015-20210503
x86_64               randconfig-a012-20210503
x86_64               randconfig-a011-20210503
x86_64               randconfig-a013-20210503
x86_64               randconfig-a016-20210503

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
