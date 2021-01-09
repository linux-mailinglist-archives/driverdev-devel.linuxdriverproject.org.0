Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F14252EFEF1
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Jan 2021 11:22:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E05586EDF;
	Sat,  9 Jan 2021 10:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xb9blqknvrKH; Sat,  9 Jan 2021 10:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDFC886EBB;
	Sat,  9 Jan 2021 10:22:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7BF1BF349
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 10:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4844487158
 for <devel@linuxdriverproject.org>; Sat,  9 Jan 2021 10:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKEMPykfz+th for <devel@linuxdriverproject.org>;
 Sat,  9 Jan 2021 10:22:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7AB95870A6
 for <devel@driverdev.osuosl.org>; Sat,  9 Jan 2021 10:22:07 +0000 (UTC)
IronPort-SDR: 8Y7LR/+JZeMXnqffAFQb7jzEq7neVALkSj5nOmu3hfeeLXB6b8y2FiICWArcufmKRBV+tXOMqj
 Dc48hZwoqnew==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="176923316"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="176923316"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2021 02:22:06 -0800
IronPort-SDR: kYQ/z/nlSJwyQXJQeKuecFYcq4wqs1mYtCHJcCSg4kOvFc2117rY0fEf08M1QsvdnrwVI7S1hP
 rvt5rL29gnqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="566712207"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 09 Jan 2021 02:22:05 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kyBNk-00011z-O3; Sat, 09 Jan 2021 10:22:04 +0000
Date: Sat, 09 Jan 2021 18:21:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 0fab972eef49ef8d30eb91d6bd98861122d083d1
Message-ID: <5ff983c5.Q6Kgj4FeFl1lSyPW%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 0fab972eef49ef8d30eb91d6bd98861122d083d1  drivers: core: Detach device from power domain on shutdown

elapsed time: 1086m

configs tested: 163
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
openrisc                            defconfig
powerpc                      arches_defconfig
mips                        qi_lb60_defconfig
powerpc                     sbc8548_defconfig
openrisc                 simple_smp_defconfig
sh                           se7780_defconfig
powerpc                      mgcoge_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
powerpc                         wii_defconfig
riscv                          rv32_defconfig
mips                           ip28_defconfig
riscv                            alldefconfig
mips                        jmr3927_defconfig
arm                           spitz_defconfig
arm                        magician_defconfig
sh                            migor_defconfig
arm                         socfpga_defconfig
powerpc                       ebony_defconfig
mips                         bigsur_defconfig
arm                        realview_defconfig
arm                           efm32_defconfig
powerpc                     redwood_defconfig
h8300                               defconfig
m68k                        stmark2_defconfig
xtensa                generic_kc705_defconfig
mips                  decstation_64_defconfig
sh                        sh7785lcr_defconfig
powerpc                    sam440ep_defconfig
mips                         tb0219_defconfig
mips                      bmips_stb_defconfig
powerpc                      ppc6xx_defconfig
mips                        workpad_defconfig
mips                        omega2p_defconfig
sh                            titan_defconfig
powerpc                      ppc64e_defconfig
sh                        dreamcast_defconfig
arm                         lpc18xx_defconfig
arm                        mvebu_v7_defconfig
microblaze                          defconfig
arm                        oxnas_v6_defconfig
m68k                                defconfig
m68k                         apollo_defconfig
powerpc64                           defconfig
arm                       cns3420vb_defconfig
m68k                        mvme147_defconfig
sh                            shmin_defconfig
powerpc                  iss476-smp_defconfig
powerpc                     ep8248e_defconfig
mips                         mpc30x_defconfig
c6x                        evmc6472_defconfig
m68k                        m5272c3_defconfig
powerpc                     ppa8548_defconfig
sh                      rts7751r2d1_defconfig
arm                       omap2plus_defconfig
mips                     cu1830-neo_defconfig
alpha                            alldefconfig
mips                           ci20_defconfig
sh                             sh03_defconfig
powerpc                      ppc40x_defconfig
arm                      jornada720_defconfig
mips                         tb0287_defconfig
arm                       mainstone_defconfig
arm                           h3600_defconfig
c6x                                 defconfig
xtensa                  audio_kc705_defconfig
arm                          pxa3xx_defconfig
riscv                    nommu_virt_defconfig
sh                           se7619_defconfig
riscv                            allmodconfig
mips                           ip22_defconfig
powerpc                  mpc885_ads_defconfig
mips                malta_kvm_guest_defconfig
powerpc                       ppc64_defconfig
powerpc                     tqm8560_defconfig
mips                         cobalt_defconfig
arm                       aspeed_g5_defconfig
m68k                       m5249evb_defconfig
mips                      maltaaprp_defconfig
arc                          axs103_defconfig
arm                     eseries_pxa_defconfig
sh                          r7780mp_defconfig
powerpc                      acadia_defconfig
riscv                            allyesconfig
arc                          axs101_defconfig
mips                           gcw0_defconfig
mips                      pic32mzda_defconfig
parisc                generic-32bit_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                      pistachio_defconfig
powerpc                     akebono_defconfig
sh                          rsk7269_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
x86_64               randconfig-a004-20210108
x86_64               randconfig-a006-20210108
x86_64               randconfig-a001-20210108
x86_64               randconfig-a002-20210108
x86_64               randconfig-a003-20210108
x86_64               randconfig-a005-20210108
i386                 randconfig-a005-20210108
i386                 randconfig-a002-20210108
i386                 randconfig-a001-20210108
i386                 randconfig-a003-20210108
i386                 randconfig-a006-20210108
i386                 randconfig-a004-20210108
i386                 randconfig-a016-20210108
i386                 randconfig-a011-20210108
i386                 randconfig-a014-20210108
i386                 randconfig-a015-20210108
i386                 randconfig-a013-20210108
i386                 randconfig-a012-20210108
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210108
x86_64               randconfig-a011-20210108
x86_64               randconfig-a012-20210108
x86_64               randconfig-a016-20210108
x86_64               randconfig-a014-20210108
x86_64               randconfig-a015-20210108

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
