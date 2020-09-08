Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D93F2607CD
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 02:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 892F887182;
	Tue,  8 Sep 2020 00:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id anLMhqVlWbRK; Tue,  8 Sep 2020 00:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFC3A86FDE;
	Tue,  8 Sep 2020 00:50:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 854FC1BF976
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 00:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 821748701D
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 00:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkS7xQKd4bYY for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 00:50:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8379886FDE
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 00:50:35 +0000 (UTC)
IronPort-SDR: Z5OdT+F64678DbkLx6Kg7HaFr79lPwdOWjXU0Vx0PwtsQak1sCwaSzLLfbrvU5nODIc8niDc6m
 hyHud2LPpMOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="158074780"
X-IronPort-AV: E=Sophos;i="5.76,403,1592895600"; d="scan'208";a="158074780"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 17:50:34 -0700
IronPort-SDR: xt4lIVhcK2xumzDYxvycpY2qlSwTgM4ICU/TNGqKFf2wz3CvUHnkqZtHY13mzEtlbNTWrIPKG4
 ufKOy0bHXhzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,403,1592895600"; d="scan'208";a="303896131"
Received: from lkp-server02.sh.intel.com (HELO a98deea729ba) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 07 Sep 2020 17:50:33 -0700
Received: from kbuild by a98deea729ba with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kFRqC-0000LP-BU; Tue, 08 Sep 2020 00:50:32 +0000
Date: Tue, 08 Sep 2020 08:50:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 1c30474826682bc970c3200700d8bcfa2b771278
Message-ID: <5f56d555.kUCVvhL8yHK24XiH%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 1c30474826682bc970c3200700d8bcfa2b771278  PM: <linux/device.h>: fix @em_pd kernel-doc warning

elapsed time: 722m

configs tested: 138
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nds32                            alldefconfig
mips                        workpad_defconfig
mips                     cu1000-neo_defconfig
powerpc                          g5_defconfig
mips                          ath25_defconfig
arm                          pcm027_defconfig
powerpc                      ppc40x_defconfig
mips                        nlm_xlp_defconfig
sh                           se7780_defconfig
powerpc                           allnoconfig
arm                    vt8500_v6_v7_defconfig
c6x                        evmc6457_defconfig
arm                         lpc18xx_defconfig
arm                           u8500_defconfig
arm                           omap1_defconfig
mips                  decstation_64_defconfig
mips                           ip27_defconfig
arm                   milbeaut_m10v_defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
mips                 decstation_r4k_defconfig
alpha                               defconfig
arm                       omap2plus_defconfig
nios2                         3c120_defconfig
sh                         apsh4a3a_defconfig
m68k                          atari_defconfig
powerpc                     pseries_defconfig
arc                        nsimosci_defconfig
powerpc                      tqm8xx_defconfig
mips                           rs90_defconfig
xtensa                       common_defconfig
arm                            u300_defconfig
riscv                    nommu_k210_defconfig
arm                            mmp2_defconfig
powerpc                      ppc64e_defconfig
powerpc                    gamecube_defconfig
c6x                              allyesconfig
powerpc                  mpc885_ads_defconfig
mips                           ip28_defconfig
mips                        omega2p_defconfig
sh                   sh7724_generic_defconfig
mips                          ath79_defconfig
openrisc                    or1ksim_defconfig
sh                          lboxre2_defconfig
arc                              allyesconfig
powerpc                    mvme5100_defconfig
openrisc                            defconfig
ia64                             alldefconfig
nds32                               defconfig
mips                             allyesconfig
sh                          sdk7786_defconfig
arm                             ezx_defconfig
mips                       lemote2f_defconfig
m68k                         apollo_defconfig
mips                malta_kvm_guest_defconfig
s390                          debug_defconfig
c6x                        evmc6678_defconfig
arm                        spear6xx_defconfig
powerpc                      ppc6xx_defconfig
riscv                            alldefconfig
arm                            xcep_defconfig
powerpc                       holly_defconfig
sh                   sh7770_generic_defconfig
arm                            mps2_defconfig
s390                       zfcpdump_defconfig
arm                       mainstone_defconfig
sh                            shmin_defconfig
mips                           ci20_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a004-20200907
i386                 randconfig-a005-20200907
i386                 randconfig-a006-20200907
i386                 randconfig-a002-20200907
i386                 randconfig-a003-20200907
i386                 randconfig-a001-20200907
x86_64               randconfig-a006-20200907
x86_64               randconfig-a004-20200907
x86_64               randconfig-a003-20200907
x86_64               randconfig-a005-20200907
x86_64               randconfig-a001-20200907
x86_64               randconfig-a002-20200907
i386                 randconfig-a016-20200907
i386                 randconfig-a015-20200907
i386                 randconfig-a011-20200907
i386                 randconfig-a013-20200907
i386                 randconfig-a014-20200907
i386                 randconfig-a012-20200907
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200908
x86_64               randconfig-a003-20200908
x86_64               randconfig-a001-20200908
x86_64               randconfig-a002-20200908
x86_64               randconfig-a013-20200907
x86_64               randconfig-a011-20200907
x86_64               randconfig-a016-20200907
x86_64               randconfig-a012-20200907
x86_64               randconfig-a015-20200907
x86_64               randconfig-a014-20200907

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
