Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD45E4F9097
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Apr 2022 10:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 509C741634;
	Fri,  8 Apr 2022 08:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KmZ62wm4ZKYx; Fri,  8 Apr 2022 08:18:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9358F415AC;
	Fri,  8 Apr 2022 08:18:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4D81BF32B
 for <devel@linuxdriverproject.org>; Fri,  8 Apr 2022 08:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B42340292
 for <devel@linuxdriverproject.org>; Fri,  8 Apr 2022 08:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1V_CDn5F1Co5 for <devel@linuxdriverproject.org>;
 Fri,  8 Apr 2022 08:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D7F740181
 for <devel@driverdev.osuosl.org>; Fri,  8 Apr 2022 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649405890; x=1680941890;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Bellm8CUdsrS0EUQlxC0g61UwDDu5IlcxIAygrMEk0I=;
 b=M3ovB1byijV9n3/G6jkJCa3aHHXsLDngxFs+Zq4ZdKFCL63Z4ii0SIfg
 FCVz/fMm5UnEtsMSOjGWCJWV7NKRLoFkHcK70kVP2XlCc6eDMM5qmLhbC
 FKFOmEFBWlRM5zX9pkTEGIttwkNtyDmhkC5wImb5Rzppe6pEWex1tmmYE
 aPNdRRVtAp15KPinTlnHKWhgYh326Rjm3PNtosQwFMdR+Cv6cTa+B5xsM
 T3aEvBG6cetJHTIcYm4WprHaNTWld3hYHb1WgaPpV73YKtijT1dvekMre
 MlCAAKFh7MG/aYYk2CSR0yvkf3tJadFUUyfLtxTVwJe3m78/M9B/EVudS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="243675176"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="243675176"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="524700952"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 08 Apr 2022 01:18:08 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1ncjom-000033-2h;
 Fri, 08 Apr 2022 08:18:08 +0000
Date: Fri, 08 Apr 2022 16:17:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 f8525b9763c61f54d1abdcce2821468dc416cda1
Message-ID: <624fefa2.00jQ2TtFAvRAHeAc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: f8525b9763c61f54d1abdcce2821468dc416cda1  Merge branch 'wfx-move-out-of-staging' of git://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless-next into staging-next

elapsed time: 720m

configs tested: 139
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
arm                      integrator_defconfig
powerpc                     taishan_defconfig
sh                          polaris_defconfig
powerpc                      bamboo_defconfig
sh                           se7722_defconfig
arm                          iop32x_defconfig
arc                            hsdk_defconfig
powerpc                      ep88xc_defconfig
powerpc                      ppc6xx_defconfig
sh                           se7780_defconfig
sparc64                          alldefconfig
mips                     decstation_defconfig
arm                            hisi_defconfig
arm                           h5000_defconfig
arm                         lubbock_defconfig
sh                              ul2_defconfig
arm                        cerfcube_defconfig
ia64                      gensparse_defconfig
powerpc                      mgcoge_defconfig
powerpc                      tqm8xx_defconfig
powerpc                  iss476-smp_defconfig
powerpc                    sam440ep_defconfig
powerpc                 mpc8540_ads_defconfig
mips                            ar7_defconfig
arm                         nhk8815_defconfig
sh                   secureedge5410_defconfig
sh                   rts7751r2dplus_defconfig
arm                             pxa_defconfig
sparc                               defconfig
powerpc                      pcm030_defconfig
powerpc64                           defconfig
powerpc                       ppc64_defconfig
ia64                        generic_defconfig
arm                       multi_v4t_defconfig
ia64                         bigsur_defconfig
arm                       imx_v6_v7_defconfig
powerpc                       eiger_defconfig
arm                         assabet_defconfig
mips                        vocore2_defconfig
i386                             alldefconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220406
arm                  randconfig-c002-20220407
arm                  randconfig-c002-20220408
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
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220406
arc                  randconfig-r043-20220407
s390                 randconfig-r044-20220406
riscv                randconfig-r042-20220406
arc                  randconfig-r043-20220408
s390                 randconfig-r044-20220408
riscv                randconfig-r042-20220408
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
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220408
riscv                randconfig-c006-20220408
mips                 randconfig-c004-20220408
arm                  randconfig-c002-20220408
powerpc                      pasemi_defconfig
arm                            mps2_defconfig
arm                       aspeed_g4_defconfig
arm                     davinci_all_defconfig
arm                        magician_defconfig
powerpc                       ebony_defconfig
powerpc                   microwatt_defconfig
powerpc                    socrates_defconfig
arm                          pcm027_defconfig
riscv                             allnoconfig
arm                          collie_defconfig
arm                       mainstone_defconfig
riscv                            alldefconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
