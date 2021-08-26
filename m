Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA2C3F90F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Aug 2021 01:31:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D813182F40;
	Thu, 26 Aug 2021 23:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G9WsqjvQFd7C; Thu, 26 Aug 2021 23:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E369782E9D;
	Thu, 26 Aug 2021 23:31:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5791BF852
 for <devel@linuxdriverproject.org>; Thu, 26 Aug 2021 23:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C153614B1
 for <devel@linuxdriverproject.org>; Thu, 26 Aug 2021 23:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1a8Zd7R8C-h for <devel@linuxdriverproject.org>;
 Thu, 26 Aug 2021 23:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56CB8614A8
 for <devel@driverdev.osuosl.org>; Thu, 26 Aug 2021 23:30:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="198100016"
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="198100016"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 16:30:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="495397145"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 Aug 2021 16:30:48 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mJOpb-0001mq-Qk; Thu, 26 Aug 2021 23:30:47 +0000
Date: Fri, 27 Aug 2021 07:30:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 ce6a7007048b0abcf263a2b43a63d18614802e53
Message-ID: <61282415.1TKxc5Bxsh1W5t7y%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: ce6a7007048b0abcf263a2b43a63d18614802e53  staging: r8188eu: remove {read,write}_macreg

elapsed time: 740m

configs tested: 153
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210826
sh                           se7722_defconfig
powerpc                     powernv_defconfig
powerpc                        warp_defconfig
mips                      loongson3_defconfig
powerpc                 mpc834x_itx_defconfig
sh                         microdev_defconfig
arm                       netwinder_defconfig
arm                         mv78xx0_defconfig
ia64                      gensparse_defconfig
mips                     loongson1b_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        keystone_defconfig
xtensa                           alldefconfig
arm                        oxnas_v6_defconfig
nds32                            alldefconfig
powerpc                    ge_imp3a_defconfig
sh                          rsk7269_defconfig
powerpc                 mpc837x_mds_defconfig
arm                      integrator_defconfig
mips                     loongson2k_defconfig
powerpc                      ep88xc_defconfig
mips                         bigsur_defconfig
arm                             mxs_defconfig
x86_64                           alldefconfig
m68k                            mac_defconfig
sh                          rsk7201_defconfig
s390                          debug_defconfig
powerpc                 mpc8272_ads_defconfig
arc                            hsdk_defconfig
arm                           h5000_defconfig
arm                            mps2_defconfig
powerpc                 mpc836x_mds_defconfig
sh                      rts7751r2d1_defconfig
powerpc                      mgcoge_defconfig
m68k                       m5249evb_defconfig
arm                          pcm027_defconfig
arm                   milbeaut_m10v_defconfig
sh                          lboxre2_defconfig
h8300                       h8s-sim_defconfig
sh                          urquell_defconfig
arm                           corgi_defconfig
sh                          sdk7780_defconfig
mips                          malta_defconfig
arm                          ep93xx_defconfig
ia64                             alldefconfig
powerpc                        icon_defconfig
sh                        edosk7760_defconfig
arm64                            alldefconfig
powerpc                      ppc64e_defconfig
mips                        bcm47xx_defconfig
powerpc                      ppc40x_defconfig
arm                        multi_v5_defconfig
powerpc                     pseries_defconfig
arm                           omap1_defconfig
powerpc                  storcenter_defconfig
arm                       spear13xx_defconfig
xtensa                generic_kc705_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                           h3600_defconfig
mips                         tb0226_defconfig
m68k                           sun3_defconfig
arm                          ixp4xx_defconfig
arm                    vt8500_v6_v7_defconfig
arm                         shannon_defconfig
sparc                       sparc64_defconfig
microblaze                      mmu_defconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210826
x86_64               randconfig-a006-20210826
x86_64               randconfig-a001-20210826
x86_64               randconfig-a003-20210826
x86_64               randconfig-a004-20210826
x86_64               randconfig-a002-20210826
i386                 randconfig-a006-20210826
i386                 randconfig-a001-20210826
i386                 randconfig-a002-20210826
i386                 randconfig-a005-20210826
i386                 randconfig-a003-20210826
i386                 randconfig-a004-20210826
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
i386                 randconfig-c001-20210826
s390                 randconfig-c005-20210826
arm                  randconfig-c002-20210826
riscv                randconfig-c006-20210826
powerpc              randconfig-c003-20210826
x86_64               randconfig-c007-20210826
mips                 randconfig-c004-20210826
x86_64               randconfig-a014-20210826
x86_64               randconfig-a015-20210826
x86_64               randconfig-a016-20210826
x86_64               randconfig-a013-20210826
x86_64               randconfig-a012-20210826
x86_64               randconfig-a011-20210826
i386                 randconfig-a011-20210826
i386                 randconfig-a016-20210826
i386                 randconfig-a012-20210826
i386                 randconfig-a014-20210826
i386                 randconfig-a013-20210826
i386                 randconfig-a015-20210826
hexagon              randconfig-r041-20210826
hexagon              randconfig-r045-20210826
riscv                randconfig-r042-20210826
s390                 randconfig-r044-20210826

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
