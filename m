Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527B692E382
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2024 11:32:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8CAE4049D;
	Thu, 11 Jul 2024 09:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3FbXGuDVDYoa; Thu, 11 Jul 2024 09:32:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79A7941031
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79A7941031;
	Thu, 11 Jul 2024 09:32:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 150931BF574
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2024 09:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44B3441041
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2024 09:32:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-N1YbmNy7nP for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2024 09:32:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBC154103E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBC154103E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBC154103E
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2024 09:32:19 +0000 (UTC)
X-CSE-ConnectionGUID: CklVjQErQ/iUGxp6gK+Tcg==
X-CSE-MsgGUID: CdU1CNdoRiqPPTYeqFOQSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21822114"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21822114"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:32:19 -0700
X-CSE-ConnectionGUID: nXpEBBUCQuq4ZT+3P0tdBQ==
X-CSE-MsgGUID: uJcXqEw8RVm8K814znWSsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="48580578"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 11 Jul 2024 02:32:18 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sRq9v-000Z5i-28;
 Thu, 11 Jul 2024 09:32:15 +0000
Date: Thu, 11 Jul 2024 17:31:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD SUCCESS
 4fe0d52d2c1cba53d58da66dba49c5142885c977
Message-ID: <202407111724.7rYa3NGM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720690340; x=1752226340;
 h=date:from:to:cc:subject:message-id;
 bh=UfErmTL3YBnSNNG0X4ODHyQKbFbNLhgH+zii+lRWkAA=;
 b=FyXQeODZomcLKtJKUFZjSBtM4ilzcVGq7MwJpDNUPo7rKAAwjYCW7Kim
 5pXqg7CdMQZcfcYXgaVj9vAYSWpr4HPCZVRglA5I+3kCV0O/0FsqD7AV8
 D5+zIUwrffGsLo2AutAIjMPi4320rfJptT5UE+AFaoaFpiBut7uRnsFUH
 Gk3z9DB+ZeugPEtyD4KhAfo3XUu47FelY7YGo/AtV4XdUbBHENF7L3Ehv
 o6S3T1vvKjVFBPmVn1Xxi7AiMjqKkgsMRIW9rSu4RA2jdWMM8lFE4ZJBS
 6zCAz8VzfKatZ3eHQo94v+VxCnXtYtgHXEs/e4UqdSNpM1EAx0GT7e2n4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FyXQeODZ
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
branch HEAD: 4fe0d52d2c1cba53d58da66dba49c5142885c977  USB: move dynamic ids out of usb driver structures

elapsed time: 1459m

