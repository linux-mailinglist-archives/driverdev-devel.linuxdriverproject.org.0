Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E9194042C
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2024 04:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 066E0607CB;
	Tue, 30 Jul 2024 02:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlRO-6SHrbFj; Tue, 30 Jul 2024 02:12:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B7FB6080E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B7FB6080E;
	Tue, 30 Jul 2024 02:12:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE1811BF3FD
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2024 02:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA8AC8122D
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2024 02:12:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZPPbYo7_ics for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2024 02:12:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7294B8121E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7294B8121E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7294B8121E
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2024 02:12:17 +0000 (UTC)
X-CSE-ConnectionGUID: QAvc+FfqSdSOF4uvrn6+Pw==
X-CSE-MsgGUID: K47tIQMkSUa4NICllU7nKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="37606777"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="37606777"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 19:12:16 -0700
X-CSE-ConnectionGUID: 7WGxErRrR/OVq7XBdUSi8w==
X-CSE-MsgGUID: Rk+1FGPJSqiiRco2/hbP6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="59251570"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 29 Jul 2024 19:12:15 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sYcLU-000sKX-1W;
 Tue, 30 Jul 2024 02:12:12 +0000
Date: Tue, 30 Jul 2024 10:11:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 1524b01fb16f3b5459d5174b0d0982c2b77254d1
Message-ID: <202407301014.pT3788XT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722305537; x=1753841537;
 h=date:from:to:cc:subject:message-id;
 bh=/NfEKU3Bl4L+vw3sxanjTFlx2jAWVqzKE0/1jV+gZ/0=;
 b=jGKc6g3BAQzJjIx3/HbAluStP3+IWw7IOEksqSNieosFc7DwCAazG2gY
 DB6IXfcJejnh0W5PXwnpapmceEih0Z2aMCALrqYLACx3po9tiluZ2wT3l
 K6LVHylNEJEC5CfzSSQreMG+jh8I/ePcAlkFSIQnl3nKIaStSDMx1ENrf
 tyx1WKaMUBtiBLs/f8mK/oThfIIIlnQTBiHMO6H+/7GQsN74xGUAXFyjV
 uLWv8fXnSTaUWgob4q+7wCfi/7274yatajYi2l6Iw9xo9Szst4DztKyG1
 kNHJ7CidGpBkl83TE+bSXAMwyiMuneZFGLMh5brHbV6p5IaSaWa4wbpVE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jGKc6g3B
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 1524b01fb16f3b5459d5174b0d0982c2b77254d1  staging: rtl8712: style fix multiple line dereference

elapsed time: 1021m

