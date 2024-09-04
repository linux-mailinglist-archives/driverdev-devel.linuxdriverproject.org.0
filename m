Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A22596CAD1
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2024 01:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9AE74034A;
	Wed,  4 Sep 2024 23:33:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WbOqex4YCaZx; Wed,  4 Sep 2024 23:33:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 490ED4040A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 490ED4040A;
	Wed,  4 Sep 2024 23:33:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30CEE1BF299
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2024 23:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D332404EB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2024 23:33:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xzTDk3qQ6xUs for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2024 23:33:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B371E404CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B371E404CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B371E404CB
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2024 23:33:52 +0000 (UTC)
X-CSE-ConnectionGUID: KYAa2OyuSy+PUny+kVaqfg==
X-CSE-MsgGUID: BTo0aWTiRC6q126NM5w1kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24376972"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="24376972"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 16:33:52 -0700
X-CSE-ConnectionGUID: vvYBefrrS3KBac4Du+V5mw==
X-CSE-MsgGUID: oxYBWDT3QDC6F+aRFsihMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65082932"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 04 Sep 2024 16:33:51 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slzVU-0008h5-1g;
 Wed, 04 Sep 2024 23:33:48 +0000
Date: Thu, 05 Sep 2024 07:33:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 5da7245c3a34885b2221c9714dce19246a13230a
Message-ID: <202409050733.d1o8mIM5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725492833; x=1757028833;
 h=date:from:to:cc:subject:message-id;
 bh=AUet++obyomshmXbRJhIPvBv36XxoZvqm1huIJzq9rM=;
 b=P1yRjDJfFkTeaX5AkEElT8GaXr/mQL0pgN9DDFoPI79sn2Efejo43pWu
 gbxkDiG+YoTyKKUlh5AtrOaketd6JrWqQ9JZzBShDD9N+CQsedxCGsMNa
 YjlwHfuvuhNelZ3u5EUP1Rdy5UCmTo1vwfEA3/WI7tCoIMRHSMTU7M/2Y
 J3yJrAEDtZuLzw0rniAjRhGucxHWefIXKEcS+tA/MJyrZlcMsPvq64uYV
 Of28WnpRlFXVbyI7OyrieY6t9LSkGWhlXBZn9uEJmVvp63Z5HkSnF6NDZ
 5dUfAESG5BbQWYie7aE+6Rgn9saUX//EHFla7aa8WVHkVCjaLBz1rcAqP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P1yRjDJf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 5da7245c3a34885b2221c9714dce19246a13230a  make a bunch of struct bus_type const.

elapsed time: 2063m

configs tested: 117
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-14.1.0
arc                               allnoconfig   gcc-14.1.0
arc                                 defconfig   gcc-14.1.0
arm                               allnoconfig   gcc-14.1.0
arm                                 defconfig   gcc-14.1.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240904   clang-18
i386         buildonly-randconfig-002-20240904   gcc-12
i386         buildonly-randconfig-003-20240904   clang-18
i386         buildonly-randconfig-004-20240904   clang-18
i386         buildonly-randconfig-005-20240904   clang-18
i386         buildonly-randconfig-006-20240904   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240904   clang-18
i386                  randconfig-002-20240904   clang-18
i386                  randconfig-003-20240904   clang-18
i386                  randconfig-004-20240904   clang-18
i386                  randconfig-005-20240904   gcc-12
i386                  randconfig-006-20240904   gcc-12
i386                  randconfig-011-20240904   clang-18
i386                  randconfig-012-20240904   clang-18
i386                  randconfig-013-20240904   gcc-12
i386                  randconfig-014-20240904   clang-18
i386                  randconfig-015-20240904   clang-18
i386                  randconfig-016-20240904   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                            allnoconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                           allnoconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
s390                             allmodconfig   clang-20
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                               allyesconfig   gcc-12
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240905   gcc-12
x86_64       buildonly-randconfig-002-20240905   gcc-12
x86_64       buildonly-randconfig-003-20240905   gcc-12
x86_64       buildonly-randconfig-004-20240905   gcc-12
x86_64       buildonly-randconfig-005-20240905   gcc-12
x86_64       buildonly-randconfig-006-20240905   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240905   gcc-12
x86_64                randconfig-002-20240905   gcc-12
x86_64                randconfig-003-20240905   gcc-12
x86_64                randconfig-004-20240905   gcc-12
x86_64                randconfig-005-20240905   gcc-12
x86_64                randconfig-006-20240905   gcc-12
x86_64                randconfig-011-20240905   gcc-12
x86_64                randconfig-012-20240905   gcc-12
x86_64                randconfig-013-20240905   gcc-12
x86_64                randconfig-014-20240905   gcc-12
x86_64                randconfig-015-20240905   gcc-12
x86_64                randconfig-016-20240905   gcc-12
x86_64                randconfig-071-20240905   gcc-12
x86_64                randconfig-072-20240905   gcc-12
x86_64                randconfig-073-20240905   gcc-12
x86_64                randconfig-074-20240905   gcc-12
x86_64                randconfig-075-20240905   gcc-12
x86_64                randconfig-076-20240905   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
