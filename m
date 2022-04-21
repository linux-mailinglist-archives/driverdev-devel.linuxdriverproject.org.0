Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F8E509726
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Apr 2022 08:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 883E841B4A;
	Thu, 21 Apr 2022 06:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCj23sLWN6_L; Thu, 21 Apr 2022 06:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC4C941B41;
	Thu, 21 Apr 2022 06:09:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC111BF343
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 06:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69CED41B51
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 06:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2oGOIWiB4Jk for <devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 06:09:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F94241B41
 for <devel@driverdev.osuosl.org>; Thu, 21 Apr 2022 06:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650521390; x=1682057390;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NK90u8fUdBl0zh3/uKyqyV87egRxtgNkF76blQKmpBo=;
 b=A8WQjeCG++jaebKYYpr0J4jtuIFyWSrSA3e6IO8ThOwSNDhLRbLrTkcq
 Hb31GZLIaHIVSI5jxd42cX0OwQXq3Svs0QZ+Y4yTM+2HXoWZ3o+um5tbg
 NAljRG8Bz7Tdw758+jgNToQs9s9Xr5iwP0vAqLbehQPSrbRJGZI6tgAZu
 F4kn70KMV3jESpcJMuWCh84k9JHzXtyCXDb7fhFni2n3uGTYZJ4Ct61fe
 r9nOH6Ru7uSgEE+XatTBQfvF+bHTo11g7ftNX2oMKz9Ah4P214Nax0KRi
 fEYDO1YFI6F6JRDNbwS4sobcDJK9wajBs6FbRk7Efn69BYFTOJY8ZOLcF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="350698705"
X-IronPort-AV: E=Sophos;i="5.90,277,1643702400"; d="scan'208";a="350698705"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 23:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,277,1643702400"; d="scan'208";a="532762377"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 20 Apr 2022 23:09:48 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nhQ0h-0007v5-BO;
 Thu, 21 Apr 2022 06:09:47 +0000
Date: Thu, 21 Apr 2022 14:09:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 1dc9f1a66e1718479e1c4f95514e1750602a3cb9
Message-ID: <6260f509.ts3ERdnFyqaotnie%lkp@intel.com>
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
branch HEAD: 1dc9f1a66e1718479e1c4f95514e1750602a3cb9  arch_topology: Do not set llc_sibling if llc_id is invalid

elapsed time: 729m

configs tested: 121
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
m68k                       m5208evb_defconfig
m68k                          hp300_defconfig
powerpc                      ppc6xx_defconfig
ia64                          tiger_defconfig
powerpc                     sequoia_defconfig
arm                          exynos_defconfig
powerpc                      pcm030_defconfig
mips                     loongson1b_defconfig
arm                          lpd270_defconfig
arm                         lpc18xx_defconfig
powerpc                 canyonlands_defconfig
mips                       bmips_be_defconfig
arm                      jornada720_defconfig
xtensa                         virt_defconfig
powerpc                      chrp32_defconfig
ia64                      gensparse_defconfig
sh                        apsh4ad0a_defconfig
mips                         cobalt_defconfig
arm                            qcom_defconfig
xtensa                           allyesconfig
powerpc                 mpc8540_ads_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                    smp_lx200_defconfig
s390                             allyesconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc834x_itx_defconfig
xtensa                    xip_kc705_defconfig
m68k                       bvme6000_defconfig
sh                   secureedge5410_defconfig
powerpc                       ppc64_defconfig
arm64                            alldefconfig
sh                          polaris_defconfig
sh                   rts7751r2dplus_defconfig
h8300                       h8s-sim_defconfig
arm                          pxa910_defconfig
x86_64                        randconfig-c001
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
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220420
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
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
x86_64                              defconfig

clang tested configs:
riscv                randconfig-c006-20220420
mips                 randconfig-c004-20220420
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220420
powerpc              randconfig-c003-20220420
arm                           omap1_defconfig
powerpc                      ppc44x_defconfig
powerpc                     pseries_defconfig
powerpc                     skiroot_defconfig
arm                          ep93xx_defconfig
powerpc                    gamecube_defconfig
arm                        neponset_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220420
hexagon              randconfig-r045-20220420
riscv                randconfig-r042-20220420
s390                 randconfig-r044-20220420

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
