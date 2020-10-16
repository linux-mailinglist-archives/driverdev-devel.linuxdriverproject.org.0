Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 486E4290C57
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 21:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2E8188AB8;
	Fri, 16 Oct 2020 19:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhmT0rQeB1aw; Fri, 16 Oct 2020 19:36:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 761A088A9C;
	Fri, 16 Oct 2020 19:36:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56C901BF28A
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 19:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 523B688E06
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 19:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gJvm3Zp5Q8p5 for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 19:36:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 552C988DF6
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 19:36:17 +0000 (UTC)
IronPort-SDR: sKu3y3f/0GjXdDa2vtEXPXTWdQ7gXXfCjATF9oSW3imMAYTRpdQxm/XuvmeKe6S3tsQmsaV2r1
 kukiPYO4hQbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="166750847"
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="166750847"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 12:36:13 -0700
IronPort-SDR: OunCrJzwpBGsqZsEfSgASfP/1zHgO11bZxZtV7u/Lwko6+cNNo5asUNOccqUti6VNl+jih/QsI
 bsiFYJ+DEg+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="531846612"
Received: from lkp-server02.sh.intel.com (HELO 262a2cdd3070) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 16 Oct 2020 12:36:12 -0700
Received: from kbuild by 262a2cdd3070 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kTVWN-00006w-EC; Fri, 16 Oct 2020 19:36:11 +0000
Date: Sat, 17 Oct 2020 03:36:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 551909053847884d2760ad6ffdc4201f8750683b
Message-ID: <5f89f621.HlmCfYqx69nH2bNz%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  readfile
branch HEAD: 551909053847884d2760ad6ffdc4201f8750683b  readfile.2: new page describing readfile(2)

elapsed time: 722m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm                         at91_dt_defconfig
mips                          rb532_defconfig
powerpc64                        alldefconfig
arm                            mps2_defconfig
powerpc64                           defconfig
xtensa                  audio_kc705_defconfig
arc                              alldefconfig
powerpc                 canyonlands_defconfig
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
arm                          exynos_defconfig
powerpc                 mpc836x_mds_defconfig
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
