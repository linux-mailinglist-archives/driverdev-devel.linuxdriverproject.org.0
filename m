Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACEC944FE0
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2024 18:03:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40DF240F2B;
	Thu,  1 Aug 2024 16:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MCDSarBbcR-j; Thu,  1 Aug 2024 16:03:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14A4D40F3E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14A4D40F3E;
	Thu,  1 Aug 2024 16:03:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACD4D1BF983
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2024 16:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A8F3605F9
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2024 16:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rTowxhHk9ERR for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2024 16:03:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D604C60672
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D604C60672
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D604C60672
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2024 16:03:17 +0000 (UTC)
X-CSE-ConnectionGUID: erLVbyy7SAGQyGF4pDE5Sw==
X-CSE-MsgGUID: oTN7OD4PRZOR0oaBlAq0vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20179210"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="20179210"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 09:02:38 -0700
X-CSE-ConnectionGUID: Yt0voewFSpOQXidTimFICA==
X-CSE-MsgGUID: 2jLjhovlQjSqMSG2ZnuSNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="54733758"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 01 Aug 2024 09:02:36 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sZYGA-000vjN-0a;
 Thu, 01 Aug 2024 16:02:34 +0000
Date: Fri, 02 Aug 2024 00:02:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:usb-dynamic-id] BUILD SUCCESS
 ca7e49a6ffe417e8f3eaea78a9e76ae41a37b419
Message-ID: <202408020011.dzG6yvqk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722528199; x=1754064199;
 h=date:from:to:cc:subject:message-id;
 bh=miRf9rjxVi15RWVLg/cECSkqbo6AOu0J1+7P9O4WD04=;
 b=eykIr9yq8pULamoUo9fp6igoZG2YqjGFfOptUJhZnsRVGYwDJ6fLwas6
 WE06zyKCy8MVy8BB6T3vgik4E6mYf7aWNRCbGehv2Zg5TRmKm9CZ2JW9Q
 Vb/FQBYlCpGD/q3q591cPPmz3MNqpv8v8TdWhh074uSSAwjQsa7X8kC8e
 4UWst4NpdjR807nxCL7FBiSaovSl4mFg0EuqSguz4MIt4jfAuYsolk80v
 eltbSiTWqer1NqHbIV0uGE2mOP5o9nLt2d+ZSVizHAoGF4okpUqaCd/Gl
 joBiQ3L7jeLUXg4eAC/PBLxXBho6jpdpIHuD9nJ95gpgi8Zfl0JzgZKV9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eykIr9yq
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git usb-dynamic-id
branch HEAD: ca7e49a6ffe417e8f3eaea78a9e76ae41a37b419  USB: properly lock dynamic id list when showing an id

elapsed time: 1454m

