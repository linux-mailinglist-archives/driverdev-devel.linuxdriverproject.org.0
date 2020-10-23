Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6546297968
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Oct 2020 00:49:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85E36204D6;
	Fri, 23 Oct 2020 22:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-9I4LHAAjti; Fri, 23 Oct 2020 22:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F8372043C;
	Fri, 23 Oct 2020 22:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE27D1BF39E
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 22:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B958687763
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 22:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkP4V11IYmML for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 22:49:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B61FA875A9
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 22:49:48 +0000 (UTC)
IronPort-SDR: VC9L+brFmcJLCvhvOiswxIOkz6lS+9xLfV6/FnBK6t/Jc1TPm+L4wWM05t75nx/kAzszLkokAS
 k2ODusFHjuwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="167834902"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="167834902"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 15:49:47 -0700
IronPort-SDR: Ih8dWT0mnebUVCAK7LuSgLiHD5YsOm+ku1q2c53EsqsifqXCMzND94JAM760ag6UksX88F02JK
 Yo12gpoB9s7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,410,1596524400"; d="scan'208";a="321892074"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Oct 2020 15:49:46 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kW5sX-0000Ed-Vi; Fri, 23 Oct 2020 22:49:45 +0000
Date: Sat, 24 Oct 2020 06:49:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 f0b0254eaa1dc8a2771f0a578c8d2a9c37b84b25
Message-ID: <5f935dfd.JG+OYlJs3cBu86aQ%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: f0b0254eaa1dc8a2771f0a578c8d2a9c37b84b25  staging: qlge: remove extra blank lines

elapsed time: 721m

configs tested: 138
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arc                        vdk_hs38_defconfig
mips                      bmips_stb_defconfig
powerpc                      katmai_defconfig
arm                        spear6xx_defconfig
riscv                            alldefconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
powerpc                     ksi8560_defconfig
arm                         s3c6400_defconfig
mips                        maltaup_defconfig
arm                           omap1_defconfig
arm                           spitz_defconfig
m68k                        m5307c3_defconfig
s390                             allyesconfig
powerpc                   currituck_defconfig
powerpc                 canyonlands_defconfig
arm                          pxa910_defconfig
mips                           ip27_defconfig
powerpc                      pasemi_defconfig
arm                       aspeed_g5_defconfig
arm                       netwinder_defconfig
arm                        oxnas_v6_defconfig
xtensa                  cadence_csp_defconfig
arm                            zeus_defconfig
sh                           se7722_defconfig
mips                     decstation_defconfig
arm                      jornada720_defconfig
sh                          lboxre2_defconfig
sh                           se7705_defconfig
sh                          polaris_defconfig
arm                           stm32_defconfig
powerpc                         wii_defconfig
arm                       aspeed_g4_defconfig
arm                          moxart_defconfig
ia64                             allyesconfig
arm                          lpd270_defconfig
powerpc                   motionpro_defconfig
nios2                         10m50_defconfig
mips                          ath79_defconfig
powerpc                 mpc834x_mds_defconfig
mips                     cu1830-neo_defconfig
m68k                             alldefconfig
mips                      fuloong2e_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                 mpc85xx_cds_defconfig
riscv                               defconfig
sh                        edosk7705_defconfig
xtensa                         virt_defconfig
powerpc                      ppc6xx_defconfig
arm                       versatile_defconfig
h8300                               defconfig
m68k                        stmark2_defconfig
powerpc                        icon_defconfig
powerpc                     akebono_defconfig
arm                   milbeaut_m10v_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
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
x86_64               randconfig-a001-20201023
x86_64               randconfig-a003-20201023
x86_64               randconfig-a006-20201023
x86_64               randconfig-a004-20201023
x86_64               randconfig-a005-20201023
i386                 randconfig-a002-20201022
i386                 randconfig-a005-20201022
i386                 randconfig-a003-20201022
i386                 randconfig-a001-20201022
i386                 randconfig-a006-20201022
i386                 randconfig-a004-20201022
x86_64               randconfig-a002-20201023
x86_64               randconfig-a011-20201022
x86_64               randconfig-a013-20201022
x86_64               randconfig-a016-20201022
x86_64               randconfig-a015-20201022
x86_64               randconfig-a012-20201022
x86_64               randconfig-a014-20201022
i386                 randconfig-a016-20201022
i386                 randconfig-a014-20201022
i386                 randconfig-a015-20201022
i386                 randconfig-a012-20201022
i386                 randconfig-a013-20201022
i386                 randconfig-a011-20201022
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20201022
x86_64               randconfig-a002-20201022
x86_64               randconfig-a003-20201022
x86_64               randconfig-a006-20201022
x86_64               randconfig-a004-20201022
x86_64               randconfig-a005-20201022
x86_64               randconfig-a011-20201023
x86_64               randconfig-a013-20201023
x86_64               randconfig-a016-20201023
x86_64               randconfig-a015-20201023
x86_64               randconfig-a012-20201023
x86_64               randconfig-a014-20201023

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
