Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96E3586146
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jul 2022 22:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93FE340FEB;
	Sun, 31 Jul 2022 20:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93FE340FEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nPfee08GMXPe; Sun, 31 Jul 2022 20:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4443840133;
	Sun, 31 Jul 2022 20:20:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4443840133
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9695B1BF2CC
 for <devel@linuxdriverproject.org>; Sun, 31 Jul 2022 20:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7072582F20
 for <devel@linuxdriverproject.org>; Sun, 31 Jul 2022 20:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7072582F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPUfVqUAp6Vq for <devel@linuxdriverproject.org>;
 Sun, 31 Jul 2022 20:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45E6382F14
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45E6382F14
 for <devel@driverdev.osuosl.org>; Sun, 31 Jul 2022 20:20:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10425"; a="272066203"
X-IronPort-AV: E=Sophos;i="5.93,206,1654585200"; d="scan'208";a="272066203"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2022 13:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,206,1654585200"; d="scan'208";a="577553933"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 31 Jul 2022 13:20:05 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oIFPw-000EYD-1r;
 Sun, 31 Jul 2022 20:20:04 +0000
Date: Mon, 01 Aug 2022 04:19:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 87f600af59e8cf6abb04bac15328bcb517e26485
Message-ID: <62e6e3c7.UjM2sd9YMo62VIco%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659298807; x=1690834807;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+xu7iBNyVvi172iMFcUgpozCe1sHHu4oC+utIN6Dgko=;
 b=ZgQYw+JTByK+AnFOtV8eXoFq+nFWq4Fc/YaLjEqgOcidzYTn9ogp2zTr
 vEFV3AQ4DVwoW9MBJxC39/g/NsBpFQ/Ade5NRQ8dtXi1ZOlwpayrkMrlz
 yIIyllRgqcTMQtTKODRy05791CI8gGmLJH1pV1/GMlLMVzhdNjUdlD7S8
 i9kfgtg4v3Lt/i9mvI5JDIgeEIW5T0HqWUjtl4KBfSTDQmvdBKjiOggBn
 XZwHLcSegf0Q+rpXjTfG7ae1U41Z52SO46IoA1gXg/tO2QpCtS8gB9U80
 /SslFDPGrnbelNJOQixcaYmmQqcFPDSGm65gN1e+0RQyM+PmumKH7KoVb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZgQYw+JT
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
branch HEAD: 87f600af59e8cf6abb04bac15328bcb517e26485  staging: r8188eu: fix potential uninitialised variable use in rtw_pwrctrl.c

elapsed time: 716m

configs tested: 89
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
i386                                defconfig
s390                 randconfig-r044-20220731
x86_64                               rhel-8.3
x86_64                        randconfig-a015
arc                  randconfig-r043-20220731
i386                          randconfig-a016
x86_64                        randconfig-a002
arc                               allnoconfig
ia64                             allmodconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
x86_64                        randconfig-a006
x86_64                           rhel-8.3-syz
riscv                randconfig-r042-20220731
m68k                             allmodconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                        randconfig-a013
x86_64                           allyesconfig
alpha                            allyesconfig
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                         rhel-8.3-kunit
i386                          randconfig-a003
i386                             allyesconfig
x86_64                        randconfig-a011
arm                              allyesconfig
m68k                             allyesconfig
x86_64                    rhel-8.3-kselftests
arm                        realview_defconfig
arc                         haps_hs_defconfig
powerpc                      ep88xc_defconfig
powerpc                      pcm030_defconfig
microblaze                      mmu_defconfig
arm                        spear6xx_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                        clps711x_defconfig
x86_64                        randconfig-a004
riscv             nommu_k210_sdcard_defconfig
powerpc                  iss476-smp_defconfig
arm                       aspeed_g5_defconfig
mips                             allyesconfig
ia64                             alldefconfig
x86_64                           rhel-8.3-kvm
sh                          kfr2r09_defconfig
i386                          randconfig-a012
parisc                generic-64bit_defconfig
sh                          rsk7203_defconfig
ia64                        generic_defconfig
sh                               allmodconfig
parisc                              defconfig
i386                          randconfig-a014
m68k                       m5249evb_defconfig
powerpc                       eiger_defconfig
arm                        trizeps4_defconfig
sh                        sh7763rdp_defconfig
powerpc                      makalu_defconfig
arc                        nsimosci_defconfig
arm                          pxa910_defconfig

clang tested configs:
hexagon              randconfig-r041-20220731
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220731
i386                          randconfig-a015
powerpc                      obs600_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
arm                          ep93xx_defconfig
i386                          randconfig-a004
i386                          randconfig-a006
powerpc                     ppa8548_defconfig
arm                        mvebu_v5_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
mips                           ip22_defconfig
powerpc                      katmai_defconfig
powerpc                     kmeter1_defconfig
powerpc                     powernv_defconfig
powerpc                   microwatt_defconfig
i386                          randconfig-a013
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
