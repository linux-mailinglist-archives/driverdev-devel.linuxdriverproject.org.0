Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4786349C4CC
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jan 2022 08:56:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1B0B60E39;
	Wed, 26 Jan 2022 07:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aNBHjDhXzstV; Wed, 26 Jan 2022 07:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3883060BEC;
	Wed, 26 Jan 2022 07:56:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83EDF1BF282
 for <devel@linuxdriverproject.org>; Wed, 26 Jan 2022 07:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F23C415D9
 for <devel@linuxdriverproject.org>; Wed, 26 Jan 2022 07:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ufjcdcVXUqOQ for <devel@linuxdriverproject.org>;
 Wed, 26 Jan 2022 07:56:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7755B415C6
 for <devel@driverdev.osuosl.org>; Wed, 26 Jan 2022 07:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643183800; x=1674719800;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eqRHwX0k1YRRvucpawow7dl5/WiPTHsLdET3hNvUa/o=;
 b=WaUJ0OSJ5K7QM7/FiUL8nyzIeXATbsiVbLo3vt7rIzj8HIazZQCScsui
 UgKpPncbD39bdvtt7wmBPLuf+AEb+YEqWMT8v9ChoMSPxzgNn1cvazoKq
 4qkq6OB3ETD0pfAvMPwXv8I7mCFLhhNXNMBnKHQgIM3PLAZ0hX4ADWxT0
 yQo13BjMc8sNXjzGsjMeoHMueLqtjusXIsxwJfMaR8xnh4auQeja/Nkqe
 EECq361lHWZ22+UIC19dZ9/Mzydcl9xXfbWKaufO6TZ8HmtD9wfVlBWzE
 zoyDntNFxQO/jThsXzAlfcmuFkqU25E6KyDnct6/WEWkXZdY2GfXoNNSb g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="233875565"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="233875565"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 23:56:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="617891048"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2022 23:56:38 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nCdAT-000KxC-Ko; Wed, 26 Jan 2022 07:56:37 +0000
Date: Wed, 26 Jan 2022 15:56:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 426aca16e903b387a0b0001d62207a745c67cfd3
Message-ID: <61f0feaf.CAnia1j2Kd7kvDk5%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 426aca16e903b387a0b0001d62207a745c67cfd3  staging: fbtft: Fix error path in fbtft_driver_module_init()

elapsed time: 722m

configs tested: 159
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
i386                 randconfig-c001-20220124
m68k                             allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
s390                             allmodconfig
powerpc                          allyesconfig
s390                             allyesconfig
powerpc              randconfig-c003-20220124
arm                        spear6xx_defconfig
powerpc64                           defconfig
ia64                          tiger_defconfig
sparc                       sparc64_defconfig
sh                           se7206_defconfig
powerpc                     redwood_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                    sam440ep_defconfig
h8300                       h8s-sim_defconfig
sh                         ap325rxa_defconfig
powerpc                         ps3_defconfig
nios2                            alldefconfig
sh                 kfr2r09-romimage_defconfig
sh                          urquell_defconfig
mips                         cobalt_defconfig
mips                            ar7_defconfig
mips                        vocore2_defconfig
arm                      jornada720_defconfig
mips                         db1xxx_defconfig
xtensa                  audio_kc705_defconfig
sh                           se7780_defconfig
mips                         rt305x_defconfig
arm                        mini2440_defconfig
ia64                             alldefconfig
arc                        nsimosci_defconfig
sh                           se7724_defconfig
arm                       aspeed_g5_defconfig
mips                           xway_defconfig
sh                            hp6xx_defconfig
sh                         apsh4a3a_defconfig
um                               alldefconfig
sh                           se7721_defconfig
powerpc                     tqm8541_defconfig
openrisc                            defconfig
i386                                defconfig
arm                            zeus_defconfig
nios2                         10m50_defconfig
powerpc                 mpc834x_mds_defconfig
sh                          sdk7780_defconfig
arc                            hsdk_defconfig
mips                  decstation_64_defconfig
xtensa                           alldefconfig
arc                                 defconfig
powerpc                       ppc64_defconfig
mips                            gpr_defconfig
mips                      fuloong2e_defconfig
sh                          landisk_defconfig
arm                           stm32_defconfig
arm                  randconfig-c002-20220124
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
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
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                              debian-10.3
sparc                               defconfig
i386                   debian-10.3-kselftests
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
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
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
powerpc                      katmai_defconfig
powerpc                   lite5200b_defconfig
arm                           omap1_defconfig
powerpc                    socrates_defconfig
arm                         orion5x_defconfig
mips                          malta_defconfig
powerpc                     mpc512x_defconfig
powerpc                     kmeter1_defconfig
mips                           ip27_defconfig
powerpc                      ppc64e_defconfig
powerpc                        fsp2_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
riscv                randconfig-r042-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r041-20220124
hexagon              randconfig-r045-20220125
hexagon              randconfig-r041-20220125

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
