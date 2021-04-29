Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4AB36E4B7
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 08:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BAD4418D1;
	Thu, 29 Apr 2021 06:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZrnbCeT-qsT; Thu, 29 Apr 2021 06:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8B6F40505;
	Thu, 29 Apr 2021 06:09:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE06E1BF82C
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 06:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D11640505
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 06:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYE8AASsBPTX for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 06:09:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80D3940501
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 06:09:02 +0000 (UTC)
IronPort-SDR: KBlzqy3PjovK5I1mGiHpvNOb5IW0QP/k9dXD9mh5snycbe6GXFMh90vbynfnGMhpm2k5gARi3p
 FBYs5umAcF8w==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="177042027"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="177042027"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 23:09:00 -0700
IronPort-SDR: ZcI2vdS3Veg/DuR5yR/RttGe9W9ZdESIZphLyvWXxcCnoWG0hbmTU6VlHgpX1s4NYEp0bSfzku
 CmMxwb09t84g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="430682741"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2021 23:08:57 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lbzr6-0007Vy-E9; Thu, 29 Apr 2021 06:08:56 +0000
Date: Thu, 29 Apr 2021 14:08:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts-round2] BUILD SUCCESS
 d0d179fc4d792164b97135263d5561f77476311d
Message-ID: <608a4d4f.unYF+8IShh8sC/w+%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts-round2
branch HEAD: d0d179fc4d792164b97135263d5561f77476311d  Revert "regulator: tps65910: fix a missing check of return value"

elapsed time: 724m

configs tested: 116
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
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                    adder875_defconfig
sh                        dreamcast_defconfig
mips                      loongson3_defconfig
xtensa                  cadence_csp_defconfig
mips                         rt305x_defconfig
xtensa                generic_kc705_defconfig
arm                        cerfcube_defconfig
sh                        edosk7705_defconfig
m68k                             allyesconfig
arm                        mini2440_defconfig
arm                          iop32x_defconfig
mips                  decstation_64_defconfig
i386                                defconfig
openrisc                  or1klitex_defconfig
um                           x86_64_defconfig
powerpc                     tqm8540_defconfig
arm                       omap2plus_defconfig
i386                             alldefconfig
m68k                         apollo_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                      bamboo_defconfig
powerpc                      makalu_defconfig
mips                           ip27_defconfig
arc                      axs103_smp_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      arches_defconfig
powerpc                     taishan_defconfig
arm                          imote2_defconfig
ia64                          tiger_defconfig
arm                           omap1_defconfig
powerpc                         wii_defconfig
arm                        spear3xx_defconfig
arm                       mainstone_defconfig
mips                      pic32mzda_defconfig
arc                    vdk_hs38_smp_defconfig
arm                        multi_v7_defconfig
powerpc                 linkstation_defconfig
mips                       rbtx49xx_defconfig
mips                          ath79_defconfig
powerpc                 mpc8315_rdb_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210428
i386                 randconfig-a002-20210428
i386                 randconfig-a001-20210428
i386                 randconfig-a006-20210428
i386                 randconfig-a003-20210428
i386                 randconfig-a004-20210428
x86_64               randconfig-a015-20210428
x86_64               randconfig-a016-20210428
x86_64               randconfig-a011-20210428
x86_64               randconfig-a014-20210428
x86_64               randconfig-a013-20210428
x86_64               randconfig-a012-20210428
i386                 randconfig-a012-20210428
i386                 randconfig-a014-20210428
i386                 randconfig-a013-20210428
i386                 randconfig-a011-20210428
i386                 randconfig-a015-20210428
i386                 randconfig-a016-20210428
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
x86_64               randconfig-a004-20210428
x86_64               randconfig-a002-20210428
x86_64               randconfig-a005-20210428
x86_64               randconfig-a006-20210428
x86_64               randconfig-a001-20210428
x86_64               randconfig-a003-20210428

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
