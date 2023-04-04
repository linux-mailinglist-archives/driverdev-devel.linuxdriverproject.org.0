Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC146D5A44
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Apr 2023 10:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63D3F4160A;
	Tue,  4 Apr 2023 08:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63D3F4160A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id av8nK7_MOwRl; Tue,  4 Apr 2023 08:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD31B4160F;
	Tue,  4 Apr 2023 08:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD31B4160F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08B781BF20F
 for <devel@linuxdriverproject.org>; Tue,  4 Apr 2023 08:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D658A6060A
 for <devel@linuxdriverproject.org>; Tue,  4 Apr 2023 08:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D658A6060A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TY0lRKDAgR2 for <devel@linuxdriverproject.org>;
 Tue,  4 Apr 2023 08:05:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1B3B605E3
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1B3B605E3
 for <devel@driverdev.osuosl.org>; Tue,  4 Apr 2023 08:05:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="344682233"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="344682233"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 01:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="932365211"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="932365211"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 04 Apr 2023 01:05:05 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjbf6-000PPn-1m;
 Tue, 04 Apr 2023 08:05:04 +0000
Date: Tue, 04 Apr 2023 16:05:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 862d8312eed994a8a9af7aa8e9e15456183b10a7
Message-ID: <642bda2f.ikFQF5r8piufoXBV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680595510; x=1712131510;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ad1A7AjQ6VnI3XZhlckKBlW/BrHxAYWNqapxqt73TdQ=;
 b=k32gGafEYB4oGVJbNaxrELPQd447fx8oaE671iKY/32gbnlTSkYtSFKs
 d3T843xjl2ER0HKIQOpzcgIS+HoDU8DB98wKB5sITJ42D7DjDTGdmfJoj
 PKHon9UIobpeGMy1t7Gy/DIQVQiM05JqA3Gr5UvKQdfvCe9jSEqj376qZ
 GCw4vvad6lE5QVrBXivLXZb/7PsNEVVzeEZTzAI9Q9ypkRxuGWbaTufbj
 ypRQTk9agy40PGHV8EACF/JtSLhQaZWrMVATRGvwn8dIdpcnioDEDBT/f
 i9ImYhCNhz8h83A/zkpkQNbeVBrr8hYlExAKewK+j2+pvhIenqmFjIAA/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k32gGafE
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 862d8312eed994a8a9af7aa8e9e15456183b10a7  tty: make tty_class a static const structure

elapsed time: 722m

configs tested: 130
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230403   gcc  
alpha        buildonly-randconfig-r005-20230403   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230403   gcc  
alpha                randconfig-r015-20230403   gcc  
alpha                randconfig-r021-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230403   gcc  
arc          buildonly-randconfig-r006-20230403   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230403   gcc  
arc                  randconfig-r011-20230403   gcc  
arc                  randconfig-r013-20230403   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230403   clang
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230403   clang
arm                  randconfig-r025-20230403   clang
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230403   clang
csky                                defconfig   gcc  
csky                 randconfig-r012-20230403   gcc  
csky                 randconfig-r033-20230403   gcc  
hexagon              randconfig-r001-20230403   clang
hexagon              randconfig-r035-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r015-20230403   gcc  
i386                 randconfig-r016-20230403   gcc  
i386                 randconfig-r036-20230403   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230403   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230403   gcc  
ia64                 randconfig-r024-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230403   gcc  
loongarch            randconfig-r026-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230403   gcc  
m68k         buildonly-randconfig-r005-20230403   gcc  
m68k         buildonly-randconfig-r006-20230403   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230403   gcc  
m68k                 randconfig-r016-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230403   clang
mips                 randconfig-r024-20230403   clang
mips                 randconfig-r026-20230403   clang
nios2        buildonly-randconfig-r006-20230403   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r003-20230403   gcc  
openrisc             randconfig-r011-20230403   gcc  
parisc       buildonly-randconfig-r003-20230403   gcc  
parisc       buildonly-randconfig-r005-20230403   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230403   gcc  
powerpc      buildonly-randconfig-r006-20230403   gcc  
powerpc              randconfig-r014-20230403   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230403   clang
riscv                randconfig-r004-20230403   clang
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r031-20230403   gcc  
sparc        buildonly-randconfig-r004-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc64      buildonly-randconfig-r002-20230403   gcc  
sparc64              randconfig-r022-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-r014-20230403   gcc  
x86_64               randconfig-r032-20230403   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
