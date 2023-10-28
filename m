Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A37DA54B
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Oct 2023 08:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B974E82FE4;
	Sat, 28 Oct 2023 06:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B974E82FE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCxH2XYk_5Ig; Sat, 28 Oct 2023 06:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61AEF82FD7;
	Sat, 28 Oct 2023 06:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61AEF82FD7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F4581BF844
 for <devel@linuxdriverproject.org>; Sat, 28 Oct 2023 06:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB1EE40635
 for <devel@linuxdriverproject.org>; Sat, 28 Oct 2023 06:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB1EE40635
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qfRvM48KsAdn for <devel@linuxdriverproject.org>;
 Sat, 28 Oct 2023 06:27:23 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 28 Oct 2023 06:27:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56CF64015E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56CF64015E
 for <devel@driverdev.osuosl.org>; Sat, 28 Oct 2023 06:27:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="680384"
X-IronPort-AV: E=Sophos;i="6.03,258,1694761200"; 
   d="scan'208";a="680384"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 23:20:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="883384984"
X-IronPort-AV: E=Sophos;i="6.03,258,1694761200"; d="scan'208";a="883384984"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 27 Oct 2023 23:20:13 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qwcg6-000BX1-2f;
 Sat, 28 Oct 2023 06:20:10 +0000
Date: Sat, 28 Oct 2023 14:19:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 effd7c70eaa0440688b60b9d419243695ede3c45
Message-ID: <202310281409.kOivEPea-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698474443; x=1730010443;
 h=date:from:to:cc:subject:message-id;
 bh=3xtYzx5x8bASAO2TS/2qlf2D7WQiRm2IeGle4I8gZOY=;
 b=Sq/VjdQRKJRgLy4K55+pJ4pkZbSI+j0ETdlBh2r20f/LoSlsZm9YGcoL
 YvMZYsgsC94JSh4VqR97sRl6B2aVWATS1Hsv+ohwrwonFVfY+SN+pZdLA
 Hgm59TFP9t+oEKkcq24zOEJnXItet5FBv34iCbguxPn7uK4yhVPAknLxy
 VxYpZCAuuVJuQbRwXzIYJfufw4X9MqhfBMTTeF2yjJY0RE2a0DVQVN22w
 XiFbrofz9KY30yiGehbsKPaN/ZFK0eDySxL8FBcpR3hZdEvV0A7se0ZO2
 tzsi0TilWno9UPXGLZQAto7F6qiH8PqS8geWO/MnrPZjQew4VPG0YvzHM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sq/VjdQR
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
branch HEAD: effd7c70eaa0440688b60b9d419243695ede3c45  firmware_loader: Abort all upcoming firmware load request once reboot triggered

elapsed time: 1121m

configs tested: 189
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                   randconfig-001-20231028   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                   randconfig-001-20231027   gcc  
arm                   randconfig-001-20231028   gcc  
arm                         vf610m4_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231027   gcc  
i386         buildonly-randconfig-001-20231028   gcc  
i386         buildonly-randconfig-002-20231027   gcc  
i386         buildonly-randconfig-002-20231028   gcc  
i386         buildonly-randconfig-003-20231027   gcc  
i386         buildonly-randconfig-003-20231028   gcc  
i386         buildonly-randconfig-004-20231027   gcc  
i386         buildonly-randconfig-004-20231028   gcc  
i386         buildonly-randconfig-005-20231027   gcc  
i386         buildonly-randconfig-005-20231028   gcc  
i386         buildonly-randconfig-006-20231027   gcc  
i386         buildonly-randconfig-006-20231028   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231028   gcc  
i386                  randconfig-002-20231027   gcc  
i386                  randconfig-002-20231028   gcc  
i386                  randconfig-003-20231028   gcc  
i386                  randconfig-004-20231028   gcc  
i386                  randconfig-005-20231028   gcc  
i386                  randconfig-006-20231028   gcc  
i386                  randconfig-011-20231027   gcc  
i386                  randconfig-011-20231028   gcc  
i386                  randconfig-012-20231027   gcc  
i386                  randconfig-012-20231028   gcc  
i386                  randconfig-013-20231027   gcc  
i386                  randconfig-013-20231028   gcc  
i386                  randconfig-014-20231027   gcc  
i386                  randconfig-014-20231028   gcc  
i386                  randconfig-015-20231027   gcc  
i386                  randconfig-015-20231028   gcc  
i386                  randconfig-016-20231027   gcc  
i386                  randconfig-016-20231028   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231027   gcc  
loongarch             randconfig-001-20231028   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                  mpc885_ads_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231027   gcc  
riscv                 randconfig-001-20231028   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231028   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231027   gcc  
sparc                 randconfig-001-20231028   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231027   gcc  
x86_64       buildonly-randconfig-001-20231028   gcc  
x86_64       buildonly-randconfig-002-20231027   gcc  
x86_64       buildonly-randconfig-002-20231028   gcc  
x86_64       buildonly-randconfig-003-20231027   gcc  
x86_64       buildonly-randconfig-003-20231028   gcc  
x86_64       buildonly-randconfig-004-20231027   gcc  
x86_64       buildonly-randconfig-004-20231028   gcc  
x86_64       buildonly-randconfig-005-20231027   gcc  
x86_64       buildonly-randconfig-005-20231028   gcc  
x86_64       buildonly-randconfig-006-20231027   gcc  
x86_64       buildonly-randconfig-006-20231028   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231028   gcc  
x86_64                randconfig-002-20231028   gcc  
x86_64                randconfig-003-20231028   gcc  
x86_64                randconfig-004-20231028   gcc  
x86_64                randconfig-005-20231028   gcc  
x86_64                randconfig-006-20231027   gcc  
x86_64                randconfig-006-20231028   gcc  
x86_64                randconfig-011-20231028   gcc  
x86_64                randconfig-012-20231028   gcc  
x86_64                randconfig-013-20231028   gcc  
x86_64                randconfig-014-20231028   gcc  
x86_64                randconfig-015-20231028   gcc  
x86_64                randconfig-016-20231028   gcc  
x86_64                randconfig-071-20231027   gcc  
x86_64                randconfig-071-20231028   gcc  
x86_64                randconfig-072-20231027   gcc  
x86_64                randconfig-072-20231028   gcc  
x86_64                randconfig-073-20231027   gcc  
x86_64                randconfig-073-20231028   gcc  
x86_64                randconfig-074-20231027   gcc  
x86_64                randconfig-074-20231028   gcc  
x86_64                randconfig-075-20231027   gcc  
x86_64                randconfig-075-20231028   gcc  
x86_64                randconfig-076-20231027   gcc  
x86_64                randconfig-076-20231028   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
