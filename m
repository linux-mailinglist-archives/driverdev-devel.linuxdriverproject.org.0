Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A81DA4C02E8
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Feb 2022 21:15:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F0DC80D50;
	Tue, 22 Feb 2022 20:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_8gghjkTB5I; Tue, 22 Feb 2022 20:15:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1C2480CEA;
	Tue, 22 Feb 2022 20:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD4041BF33C
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 20:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA81E40104
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 20:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vs6KG6QpRIti for <devel@linuxdriverproject.org>;
 Tue, 22 Feb 2022 20:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 904EB400E9
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 20:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645560895; x=1677096895;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ewYUyWCvOjgZak3tckquyausH7Z/Wcjt+4+7tA83MKk=;
 b=C7Co6WrTfDm4tl29S+UGrHbEFEHJewYyqaArnAHjPAnEBjVUEa56xjtP
 avTCiVXfMZjECg8g9+BGbMEhQ9z5iAq5A163yks+BkJBkv6IUasGPyYUC
 1x2WMBg4ah5f2tK2Q4So8WjaclcJ1MQtYm0KdoftRLXZNbnOLw/nPtoa1
 X1T6aojJbhKspZPNKHrmOtnvXSvwIQV8Jf0Vez9DBpnE8xa9DHSzDHN39
 UZJuRuPxJ31dOsUtdoOXGrUpHimV/hUoL8qXdIKk1rbu1GShrd3/cFOFK
 zzp2B4jUExRLhnm/pGPG7SSt14jW+Pqr6TzSXfzMLLmCfvLOAzl/oE7mp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="276414378"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="276414378"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 12:14:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="639040306"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2022 12:14:53 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nMbYi-0000a8-Rb; Tue, 22 Feb 2022 20:14:52 +0000
Date: Wed, 23 Feb 2022 04:14:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 d8f7a5484f2188e9af2d9e4e587587d724501b12
Message-ID: <62154414.oRsJa/YinXYTqhfc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: d8f7a5484f2188e9af2d9e4e587587d724501b12  driver core: Free DMA range map when device is released

elapsed time: 737m

configs tested: 162
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220221
alpha                            allyesconfig
arc                              allyesconfig
nios2                            allyesconfig
arm                         lubbock_defconfig
sh                           se7619_defconfig
powerpc                      chrp32_defconfig
sh                         ap325rxa_defconfig
nios2                         3c120_defconfig
sh                          rsk7203_defconfig
sh                           se7712_defconfig
arm                        multi_v7_defconfig
powerpc                      pasemi_defconfig
sh                          r7780mp_defconfig
arm                        oxnas_v6_defconfig
xtensa                         virt_defconfig
ia64                          tiger_defconfig
arm                          iop32x_defconfig
sh                             shx3_defconfig
sh                 kfr2r09-romimage_defconfig
m68k                        mvme147_defconfig
h8300                    h8300h-sim_defconfig
arm                       aspeed_g5_defconfig
m68k                            q40_defconfig
alpha                            alldefconfig
sh                           se7724_defconfig
powerpc                     sequoia_defconfig
m68k                       m5475evb_defconfig
m68k                       m5275evb_defconfig
arm                         assabet_defconfig
arm                          pxa3xx_defconfig
powerpc                        warp_defconfig
sh                           sh2007_defconfig
arm                        clps711x_defconfig
arm                            pleb_defconfig
powerpc                       holly_defconfig
sh                   sh7770_generic_defconfig
xtensa                  cadence_csp_defconfig
arc                     haps_hs_smp_defconfig
arm                           stm32_defconfig
um                                  defconfig
arm                           sunxi_defconfig
powerpc                 mpc837x_rdb_defconfig
microblaze                          defconfig
powerpc                     redwood_defconfig
powerpc                      makalu_defconfig
s390                       zfcpdump_defconfig
powerpc                    sam440ep_defconfig
ia64                             allyesconfig
sh                         ecovec24_defconfig
m68k                             alldefconfig
powerpc                      ppc6xx_defconfig
mips                            gpr_defconfig
mips                         db1xxx_defconfig
arc                           tb10x_defconfig
arm                        mvebu_v7_defconfig
powerpc                        cell_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220221
arm                  randconfig-c002-20220222
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20220221
x86_64               randconfig-a002-20220221
x86_64               randconfig-a005-20220221
x86_64               randconfig-a006-20220221
x86_64               randconfig-a001-20220221
x86_64               randconfig-a004-20220221
i386                 randconfig-a002-20220221
i386                 randconfig-a003-20220221
i386                 randconfig-a004-20220221
i386                 randconfig-a001-20220221
i386                 randconfig-a005-20220221
i386                 randconfig-a006-20220221
arc                  randconfig-r043-20220221
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
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func

clang tested configs:
powerpc              randconfig-c003-20220222
x86_64                        randconfig-c007
arm                  randconfig-c002-20220222
mips                 randconfig-c004-20220222
i386                          randconfig-c001
riscv                randconfig-c006-20220222
powerpc              randconfig-c003-20220221
x86_64               randconfig-c007-20220221
arm                  randconfig-c002-20220221
mips                 randconfig-c004-20220221
i386                 randconfig-c001-20220221
riscv                randconfig-c006-20220221
mips                          ath79_defconfig
mips                       lemote2f_defconfig
arm                  colibri_pxa270_defconfig
powerpc                      pmac32_defconfig
powerpc                     kmeter1_defconfig
arm                        spear3xx_defconfig
powerpc                  mpc866_ads_defconfig
arm                         mv78xx0_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     tqm5200_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      ppc44x_defconfig
arm64                            allyesconfig
powerpc                     tqm8540_defconfig
x86_64               randconfig-a011-20220221
x86_64               randconfig-a015-20220221
x86_64               randconfig-a014-20220221
x86_64               randconfig-a016-20220221
x86_64               randconfig-a013-20220221
x86_64               randconfig-a012-20220221
i386                 randconfig-a016-20220221
i386                 randconfig-a012-20220221
i386                 randconfig-a015-20220221
i386                 randconfig-a011-20220221
i386                 randconfig-a014-20220221
i386                 randconfig-a013-20220221
hexagon              randconfig-r045-20220221
hexagon              randconfig-r041-20220221
riscv                randconfig-r042-20220221
s390                 randconfig-r044-20220221

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
