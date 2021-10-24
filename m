Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0817643865D
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Oct 2021 04:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85BB4402B5;
	Sun, 24 Oct 2021 02:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htKgHFNF3oS4; Sun, 24 Oct 2021 02:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94AE6402AE;
	Sun, 24 Oct 2021 02:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1C51BF575
 for <devel@linuxdriverproject.org>; Sun, 24 Oct 2021 02:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 852E280EEE
 for <devel@linuxdriverproject.org>; Sun, 24 Oct 2021 02:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bXBvKjcd7WNo for <devel@linuxdriverproject.org>;
 Sun, 24 Oct 2021 02:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73E8980CEF
 for <devel@driverdev.osuosl.org>; Sun, 24 Oct 2021 02:42:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10146"; a="229424369"
X-IronPort-AV: E=Sophos;i="5.87,177,1631602800"; d="scan'208";a="229424369"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2021 19:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,177,1631602800"; d="scan'208";a="445781516"
Received: from lkp-server01.sh.intel.com (HELO 21c42eb1c8dc) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Oct 2021 19:42:21 -0700
Received: from kbuild by 21c42eb1c8dc with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1meTSm-00003e-T4; Sun, 24 Oct 2021 02:42:20 +0000
Date: Sun, 24 Oct 2021 10:41:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 c87761db2100677a69be551365105125d872af5b
Message-ID: <6174c7d6./UDbiT9iO/b1d/0T%lkp@intel.com>
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
branch HEAD: c87761db2100677a69be551365105125d872af5b  component: do not leave master devres group open after bind

elapsed time: 3708m

configs tested: 163
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211021
m68k                         apollo_defconfig
arm                            mmp2_defconfig
arm                         vf610m4_defconfig
powerpc                    gamecube_defconfig
h8300                            alldefconfig
powerpc                  mpc866_ads_defconfig
powerpc                     ep8248e_defconfig
mips                            gpr_defconfig
powerpc                      makalu_defconfig
arm                        trizeps4_defconfig
arm                  colibri_pxa300_defconfig
powerpc                   bluestone_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     sequoia_defconfig
arm                        magician_defconfig
xtensa                  cadence_csp_defconfig
mips                        omega2p_defconfig
mips                         mpc30x_defconfig
um                                  defconfig
arm                         orion5x_defconfig
powerpc                     akebono_defconfig
powerpc                      chrp32_defconfig
powerpc                      ppc64e_defconfig
arm                         s3c2410_defconfig
arm                       multi_v4t_defconfig
parisc                              defconfig
m68k                          atari_defconfig
mips                        qi_lb60_defconfig
m68k                                defconfig
powerpc                      obs600_defconfig
mips                malta_qemu_32r6_defconfig
arm                             pxa_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
nios2                               defconfig
mips                       capcella_defconfig
arm                         s5pv210_defconfig
sh                          rsk7201_defconfig
m68k                            q40_defconfig
parisc                           alldefconfig
arm                           u8500_defconfig
riscv                    nommu_virt_defconfig
powerpc                      tqm8xx_defconfig
sh                         ap325rxa_defconfig
powerpc                          allyesconfig
arm                            mps2_defconfig
arm                          moxart_defconfig
arc                     haps_hs_smp_defconfig
sh                           se7751_defconfig
mips                          rb532_defconfig
openrisc                 simple_smp_defconfig
arm                  randconfig-c002-20211022
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20211022
i386                 randconfig-a003-20211022
i386                 randconfig-a002-20211022
i386                 randconfig-a005-20211022
i386                 randconfig-a006-20211022
i386                 randconfig-a001-20211022
x86_64               randconfig-a013-20211021
x86_64               randconfig-a015-20211021
x86_64               randconfig-a011-20211021
x86_64               randconfig-a014-20211021
x86_64               randconfig-a016-20211021
x86_64               randconfig-a012-20211021
i386                 randconfig-a012-20211021
i386                 randconfig-a013-20211021
i386                 randconfig-a011-20211021
i386                 randconfig-a016-20211021
i386                 randconfig-a015-20211021
i386                 randconfig-a014-20211021
x86_64               randconfig-a002-20211022
x86_64               randconfig-a004-20211022
x86_64               randconfig-a005-20211022
x86_64               randconfig-a001-20211022
x86_64               randconfig-a006-20211022
x86_64               randconfig-a003-20211022
arc                  randconfig-r043-20211021
riscv                randconfig-r042-20211021
s390                 randconfig-r044-20211021
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
powerpc              randconfig-c003-20211021
riscv                randconfig-c006-20211021
arm                  randconfig-c002-20211021
x86_64               randconfig-c007-20211021
mips                 randconfig-c004-20211021
s390                 randconfig-c005-20211021
i386                 randconfig-c001-20211021
x86_64               randconfig-a002-20211021
x86_64               randconfig-a004-20211021
x86_64               randconfig-a005-20211021
x86_64               randconfig-a001-20211021
x86_64               randconfig-a006-20211021
x86_64               randconfig-a003-20211021
i386                 randconfig-a004-20211021
i386                 randconfig-a003-20211021
i386                 randconfig-a002-20211021
i386                 randconfig-a005-20211021
i386                 randconfig-a001-20211021
i386                 randconfig-a006-20211021
x86_64               randconfig-a013-20211022
x86_64               randconfig-a015-20211022
x86_64               randconfig-a011-20211022
x86_64               randconfig-a014-20211022
x86_64               randconfig-a016-20211022
x86_64               randconfig-a012-20211022
i386                 randconfig-a012-20211022
i386                 randconfig-a013-20211022
i386                 randconfig-a011-20211022
i386                 randconfig-a016-20211022
i386                 randconfig-a015-20211022
i386                 randconfig-a014-20211022
hexagon              randconfig-r045-20211021
hexagon              randconfig-r041-20211021
riscv                randconfig-r042-20211022
s390                 randconfig-r044-20211022
hexagon              randconfig-r045-20211022
hexagon              randconfig-r041-20211022

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
