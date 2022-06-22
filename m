Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D764D556E01
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jun 2022 23:52:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6150660C02;
	Wed, 22 Jun 2022 21:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6150660C02
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wlr8HVzCRaVw; Wed, 22 Jun 2022 21:52:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA0AB60B85;
	Wed, 22 Jun 2022 21:52:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA0AB60B85
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74ACA1BF388
 for <devel@linuxdriverproject.org>; Wed, 22 Jun 2022 21:52:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EFC760C02
 for <devel@linuxdriverproject.org>; Wed, 22 Jun 2022 21:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EFC760C02
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-bkuh4uGW6Q for <devel@linuxdriverproject.org>;
 Wed, 22 Jun 2022 21:52:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47DC860B85
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47DC860B85
 for <devel@driverdev.osuosl.org>; Wed, 22 Jun 2022 21:52:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="269277938"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="269277938"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 14:52:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="677766594"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2022 14:52:03 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o48GY-0001jF-RR;
 Wed, 22 Jun 2022 21:52:02 +0000
Date: Thu, 23 Jun 2022 05:51:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 8821931e614d8ff2f58a4b06b3f2fecc66a462b8
Message-ID: <62b38eee.czD06wXewxfgdprX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655934741; x=1687470741;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=76uh8emifdFvs7WXpdmPFlB2FSgDH2I+Hl1b1paWSQg=;
 b=X+HwXGzlYE4uOjQu/jIGiNbidsdBs3pVHal41mB1nwi90GgW4zIpY5ul
 X0AdfUUMaPgRPl2ZTRy1JOw7FTiGOdBE+bUMrvBZVdfJxQZtf2rosRLUq
 XOIN0d8KaNxkSsKhlowtRutn1BqbvoWR+zzC87QWpmXMSQWo+n96dVG0b
 GNuNhrI5Tdu+axzr+SbOhhi2CokJy1D3MeTm0Pq8A/WUhkVCjHitvPvUo
 n/bWEFqpPAIg+3hgq/t6F2LuLF/n461GOPoiGs+uLmmQhWbWbSgR7nMOl
 XSUs0oEv0dh8wO8paUI4ItmGvDmGnKf18MSKUY5FkSft0oEnf1y6wb1Rf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X+HwXGzl
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
branch HEAD: 8821931e614d8ff2f58a4b06b3f2fecc66a462b8  staging: r8188eu: Fixed some blank line coding style issues

elapsed time: 722m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                           se7780_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     mpc83xx_defconfig
sh                          urquell_defconfig
sparc                       sparc64_defconfig
m68k                          multi_defconfig
alpha                            alldefconfig
mips                       bmips_be_defconfig
s390                          debug_defconfig
m68k                        mvme16x_defconfig
arm                            xcep_defconfig
arc                              alldefconfig
sh                           se7343_defconfig
parisc                generic-32bit_defconfig
arm                        oxnas_v6_defconfig
um                               alldefconfig
sh                           se7724_defconfig
arm                        realview_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                             sh03_defconfig
openrisc                         alldefconfig
m68k                            q40_defconfig
arm                           stm32_defconfig
sh                          kfr2r09_defconfig
ia64                             allmodconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                  randconfig-r043-20220622
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                 mpc8315_rdb_defconfig
arm                          ixp4xx_defconfig
riscv                    nommu_virt_defconfig
mips                           ip28_defconfig
riscv                             allnoconfig
powerpc                 xes_mpc85xx_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
