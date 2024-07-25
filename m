Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E756693C9AA
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2024 22:37:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A394881E81;
	Thu, 25 Jul 2024 20:37:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O21SKu6Xhk4G; Thu, 25 Jul 2024 20:37:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 346D781E01
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 346D781E01;
	Thu, 25 Jul 2024 20:37:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60C051BF23B
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2024 20:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F96E40195
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2024 20:37:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3mNI4PV7Q7QM for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2024 20:37:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 09F5640175
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09F5640175
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09F5640175
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2024 20:37:22 +0000 (UTC)
X-CSE-ConnectionGUID: oXovvYApQXGxr0oCSQI0mg==
X-CSE-MsgGUID: fU0f/hRKQZe5x3LegjSa9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19586385"
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="19586385"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 13:37:22 -0700
X-CSE-ConnectionGUID: gp/0Qm/bSb+OlGQB9vNGzw==
X-CSE-MsgGUID: 08hYoRNhS3mT4vYMbWgkqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="84023135"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 25 Jul 2024 13:37:22 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sX5DD-000oRC-1X;
 Thu, 25 Jul 2024 20:37:19 +0000
Date: Fri, 26 Jul 2024 04:36:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 36440689339703f14092f6f5d788fd70f1bb8a62
Message-ID: <202407260419.8VQHrDjF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721939843; x=1753475843;
 h=date:from:to:cc:subject:message-id;
 bh=gac3GULwaPF6K3VWVpzmzCLilHndMkB/R7fMQ+vA6EA=;
 b=U+lOQllT4FPykHxvGEfnwlCuzJg8Jn7W8W/VCt6XOXDsL5Y00vHGfW81
 cneQ5w9BvSPVXhF+M5ZwJPhpiCHab7QFcRmXzlxUS9O6l/5D0mDZThyyR
 mUQG4zXd7wEby3SAHUtxkKR95oaluCNzuo7BM6OPDRWnCegzn3x/4QX1K
 kztUL6AiexlrZe91Z1a/qzxugQrxY3f0bCjZL7ZFKOLtQoq8kxBOcffjw
 aUhZk9/zx+aZWkQWOl9Hdt/D9nzk+bq0jtN9nTl24RoYss70mS0y3xDZg
 vd9pBjAgRlP2WB2PoMvBukQhHC1YzT6TNtRUIlzikFT3DnbKMxDcVSVSd
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U+lOQllT
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
branch HEAD: 36440689339703f14092f6f5d788fd70f1bb8a62  staging: rtl8712: style fix multiple line dereference

elapsed time: 725m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240725   gcc-13.2.0
arc                   randconfig-002-20240725   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                        clps711x_defconfig   clang-20
arm                   randconfig-001-20240725   clang-20
arm                   randconfig-002-20240725   clang-20
arm                   randconfig-003-20240725   clang-17
arm                   randconfig-004-20240725   clang-20
arm                           sunxi_defconfig   gcc-14.1.0
arm                       versatile_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240725   clang-20
arm64                 randconfig-002-20240725   clang-20
arm64                 randconfig-003-20240725   gcc-14.1.0
arm64                 randconfig-004-20240725   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240725   gcc-14.1.0
csky                  randconfig-002-20240725   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240725   clang-20
hexagon               randconfig-002-20240725   clang-20
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240725   gcc-13
i386         buildonly-randconfig-002-20240725   gcc-8
i386         buildonly-randconfig-003-20240725   gcc-13
i386         buildonly-randconfig-004-20240725   gcc-8
i386         buildonly-randconfig-005-20240725   gcc-13
i386         buildonly-randconfig-006-20240725   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240725   gcc-13
i386                  randconfig-002-20240725   gcc-13
i386                  randconfig-003-20240725   gcc-13
i386                  randconfig-004-20240725   gcc-8
i386                  randconfig-005-20240725   clang-18
i386                  randconfig-006-20240725   clang-18
i386                  randconfig-011-20240725   clang-18
i386                  randconfig-012-20240725   gcc-13
i386                  randconfig-013-20240725   clang-18
i386                  randconfig-014-20240725   gcc-13
i386                  randconfig-015-20240725   clang-18
i386                  randconfig-016-20240725   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                 loongson3_defconfig   gcc-14.1.0
loongarch             randconfig-001-20240725   gcc-14.1.0
loongarch             randconfig-002-20240725   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                        m5272c3_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm63xx_defconfig   clang-17
mips                      bmips_stb_defconfig   clang-20
mips                           ip27_defconfig   gcc-14.1.0
nios2                         3c120_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240725   gcc-14.1.0
nios2                 randconfig-002-20240725   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                  or1klitex_defconfig   gcc-14.1.0
openrisc                       virt_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240725   gcc-14.1.0
parisc                randconfig-002-20240725   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc                      katmai_defconfig   clang-20
powerpc               randconfig-002-20240725   clang-20
powerpc               randconfig-003-20240725   gcc-14.1.0
powerpc64             randconfig-001-20240725   gcc-14.1.0
powerpc64             randconfig-002-20240725   gcc-14.1.0
powerpc64             randconfig-003-20240725   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                 randconfig-001-20240725   gcc-14.1.0
riscv                 randconfig-002-20240725   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                  randconfig-001-20240725   clang-20
s390                  randconfig-002-20240725   clang-15
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                    randconfig-001-20240725   gcc-14.1.0
sh                    randconfig-002-20240725   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64               randconfig-001-20240725   gcc-14.1.0
sparc64               randconfig-002-20240725   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                    randconfig-001-20240725   gcc-12
um                    randconfig-002-20240725   clang-20
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240725   clang-18
x86_64       buildonly-randconfig-002-20240725   clang-18
x86_64       buildonly-randconfig-003-20240725   clang-18
x86_64       buildonly-randconfig-004-20240725   clang-18
x86_64       buildonly-randconfig-005-20240725   gcc-13
x86_64       buildonly-randconfig-006-20240725   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240725   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240725   gcc-14.1.0
xtensa                randconfig-002-20240725   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