configs tested: 167
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240711   gcc-13.2.0
arc                   randconfig-002-20240711   gcc-13.2.0
arm                              allmodconfig   gcc-13.3.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-13.3.0
arm                                 defconfig   clang-14
arm                          moxart_defconfig   gcc-13.3.0
arm                   randconfig-001-20240711   clang-19
arm                   randconfig-002-20240711   gcc-13.3.0
arm                   randconfig-003-20240711   clang-19
arm                   randconfig-004-20240711   gcc-13.3.0
arm                         s5pv210_defconfig   gcc-13.3.0
arm                        spear3xx_defconfig   clang-16
arm                           u8500_defconfig   gcc-13.3.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.3.0
arm64                 randconfig-001-20240711   clang-19
arm64                 randconfig-002-20240711   gcc-13.2.0
arm64                 randconfig-003-20240711   gcc-13.2.0
arm64                 randconfig-004-20240711   gcc-13.2.0
csky                              allnoconfig   gcc-13.3.0
csky                                defconfig   gcc-13.3.0
csky                  randconfig-001-20240711   gcc-13.3.0
csky                  randconfig-002-20240711   gcc-13.3.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
hexagon               randconfig-001-20240711   clang-19
hexagon               randconfig-002-20240711   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240710   clang-18
i386         buildonly-randconfig-002-20240710   gcc-13
i386         buildonly-randconfig-003-20240710   gcc-11
i386         buildonly-randconfig-004-20240710   gcc-11
i386         buildonly-randconfig-005-20240710   clang-18
i386         buildonly-randconfig-006-20240710   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240710   clang-18
i386                  randconfig-002-20240710   gcc-11
i386                  randconfig-003-20240710   gcc-13
i386                  randconfig-004-20240710   clang-18
i386                  randconfig-005-20240710   clang-18
i386                  randconfig-006-20240710   clang-18
i386                  randconfig-011-20240710   gcc-13
i386                  randconfig-012-20240710   gcc-12
i386                  randconfig-013-20240710   gcc-12
i386                  randconfig-014-20240710   gcc-13
i386                  randconfig-015-20240710   gcc-8
i386                  randconfig-016-20240710   clang-18
loongarch                        allmodconfig   gcc-13.3.0
loongarch                         allnoconfig   gcc-13.3.0
loongarch                           defconfig   gcc-13.3.0
loongarch                 loongson3_defconfig   gcc-13.3.0
loongarch             randconfig-001-20240711   gcc-13.3.0
loongarch             randconfig-002-20240711   gcc-13.3.0
m68k                             allmodconfig   gcc-13.3.0
m68k                              allnoconfig   gcc-13.3.0
m68k                             allyesconfig   gcc-13.3.0
m68k                       bvme6000_defconfig   gcc-13.3.0
m68k                                defconfig   gcc-13.3.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.3.0
mips                        bcm63xx_defconfig   clang-17
nios2                             allnoconfig   gcc-13.3.0
nios2                               defconfig   gcc-13.3.0
nios2                 randconfig-001-20240711   gcc-13.3.0
nios2                 randconfig-002-20240711   gcc-13.3.0
openrisc                          allnoconfig   gcc-13.3.0
openrisc                         allyesconfig   gcc-13.3.0
openrisc                            defconfig   gcc-13.3.0
parisc                           allmodconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-13.3.0
parisc                           allyesconfig   gcc-13.3.0
parisc                              defconfig   gcc-13.3.0
parisc                randconfig-001-20240711   gcc-13.3.0
parisc                randconfig-002-20240711   gcc-13.3.0
parisc64                            defconfig   gcc-13.3.0
powerpc                          allmodconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-13.3.0
powerpc                          allyesconfig   clang-19
powerpc                      chrp32_defconfig   clang-19
powerpc                     mpc5200_defconfig   clang-14
powerpc               randconfig-001-20240711   gcc-13.3.0
powerpc               randconfig-002-20240711   clang-19
powerpc               randconfig-003-20240711   clang-19
powerpc64             randconfig-001-20240711   gcc-13.3.0
powerpc64             randconfig-002-20240711   clang-16
powerpc64             randconfig-003-20240711   gcc-13.3.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-13.3.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240711   clang-14
riscv                 randconfig-002-20240711   gcc-13.3.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240711   clang-19
s390                  randconfig-002-20240711   gcc-13.2.0
sh                               allmodconfig   gcc-13.3.0
sh                                allnoconfig   gcc-13.3.0
sh                               allyesconfig   gcc-13.3.0
sh                                  defconfig   gcc-13.3.0
sh                          polaris_defconfig   gcc-13.3.0
sh                    randconfig-001-20240711   gcc-13.3.0
sh                    randconfig-002-20240711   gcc-13.3.0
sh                           se7619_defconfig   gcc-13.3.0
sh                           se7705_defconfig   gcc-13.3.0
sparc                            allmodconfig   gcc-13.3.0
sparc                       sparc64_defconfig   gcc-13.3.0
sparc64                             defconfig   gcc-13.3.0
sparc64               randconfig-001-20240711   gcc-13.3.0
sparc64               randconfig-002-20240711   gcc-13.3.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240711   gcc-8
um                    randconfig-002-20240711   gcc-8
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240711   clang-18
x86_64       buildonly-randconfig-002-20240711   clang-18
x86_64       buildonly-randconfig-003-20240711   clang-18
x86_64       buildonly-randconfig-004-20240711   clang-18
x86_64       buildonly-randconfig-005-20240711   gcc-13
x86_64       buildonly-randconfig-006-20240711   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240711   gcc-13
x86_64                randconfig-002-20240711   gcc-13
x86_64                randconfig-003-20240711   gcc-11
x86_64                randconfig-004-20240711   gcc-9
x86_64                randconfig-005-20240711   clang-18
x86_64                randconfig-006-20240711   gcc-13
x86_64                randconfig-011-20240711   gcc-13
x86_64                randconfig-012-20240711   clang-18
x86_64                randconfig-013-20240711   gcc-13
x86_64                randconfig-014-20240711   clang-18
x86_64                randconfig-015-20240711   clang-18
x86_64                randconfig-016-20240711   gcc-10
x86_64                randconfig-071-20240711   gcc-13
x86_64                randconfig-072-20240711   gcc-13
x86_64                randconfig-073-20240711   clang-18
x86_64                randconfig-074-20240711   gcc-13
x86_64                randconfig-075-20240711   clang-18
x86_64                randconfig-076-20240711   gcc-8
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.3.0
xtensa                randconfig-001-20240711   gcc-13.3.0
xtensa                randconfig-002-20240711   gcc-13.3.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
