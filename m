Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0239A357337
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Apr 2021 19:31:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34A2760D72;
	Wed,  7 Apr 2021 17:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhDxVWxUSg4l; Wed,  7 Apr 2021 17:31:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CC29605AE;
	Wed,  7 Apr 2021 17:31:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 834961BF3D1
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 17:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73455418A0
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 17:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qME_MBqUx14y for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 17:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C9D84185D
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 17:31:08 +0000 (UTC)
IronPort-SDR: Fb6186xdUImum+Sj639gdct12MNqSfPtTvpZWgERJ4lniXEhp7p7SJtt9iNSQ6015qI6n9jrqY
 QBsQAEhnAbpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="278625481"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="278625481"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 10:31:07 -0700
IronPort-SDR: +q0VByl7gm1fgx98mJhvebfayYPMmGECI88JqzyDo3hTK7kHF2TrTRKbQ7WrX4+tlTseZVt0nt
 0g27BRAfouyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="396743505"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2021 10:31:05 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUC1A-000DYR-Vz; Wed, 07 Apr 2021 17:31:04 +0000
Date: Thu, 08 Apr 2021 01:30:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kbuild] BUILD SUCCESS
 9cbec1316ea288b5ba3e1bf0ada7dfc2e5b6bf45
Message-ID: <606dec33.9i057I2347uNCcbc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kbuild
branch HEAD: 9cbec1316ea288b5ba3e1bf0ada7dfc2e5b6bf45  kbuild: scripts/install.sh: update documentation

elapsed time: 725m

configs tested: 113
configs skipped: 3

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
nios2                               defconfig
arc                          axs101_defconfig
alpha                            alldefconfig
mips                        nlm_xlp_defconfig
m68k                                defconfig
powerpc                   motionpro_defconfig
arm                             pxa_defconfig
mips                           ip27_defconfig
arm                          iop32x_defconfig
sh                           sh2007_defconfig
sh                          sdk7780_defconfig
powerpc                      arches_defconfig
csky                             alldefconfig
arc                     nsimosci_hs_defconfig
powerpc                           allnoconfig
arm                         shannon_defconfig
mips                        jmr3927_defconfig
arm                          ep93xx_defconfig
mips                        nlm_xlr_defconfig
sh                        sh7757lcr_defconfig
arc                      axs103_smp_defconfig
sh                               j2_defconfig
sh                            titan_defconfig
arm                           omap1_defconfig
powerpc                      ppc44x_defconfig
powerpc                     powernv_defconfig
powerpc                 mpc8313_rdb_defconfig
ia64                        generic_defconfig
sh                              ul2_defconfig
powerpc                    adder875_defconfig
arm                       aspeed_g5_defconfig
arm                            hisi_defconfig
arm                          ixp4xx_defconfig
sh                          rsk7203_defconfig
powerpc                      pcm030_defconfig
arm                       multi_v4t_defconfig
arm                       spear13xx_defconfig
riscv                          rv32_defconfig
arc                                 defconfig
sh                          kfr2r09_defconfig
powerpc                      walnut_defconfig
mips                            gpr_defconfig
arm                          simpad_defconfig
parisc                              defconfig
um                             i386_defconfig
arm                        mini2440_defconfig
powerpc                     ksi8560_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
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
i386                 randconfig-a006-20210407
i386                 randconfig-a003-20210407
i386                 randconfig-a001-20210407
i386                 randconfig-a004-20210407
i386                 randconfig-a002-20210407
i386                 randconfig-a005-20210407
x86_64               randconfig-a014-20210407
x86_64               randconfig-a015-20210407
x86_64               randconfig-a013-20210407
x86_64               randconfig-a011-20210407
x86_64               randconfig-a012-20210407
x86_64               randconfig-a016-20210407
i386                 randconfig-a014-20210407
i386                 randconfig-a011-20210407
i386                 randconfig-a016-20210407
i386                 randconfig-a012-20210407
i386                 randconfig-a015-20210407
i386                 randconfig-a013-20210407
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
