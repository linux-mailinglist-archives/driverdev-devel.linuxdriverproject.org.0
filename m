Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E0F904DF2
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2024 10:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 056D88204B;
	Wed, 12 Jun 2024 08:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PfhummIk_-aB; Wed, 12 Jun 2024 08:18:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF9A482129
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF9A482129;
	Wed, 12 Jun 2024 08:18:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 435991BF378
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2024 08:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C170605D7
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2024 08:18:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gKbtko8E_P8y for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2024 08:18:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B6C516059C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6C516059C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6C516059C
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2024 08:18:40 +0000 (UTC)
X-CSE-ConnectionGUID: ZdU//hwZSzOVVMCC8c7OEw==
X-CSE-MsgGUID: /q+PycYwT0uJRN3mH03roA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="14891955"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="14891955"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 01:18:41 -0700
X-CSE-ConnectionGUID: CfM5ULbFRUmCuVVLQLAi8Q==
X-CSE-MsgGUID: ucvlQ+fTRLOt1iPY/K/O5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="62888037"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jun 2024 01:18:38 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHJBk-0001MG-1i;
 Wed, 12 Jun 2024 08:18:36 +0000
Date: Wed, 12 Jun 2024 16:18:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 d7d3ae441e29f0ca56c69cdd3a47769227b7be3d
Message-ID: <202406121603.b1NxMLxZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718180322; x=1749716322;
 h=date:from:to:cc:subject:message-id;
 bh=WPB9ccHOFkgz+5VXEXuqApJ0hM6QqupnccTZmt7CpWI=;
 b=Cpf3X94Feb7vVMPmcTWOVNDYSR35R2XupRvyv8mAMj3nv/epfdldtKJH
 n0CgjBr0TIak8Jq8dfpQrz8m8VgAxE+EnXclKRRcP2g9xW2UfMiDlVruP
 HIBMfdr8S4/+IfR6hNzl4nAHKjflo7ACyyTCNU2SQwNioONG5ay4e9beo
 b/8iH4AOf5Rwf080cDaNl09gw+px+eyjG3tSsMhbApXhm9lKg1+IkCYI5
 mLLU5gy/3Qa7O+Xdtq0u/tma9c9Ob4F9FErUrClyuEKrIkqwH4joPu5ha
 j9hEFX/ch8SQhpIMgeV7kVqVABbs8X115DnslQfJBz1PcZ8I+j6uOEj5t
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cpf3X94F
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: d7d3ae441e29f0ca56c69cdd3a47769227b7be3d  dca: make dca_class a static const structure

elapsed time: 2846m

