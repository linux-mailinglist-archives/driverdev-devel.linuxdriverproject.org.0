Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6B96A600C
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 20:59:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B77D611A7;
	Tue, 28 Feb 2023 19:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B77D611A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ofm_m2m5T12B; Tue, 28 Feb 2023 19:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3410460F48;
	Tue, 28 Feb 2023 19:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3410460F48
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11FE31BF870
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED07A4031F
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED07A4031F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSxajACSCO89 for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 19:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A40F6403D0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A40F6403D0
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 19:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="399018972"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="399018972"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="667569744"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="667569744"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2023 11:58:51 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pX67e-0005cF-0d;
 Tue, 28 Feb 2023 19:58:50 +0000
Date: Wed, 01 Mar 2023 03:58:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 d1b589f6ba579032e06b3997657bdce209478b06
Message-ID: <63fe5ccd.BQGYgcTHqOz520Uo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677614333; x=1709150333;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=c4zf3a8J+0ktIlMxp1VUe89CmTIJ/OgFVkqTTr1jbOY=;
 b=iV1GK1V0mcpU2T+jkvJQ8Sf+Ajh9ITc5mu9tia95qb9D/E+TzhesoEHy
 Sqk8WhQHkRFKJx1dhfTFJUjQGLXRtigPFjmawr3lusD29hk8ZlhQgTmBY
 7QN9uTtSpNt0U1mJVplbGJUzQrszH8cYwnu5AVlW10TM118U96B2OprUv
 u6M7TEdfYqi7c15pBWuaXF378qKP9TxdIRGhngdq71nKVOV/N7kyAzihw
 YNHg0fJzUkZyJ03NA7QkIV93QrKDR1KbaiH1AQhTr8HfOB1qj2u1lCGKm
 3MZ3H1U87zHH25+IhupS7EM2a56xH3q6U7s9/pgtdsm9dOtkLasJKi7Q8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iV1GK1V0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: d1b589f6ba579032e06b3997657bdce209478b06  driver core: device: make device_create*() take a const struct class *

elapsed time: 722m

configs tested: 149
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r035-20230226   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230227   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230227   gcc  
arc                  randconfig-r014-20230226   gcc  
arc                  randconfig-r016-20230226   gcc  
arc                  randconfig-r032-20230226   gcc  
arc                  randconfig-r032-20230228   gcc  
arc                  randconfig-r034-20230226   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                           omap1_defconfig   clang
arm                  randconfig-r011-20230226   gcc  
arm                  randconfig-r036-20230226   clang
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm                           sama7_defconfig   clang
arm                        spear3xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r036-20230228   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r001-20230226   clang
hexagon      buildonly-randconfig-r001-20230227   clang
hexagon              randconfig-r023-20230227   clang
hexagon              randconfig-r032-20230227   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230227   clang
i386                 randconfig-a002-20230227   clang
i386                 randconfig-a003-20230227   clang
i386                 randconfig-a004-20230227   clang
i386                 randconfig-a005-20230227   clang
i386                 randconfig-a006-20230227   clang
i386                 randconfig-a011-20230227   gcc  
i386                 randconfig-a012-20230227   gcc  
i386                 randconfig-a013-20230227   gcc  
i386                 randconfig-a014-20230227   gcc  
i386                 randconfig-a015-20230227   gcc  
i386                 randconfig-a016-20230227   gcc  
i386                          randconfig-c001   gcc  
i386                 randconfig-r025-20230227   gcc  
i386                 randconfig-r034-20230227   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230226   gcc  
ia64                 randconfig-r022-20230227   gcc  
ia64                 randconfig-r024-20230226   gcc  
ia64                 randconfig-r036-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230227   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230227   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230227   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230226   clang
mips                           gcw0_defconfig   gcc  
mips                 randconfig-r005-20230226   clang
mips                 randconfig-r021-20230227   clang
mips                 randconfig-r033-20230228   clang
mips                           xway_defconfig   gcc  
nios2        buildonly-randconfig-r002-20230226   gcc  
nios2        buildonly-randconfig-r006-20230227   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230226   gcc  
openrisc             randconfig-r004-20230226   gcc  
openrisc             randconfig-r013-20230226   gcc  
openrisc             randconfig-r023-20230226   gcc  
openrisc             randconfig-r031-20230226   gcc  
openrisc             randconfig-r031-20230227   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230227   gcc  
parisc               randconfig-r035-20230227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r015-20230227   gcc  
powerpc              randconfig-r022-20230226   clang
powerpc              randconfig-r025-20230226   clang
powerpc              randconfig-r035-20230228   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230227   gcc  
riscv                randconfig-r034-20230228   gcc  
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r026-20230226   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230226   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r003-20230227   gcc  
sh                   randconfig-r031-20230228   gcc  
sh                           se7343_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230226   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r002-20230227   gcc  
sparc64              randconfig-r003-20230226   gcc  
um                               alldefconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230227   clang
x86_64               randconfig-a002-20230227   clang
x86_64               randconfig-a003-20230227   clang
x86_64               randconfig-a004-20230227   clang
x86_64               randconfig-a005-20230227   clang
x86_64               randconfig-a006-20230227   clang
x86_64               randconfig-a011-20230227   gcc  
x86_64               randconfig-a012-20230227   gcc  
x86_64               randconfig-a013-20230227   gcc  
x86_64               randconfig-a014-20230227   gcc  
x86_64               randconfig-a015-20230227   gcc  
x86_64               randconfig-a016-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230226   gcc  
xtensa               randconfig-r011-20230227   gcc  
xtensa               randconfig-r013-20230227   gcc  
xtensa               randconfig-r033-20230226   gcc  
xtensa               randconfig-r033-20230227   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
