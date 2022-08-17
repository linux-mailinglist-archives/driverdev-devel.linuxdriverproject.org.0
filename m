Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3990597A41
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Aug 2022 01:37:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E872941B31;
	Wed, 17 Aug 2022 23:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E872941B31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GeVUbjQWz1Cd; Wed, 17 Aug 2022 23:37:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2157041B41;
	Wed, 17 Aug 2022 23:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2157041B41
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84B591BF2BB
 for <devel@linuxdriverproject.org>; Wed, 17 Aug 2022 23:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BE8883E2C
 for <devel@linuxdriverproject.org>; Wed, 17 Aug 2022 23:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BE8883E2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQMdTTmeAe0C for <devel@linuxdriverproject.org>;
 Wed, 17 Aug 2022 23:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F66983498
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F66983498
 for <devel@driverdev.osuosl.org>; Wed, 17 Aug 2022 23:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="378917946"
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="378917946"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 16:37:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="640647268"
Received: from lkp-server02.sh.intel.com (HELO 81d7e1ade3ba) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2022 16:37:41 -0700
Received: from kbuild by 81d7e1ade3ba with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oOSbU-0001Tb-2B;
 Wed, 17 Aug 2022 23:37:40 +0000
Date: Thu, 18 Aug 2022 07:36:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 8379cf83fe6d57a12952de6dcaf7a7fbd7b364fc
Message-ID: <62fd7b95.KBRD/rZ/Ml1pD7K4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660779463; x=1692315463;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fOICWoHShYoMbui2jPYJ9lOhVr7eEFWRvlUmjAUKE0Y=;
 b=S9nGxgDnFivIEi2ufNafsQPt9C5UeOppjfK3v+8uYm8kTCzdjdW7V2uI
 UgsfemsPntMQOfmwOsiYuTWYYHrH2XJ2pMwqwjePcspCYMCBwlH026BiP
 HMcZRCije7zaUD9KBvhyNuKUZ00k+HVcVWpvt1rKTWU602CjAJVAc8Slw
 1cvTxedII6IGhPbjAofmtyINt0+5CEKmK6rJhkrCy92YiOADdX6ihJUMN
 0ziFNjAANN+J9iEnLOv+mmIRhpD7dBJ8wtGr77LG4Yh0SWMIK+rG17s17
 UC76wc9qpBfwkLcHUC60SrBodQQpzpfCKb90fRpWMblEG+1+NpSMLjEXT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S9nGxgDn
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
branch HEAD: 8379cf83fe6d57a12952de6dcaf7a7fbd7b364fc  staging: r8188eu: drop the DRIVERVERSION macro

elapsed time: 720m

configs tested: 127
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64               randconfig-a001-20220815
x86_64               randconfig-a003-20220815
x86_64               randconfig-a004-20220815
i386                 randconfig-a003-20220815
i386                 randconfig-a004-20220815
x86_64               randconfig-a002-20220815
i386                                defconfig
i386                 randconfig-a005-20220815
i386                 randconfig-a002-20220815
i386                 randconfig-a001-20220815
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
i386                 randconfig-a006-20220815
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a005-20220815
x86_64                           rhel-8.3-kvm
arm                                 defconfig
x86_64               randconfig-a006-20220815
m68k                             allmodconfig
arc                              allyesconfig
x86_64                           rhel-8.3-syz
alpha                            allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
m68k                             allyesconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20220815
arm                              allyesconfig
arc                               allnoconfig
arm64                            allyesconfig
alpha                             allnoconfig
powerpc                          allmodconfig
csky                              allnoconfig
riscv                             allnoconfig
mips                             allyesconfig
powerpc                           allnoconfig
ia64                             allmodconfig
sh                               allmodconfig
riscv                randconfig-r042-20220818
s390                 randconfig-r044-20220818
arc                  randconfig-r043-20220818
arm                         s3c6400_defconfig
riscv                    nommu_k210_defconfig
arm                            zeus_defconfig
nios2                         3c120_defconfig
sh                           se7712_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
sh                             sh03_defconfig
arm                             ezx_defconfig
mips                        vocore2_defconfig
arm                        oxnas_v6_defconfig
i386                          randconfig-c001
arm                          simpad_defconfig
sh                        edosk7760_defconfig
powerpc                 mpc834x_mds_defconfig
m68k                        m5307c3_defconfig
arc                          axs101_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                       maple_defconfig
alpha                            alldefconfig
arm                           stm32_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sparc                       sparc32_defconfig
sh                          r7785rp_defconfig
mips                  decstation_64_defconfig
arm                         cm_x300_defconfig
mips                      loongson3_defconfig
sh                          polaris_defconfig
arc                          axs103_defconfig
sh                        edosk7705_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                           tegra_defconfig
mips                           ip32_defconfig
m68k                            mac_defconfig
arm                             pxa_defconfig
powerpc                      ppc40x_defconfig
powerpc                      mgcoge_defconfig
powerpc                      cm5200_defconfig

clang tested configs:
x86_64               randconfig-a013-20220815
x86_64               randconfig-a012-20220815
x86_64               randconfig-a011-20220815
x86_64               randconfig-a015-20220815
x86_64               randconfig-a014-20220815
x86_64               randconfig-a016-20220815
hexagon              randconfig-r045-20220815
hexagon              randconfig-r041-20220815
s390                 randconfig-r044-20220815
i386                 randconfig-a012-20220815
i386                 randconfig-a011-20220815
riscv                randconfig-r042-20220815
i386                 randconfig-a013-20220815
i386                 randconfig-a014-20220815
i386                 randconfig-a015-20220815
i386                 randconfig-a016-20220815
mips                        omega2p_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                        multi_v5_defconfig
mips                      pic32mzda_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
riscv                    nommu_virt_defconfig
mips                        qi_lb60_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
powerpc                          g5_defconfig
arm64                            allyesconfig
arm                          ixp4xx_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
