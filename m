Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6750779CB21
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Sep 2023 11:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38D5961106;
	Tue, 12 Sep 2023 09:06:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38D5961106
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4V37LlN6gZgD; Tue, 12 Sep 2023 09:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F20F260B10;
	Tue, 12 Sep 2023 09:06:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F20F260B10
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 258A31BF2EA
 for <devel@linuxdriverproject.org>; Tue, 12 Sep 2023 09:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BE594012B
 for <devel@linuxdriverproject.org>; Tue, 12 Sep 2023 09:06:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BE594012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JEiTFU9oCciP for <devel@linuxdriverproject.org>;
 Tue, 12 Sep 2023 09:06:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98AA840120
 for <devel@driverdev.osuosl.org>; Tue, 12 Sep 2023 09:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98AA840120
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="382131598"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="382131598"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 02:06:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="809163923"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="809163923"
Received: from lkp-server02.sh.intel.com (HELO 1e56c5165d33) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 12 Sep 2023 02:06:49 -0700
Received: from kbuild by 1e56c5165d33 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qfzM6-0000BS-3C;
 Tue, 12 Sep 2023 09:06:46 +0000
Date: Tue, 12 Sep 2023 17:06:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 6e837a6128c369f8ae11cec9208b63a0013776c5
Message-ID: <202309121744.RJbrfg4N-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694509611; x=1726045611;
 h=date:from:to:cc:subject:message-id;
 bh=2K0HeAcwF6eBEgT/jXBr4LnEvXE3geyOBvjQ7qBIzMc=;
 b=DqYfu2AARp4y5qwhZE4uwAsAF/qm1XSlPxfkON61XCpBD+SwNRljgZB2
 0EC1oWRFzG9nhBcn+W/vZSiLTyrrR+JSOCZ8FhnXe8lSZlbEFqPEgmpsq
 b3Z2jJDIhtmY5q0g9fqHWW1+LurJf+vvvFcKo1R5IhKg7CuWXOp9Oa+k/
 lOYdijEcj6SLxAdMrGz1ibyrCT3cXtIMYge+gJSKoDKSVghTygocqgIWh
 EpzhPymX+WrFjP17N616ooI5QhFZzH+pkr7nOen20homb0t9pLaVWl7c8
 M0JJWvxIJazTr06lwlquoHcVs83ayzy6mp621UnI+prPj97Dxx/Hfoy2f
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DqYfu2AA
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 6e837a6128c369f8ae11cec9208b63a0013776c5  sysfs: do not create empty directories if no attributes are present

elapsed time: 1251m

configs tested: 162
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230911   gcc  
alpha                randconfig-r006-20230911   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230911   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                   randconfig-001-20230911   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230911   clang
arm64                randconfig-r035-20230911   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230911   gcc  
csky                 randconfig-r013-20230911   gcc  
csky                 randconfig-r023-20230911   gcc  
hexagon               randconfig-001-20230911   clang
hexagon               randconfig-002-20230911   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230911   gcc  
i386                  randconfig-002-20230911   gcc  
i386                  randconfig-003-20230911   gcc  
i386                  randconfig-004-20230911   gcc  
i386                  randconfig-005-20230911   gcc  
i386                  randconfig-006-20230911   gcc  
i386                  randconfig-011-20230911   clang
i386                  randconfig-012-20230911   clang
i386                  randconfig-013-20230911   clang
i386                  randconfig-014-20230911   clang
i386                  randconfig-015-20230911   clang
i386                  randconfig-016-20230911   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230911   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r002-20230911   gcc  
m68k                 randconfig-r025-20230911   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230911   gcc  
microblaze           randconfig-r016-20230911   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                 randconfig-r024-20230911   gcc  
nios2                         10m50_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230911   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc              randconfig-r022-20230911   clang
powerpc64            randconfig-r004-20230911   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                 randconfig-001-20230911   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230911   clang
s390                 randconfig-r015-20230911   clang
s390                 randconfig-r031-20230911   gcc  
s390                 randconfig-r032-20230911   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r021-20230911   gcc  
sh                          rsk7264_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r033-20230911   gcc  
sparc64              randconfig-r034-20230911   gcc  
sparc64              randconfig-r036-20230911   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230911   gcc  
x86_64       buildonly-randconfig-002-20230911   gcc  
x86_64       buildonly-randconfig-003-20230911   gcc  
x86_64       buildonly-randconfig-004-20230911   gcc  
x86_64       buildonly-randconfig-005-20230911   gcc  
x86_64       buildonly-randconfig-006-20230911   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-003-20230911   clang
x86_64                randconfig-005-20230911   clang
x86_64                randconfig-011-20230911   gcc  
x86_64                randconfig-012-20230911   gcc  
x86_64                randconfig-013-20230911   gcc  
x86_64                randconfig-014-20230911   gcc  
x86_64                randconfig-015-20230911   gcc  
x86_64                randconfig-016-20230911   gcc  
x86_64                randconfig-071-20230911   gcc  
x86_64                randconfig-072-20230911   gcc  
x86_64                randconfig-073-20230911   gcc  
x86_64                randconfig-074-20230911   gcc  
x86_64                randconfig-075-20230911   gcc  
x86_64                randconfig-076-20230911   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r014-20230911   gcc  
xtensa               randconfig-r026-20230911   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
