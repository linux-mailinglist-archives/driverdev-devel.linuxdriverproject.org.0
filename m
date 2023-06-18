Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C57667344DE
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Jun 2023 05:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F84441724;
	Sun, 18 Jun 2023 03:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F84441724
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gepl1AVONg2S; Sun, 18 Jun 2023 03:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87EB841725;
	Sun, 18 Jun 2023 03:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87EB841725
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CAED1BF23B
 for <devel@linuxdriverproject.org>; Sun, 18 Jun 2023 03:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FDA581A4E
 for <devel@linuxdriverproject.org>; Sun, 18 Jun 2023 03:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FDA581A4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QjCMgJPD0ZjI for <devel@linuxdriverproject.org>;
 Sun, 18 Jun 2023 03:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8917B81A47
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8917B81A47
 for <devel@driverdev.osuosl.org>; Sun, 18 Jun 2023 03:59:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="344186244"
X-IronPort-AV: E=Sophos;i="6.00,251,1681196400"; d="scan'208";a="344186244"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2023 20:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="837463704"
X-IronPort-AV: E=Sophos;i="6.00,251,1681196400"; d="scan'208";a="837463704"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2023 20:59:02 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qAjZ7-0003Mm-1h;
 Sun, 18 Jun 2023 03:59:01 +0000
Date: Sun, 18 Jun 2023 11:58:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 f99bbb4412ceffba7e85b9a9227de44c214c68ca
Message-ID: <202306181120.9SkYOyJA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687060744; x=1718596744;
 h=date:from:to:cc:subject:message-id;
 bh=wmSXDb05ZkaAg7tXl74t2P1x0u1bnFreOf/Ddpns6MM=;
 b=HIZ8W4EjgsHVG+cEO6AzLn39aRam6rhFxO24mop/94wBPthB7fvxC0EJ
 6p4dm3NymPNyXy0wIn2JQI5wsWw7uNfh03fY/aAaLvcwELfpI9FMm7qHj
 CPoMiG1/nUfDSXGKw8lZNf2k6Wae5vQDLbfg9UpkOtqPOzlz9SnJa6PQ3
 YNq2JSxuRQmLuZhc7dZ8968ZCIZMZkg0hL7rlpFAT9/8v3CII1g+mfKZG
 Hj0pxPbT79Aun8gFP3N7C/p/bn/HHEl3C0vRVpaVKSg+4put1DAXICNdi
 edQ2i5/H5GofJT9IdjwuOvUXjFlwGf59hq2x/HKXBG12j2MKC5r3vSDBK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HIZ8W4Ej
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: f99bbb4412ceffba7e85b9a9227de44c214c68ca  axis-fifo: remove the unnecessary dev_info()

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202306180620.Ew55XtKJ-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202306181110.O3j7R17W-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

ERROR: modpost: "bridge_tunnel_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!
ERROR: modpost: "ieee80211_freq_khz_to_channel" [drivers/staging/rtl8192e/rtllib.ko] undefined!
ERROR: modpost: "rfc1042_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- csky-randconfig-r024-20230617
    |-- ERROR:bridge_tunnel_header-drivers-staging-rtl8192e-rtllib.ko-undefined
    |-- ERROR:ieee80211_freq_khz_to_channel-drivers-staging-rtl8192e-rtllib.ko-undefined
    `-- ERROR:rfc1042_header-drivers-staging-rtl8192e-rtllib.ko-undefined

elapsed time: 805m

configs tested: 120
configs skipped: 8

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230617   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230617   gcc  
arc                  randconfig-r036-20230617   gcc  
arc                  randconfig-r043-20230617   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                  randconfig-r046-20230617   gcc  
arm                        realview_defconfig   gcc  
arm                           sama7_defconfig   clang
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230617   gcc  
hexagon              randconfig-r035-20230617   clang
hexagon              randconfig-r041-20230617   clang
hexagon              randconfig-r045-20230617   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230617   gcc  
i386         buildonly-randconfig-r005-20230617   gcc  
i386         buildonly-randconfig-r006-20230617   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230617   gcc  
i386                 randconfig-i002-20230617   gcc  
i386                 randconfig-i003-20230617   gcc  
i386                 randconfig-i004-20230617   gcc  
i386                 randconfig-i005-20230617   gcc  
i386                 randconfig-i006-20230617   gcc  
i386                 randconfig-i011-20230617   clang
i386                 randconfig-i012-20230617   clang
i386                 randconfig-i013-20230617   clang
i386                 randconfig-i014-20230617   clang
i386                 randconfig-i015-20230617   clang
i386                 randconfig-i016-20230617   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                 randconfig-r032-20230617   clang
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230617   gcc  
parisc               randconfig-r013-20230617   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 canyonlands_defconfig   gcc  
powerpc                 mpc8560_ads_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r012-20230617   clang
powerpc                    socrates_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r021-20230617   clang
riscv                randconfig-r042-20230617   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230617   gcc  
s390                 randconfig-r016-20230617   clang
s390                 randconfig-r024-20230617   clang
s390                 randconfig-r044-20230617   clang
sh                               allmodconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                   randconfig-r004-20230617   gcc  
sh                   randconfig-r006-20230617   gcc  
sh                   randconfig-r031-20230617   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230617   gcc  
um                               alldefconfig   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230617   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230617   gcc  
x86_64       buildonly-randconfig-r002-20230617   gcc  
x86_64       buildonly-randconfig-r003-20230617   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230617   gcc  
x86_64               randconfig-a002-20230617   gcc  
x86_64               randconfig-a003-20230617   gcc  
x86_64               randconfig-a004-20230617   gcc  
x86_64               randconfig-a005-20230617   gcc  
x86_64               randconfig-a006-20230617   gcc  
x86_64               randconfig-a011-20230617   clang
x86_64               randconfig-a012-20230617   clang
x86_64               randconfig-a013-20230617   clang
x86_64               randconfig-a014-20230617   clang
x86_64               randconfig-a015-20230617   clang
x86_64               randconfig-a016-20230617   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
