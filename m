Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E521D4F5308
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Apr 2022 06:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 488DD60A74;
	Wed,  6 Apr 2022 04:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0t18OuE-EF6; Wed,  6 Apr 2022 04:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1BBB60AD2;
	Wed,  6 Apr 2022 04:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF1A41BF2C9
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 04:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C80CB8186E
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 04:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rShjChiAtegF for <devel@linuxdriverproject.org>;
 Wed,  6 Apr 2022 04:11:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE82981865
 for <devel@driverdev.osuosl.org>; Wed,  6 Apr 2022 04:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649218310; x=1680754310;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CwawKy/xs+EOiuz8oStkMegU4Y7vcBzaGzwbaLXwxgo=;
 b=P3KEcNhwhKzaI1GLWvBnIgL/WMjzm1+bi+Zwg215QkKB/jvyw09NlAUu
 kvVq0aoGHII8gbpY5tnW5XEnk3zlANaB/fajnUi/n4ZiKu/4PZ7n9IBhu
 8pFW9+TfHo6bEYoYtcVVoA1ha0JEw55bQE/kXD+N1+wHKv7hZ+hvJUsWt
 F4wem+Z5x5/itYaCh49AwtLyp/ylgftIE89WfCSH6do1uzcnLn0g/nbU8
 fs2NKbJ86zE1c5mKanZqFYO1DmkmsGFcm75s4BioMVMcVQ7mvQhD8f9VY
 0rIHRrD+9CHHFoVl9USbcvfFFyvscjZB0KjoO5CV+71MUvnnnLz9ZOqoR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260938746"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="260938746"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 21:11:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="620633641"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 05 Apr 2022 21:11:47 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbx1H-000439-5s;
 Wed, 06 Apr 2022 04:11:47 +0000
Date: Wed, 06 Apr 2022 12:10:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 cdb4f26a63c391317e335e6e683a614358e70aeb
Message-ID: <624d12c6.XFQElkjdf+H48BbL%lkp@intel.com>
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
branch HEAD: cdb4f26a63c391317e335e6e683a614358e70aeb  kobject: kobj_type: remove default_attrs

elapsed time: 743m

configs tested: 137
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
riscv                            allmodconfig
mips                             allyesconfig
um                             i386_defconfig
mips                             allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
m68k                             allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
s390                             allyesconfig
m68k                        m5407c3_defconfig
powerpc                     pq2fads_defconfig
sparc64                          alldefconfig
sparc                       sparc32_defconfig
powerpc                  storcenter_defconfig
arc                            hsdk_defconfig
riscv                    nommu_k210_defconfig
arm                      jornada720_defconfig
arm                       imx_v6_v7_defconfig
sh                     magicpanelr2_defconfig
openrisc                  or1klitex_defconfig
mips                        vocore2_defconfig
m68k                            q40_defconfig
arm                           tegra_defconfig
arm                        shmobile_defconfig
m68k                        mvme16x_defconfig
mips                  maltasmvp_eva_defconfig
sh                           se7722_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm8548_defconfig
i386                             alldefconfig
arm                        spear6xx_defconfig
m68k                       bvme6000_defconfig
m68k                       m5249evb_defconfig
ia64                        generic_defconfig
arm                           viper_defconfig
powerpc                     tqm8541_defconfig
xtensa                    smp_lx200_defconfig
arm                          exynos_defconfig
openrisc                            defconfig
sh                            shmin_defconfig
sh                            migor_defconfig
sh                      rts7751r2d1_defconfig
sparc                       sparc64_defconfig
arm                          iop32x_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                        mvebu_v7_defconfig
sh                 kfr2r09-romimage_defconfig
mips                           xway_defconfig
arm                             pxa_defconfig
mips                  decstation_64_defconfig
h8300                       h8s-sim_defconfig
arm                           sama5_defconfig
xtensa                    xip_kc705_defconfig
mips                          rb532_defconfig
m68k                        m5307c3_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220405
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
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
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220405
riscv                randconfig-c006-20220405
mips                 randconfig-c004-20220405
arm                  randconfig-c002-20220405
arm                       mainstone_defconfig
arm                       spear13xx_defconfig
arm                           sama7_defconfig
powerpc                   microwatt_defconfig
riscv                            alldefconfig
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
arm                         bcm2835_defconfig
arm                      tct_hammer_defconfig
powerpc                  mpc885_ads_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220405
riscv                randconfig-r042-20220405
hexagon              randconfig-r041-20220405

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
