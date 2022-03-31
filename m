Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 218C34ED64F
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Mar 2022 10:56:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F98460C01;
	Thu, 31 Mar 2022 08:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zQrczmqLzEJo; Thu, 31 Mar 2022 08:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2645360BB5;
	Thu, 31 Mar 2022 08:55:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 551091BF3F4
 for <devel@linuxdriverproject.org>; Thu, 31 Mar 2022 08:55:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C0E760C01
 for <devel@linuxdriverproject.org>; Thu, 31 Mar 2022 08:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gygHfUeifkrH for <devel@linuxdriverproject.org>;
 Thu, 31 Mar 2022 08:55:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1487A60BB5
 for <devel@driverdev.osuosl.org>; Thu, 31 Mar 2022 08:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648716953; x=1680252953;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dJzVBakQRvzN3hdq/5TCR/y/bPqpCtKsZLdO7ut5NHY=;
 b=iC5sOZ3IzjjB0y2Och1R3truXJxRmKDzhzgRZ3pkj6+3riLzohxyd8fp
 4HPGdk0iQIVxpMnpVO1r5oxws9fzl0WH97XTQuKQCKYejITrczcuu8ufK
 s5/wiYvGyPnwHWPxH5JDRJZiZpVdwSdw26CTbaX0Kcqui0jk16yadjsJ3
 nCVaSzb/MrJOrxiMwY1CN+93oTbqF9YjEiYHaSscSR6nAnFXTLtUEbghT
 JanJEGvR4/4SskglbzsM9cRaUf580Kv++hwH8Gv+IUsWe6XS41kxJ2zES
 21Sq/4s7IgPCW92V0ynWMT+Jh5Ed5QAyYGNu6Q34IWv+JvMDGG/ctqj1U g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320460808"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="320460808"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:55:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="522254142"
Received: from lkp-server02.sh.intel.com (HELO 3231c491b0e2) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 31 Mar 2022 01:55:49 -0700
Received: from kbuild by 3231c491b0e2 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nZqaq-00006n-Rv;
 Thu, 31 Mar 2022 08:55:48 +0000
Date: Thu, 31 Mar 2022 16:55:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 1207c87ac31b88dceff1d5948758f82f42f00b00
Message-ID: <62456c77.e4QoC7DdQIJqlswS%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 1207c87ac31b88dceff1d5948758f82f42f00b00  kobject: kobj_type: remove default_attrs

elapsed time: 725m

configs tested: 145
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220330
powerpc                    adder875_defconfig
m68k                             allmodconfig
powerpc                         wii_defconfig
powerpc                     taishan_defconfig
m68k                            q40_defconfig
powerpc                     sequoia_defconfig
arc                    vdk_hs38_smp_defconfig
sh                               j2_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      arches_defconfig
ia64                            zx1_defconfig
m68k                        stmark2_defconfig
powerpc                  iss476-smp_defconfig
powerpc                 mpc834x_itx_defconfig
sh                         ap325rxa_defconfig
mips                     decstation_defconfig
powerpc                       eiger_defconfig
um                                  defconfig
openrisc                    or1ksim_defconfig
powerpc                      ep88xc_defconfig
sh                          rsk7203_defconfig
arm                            xcep_defconfig
arm                         cm_x300_defconfig
arc                     nsimosci_hs_defconfig
sh                          urquell_defconfig
sh                           sh2007_defconfig
sh                            hp6xx_defconfig
sh                           se7721_defconfig
sh                             espt_defconfig
powerpc                      ppc6xx_defconfig
arm                        trizeps4_defconfig
sh                           se7724_defconfig
arm                       aspeed_g5_defconfig
parisc                           alldefconfig
i386                                defconfig
arm                     eseries_pxa_defconfig
m68k                       m5208evb_defconfig
powerpc                       holly_defconfig
mips                         cobalt_defconfig
arm                         nhk8815_defconfig
powerpc                 linkstation_defconfig
arc                            hsdk_defconfig
powerpc                        warp_defconfig
xtensa                          iss_defconfig
arm                           sunxi_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220331
arm                  randconfig-c002-20220330
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
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
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
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
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220330
s390                 randconfig-r044-20220330
riscv                randconfig-r042-20220330
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
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
mips                 randconfig-c004-20220330
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220330
riscv                randconfig-c006-20220330
i386                          randconfig-c001
arm                  randconfig-c002-20220330
mips                         tb0219_defconfig
powerpc                     mpc5200_defconfig
powerpc                  mpc866_ads_defconfig
arm                        vexpress_defconfig
arm                       spear13xx_defconfig
mips                        omega2p_defconfig
powerpc                          allmodconfig
mips                          ath79_defconfig
powerpc                 mpc836x_mds_defconfig
arm                           sama7_defconfig
mips                       lemote2f_defconfig
powerpc                       ebony_defconfig
arm                         s3c2410_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220330
hexagon              randconfig-r045-20220330
hexagon              randconfig-r045-20220331
hexagon              randconfig-r041-20220331

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
