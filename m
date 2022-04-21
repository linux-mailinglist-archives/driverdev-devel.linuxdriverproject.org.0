Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE0150A79A
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Apr 2022 19:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C2C660E00;
	Thu, 21 Apr 2022 17:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHhHPAznBPrU; Thu, 21 Apr 2022 17:58:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E279360B17;
	Thu, 21 Apr 2022 17:58:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 581851BF406
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 17:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5429460E00
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 17:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yskRvviYVz-6 for <devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 17:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B5FB60B17
 for <devel@driverdev.osuosl.org>; Thu, 21 Apr 2022 17:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650563912; x=1682099912;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=16nbrPMeKlhKJpf6gEV9BoUpkUsCgISLrQgCpvwhGdM=;
 b=Q5E5EXww2mmGVLq16dV2ZU4nwCAoNe2QZUwwDP9+UpnsI/f8z5bzAKP3
 AWcjElVWriIX5vCEgyOD1kD5CF9LPuZqAWCqq5j0X66Ynx9WIXLvJacKY
 i3u1bSrE0pi0NJQtqUHsZcsSwdMFnBP3T5b6b8sMFiNfmKoILJcsZboRm
 KHnQh4p7W8iKaIVd1FFsWmhgJC4bs1zOdH8SNWs1GiZzGMluEa9ncpacH
 zffat1ufLgNa7H1Z/iMLp189mn/9NXSAXVeiMakMmf7ncC6axqkryfCmc
 n8IPLh6Ur8Uar3gObp0TS53pJBrI6P2YFOB/7doI2n0jga4THGE1jSe17 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="251752819"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="251752819"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="530414363"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2022 10:58:30 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nhb4X-0008db-Bi;
 Thu, 21 Apr 2022 17:58:29 +0000
Date: Fri, 22 Apr 2022 01:58:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 55de6cb7f81c82dea1bdb12cd3818280af7abd87
Message-ID: <62619b36.5Qhx24qiV67J3OBR%lkp@intel.com>
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
branch HEAD: 55de6cb7f81c82dea1bdb12cd3818280af7abd87  staging: rtl8192e: Remove space after cast

elapsed time: 1439m

configs tested: 133
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                   secureedge5410_defconfig
arm                             ezx_defconfig
sh                          r7780mp_defconfig
powerpc                        cell_defconfig
powerpc                     mpc83xx_defconfig
arm                         nhk8815_defconfig
powerpc                      makalu_defconfig
arm                        mvebu_v7_defconfig
sparc                            allyesconfig
parisc64                            defconfig
arm                        cerfcube_defconfig
mips                           ip32_defconfig
sh                         ecovec24_defconfig
arm                        mini2440_defconfig
parisc                generic-32bit_defconfig
m68k                        mvme16x_defconfig
mips                         cobalt_defconfig
ia64                          tiger_defconfig
arm                        keystone_defconfig
sh                           se7619_defconfig
arm                          pxa3xx_defconfig
sparc                       sparc32_defconfig
sh                          sdk7780_defconfig
m68k                          amiga_defconfig
alpha                            alldefconfig
powerpc                 canyonlands_defconfig
arm                     eseries_pxa_defconfig
arm                           sunxi_defconfig
powerpc                    sam440ep_defconfig
powerpc                 mpc834x_mds_defconfig
sh                        edosk7705_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220421
arm                  randconfig-c002-20220420
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                  randconfig-r043-20220421
s390                 randconfig-r044-20220421
riscv                randconfig-r042-20220421
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
riscv                randconfig-c006-20220420
mips                 randconfig-c004-20220420
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220420
powerpc              randconfig-c003-20220420
mips                        bcm63xx_defconfig
arm                         orion5x_defconfig
arm                          pxa168_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                           omap1_defconfig
powerpc                      ppc44x_defconfig
powerpc                     pseries_defconfig
s390                       zfcpdump_defconfig
arm                          pxa910_defconfig
powerpc                    gamecube_defconfig
powerpc                     tqm5200_defconfig
mips                malta_qemu_32r6_defconfig
mips                      bmips_stb_defconfig
hexagon                          alldefconfig
arm                     davinci_all_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220420
riscv                randconfig-r042-20220420
hexagon              randconfig-r045-20220420

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
