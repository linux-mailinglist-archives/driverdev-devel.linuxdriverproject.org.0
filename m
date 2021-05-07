Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F8D375ECE
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 May 2021 04:26:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEF5883D2A;
	Fri,  7 May 2021 02:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FIWyqVHeZkTi; Fri,  7 May 2021 02:26:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3094083D18;
	Fri,  7 May 2021 02:26:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D76201BF2EB
 for <devel@linuxdriverproject.org>; Fri,  7 May 2021 02:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2E4B402DF
 for <devel@linuxdriverproject.org>; Fri,  7 May 2021 02:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6D4Ulj61TJy for <devel@linuxdriverproject.org>;
 Fri,  7 May 2021 02:26:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF7CB401C3
 for <devel@driverdev.osuosl.org>; Fri,  7 May 2021 02:26:35 +0000 (UTC)
IronPort-SDR: gKFj5ydT+g0TlPwwYFvH1u6JgXsCT+WyB6/IZxJJYuNnD/zWZVZWzfWMjGYFHuDavpdqFfZza2
 ixS7Jv1bDX6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="284077622"
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="284077622"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 19:26:35 -0700
IronPort-SDR: b3WZhkwl2DYyLMq94PN/PH8ln6ZAp+au2AKKWJTPxE2rI2du7FtfwL0ijDeS97AQTA+Ft0+GG1
 kP4LLp3lK5Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="431039201"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 06 May 2021 19:26:34 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1leqCH-000Azh-Oz; Fri, 07 May 2021 02:26:33 +0000
Date: Fri, 07 May 2021 10:26:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 7b997c23c121e00902c60e35d36c0c84898b8789
Message-ID: <6094a556.K4W9/NGdvhVPRaTz%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts
branch HEAD: 7b997c23c121e00902c60e35d36c0c84898b8789  cdrom: gdrom: initialize global variable at init time

elapsed time: 724m

configs tested: 107
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
riscv                            allyesconfig
i386                             allyesconfig
mips                     cu1830-neo_defconfig
x86_64                           alldefconfig
mips                        jmr3927_defconfig
sparc                       sparc64_defconfig
mips                         bigsur_defconfig
arm                           sama5_defconfig
m68k                       m5249evb_defconfig
arm                      integrator_defconfig
sh                   sh7724_generic_defconfig
mips                           jazz_defconfig
m68k                         amcore_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        oxnas_v6_defconfig
arm                         nhk8815_defconfig
sh                          sdk7780_defconfig
powerpc                     rainier_defconfig
powerpc                      katmai_defconfig
powerpc                        warp_defconfig
microblaze                      mmu_defconfig
arc                            hsdk_defconfig
arm                        realview_defconfig
m68k                       m5275evb_defconfig
arm                       multi_v4t_defconfig
powerpc                    sam440ep_defconfig
sh                 kfr2r09-romimage_defconfig
mips                         cobalt_defconfig
mips                           ip22_defconfig
arm                              alldefconfig
x86_64                            allnoconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210506
i386                 randconfig-a006-20210506
i386                 randconfig-a001-20210506
i386                 randconfig-a005-20210506
i386                 randconfig-a004-20210506
i386                 randconfig-a002-20210506
x86_64               randconfig-a014-20210506
x86_64               randconfig-a015-20210506
x86_64               randconfig-a012-20210506
x86_64               randconfig-a013-20210506
x86_64               randconfig-a011-20210506
x86_64               randconfig-a016-20210506
i386                 randconfig-a015-20210506
i386                 randconfig-a013-20210506
i386                 randconfig-a016-20210506
i386                 randconfig-a014-20210506
i386                 randconfig-a012-20210506
i386                 randconfig-a011-20210506
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
x86_64               randconfig-a001-20210506
x86_64               randconfig-a003-20210506
x86_64               randconfig-a005-20210506
x86_64               randconfig-a002-20210506
x86_64               randconfig-a006-20210506
x86_64               randconfig-a004-20210506

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
