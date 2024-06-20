Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 823FD911327
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2024 22:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3F76844AF;
	Thu, 20 Jun 2024 20:28:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fyRkU1A_zByF; Thu, 20 Jun 2024 20:28:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71C9A845EB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71C9A845EB;
	Thu, 20 Jun 2024 20:28:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC3F11BF83B
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2024 20:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA0E5607C1
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2024 20:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bzq-WkLJZqTt for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2024 20:28:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C3C76607A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3C76607A1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3C76607A1
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2024 20:28:25 +0000 (UTC)
X-CSE-ConnectionGUID: GRgf5pwKSa24gb5vTEyonQ==
X-CSE-MsgGUID: X/sM+9fLTEipvhloVTI1ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="12169594"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="12169594"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 13:28:25 -0700
X-CSE-ConnectionGUID: JioBzPkTQ0qBeqXm/4UMrQ==
X-CSE-MsgGUID: alt01C9UQuaB4d8vTPEtkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="42450248"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 20 Jun 2024 13:28:24 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sKOOM-0007vK-1I;
 Thu, 20 Jun 2024 20:28:22 +0000
Date: Fri, 21 Jun 2024 04:27:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 274fdcea9b57046d9865b7494542cc7bea1fd3d2
Message-ID: <202406210430.p3quv3Qf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718915307; x=1750451307;
 h=date:from:to:cc:subject:message-id;
 bh=gWAYkFaTb7drimbxGzHxT4L2YV1uLrdLTwUdfjP8Zyo=;
 b=Evh+07QWDURRobCIlIcaB8Qw96/sLGhNnw5QaSQ//cEUmLXn45m9iDfs
 IKjkHCQLg5xO+Eckz1CRB97Z8G8FviDX9BGI2dKw1ar5zhYPm0S0EfOKl
 0Es/BCSc2kQ8i2awTyeFL7BGR61PhxlaQinMW7qO1ZunuceI76U4w3MzA
 Y5y2Ew6gNvFVPX4EIucpgXimPc3JN+SG68hMmPrVqq2lnaeKtDdvyFmmR
 FBoOXb0ruk1YX3V2bCbOAOrD5bVokQx6RhvR0PNjwmG7iXg1raOJoLb2u
 RQWpFpuobrXS4XDq5ipzRaV/UAnN4Zc/8W5a5Ia30Gevbs6wrEpGyqinv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Evh+07QW
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
branch HEAD: 274fdcea9b57046d9865b7494542cc7bea1fd3d2  make a bunch of struct bus_type const.

elapsed time: 3301m

configs tested: 100
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                   randconfig-001-20240619   gcc-13.2.0
arc                   randconfig-002-20240619   gcc-13.2.0
arm                   randconfig-001-20240619   clang-19
arm                   randconfig-002-20240619   clang-19
arm                   randconfig-003-20240619   clang-19
arm                   randconfig-004-20240619   gcc-13.2.0
arm64                 randconfig-001-20240619   clang-19
arm64                 randconfig-002-20240619   clang-19
arm64                 randconfig-003-20240619   clang-19
arm64                 randconfig-004-20240619   clang-19
csky                  randconfig-001-20240619   gcc-13.2.0
csky                  randconfig-002-20240619   gcc-13.2.0
hexagon               randconfig-001-20240619   clang-15
hexagon               randconfig-002-20240619   clang-19
i386         buildonly-randconfig-001-20240619   clang-18
i386         buildonly-randconfig-002-20240619   clang-18
i386         buildonly-randconfig-003-20240619   clang-18
i386         buildonly-randconfig-004-20240619   clang-18
i386         buildonly-randconfig-005-20240619   gcc-7
i386         buildonly-randconfig-006-20240619   gcc-7
i386                  randconfig-001-20240619   gcc-7
i386                  randconfig-002-20240619   gcc-7
i386                  randconfig-003-20240619   clang-18
i386                  randconfig-004-20240619   gcc-7
i386                  randconfig-005-20240619   clang-18
i386                  randconfig-006-20240619   gcc-9
i386                  randconfig-011-20240619   clang-18
i386                  randconfig-012-20240619   clang-18
i386                  randconfig-013-20240619   gcc-13
i386                  randconfig-014-20240619   clang-18
i386                  randconfig-015-20240619   clang-18
i386                  randconfig-016-20240619   gcc-13
loongarch             randconfig-001-20240619   gcc-13.2.0
loongarch             randconfig-002-20240619   gcc-13.2.0
nios2                 randconfig-001-20240619   gcc-13.2.0
nios2                 randconfig-002-20240619   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240619   gcc-13.2.0
parisc                randconfig-002-20240619   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-001-20240619   gcc-13.2.0
powerpc               randconfig-002-20240619   clang-15
powerpc               randconfig-003-20240619   gcc-13.2.0
powerpc64             randconfig-001-20240619   gcc-13.2.0
powerpc64             randconfig-002-20240619   gcc-13.2.0
powerpc64             randconfig-003-20240619   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240619   clang-15
riscv                 randconfig-002-20240619   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
s390                  randconfig-001-20240619   clang-19
s390                  randconfig-002-20240619   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                    randconfig-001-20240619   gcc-13.2.0
sh                    randconfig-002-20240619   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240619   gcc-13.2.0
sparc64               randconfig-002-20240619   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240619   clang-19
um                    randconfig-002-20240619   clang-19
um                           x86_64_defconfig   clang-15
x86_64       buildonly-randconfig-001-20240619   clang-18
x86_64       buildonly-randconfig-002-20240619   clang-18
x86_64       buildonly-randconfig-003-20240619   gcc-11
x86_64       buildonly-randconfig-004-20240619   clang-18
x86_64       buildonly-randconfig-005-20240619   clang-18
x86_64       buildonly-randconfig-006-20240619   gcc-13
x86_64                randconfig-001-20240619   gcc-13
x86_64                randconfig-002-20240619   clang-18
x86_64                randconfig-003-20240619   gcc-8
x86_64                randconfig-004-20240619   clang-18
x86_64                randconfig-005-20240619   clang-18
x86_64                randconfig-006-20240619   gcc-13
x86_64                randconfig-011-20240619   gcc-13
x86_64                randconfig-012-20240619   gcc-13
x86_64                randconfig-013-20240619   gcc-13
x86_64                randconfig-014-20240619   clang-18
x86_64                randconfig-015-20240619   clang-18
x86_64                randconfig-016-20240619   gcc-11
x86_64                randconfig-071-20240619   clang-18
x86_64                randconfig-072-20240619   clang-18
x86_64                randconfig-073-20240619   gcc-9
x86_64                randconfig-074-20240619   gcc-9
x86_64                randconfig-075-20240619   clang-18
x86_64                randconfig-076-20240619   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240619   gcc-13.2.0
xtensa                randconfig-002-20240619   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
