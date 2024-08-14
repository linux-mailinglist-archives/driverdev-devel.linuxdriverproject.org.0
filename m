Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6C6951330
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2024 05:42:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAC8F606ED;
	Wed, 14 Aug 2024 03:42:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xxBillQewezd; Wed, 14 Aug 2024 03:42:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C982E6070A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C982E6070A;
	Wed, 14 Aug 2024 03:42:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE3A21BF59B
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 03:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CD8A81372
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 03:42:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQVUaOI12RJI for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2024 03:42:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9C0A81341
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9C0A81341
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9C0A81341
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2024 03:42:12 +0000 (UTC)
X-CSE-ConnectionGUID: Slk424p9QWaRpE1FDlkYMg==
X-CSE-MsgGUID: BOMLjRWvQ02Lm/1WhOPm5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="24711048"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="24711048"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 20:42:12 -0700
X-CSE-ConnectionGUID: mUGfyPnNRNa7DSNf2atg7w==
X-CSE-MsgGUID: WMVn3B62Q2CMfydPJrHwJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="63030321"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 13 Aug 2024 20:42:10 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1se4tj-00014A-2j;
 Wed, 14 Aug 2024 03:42:07 +0000
Date: Wed, 14 Aug 2024 11:41:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 18ec12c97b39ff6aa15beb8d2b25d15cd44b87d8
Message-ID: <202408141149.fKef2OzF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723606934; x=1755142934;
 h=date:from:to:cc:subject:message-id;
 bh=J6fkcMZuzG0+c5r8bu6AxTqm0HocX9PX3v4DAoS7l1U=;
 b=li+oAeTcAXsboAvCOCKDRXHsohZnq8M5yKxKAS4VKvKhfFoMGxFuB1K1
 v8yok1f1mZ7xN4umOkoo74kaGdD5KgmzVy3IRBtuj38cR/otPZZ4J2ZLp
 zpMR33M2CtvOHOGp8f14cRca7CEJcjNinxUXWBy0tdQae+68Vrx4Gkg33
 nY0yGz6j8THNerLD803yYxKm97egDdl2y6W9ltJ9YG98SItMZnSXt9eAK
 ppbliOtU9xeA9YkPYLDPf0enJu3qaA8ttqBXi/77lVkG/PiobeMS+S2Of
 0/OUS6eor9zL0iYt42r+61H/aprt3pFOgkMh2Z3qjbVHd+FDWOD99TNac
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=li+oAeTc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 18ec12c97b39ff6aa15beb8d2b25d15cd44b87d8  driver core: Fix a potential null-ptr-deref in module_add_driver()

elapsed time: 1024m

