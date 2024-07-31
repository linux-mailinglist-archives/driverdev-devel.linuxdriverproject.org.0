Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 899C094247E
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2024 04:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A87C8136A;
	Wed, 31 Jul 2024 02:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5gt3gksUGbVa; Wed, 31 Jul 2024 02:24:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED93A8136E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED93A8136E;
	Wed, 31 Jul 2024 02:24:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24DED1BF309
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2024 02:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1292540243
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2024 02:24:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PceIRLJqQnqB for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2024 02:24:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DA0440141
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DA0440141
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DA0440141
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2024 02:24:12 +0000 (UTC)
X-CSE-ConnectionGUID: Kb9y3lg+TFS20FApLYEYEw==
X-CSE-MsgGUID: a5f0SDcnSC+nI/VarhQlSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="31637536"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="31637536"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 19:24:11 -0700
X-CSE-ConnectionGUID: Jeviq/ZKQ/+gDhmnFK5j2g==
X-CSE-MsgGUID: pmB4YMNzRdCmVOrD3vGgxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="54409798"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 30 Jul 2024 19:24:09 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sYz0Z-000tdp-2D;
 Wed, 31 Jul 2024 02:24:07 +0000
Date: Wed, 31 Jul 2024 10:23:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 2501b491993f3165fbd01c09fb553113b934b211
Message-ID: <202407311056.AeG4dIX9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722392653; x=1753928653;
 h=date:from:to:cc:subject:message-id;
 bh=0w9vYmPdQT/Od5Z05eHfsmV3pnSea/aWg2Rb56lhxjw=;
 b=Z2rPeBNxtE8rvifdy+nPO5RAw1qpGFIUPB/ZXW4NoJaqzsZt21NJQlG6
 hXntGRvPyYwp88EgVyobA+n7LFkSKFRPtCNQxFJAixl1dMMvR3gSmTa48
 d9lYiCB/IBMiwbXRihgD2HqLsvI1WyQMYThW6GmobzsYPWJnMo6ZvLqrR
 2QKP75NNff0Imf8rV8pUs9LOcNqWq8n09YJoAmFrwwmUSQ2WcYqZntcM0
 3h8LjpEPk7wAwKSm+di612srqLTpL0FrK2Gd5cJ+qR2/go03YO6AElnyR
 ocyJxmRzK71N2xsb9K+KPm8NDLWRMEcUHMYAJOzPbsbCZe8os+CXbyY1b
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z2rPeBNx
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
branch HEAD: 2501b491993f3165fbd01c09fb553113b934b211  staging: rtl8712: Fix move '{' to previous line

elapsed time: 1135m

