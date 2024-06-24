Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 523EB915636
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2024 20:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B86F181EF8;
	Mon, 24 Jun 2024 18:08:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ztFqCitkE6mO; Mon, 24 Jun 2024 18:08:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD73981EF9
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD73981EF9;
	Mon, 24 Jun 2024 18:08:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48A8C1BF356
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 18:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FF85408A2
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 18:08:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LWwoGyXzLFum for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2024 18:08:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F0004089D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F0004089D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F0004089D
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2024 18:08:22 +0000 (UTC)
X-CSE-ConnectionGUID: cxxxlootSoqYTj8fOfT9jA==
X-CSE-MsgGUID: dOCeK5PfQKuti0bHN+m3ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16370775"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16370775"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 11:08:23 -0700
X-CSE-ConnectionGUID: uVcSXMRtQtqI76NSDt/GRg==
X-CSE-MsgGUID: wFmAlaTjSHG5wr4FIDzLZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="74599212"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 24 Jun 2024 11:08:21 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sLo71-000Dby-0l;
 Mon, 24 Jun 2024 18:08:19 +0000
Date: Tue, 25 Jun 2024 02:07:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 6b521fc111a2ad5ead39776960d3d2d289ce0722
Message-ID: <202406250257.5y5jlvB7-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719252504; x=1750788504;
 h=date:from:to:cc:subject:message-id;
 bh=nrwBBIXo7ccvivghUWMK3H+TvT4z/6Edfott5/JGlrg=;
 b=iRvPx4pmcGkH53T5K7yZAnj7AHsehQzKtV7O8L25skkicsudc7bRSDjy
 PH/C6X1ejrdm2G3XYuXW3DQxK4rmjxUyu8ilmFx9LRLgJBNQXRO7NyLCG
 cfQjnJKHSrS+I57VWoCh9I9/jnMRL0SYZIvJDYW7oPI657NUuEFRsr9Hl
 /LSDU8EykGfurmh2a8YBM72kuN+OT5AOe/yxRqDKU9vNRl/ufUT1DFRJT
 8msnxXmyE7SUKncQ3x9pJgXwIcIYyGZFDZVnqA27BQuTg1tsZKdFr9tWI
 u6ckc04d5bFwWPKOi8byYO3DsFU06GUqvxhzo2P+vYZf4JKBUL2wHmGfI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iRvPx4pm
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
branch HEAD: 6b521fc111a2ad5ead39776960d3d2d289ce0722  MAINTAINERS: add Rust device abstractions to DRIVER CORE

elapsed time: 5973m

configs tested: 82
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240625   gcc-13.2.0
arc                   randconfig-002-20240625   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                          exynos_defconfig   clang-17
arm                   randconfig-001-20240625   clang-15
arm                   randconfig-002-20240625   clang-19
arm                   randconfig-003-20240625   gcc-13.2.0
arm                   randconfig-004-20240625   gcc-13.2.0
arm                       versatile_defconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
i386         buildonly-randconfig-001-20240624   gcc-8
i386         buildonly-randconfig-002-20240624   gcc-13
i386         buildonly-randconfig-003-20240624   clang-18
i386         buildonly-randconfig-004-20240624   gcc-10
i386         buildonly-randconfig-005-20240624   clang-18
i386         buildonly-randconfig-006-20240624   clang-18
i386                  randconfig-001-20240624   clang-18
i386                  randconfig-002-20240624   clang-18
i386                  randconfig-003-20240624   gcc-13
i386                  randconfig-004-20240624   gcc-13
i386                  randconfig-005-20240624   gcc-13
i386                  randconfig-006-20240624   clang-18
i386                  randconfig-011-20240624   clang-18
i386                  randconfig-012-20240624   clang-18
loongarch                         allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                       bvme6000_defconfig   gcc-13.2.0
m68k                          multi_defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                     cu1830-neo_defconfig   gcc-13.2.0
mips                  decstation_64_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
openrisc                         alldefconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                generic-64bit_defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                      arches_defconfig   gcc-13.2.0
powerpc                   currituck_defconfig   clang-19
powerpc                     ksi8560_defconfig   gcc-13.2.0
powerpc                    sam440ep_defconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                           se7722_defconfig   gcc-13.2.0
sh                            titan_defconfig   gcc-13.2.0
sh                              ul2_defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64       buildonly-randconfig-001-20240624   gcc-13
x86_64       buildonly-randconfig-002-20240624   gcc-13
x86_64       buildonly-randconfig-003-20240624   clang-18
x86_64       buildonly-randconfig-004-20240624   clang-18
x86_64       buildonly-randconfig-005-20240624   clang-18
x86_64       buildonly-randconfig-006-20240624   clang-18
x86_64                randconfig-001-20240624   clang-18
x86_64                randconfig-002-20240624   clang-18
x86_64                randconfig-003-20240624   clang-18
x86_64                randconfig-004-20240624   clang-18
x86_64                randconfig-005-20240624   gcc-11
x86_64                randconfig-006-20240624   gcc-13
x86_64                randconfig-011-20240624   clang-18
x86_64                randconfig-012-20240624   gcc-8
x86_64                randconfig-013-20240624   clang-18
x86_64                randconfig-014-20240624   gcc-8
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