configs tested: 224
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc  
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc  
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc  
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc  
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240612   gcc-13.2.0
arc                   randconfig-002-20240612   gcc-13.2.0
arm                               allnoconfig   clang
arm                               allnoconfig   clang-19
arm                                 defconfig   clang
arm                                 defconfig   clang-14
arm                        mvebu_v5_defconfig   gcc  
arm                   randconfig-001-20240612   gcc-13.2.0
arm                   randconfig-002-20240612   gcc-13.2.0
arm                   randconfig-003-20240612   clang-19
arm                   randconfig-004-20240612   clang-14
arm                           sama5_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc  
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240612   gcc-13.2.0
arm64                 randconfig-002-20240612   gcc-13.2.0
arm64                 randconfig-003-20240612   gcc-13.2.0
arm64                 randconfig-004-20240612   clang-19
csky                              allnoconfig   gcc  
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc  
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240612   gcc-13.2.0
csky                  randconfig-002-20240612   gcc-13.2.0
hexagon                          allmodconfig   clang
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang
hexagon                             defconfig   clang-19
hexagon               randconfig-001-20240612   clang-19
hexagon               randconfig-002-20240612   clang-19
i386                             allmodconfig   gcc  
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240610   clang
i386         buildonly-randconfig-001-20240612   gcc-13
i386         buildonly-randconfig-002-20240610   gcc  
i386         buildonly-randconfig-002-20240612   gcc-8
i386         buildonly-randconfig-003-20240610   gcc  
i386         buildonly-randconfig-003-20240611   clang
i386         buildonly-randconfig-003-20240612   gcc-13
i386         buildonly-randconfig-004-20240610   clang
i386         buildonly-randconfig-004-20240612   clang-18
i386         buildonly-randconfig-005-20240610   gcc  
i386         buildonly-randconfig-005-20240612   gcc-13
i386         buildonly-randconfig-006-20240610   clang
i386         buildonly-randconfig-006-20240612   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240610   gcc  
i386                  randconfig-001-20240611   clang
i386                  randconfig-001-20240612   gcc-8
i386                  randconfig-002-20240610   gcc  
i386                  randconfig-002-20240612   clang-18
i386                  randconfig-003-20240610   gcc  
i386                  randconfig-003-20240612   clang-18
i386                  randconfig-004-20240610   gcc  
i386                  randconfig-004-20240611   clang
i386                  randconfig-004-20240612   clang-18
i386                  randconfig-005-20240610   clang
i386                  randconfig-005-20240612   gcc-13
i386                  randconfig-006-20240610   gcc  
i386                  randconfig-006-20240611   clang
i386                  randconfig-006-20240612   clang-18
i386                  randconfig-011-20240610   clang
i386                  randconfig-011-20240611   clang
i386                  randconfig-011-20240612   clang-18
i386                  randconfig-012-20240610   clang
i386                  randconfig-012-20240612   clang-18
i386                  randconfig-013-20240610   clang
i386                  randconfig-013-20240611   clang
i386                  randconfig-013-20240612   clang-18
i386                  randconfig-014-20240610   clang
i386                  randconfig-014-20240612   gcc-7
i386                  randconfig-015-20240610   clang
i386                  randconfig-015-20240611   clang
i386                  randconfig-015-20240612   gcc-13
i386                  randconfig-016-20240610   clang
i386                  randconfig-016-20240611   clang
i386                  randconfig-016-20240612   gcc-7
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                         allnoconfig   gcc-13.2.0
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240612   gcc-13.2.0
loongarch             randconfig-002-20240612   gcc-13.2.0
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      pic32mzda_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240612   gcc-13.2.0
nios2                 randconfig-002-20240612   gcc-13.2.0
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc  
parisc                randconfig-001-20240612   gcc-13.2.0
parisc                randconfig-002-20240612   gcc-13.2.0
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                          allyesconfig   clang-19
powerpc                     ep8248e_defconfig   gcc  
powerpc                     ksi8560_defconfig   gcc  
powerpc               randconfig-001-20240612   gcc-13.2.0
powerpc               randconfig-002-20240612   gcc-13.2.0
powerpc               randconfig-003-20240612   clang-19
powerpc                      walnut_defconfig   gcc  
powerpc64             randconfig-001-20240612   gcc-13.2.0
powerpc64             randconfig-002-20240612   gcc-13.2.0
powerpc64             randconfig-003-20240612   clang-14
riscv                            allmodconfig   clang
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang
riscv                 randconfig-001-20240612   gcc-13.2.0
riscv                 randconfig-002-20240612   gcc-13.2.0
s390                             alldefconfig   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240612   clang-19
s390                  randconfig-002-20240612   clang-19
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                    randconfig-001-20240612   gcc-13.2.0
sh                    randconfig-002-20240612   gcc-13.2.0
sh                           se7619_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240612   gcc-13.2.0
sparc64               randconfig-002-20240612   gcc-13.2.0
um                               allmodconfig   clang
um                               allmodconfig   clang-19
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                               allyesconfig   gcc-13
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240612   gcc-13
um                    randconfig-002-20240612   clang-16
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240611   gcc  
x86_64       buildonly-randconfig-002-20240611   gcc  
x86_64       buildonly-randconfig-003-20240611   gcc  
x86_64       buildonly-randconfig-004-20240611   clang
x86_64       buildonly-randconfig-005-20240611   gcc  
x86_64       buildonly-randconfig-006-20240611   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240611   clang
x86_64                randconfig-002-20240611   gcc  
x86_64                randconfig-003-20240611   gcc  
x86_64                randconfig-004-20240611   clang
x86_64                randconfig-005-20240611   gcc  
x86_64                randconfig-006-20240611   clang
x86_64                randconfig-011-20240611   clang
x86_64                randconfig-012-20240611   gcc  
x86_64                randconfig-013-20240611   clang
x86_64                randconfig-014-20240611   clang
x86_64                randconfig-015-20240611   clang
x86_64                randconfig-016-20240611   gcc  
x86_64                randconfig-071-20240611   clang
x86_64                randconfig-072-20240611   gcc  
x86_64                randconfig-073-20240611   clang
x86_64                randconfig-074-20240611   gcc  
x86_64                randconfig-075-20240611   gcc  
x86_64                randconfig-076-20240611   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240612   gcc-13.2.0
xtensa                randconfig-002-20240612   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