configs tested: 225
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240813   gcc-13.2.0
arc                   randconfig-002-20240813   gcc-13.2.0
arc                           tb10x_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                         assabet_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                            dove_defconfig   gcc-12.4.0
arm                            hisi_defconfig   gcc-12.4.0
arm                          moxart_defconfig   gcc-12.4.0
arm                         mv78xx0_defconfig   gcc-12.4.0
arm                       omap2plus_defconfig   gcc-13.2.0
arm                   randconfig-001-20240813   gcc-13.2.0
arm                   randconfig-002-20240813   gcc-13.2.0
arm                   randconfig-003-20240813   gcc-13.2.0
arm                   randconfig-004-20240813   gcc-13.2.0
arm                           sunxi_defconfig   gcc-13.2.0
arm                         wpcm450_defconfig   gcc-12.4.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240813   gcc-13.2.0
arm64                 randconfig-002-20240813   gcc-13.2.0
arm64                 randconfig-003-20240813   gcc-13.2.0
arm64                 randconfig-004-20240813   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240813   gcc-13.2.0
csky                  randconfig-002-20240813   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             alldefconfig   gcc-12.4.0
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240813   gcc-12
i386         buildonly-randconfig-001-20240814   clang-18
i386         buildonly-randconfig-002-20240813   gcc-12
i386         buildonly-randconfig-002-20240814   clang-18
i386         buildonly-randconfig-003-20240813   gcc-12
i386         buildonly-randconfig-003-20240814   clang-18
i386         buildonly-randconfig-004-20240813   gcc-11
i386         buildonly-randconfig-004-20240814   clang-18
i386         buildonly-randconfig-005-20240813   clang-18
i386         buildonly-randconfig-005-20240814   clang-18
i386         buildonly-randconfig-006-20240813   gcc-12
i386         buildonly-randconfig-006-20240814   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240813   gcc-12
i386                  randconfig-001-20240814   clang-18
i386                  randconfig-002-20240813   clang-18
i386                  randconfig-002-20240814   clang-18
i386                  randconfig-003-20240813   gcc-12
i386                  randconfig-003-20240814   clang-18
i386                  randconfig-004-20240813   gcc-12
i386                  randconfig-004-20240814   clang-18
i386                  randconfig-005-20240813   clang-18
i386                  randconfig-005-20240814   clang-18
i386                  randconfig-006-20240813   clang-18
i386                  randconfig-006-20240814   clang-18
i386                  randconfig-011-20240813   gcc-12
i386                  randconfig-011-20240814   clang-18
i386                  randconfig-012-20240813   gcc-12
i386                  randconfig-012-20240814   clang-18
i386                  randconfig-013-20240813   clang-18
i386                  randconfig-013-20240814   clang-18
i386                  randconfig-014-20240813   clang-18
i386                  randconfig-014-20240814   clang-18
i386                  randconfig-015-20240813   clang-18
i386                  randconfig-015-20240814   clang-18
i386                  randconfig-016-20240813   clang-18
i386                  randconfig-016-20240814   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240813   gcc-13.2.0
loongarch             randconfig-002-20240813   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         amcore_defconfig   gcc-12.4.0
m68k                                defconfig   gcc-13.2.0
m68k                        mvme16x_defconfig   gcc-12.4.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                       bmips_be_defconfig   gcc-13.2.0
mips                         rt305x_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240813   gcc-13.2.0
nios2                 randconfig-002-20240813   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                  or1klitex_defconfig   gcc-12.4.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240813   gcc-13.2.0
parisc                randconfig-002-20240813   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      katmai_defconfig   gcc-12.4.0
powerpc                      katmai_defconfig   gcc-13.2.0
powerpc                 mpc837x_rdb_defconfig   gcc-13.2.0
powerpc                      ppc44x_defconfig   gcc-13.2.0
powerpc                       ppc64_defconfig   gcc-12.4.0
powerpc               randconfig-002-20240813   gcc-13.2.0
powerpc               randconfig-003-20240813   gcc-13.2.0
powerpc                 xes_mpc85xx_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240813   gcc-13.2.0
powerpc64             randconfig-002-20240813   gcc-13.2.0
powerpc64             randconfig-003-20240813   gcc-13.2.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240813   gcc-13.2.0
riscv                 randconfig-002-20240813   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-13.2.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240813   gcc-13.2.0
s390                  randconfig-002-20240813   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                          landisk_defconfig   gcc-13.2.0
sh                            migor_defconfig   gcc-12.4.0
sh                          polaris_defconfig   gcc-12.4.0
sh                    randconfig-001-20240813   gcc-13.2.0
sh                    randconfig-002-20240813   gcc-13.2.0
sh                          rsk7269_defconfig   gcc-13.2.0
sh                      rts7751r2d1_defconfig   gcc-12.4.0
sh                          sdk7780_defconfig   gcc-13.2.0
sh                           sh2007_defconfig   gcc-12.4.0
sh                     sh7710voipgw_defconfig   gcc-12.4.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-12.4.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240813   gcc-13.2.0
sparc64               randconfig-002-20240813   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240813   gcc-13.2.0
um                    randconfig-002-20240813   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240814   clang-18
x86_64       buildonly-randconfig-002-20240814   clang-18
x86_64       buildonly-randconfig-003-20240814   clang-18
x86_64       buildonly-randconfig-004-20240814   clang-18
x86_64       buildonly-randconfig-005-20240814   clang-18
x86_64       buildonly-randconfig-006-20240814   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240814   clang-18
x86_64                randconfig-002-20240814   clang-18
x86_64                randconfig-003-20240814   clang-18
x86_64                randconfig-004-20240814   clang-18
x86_64                randconfig-005-20240814   clang-18
x86_64                randconfig-006-20240814   clang-18
x86_64                randconfig-011-20240814   clang-18
x86_64                randconfig-012-20240814   clang-18
x86_64                randconfig-013-20240814   clang-18
x86_64                randconfig-014-20240814   clang-18
x86_64                randconfig-015-20240814   clang-18
x86_64                randconfig-016-20240814   clang-18
x86_64                randconfig-071-20240814   clang-18
x86_64                randconfig-072-20240814   clang-18
x86_64                randconfig-073-20240814   clang-18
x86_64                randconfig-074-20240814   clang-18
x86_64                randconfig-075-20240814   clang-18
x86_64                randconfig-076-20240814   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240813   gcc-13.2.0
xtensa                randconfig-002-20240813   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
