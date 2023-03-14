Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEC16B8B2F
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Mar 2023 07:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5DDD60F7A;
	Tue, 14 Mar 2023 06:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5DDD60F7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QsDb6EkuIuHK; Tue, 14 Mar 2023 06:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7698B61014;
	Tue, 14 Mar 2023 06:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7698B61014
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A3D91BF2FC
 for <devel@linuxdriverproject.org>; Tue, 14 Mar 2023 06:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0EEEB40377
 for <devel@linuxdriverproject.org>; Tue, 14 Mar 2023 06:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EEEB40377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgMmEa408MJk for <devel@linuxdriverproject.org>;
 Tue, 14 Mar 2023 06:24:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A54254011F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A54254011F
 for <devel@driverdev.osuosl.org>; Tue, 14 Mar 2023 06:24:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365005111"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365005111"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 23:24:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="822243403"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="822243403"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2023 23:24:20 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pby56-0006bo-13;
 Tue, 14 Mar 2023 06:24:20 +0000
Date: Tue, 14 Mar 2023 14:24:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS WITH WARNING
 93dbc63c47e682ba8a493cbfc09c2c4c8e88f17b
Message-ID: <64101303.KUer+jdiv9y+Q9Es%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678775062; x=1710311062;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=M4jmt1sndo1DLhKM88JPajNvvWef6u7rvPQ/sCzSl9I=;
 b=DFFbyrdo7gjCxeh+k6PyDlKIAg2x+p+Kq5R1Njg1vKed8vBBJXlrxe9G
 27D/9JWvHoSyPPGzBePiDUzN8iY9C38NgaujzaQdTCc+ELMD97hb2LrxY
 jzKXs/bg9p9jhV034eHjPqNEHRY977/IGZ+W5s0m24iMqsR8EuGDhS5vt
 HUeje2AqRAiUS0X5GnityekQ/Ho7/KxzerN9t3B5pe7sEsA9Ts33KTN/c
 F6QN4heGZdMvgKpT7AAeY8KLN3Qd8KPeOHYZpsHzPGEeHFaSEIT21kqjC
 OiGZRX2Pd3dP7gAJHpL0g6YuSp8X3LlDQMfFfnumMvOlACjwRG5OZmGwo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DFFbyrdo
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 93dbc63c47e682ba8a493cbfc09c2c4c8e88f17b  FIXME: driver core: platform: make platform_bus_type constant

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202303141045.1U4Clxw2-lkp@intel.com

Warning: (recently discovered and may have been fixed)

arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c:129:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]

Warning ids grouped by kconfigs:

clang_recent_errors
`-- powerpc-buildonly-randconfig-r004-20230313
    `-- arch-powerpc-sysdev-fsl_mpic_timer_wakeup.c:warning:variable-ret-is-used-uninitialized-whenever-if-condition-is-false

elapsed time: 725m

configs tested: 125
configs skipped: 11

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230313   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230312   gcc  
arm                  randconfig-r005-20230312   gcc  
arm                  randconfig-r011-20230312   clang
arm                  randconfig-r021-20230312   clang
arm                  randconfig-r025-20230312   clang
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230312   clang
arm64                randconfig-r036-20230312   clang
csky                                defconfig   gcc  
csky                 randconfig-r014-20230313   gcc  
csky                 randconfig-r023-20230312   gcc  
hexagon      buildonly-randconfig-r004-20230312   clang
hexagon      buildonly-randconfig-r005-20230313   clang
hexagon              randconfig-r003-20230313   clang
hexagon              randconfig-r013-20230312   clang
hexagon              randconfig-r024-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230313   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                 randconfig-r002-20230313   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r025-20230313   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r014-20230312   gcc  
ia64                 randconfig-r015-20230313   gcc  
ia64                 randconfig-r016-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r034-20230312   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230312   gcc  
m68k                 randconfig-r004-20230313   gcc  
microblaze   buildonly-randconfig-r003-20230312   gcc  
microblaze           randconfig-r006-20230312   gcc  
microblaze           randconfig-r035-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r024-20230313   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230312   gcc  
openrisc     buildonly-randconfig-r001-20230312   gcc  
openrisc     buildonly-randconfig-r006-20230312   gcc  
openrisc             randconfig-r021-20230313   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230313   clang
powerpc      buildonly-randconfig-r004-20230313   clang
powerpc              randconfig-r033-20230312   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230313   clang
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230313   gcc  
sparc64              randconfig-r013-20230313   gcc  
sparc64              randconfig-r015-20230312   gcc  
sparc64              randconfig-r022-20230312   gcc  
sparc64              randconfig-r032-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r031-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