configs tested: 239
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240730   gcc-13.2.0
arc                   randconfig-001-20240731   gcc-13.2.0
arc                   randconfig-002-20240730   gcc-13.2.0
arc                   randconfig-002-20240731   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                     am200epdkit_defconfig   gcc-14.1.0
arm                       aspeed_g4_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                          moxart_defconfig   gcc-14.1.0
arm                       netwinder_defconfig   gcc-14.1.0
arm                   randconfig-001-20240730   gcc-13.2.0
arm                   randconfig-001-20240731   gcc-13.2.0
arm                   randconfig-002-20240730   gcc-13.2.0
arm                   randconfig-002-20240731   gcc-13.2.0
arm                   randconfig-003-20240730   gcc-13.2.0
arm                   randconfig-003-20240731   gcc-13.2.0
arm                   randconfig-004-20240730   gcc-13.2.0
arm                   randconfig-004-20240731   gcc-13.2.0
arm                        shmobile_defconfig   gcc-14.1.0
arm                           tegra_defconfig   gcc-14.1.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240730   gcc-13.2.0
arm64                 randconfig-001-20240731   gcc-13.2.0
arm64                 randconfig-002-20240730   gcc-13.2.0
arm64                 randconfig-002-20240731   gcc-13.2.0
arm64                 randconfig-003-20240730   gcc-13.2.0
arm64                 randconfig-003-20240731   gcc-13.2.0
arm64                 randconfig-004-20240730   gcc-13.2.0
arm64                 randconfig-004-20240731   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240730   gcc-13.2.0
csky                  randconfig-001-20240731   gcc-13.2.0
csky                  randconfig-002-20240730   gcc-13.2.0
csky                  randconfig-002-20240731   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240730   gcc-13
i386         buildonly-randconfig-001-20240731   clang-18
i386         buildonly-randconfig-002-20240730   gcc-13
i386         buildonly-randconfig-002-20240731   clang-18
i386         buildonly-randconfig-003-20240730   gcc-13
i386         buildonly-randconfig-003-20240731   clang-18
i386         buildonly-randconfig-004-20240730   gcc-13
i386         buildonly-randconfig-004-20240731   clang-18
i386         buildonly-randconfig-005-20240730   gcc-13
i386         buildonly-randconfig-005-20240731   clang-18
i386         buildonly-randconfig-006-20240730   gcc-13
i386         buildonly-randconfig-006-20240731   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240730   gcc-13
i386                  randconfig-001-20240731   clang-18
i386                  randconfig-002-20240730   gcc-13
i386                  randconfig-002-20240731   clang-18
i386                  randconfig-003-20240730   gcc-13
i386                  randconfig-003-20240731   clang-18
i386                  randconfig-004-20240730   gcc-13
i386                  randconfig-004-20240731   clang-18
i386                  randconfig-005-20240730   gcc-13
i386                  randconfig-005-20240731   clang-18
i386                  randconfig-006-20240730   gcc-13
i386                  randconfig-006-20240731   clang-18
i386                  randconfig-011-20240730   gcc-13
i386                  randconfig-011-20240731   clang-18
i386                  randconfig-012-20240730   gcc-13
i386                  randconfig-012-20240731   clang-18
i386                  randconfig-013-20240730   gcc-13
i386                  randconfig-013-20240731   clang-18
i386                  randconfig-014-20240730   gcc-13
i386                  randconfig-014-20240731   clang-18
i386                  randconfig-015-20240730   gcc-13
i386                  randconfig-015-20240731   clang-18
i386                  randconfig-016-20240730   gcc-13
i386                  randconfig-016-20240731   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240730   gcc-13.2.0
loongarch             randconfig-001-20240731   gcc-13.2.0
loongarch             randconfig-002-20240730   gcc-13.2.0
loongarch             randconfig-002-20240731   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         amcore_defconfig   gcc-14.1.0
m68k                          amiga_defconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                        m5272c3_defconfig   gcc-14.1.0
m68k                        mvme16x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                       bmips_be_defconfig   gcc-14.1.0
mips                  decstation_64_defconfig   gcc-14.1.0
mips                           ip22_defconfig   gcc-14.1.0
mips                         rt305x_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240730   gcc-13.2.0
nios2                 randconfig-001-20240731   gcc-13.2.0
nios2                 randconfig-002-20240730   gcc-13.2.0
nios2                 randconfig-002-20240731   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240730   gcc-13.2.0
parisc                randconfig-001-20240731   gcc-13.2.0
parisc                randconfig-002-20240730   gcc-13.2.0
parisc                randconfig-002-20240731   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                    adder875_defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                   bluestone_defconfig   gcc-14.1.0
powerpc                          g5_defconfig   gcc-14.1.0
powerpc                   lite5200b_defconfig   gcc-14.1.0
powerpc                     mpc5200_defconfig   gcc-14.1.0
powerpc                     mpc83xx_defconfig   gcc-14.1.0
powerpc               randconfig-002-20240730   gcc-13.2.0
powerpc               randconfig-002-20240731   gcc-13.2.0
powerpc               randconfig-003-20240730   gcc-13.2.0
powerpc               randconfig-003-20240731   gcc-13.2.0
powerpc64             randconfig-001-20240730   gcc-13.2.0
powerpc64             randconfig-001-20240731   gcc-13.2.0
powerpc64             randconfig-002-20240730   gcc-13.2.0
powerpc64             randconfig-002-20240731   gcc-13.2.0
powerpc64             randconfig-003-20240730   gcc-13.2.0
powerpc64             randconfig-003-20240731   gcc-13.2.0
riscv                            alldefconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240730   gcc-13.2.0
riscv                 randconfig-001-20240731   gcc-13.2.0
riscv                 randconfig-002-20240730   gcc-13.2.0
riscv                 randconfig-002-20240731   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240730   gcc-13.2.0
s390                  randconfig-001-20240731   gcc-13.2.0
s390                  randconfig-002-20240730   gcc-13.2.0
s390                  randconfig-002-20240731   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                ecovec24-romimage_defconfig   gcc-14.1.0
sh                          landisk_defconfig   gcc-14.1.0
sh                            migor_defconfig   gcc-14.1.0
sh                    randconfig-001-20240730   gcc-13.2.0
sh                    randconfig-001-20240731   gcc-13.2.0
sh                    randconfig-002-20240730   gcc-13.2.0
sh                    randconfig-002-20240731   gcc-13.2.0
sh                          rsk7201_defconfig   gcc-14.1.0
sh                   rts7751r2dplus_defconfig   gcc-14.1.0
sh                           se7712_defconfig   gcc-14.1.0
sh                  sh7785lcr_32bit_defconfig   gcc-14.1.0
sh                            shmin_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240730   gcc-13.2.0
sparc64               randconfig-001-20240731   gcc-13.2.0
sparc64               randconfig-002-20240730   gcc-13.2.0
sparc64               randconfig-002-20240731   gcc-13.2.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240730   gcc-13.2.0
um                    randconfig-001-20240731   gcc-13.2.0
um                    randconfig-002-20240730   gcc-13.2.0
um                    randconfig-002-20240731   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240730   clang-18
x86_64       buildonly-randconfig-002-20240730   clang-18
x86_64       buildonly-randconfig-003-20240730   clang-18
x86_64       buildonly-randconfig-004-20240730   clang-18
x86_64       buildonly-randconfig-005-20240730   clang-18
x86_64       buildonly-randconfig-006-20240730   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240730   clang-18
x86_64                randconfig-002-20240730   clang-18
x86_64                randconfig-003-20240730   clang-18
x86_64                randconfig-004-20240730   clang-18
x86_64                randconfig-005-20240730   clang-18
x86_64                randconfig-006-20240730   clang-18
x86_64                randconfig-011-20240730   clang-18
x86_64                randconfig-012-20240730   clang-18
x86_64                randconfig-013-20240730   clang-18
x86_64                randconfig-014-20240730   clang-18
x86_64                randconfig-015-20240730   clang-18
x86_64                randconfig-016-20240730   clang-18
x86_64                randconfig-071-20240730   clang-18
x86_64                randconfig-072-20240730   clang-18
x86_64                randconfig-073-20240730   clang-18
x86_64                randconfig-074-20240730   clang-18
x86_64                randconfig-075-20240730   clang-18
x86_64                randconfig-076-20240730   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                  nommu_kc705_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240730   gcc-13.2.0
xtensa                randconfig-001-20240731   gcc-13.2.0
xtensa                randconfig-002-20240730   gcc-13.2.0
xtensa                randconfig-002-20240731   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
