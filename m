Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57A243B4E6
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Oct 2021 16:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AD1D40284;
	Tue, 26 Oct 2021 14:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FqnLn3SdfsvF; Tue, 26 Oct 2021 14:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D82B34013C;
	Tue, 26 Oct 2021 14:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E35A1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 26 Oct 2021 14:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A1F94013C
 for <devel@linuxdriverproject.org>; Tue, 26 Oct 2021 14:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xktzwd3J0SbQ for <devel@linuxdriverproject.org>;
 Tue, 26 Oct 2021 14:55:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5193400CE
 for <devel@driverdev.osuosl.org>; Tue, 26 Oct 2021 14:55:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="216841019"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="216841019"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 07:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="446784372"
Received: from lkp-server01.sh.intel.com (HELO 072b454ebba8) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 26 Oct 2021 07:54:59 -0700
Received: from kbuild by 072b454ebba8 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mfNqt-00002X-1M; Tue, 26 Oct 2021 14:54:59 +0000
Date: Tue, 26 Oct 2021 22:54:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 7e4c7947b42c4d9af0daa8d51dc58d4f17605dd9
Message-ID: <617816be.0oZ3zpdEKMpu5VZ2%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 7e4c7947b42c4d9af0daa8d51dc58d4f17605dd9  staging: r8188eu: Use a Mutex instead of a binary Semaphore

elapsed time: 2968m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211025
powerpc                      walnut_defconfig
m68k                         amcore_defconfig
arc                        nsim_700_defconfig
powerpc                        cell_defconfig
nios2                            alldefconfig
arm                       mainstone_defconfig
mips                          rb532_defconfig
arm                           sunxi_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                    mvme5100_defconfig
sh                        sh7763rdp_defconfig
mips                         tb0226_defconfig
powerpc                     tqm8560_defconfig
arm                        multi_v7_defconfig
powerpc                 mpc8272_ads_defconfig
arm                            xcep_defconfig
powerpc                     kmeter1_defconfig
arm                    vt8500_v6_v7_defconfig
sh                   sh7724_generic_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
mips                           ip28_defconfig
sh                           se7206_defconfig
sh                                  defconfig
sh                             espt_defconfig
powerpc                         wii_defconfig
arm                  randconfig-c002-20211025
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
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
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a013-20211025
x86_64               randconfig-a015-20211025
x86_64               randconfig-a011-20211025
x86_64               randconfig-a014-20211025
x86_64               randconfig-a016-20211025
x86_64               randconfig-a012-20211025
i386                 randconfig-a012-20211025
i386                 randconfig-a013-20211025
i386                 randconfig-a011-20211025
i386                 randconfig-a016-20211025
i386                 randconfig-a015-20211025
i386                 randconfig-a014-20211025
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
riscv                randconfig-c006-20211025
powerpc              randconfig-c003-20211025
arm                  randconfig-c002-20211025
x86_64               randconfig-c007-20211025
mips                 randconfig-c004-20211025
i386                 randconfig-c001-20211025
s390                 randconfig-c005-20211025
x86_64               randconfig-a002-20211025
x86_64               randconfig-a004-20211025
x86_64               randconfig-a005-20211025
x86_64               randconfig-a006-20211025
x86_64               randconfig-a001-20211025
x86_64               randconfig-a003-20211025
i386                 randconfig-a003-20211025
i386                 randconfig-a004-20211025
i386                 randconfig-a002-20211025
i386                 randconfig-a005-20211025
i386                 randconfig-a001-20211025
i386                 randconfig-a006-20211025
hexagon              randconfig-r045-20211025
hexagon              randconfig-r041-20211025

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
