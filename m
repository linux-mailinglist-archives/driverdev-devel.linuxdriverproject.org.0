Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AE993815F
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2024 14:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0245A6062D;
	Sat, 20 Jul 2024 12:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGq1YqdLWPZD; Sat, 20 Jul 2024 12:48:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D97A36062F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D97A36062F;
	Sat, 20 Jul 2024 12:48:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD251BF3F9
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2024 12:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67EEA40430
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2024 12:48:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 84ajF0a2XRNs for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2024 12:48:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B65B740025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B65B740025
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B65B740025
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2024 12:48:24 +0000 (UTC)
X-CSE-ConnectionGUID: b0LoPmXVT6q3L/NWTACZqg==
X-CSE-MsgGUID: 4sAfGpc6ToqhKWc7ATRdaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11139"; a="29759150"
X-IronPort-AV: E=Sophos;i="6.09,223,1716274800"; d="scan'208";a="29759150"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2024 05:48:24 -0700
X-CSE-ConnectionGUID: d5lvyemAQjOgudElVOzaWA==
X-CSE-MsgGUID: 43nt89iIQtez3rsi+Ftlcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,223,1716274800"; d="scan'208";a="51124050"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 20 Jul 2024 05:48:23 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sV9Vc-000jCD-39;
 Sat, 20 Jul 2024 12:48:20 +0000
Date: Sat, 20 Jul 2024 20:47:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD SUCCESS
 7ce6b7c9c86c29d89047fc54cb8f51c8760ba510
Message-ID: <202407202055.QOfmECJY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721479704; x=1753015704;
 h=date:from:to:cc:subject:message-id;
 bh=s02qwDPS3VwbkXECLv7+VVAqRruU1YFCvcL2Nn3uiB8=;
 b=mmKvYsz5BsJgqwjqCXu9n+Noe1cI/kxUl+rmBc4BzCf6RnvzjOdhnvl4
 EnEe+yMhufUfADJe5eVcL/Qm71Y0qecHEPQB7QsA9qUgpk/NahFiFYAoC
 XmQgGgvjbt8hwcmRo4BnKN3PtIJ1akaIjmJyMaVESLDvXLRsCRHS6VU4v
 KI/yDFPS+ZlnfkxwnBSTdS/z6o5tyBOfh5mtoBM14hopaRZOLZEY7JSiX
 olpRGodU+4oeFnhiETFn6quhk/6Jrlzn1+22nHrKGB48lCUrnfmjPngqO
 g0U060Upe6AIxRI6EEvLGwVC+SAehqFtkqhkCU6MOFxmMAqYyYwvnz5Eh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mmKvYsz5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
branch HEAD: 7ce6b7c9c86c29d89047fc54cb8f51c8760ba510  USB: move dynamic ids out of usb driver structures

elapsed time: 1445m

configs tested: 174
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240720   gcc-13.2.0
arc                   randconfig-002-20240720   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                          ixp4xx_defconfig   gcc-14.1.0
arm                   randconfig-001-20240720   clang-15
arm                   randconfig-002-20240720   gcc-14.1.0
arm                   randconfig-003-20240720   gcc-14.1.0
arm                   randconfig-004-20240720   gcc-14.1.0
arm                         wpcm450_defconfig   gcc-14.1.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240720   gcc-14.1.0
arm64                 randconfig-002-20240720   clang-17
arm64                 randconfig-003-20240720   gcc-14.1.0
arm64                 randconfig-004-20240720   clang-19
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240720   gcc-14.1.0
csky                  randconfig-002-20240720   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240720   clang-16
hexagon               randconfig-002-20240720   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240719   clang-18
i386         buildonly-randconfig-002-20240719   clang-18
i386         buildonly-randconfig-003-20240719   gcc-10
i386         buildonly-randconfig-004-20240719   clang-18
i386         buildonly-randconfig-005-20240719   gcc-10
i386         buildonly-randconfig-006-20240719   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240719   clang-18
i386                  randconfig-002-20240719   clang-18
i386                  randconfig-003-20240719   clang-18
i386                  randconfig-004-20240719   gcc-13
i386                  randconfig-005-20240719   clang-18
i386                  randconfig-006-20240719   clang-18
i386                  randconfig-011-20240719   clang-18
i386                  randconfig-012-20240719   clang-18
i386                  randconfig-013-20240719   clang-18
i386                  randconfig-014-20240719   clang-18
i386                  randconfig-015-20240719   gcc-13
i386                  randconfig-016-20240719   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240720   gcc-14.1.0
loongarch             randconfig-002-20240720   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                         bigsur_defconfig   gcc-14.1.0
mips                           ci20_defconfig   clang-19
mips                           ip32_defconfig   clang-19
nios2                         3c120_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240720   gcc-14.1.0
nios2                 randconfig-002-20240720   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-32bit_defconfig   gcc-14.1.0
parisc                randconfig-001-20240720   gcc-14.1.0
parisc                randconfig-002-20240720   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                        cell_defconfig   gcc-14.1.0
powerpc                     kmeter1_defconfig   gcc-14.1.0
powerpc                   motionpro_defconfig   clang-17
powerpc                 mpc837x_rdb_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240720   clang-19
powerpc               randconfig-002-20240720   clang-19
powerpc               randconfig-003-20240720   gcc-14.1.0
powerpc64             randconfig-001-20240720   clang-19
powerpc64             randconfig-002-20240720   clang-19
powerpc64             randconfig-003-20240720   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240720   clang-19
riscv                 randconfig-002-20240720   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240720   gcc-14.1.0
s390                  randconfig-002-20240720   clang-15
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                        dreamcast_defconfig   gcc-14.1.0
sh                    randconfig-001-20240720   gcc-14.1.0
sh                    randconfig-002-20240720   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                          alldefconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240720   gcc-14.1.0
sparc64               randconfig-002-20240720   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240720   gcc-13
um                    randconfig-002-20240720   clang-15
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240720   clang-18
x86_64       buildonly-randconfig-002-20240720   gcc-13
x86_64       buildonly-randconfig-003-20240720   clang-18
x86_64       buildonly-randconfig-004-20240720   clang-18
x86_64       buildonly-randconfig-005-20240720   gcc-13
x86_64       buildonly-randconfig-006-20240720   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240720   clang-18
x86_64                randconfig-002-20240720   gcc-13
x86_64                randconfig-003-20240720   clang-18
x86_64                randconfig-004-20240720   clang-18
x86_64                randconfig-005-20240720   clang-18
x86_64                randconfig-006-20240720   gcc-13
x86_64                randconfig-011-20240720   gcc-13
x86_64                randconfig-012-20240720   clang-18
x86_64                randconfig-013-20240720   gcc-13
x86_64                randconfig-014-20240720   clang-18
x86_64                randconfig-015-20240720   gcc-13
x86_64                randconfig-016-20240720   gcc-13
x86_64                randconfig-071-20240720   clang-18
x86_64                randconfig-072-20240720   gcc-13
x86_64                randconfig-073-20240720   gcc-13
x86_64                randconfig-074-20240720   gcc-9
x86_64                randconfig-075-20240720   gcc-13
x86_64                randconfig-076-20240720   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240720   gcc-14.1.0
xtensa                randconfig-002-20240720   gcc-14.1.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