configs tested: 271
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc-13.3.0
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                        nsimosci_defconfig   gcc-13.2.0
arc                     nsimosci_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240729   gcc-13.2.0
arc                   randconfig-002-20240729   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                            dove_defconfig   gcc-13.3.0
arm                      footbridge_defconfig   gcc-13.2.0
arm                            hisi_defconfig   gcc-13.2.0
arm                       imx_v4_v5_defconfig   gcc-13.2.0
arm                      integrator_defconfig   gcc-13.3.0
arm                          ixp4xx_defconfig   gcc-13.2.0
arm                        keystone_defconfig   gcc-13.2.0
arm                         nhk8815_defconfig   gcc-13.3.0
arm                             pxa_defconfig   gcc-13.2.0
arm                   randconfig-001-20240729   gcc-13.2.0
arm                   randconfig-001-20240729   gcc-14.1.0
arm                   randconfig-002-20240729   gcc-13.2.0
arm                   randconfig-002-20240729   gcc-14.1.0
arm                   randconfig-003-20240729   gcc-13.2.0
arm                   randconfig-003-20240729   gcc-14.1.0
arm                   randconfig-004-20240729   clang-20
arm                   randconfig-004-20240729   gcc-13.2.0
arm                        shmobile_defconfig   gcc-13.3.0
arm                       spear13xx_defconfig   gcc-13.3.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240729   clang-17
arm64                 randconfig-001-20240729   gcc-13.2.0
arm64                 randconfig-002-20240729   clang-20
arm64                 randconfig-002-20240729   gcc-13.2.0
arm64                 randconfig-003-20240729   gcc-13.2.0
arm64                 randconfig-003-20240729   gcc-14.1.0
arm64                 randconfig-004-20240729   clang-20
arm64                 randconfig-004-20240729   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240729   gcc-13.2.0
csky                  randconfig-001-20240729   gcc-14.1.0
csky                  randconfig-002-20240729   gcc-13.2.0
csky                  randconfig-002-20240729   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240729   clang-20
hexagon               randconfig-002-20240729   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240729   clang-18
i386         buildonly-randconfig-001-20240730   gcc-13
i386         buildonly-randconfig-002-20240729   clang-18
i386         buildonly-randconfig-002-20240729   gcc-13
i386         buildonly-randconfig-002-20240730   gcc-13
i386         buildonly-randconfig-003-20240729   clang-18
i386         buildonly-randconfig-003-20240730   gcc-13
i386         buildonly-randconfig-004-20240729   clang-18
i386         buildonly-randconfig-004-20240729   gcc-10
i386         buildonly-randconfig-004-20240730   gcc-13
i386         buildonly-randconfig-005-20240729   clang-18
i386         buildonly-randconfig-005-20240730   gcc-13
i386         buildonly-randconfig-006-20240729   clang-18
i386         buildonly-randconfig-006-20240729   gcc-8
i386         buildonly-randconfig-006-20240730   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240729   clang-18
i386                  randconfig-001-20240729   gcc-12
i386                  randconfig-001-20240730   gcc-13
i386                  randconfig-002-20240729   clang-18
i386                  randconfig-002-20240730   gcc-13
i386                  randconfig-003-20240729   clang-18
i386                  randconfig-003-20240729   gcc-10
i386                  randconfig-003-20240730   gcc-13
i386                  randconfig-004-20240729   clang-18
i386                  randconfig-004-20240729   gcc-13
i386                  randconfig-004-20240730   gcc-13
i386                  randconfig-005-20240729   clang-18
i386                  randconfig-005-20240729   gcc-8
i386                  randconfig-005-20240730   gcc-13
i386                  randconfig-006-20240729   clang-18
i386                  randconfig-006-20240729   gcc-13
i386                  randconfig-006-20240730   gcc-13
i386                  randconfig-011-20240729   clang-18
i386                  randconfig-011-20240729   gcc-13
i386                  randconfig-011-20240730   gcc-13
i386                  randconfig-012-20240729   clang-18
i386                  randconfig-012-20240730   gcc-13
i386                  randconfig-013-20240729   clang-18
i386                  randconfig-013-20240729   gcc-9
i386                  randconfig-013-20240730   gcc-13
i386                  randconfig-014-20240729   clang-18
i386                  randconfig-014-20240730   gcc-13
i386                  randconfig-015-20240729   clang-18
i386                  randconfig-015-20240729   gcc-13
i386                  randconfig-015-20240730   gcc-13
i386                  randconfig-016-20240729   clang-18
i386                  randconfig-016-20240730   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240729   gcc-13.2.0
loongarch             randconfig-001-20240729   gcc-14.1.0
loongarch             randconfig-002-20240729   gcc-13.2.0
loongarch             randconfig-002-20240729   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-13.2.0
m68k                            mac_defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                     cu1000-neo_defconfig   gcc-13.2.0
mips                           gcw0_defconfig   gcc-13.2.0
mips                            gpr_defconfig   gcc-13.2.0
mips                      malta_kvm_defconfig   gcc-13.2.0
mips                      maltaaprp_defconfig   gcc-13.2.0
mips                        qi_lb60_defconfig   gcc-13.3.0
mips                           xway_defconfig   gcc-13.2.0
nios2                         10m50_defconfig   gcc-13.3.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240729   gcc-13.2.0
nios2                 randconfig-001-20240729   gcc-14.1.0
nios2                 randconfig-002-20240729   gcc-13.2.0
nios2                 randconfig-002-20240729   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-64bit_defconfig   gcc-13.2.0
parisc                generic-64bit_defconfig   gcc-13.3.0
parisc                randconfig-001-20240729   gcc-13.2.0
parisc                randconfig-001-20240729   gcc-14.1.0
parisc                randconfig-002-20240729   gcc-13.2.0
parisc                randconfig-002-20240729   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                 canyonlands_defconfig   gcc-13.2.0
powerpc                       eiger_defconfig   gcc-13.3.0
powerpc                      katmai_defconfig   gcc-13.2.0
powerpc                 mpc8313_rdb_defconfig   gcc-13.2.0
powerpc                 mpc8315_rdb_defconfig   gcc-13.2.0
powerpc                 mpc834x_itx_defconfig   gcc-13.3.0
powerpc                     ppa8548_defconfig   gcc-13.2.0
powerpc                     rainier_defconfig   gcc-13.3.0
powerpc               randconfig-001-20240729   gcc-14.1.0
powerpc               randconfig-002-20240729   gcc-14.1.0
powerpc               randconfig-003-20240729   clang-20
powerpc                    sam440ep_defconfig   gcc-13.2.0
powerpc                     tqm5200_defconfig   gcc-13.3.0
powerpc                     tqm8541_defconfig   gcc-13.3.0
powerpc                     tqm8548_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240729   gcc-13.2.0
powerpc64             randconfig-001-20240729   gcc-14.1.0
powerpc64             randconfig-002-20240729   gcc-13.2.0
powerpc64             randconfig-002-20240729   gcc-14.1.0
powerpc64             randconfig-003-20240729   gcc-13.2.0
powerpc64             randconfig-003-20240729   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240729   clang-16
riscv                 randconfig-001-20240729   gcc-13.2.0
riscv                 randconfig-002-20240729   clang-20
riscv                 randconfig-002-20240729   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240729   clang-20
s390                  randconfig-001-20240729   gcc-13.2.0
s390                  randconfig-002-20240729   gcc-13.2.0
s390                  randconfig-002-20240729   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                             espt_defconfig   gcc-13.2.0
sh                               j2_defconfig   gcc-13.2.0
sh                          polaris_defconfig   gcc-13.2.0
sh                          r7780mp_defconfig   gcc-13.2.0
sh                    randconfig-001-20240729   gcc-13.2.0
sh                    randconfig-001-20240729   gcc-14.1.0
sh                    randconfig-002-20240729   gcc-13.2.0
sh                    randconfig-002-20240729   gcc-14.1.0
sh                          rsk7269_defconfig   gcc-13.2.0
sh                          rsk7269_defconfig   gcc-13.3.0
sh                          sdk7786_defconfig   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7721_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240729   gcc-13.2.0
sparc64               randconfig-001-20240729   gcc-14.1.0
sparc64               randconfig-002-20240729   gcc-13.2.0
sparc64               randconfig-002-20240729   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240729   clang-14
um                    randconfig-001-20240729   gcc-13.2.0
um                    randconfig-002-20240729   gcc-13.2.0
um                    randconfig-002-20240729   gcc-8
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240729   clang-18
x86_64       buildonly-randconfig-002-20240729   clang-18
x86_64       buildonly-randconfig-003-20240729   clang-18
x86_64       buildonly-randconfig-004-20240729   clang-18
x86_64       buildonly-randconfig-005-20240729   clang-18
x86_64       buildonly-randconfig-006-20240729   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240729   clang-18
x86_64                randconfig-002-20240729   clang-18
x86_64                randconfig-003-20240729   clang-18
x86_64                randconfig-004-20240729   clang-18
x86_64                randconfig-005-20240729   clang-18
x86_64                randconfig-006-20240729   clang-18
x86_64                randconfig-011-20240729   clang-18
x86_64                randconfig-012-20240729   clang-18
x86_64                randconfig-013-20240729   clang-18
x86_64                randconfig-014-20240729   clang-18
x86_64                randconfig-015-20240729   clang-18
x86_64                randconfig-016-20240729   clang-18
x86_64                randconfig-071-20240729   clang-18
x86_64                randconfig-072-20240729   clang-18
x86_64                randconfig-073-20240729   clang-18
x86_64                randconfig-074-20240729   clang-18
x86_64                randconfig-075-20240729   clang-18
x86_64                randconfig-076-20240729   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240729   gcc-13.2.0
xtensa                randconfig-001-20240729   gcc-14.1.0
xtensa                randconfig-002-20240729   gcc-13.2.0
xtensa                randconfig-002-20240729   gcc-14.1.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
