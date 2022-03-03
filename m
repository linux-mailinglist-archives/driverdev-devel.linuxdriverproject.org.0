Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DBB4CB9BF
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Mar 2022 10:02:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4544740866;
	Thu,  3 Mar 2022 09:02:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t0_zC6wX73V3; Thu,  3 Mar 2022 09:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDDEF4071E;
	Thu,  3 Mar 2022 09:02:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB5701BF317
 for <devel@linuxdriverproject.org>; Thu,  3 Mar 2022 09:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 991FE84132
 for <devel@linuxdriverproject.org>; Thu,  3 Mar 2022 09:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAQg76VfC2OY for <devel@linuxdriverproject.org>;
 Thu,  3 Mar 2022 09:01:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9176784131
 for <devel@driverdev.osuosl.org>; Thu,  3 Mar 2022 09:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646298117; x=1677834117;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HocRx9ti9Bl+SUMV3IRzDP8T0Ggk5f0spnM2iTQCO/M=;
 b=WSUB4ZqhIkqoW5V7UGBJmOzvG913ovpuBXUeqd4Os0k+M0I90PiQxW15
 t81qinwrC1ybx2/X4Kg+vE4uhF45Bqxn5nuOQo+WPWlgw7+9hsRz8YQbn
 8nqpJN2Px+w2UkGd0FtkcecmRKiKzr2PfMx1ZpNR0CKdpOpjLxqSKCwAx
 DkEuCAPVJVyffvhbR5Eq+Lj64+5KW5jSoNGfrGpzdfSM7tyFFcGe+YkTA
 AgcdK7Vs14o5kCsWX9ZRzVppClHWD9R65wS3fgdmF7jmya8S+jQiJdSrj
 pWgujWluYQHZt+x09BFQ6Tb1wqqQ6BvpCg//jjmZXj+gKujh9ZrGsYfhX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="251196201"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="251196201"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 01:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="809168551"
Received: from lkp-server01.sh.intel.com (HELO ccb16ba0ecc3) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 03 Mar 2022 01:01:49 -0800
Received: from kbuild by ccb16ba0ecc3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nPhLI-0000Lb-OE; Thu, 03 Mar 2022 09:01:48 +0000
Date: Thu, 03 Mar 2022 17:01:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 342e7c6ea58200e45bcaa9bdd8402a5531c4777e
Message-ID: <622083e9.a57TkFPlKqbxvQP9%lkp@intel.com>
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
branch HEAD: 342e7c6ea58200e45bcaa9bdd8402a5531c4777e  staging: rtl8723bs: Improve the comment explaining the locking rules

elapsed time: 942m

configs tested: 120
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
sparc64                             defconfig
arm                           sunxi_defconfig
sh                        edosk7705_defconfig
h8300                     edosk2674_defconfig
m68k                          sun3x_defconfig
arm                            mps2_defconfig
powerpc                    amigaone_defconfig
mips                            ar7_defconfig
arm                          iop32x_defconfig
m68k                        mvme16x_defconfig
sh                          lboxre2_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                 decstation_r4k_defconfig
sh                          urquell_defconfig
arm                            lart_defconfig
arc                        nsimosci_defconfig
arc                        nsim_700_defconfig
powerpc                        warp_defconfig
sh                           se7705_defconfig
powerpc                       holly_defconfig
arm                           tegra_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                  randconfig-c002-20220302
arm                  randconfig-c002-20220303
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220302
riscv                randconfig-r042-20220302
s390                 randconfig-r044-20220302
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                      pic32mzda_defconfig
arm                        multi_v5_defconfig
arm                  colibri_pxa270_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                          ath25_defconfig
powerpc                   bluestone_defconfig
mips                           mtx1_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302
hexagon              randconfig-r045-20220303
riscv                randconfig-r042-20220303
hexagon              randconfig-r041-20220303

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
