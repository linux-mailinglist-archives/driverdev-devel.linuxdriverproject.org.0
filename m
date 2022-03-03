Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859054CBADC
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Mar 2022 10:58:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE19E408CF;
	Thu,  3 Mar 2022 09:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bakWnP469xTB; Thu,  3 Mar 2022 09:57:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D105B400D7;
	Thu,  3 Mar 2022 09:57:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CBCC1BF5DA
 for <devel@linuxdriverproject.org>; Thu,  3 Mar 2022 09:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A9CC84140
 for <devel@linuxdriverproject.org>; Thu,  3 Mar 2022 09:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hm-PDe2bVkaD for <devel@linuxdriverproject.org>;
 Thu,  3 Mar 2022 09:57:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A8C28413E
 for <devel@driverdev.osuosl.org>; Thu,  3 Mar 2022 09:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646301472; x=1677837472;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9CkOYLNA9pCGp8tp78O07MLoWH45ZWD52OQixFGzPUA=;
 b=kGEduNIitgzTe96Z+h3/1Gy7+/Z86YSpycZd+2cHNm+KowHhDIbfDjGS
 n1QJ0nlF+gI/sBAnzLh1QxppV8L0RchXEX5wTQfpfzqz5+tglqzlwdmmz
 AeHU8otFeV8RaepQ5OqSe9Js4uVU1PcMJYDRjmcz9g4+RjHxrfusQkkGx
 9FDHEytJ5yf06pqTwE/uN6DVtajKmXorUDpEd7Xv25HnM8rDka7PCI0vq
 dNCnFFmrm4qZ6RgbXC3B5VBLNImtLByXz5GGx/k/3xOrF4tRjCICfcZVd
 BJe3f4BpeHh44K5bVsgsEhzk43SAqa9sdgSyp/Krq+7w5mSSTP7TVB63M Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="251207544"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="251207544"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 01:57:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="551686862"
Received: from lkp-server01.sh.intel.com (HELO ccb16ba0ecc3) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 03 Mar 2022 01:57:49 -0800
Received: from kbuild by ccb16ba0ecc3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nPiDV-0000N3-95; Thu, 03 Mar 2022 09:57:49 +0000
Date: Thu, 03 Mar 2022 17:57:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b25c7dc13fb8842e8634bd846a7a96f2176f0244
Message-ID: <622090f2.aYA+xQ2TneMyNpnP%lkp@intel.com>
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
branch HEAD: b25c7dc13fb8842e8634bd846a7a96f2176f0244  staging: rts5208: fix Lines should not end with a '('.

elapsed time: 997m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                            zeus_defconfig
sh                        dreamcast_defconfig
openrisc                            defconfig
powerpc                      pasemi_defconfig
sh                ecovec24-romimage_defconfig
xtensa                           allyesconfig
arc                    vdk_hs38_smp_defconfig
arm                         lubbock_defconfig
arm                        cerfcube_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                 decstation_r4k_defconfig
mips                        jmr3927_defconfig
arm                           h3600_defconfig
arm                           sama5_defconfig
sparc                            alldefconfig
mips                            gpr_defconfig
h8300                       h8s-sim_defconfig
sh                             espt_defconfig
m68k                         apollo_defconfig
sh                           se7721_defconfig
openrisc                  or1klitex_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                           se7751_defconfig
m68k                       m5208evb_defconfig
arm                         nhk8815_defconfig
arm                  randconfig-c002-20220302
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nds32                               defconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220302
riscv                randconfig-r042-20220302
s390                 randconfig-r044-20220302
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
powerpc                   lite5200b_defconfig
arm                        neponset_defconfig
arm                         orion5x_defconfig
mips                           ip27_defconfig
arm                             mxs_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220303
riscv                randconfig-r042-20220303
hexagon              randconfig-r041-20220303
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