configs tested: 211
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240801   gcc-13.2.0
arc                   randconfig-002-20240801   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                        clps711x_defconfig   gcc-13.3.0
arm                                 defconfig   gcc-13.2.0
arm                       imx_v4_v5_defconfig   gcc-13.3.0
arm                         nhk8815_defconfig   gcc-13.3.0
arm                   randconfig-001-20240801   gcc-13.2.0
arm                   randconfig-002-20240801   gcc-13.2.0
arm                   randconfig-003-20240801   gcc-13.2.0
arm                   randconfig-004-20240801   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240801   gcc-13.2.0
arm64                 randconfig-002-20240801   gcc-13.2.0
arm64                 randconfig-003-20240801   gcc-13.2.0
arm64                 randconfig-004-20240801   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240801   gcc-13.2.0
csky                  randconfig-002-20240801   gcc-13.2.0
hexagon                           allnoconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240801   gcc-9
i386         buildonly-randconfig-002-20240801   clang-18
i386         buildonly-randconfig-002-20240801   gcc-9
i386         buildonly-randconfig-003-20240801   gcc-7
i386         buildonly-randconfig-003-20240801   gcc-9
i386         buildonly-randconfig-004-20240801   clang-18
i386         buildonly-randconfig-004-20240801   gcc-9
i386         buildonly-randconfig-005-20240801   clang-18
i386         buildonly-randconfig-005-20240801   gcc-9
i386         buildonly-randconfig-006-20240801   clang-18
i386         buildonly-randconfig-006-20240801   gcc-9
i386                                defconfig   clang-18
i386                  randconfig-001-20240801   gcc-13
i386                  randconfig-001-20240801   gcc-9
i386                  randconfig-002-20240801   clang-18
i386                  randconfig-002-20240801   gcc-9
i386                  randconfig-003-20240801   clang-18
i386                  randconfig-003-20240801   gcc-9
i386                  randconfig-004-20240801   clang-18
i386                  randconfig-004-20240801   gcc-9
i386                  randconfig-005-20240801   gcc-13
i386                  randconfig-005-20240801   gcc-9
i386                  randconfig-006-20240801   gcc-13
i386                  randconfig-006-20240801   gcc-9
i386                  randconfig-011-20240801   gcc-13
i386                  randconfig-011-20240801   gcc-9
i386                  randconfig-012-20240801   clang-18
i386                  randconfig-012-20240801   gcc-9
i386                  randconfig-013-20240801   gcc-13
i386                  randconfig-013-20240801   gcc-9
i386                  randconfig-014-20240801   gcc-13
i386                  randconfig-014-20240801   gcc-9
i386                  randconfig-015-20240801   gcc-12
i386                  randconfig-015-20240801   gcc-9
i386                  randconfig-016-20240801   clang-18
i386                  randconfig-016-20240801   gcc-9
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240801   gcc-13.2.0
loongarch             randconfig-002-20240801   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-13.3.0
m68k                        stmark2_defconfig   gcc-13.3.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm63xx_defconfig   gcc-13.3.0
mips                      maltaaprp_defconfig   gcc-13.3.0
mips                           mtx1_defconfig   gcc-13.3.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240801   gcc-13.2.0
nios2                 randconfig-002-20240801   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240801   gcc-13.2.0
parisc                randconfig-002-20240801   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                        fsp2_defconfig   gcc-13.3.0
powerpc                     kmeter1_defconfig   gcc-13.3.0
powerpc               mpc834x_itxgp_defconfig   gcc-13.3.0
powerpc               randconfig-001-20240801   gcc-13.2.0
powerpc               randconfig-002-20240801   gcc-13.2.0
powerpc               randconfig-003-20240801   gcc-13.2.0
powerpc64             randconfig-001-20240801   gcc-13.2.0
powerpc64             randconfig-002-20240801   gcc-13.2.0
powerpc64             randconfig-003-20240801   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240801   gcc-13.2.0
riscv                 randconfig-002-20240801   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240801   gcc-13.2.0
s390                  randconfig-002-20240801   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                            hp6xx_defconfig   gcc-13.3.0
sh                    randconfig-001-20240801   gcc-13.2.0
sh                    randconfig-002-20240801   gcc-13.2.0
sh                   rts7751r2dplus_defconfig   gcc-13.3.0
sh                     sh7710voipgw_defconfig   gcc-13.3.0
sh                   sh7770_generic_defconfig   gcc-13.3.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240801   gcc-13.2.0
sparc64               randconfig-002-20240801   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-20
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-13
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240801   gcc-13.2.0
um                    randconfig-002-20240801   gcc-13.2.0
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                           alldefconfig   gcc-13.3.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240801   clang-18
x86_64       buildonly-randconfig-002-20240801   clang-18
x86_64       buildonly-randconfig-003-20240801   clang-18
x86_64       buildonly-randconfig-004-20240801   clang-18
x86_64       buildonly-randconfig-004-20240801   gcc-11
x86_64       buildonly-randconfig-005-20240801   clang-18
x86_64       buildonly-randconfig-006-20240801   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240801   clang-18
x86_64                randconfig-001-20240801   gcc-13
x86_64                randconfig-002-20240801   clang-18
x86_64                randconfig-002-20240801   gcc-8
x86_64                randconfig-003-20240801   clang-18
x86_64                randconfig-004-20240801   clang-18
x86_64                randconfig-004-20240801   gcc-8
x86_64                randconfig-005-20240801   clang-18
x86_64                randconfig-005-20240801   gcc-13
x86_64                randconfig-006-20240801   clang-18
x86_64                randconfig-006-20240801   gcc-13
x86_64                randconfig-011-20240801   clang-18
x86_64                randconfig-012-20240801   clang-18
x86_64                randconfig-012-20240801   gcc-13
x86_64                randconfig-013-20240801   clang-18
x86_64                randconfig-014-20240801   clang-18
x86_64                randconfig-015-20240801   clang-18
x86_64                randconfig-016-20240801   clang-18
x86_64                randconfig-016-20240801   gcc-13
x86_64                randconfig-071-20240801   clang-18
x86_64                randconfig-072-20240801   clang-18
x86_64                randconfig-073-20240801   clang-18
x86_64                randconfig-074-20240801   clang-18
x86_64                randconfig-075-20240801   clang-18
x86_64                randconfig-075-20240801   gcc-13
x86_64                randconfig-076-20240801   clang-18
x86_64                randconfig-076-20240801   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240801   gcc-13.2.0
xtensa                randconfig-002-20240801   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
