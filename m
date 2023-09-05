Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 140EF793220
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Sep 2023 00:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B69F60DF4;
	Tue,  5 Sep 2023 22:50:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B69F60DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKYp-vCZfdHA; Tue,  5 Sep 2023 22:50:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35ED161002;
	Tue,  5 Sep 2023 22:50:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35ED161002
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B817C1BF344
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 22:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F17A417A7
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 22:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F17A417A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFmmRj3AIb7b for <devel@linuxdriverproject.org>;
 Tue,  5 Sep 2023 22:50:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13E9D417A5
 for <devel@driverdev.osuosl.org>; Tue,  5 Sep 2023 22:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13E9D417A5
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="367137366"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="367137366"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 15:50:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="1072142978"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="1072142978"
Received: from lkp-server02.sh.intel.com (HELO e0b2ea88afd5) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 05 Sep 2023 15:50:25 -0700
Received: from kbuild by e0b2ea88afd5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qdesJ-0002AV-2z;
 Tue, 05 Sep 2023 22:50:23 +0000
Date: Wed, 06 Sep 2023 06:50:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 18b797ca05eafff15ebb1474eb747644d5652b33
Message-ID: <202309060602.jeQS3mf4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693954228; x=1725490228;
 h=date:from:to:cc:subject:message-id;
 bh=PEEGHBXqz6Vw25KrfrvmqQIOkQEOdl2CogF+PJzNDmY=;
 b=d/UD+EAhtk1tKDxHHgk9GvegMhUZ4mg7oXaGsbmgOBJ7idfIGM/nMwat
 duChnDfBZiWdZkNv7u4LdElR3Zh2L3dt38w8oIZASo2lpKsX50axbVs5v
 NLFET6GpFay2/M0othQOFCOnWDbZu3O5zBcmefl1qD+PmSqUdOgZdBjMz
 pdK1hmUHT3Hk1EbQKSFwDAqnc7TI+FGEb4OvTKDhIJkZjOUc3yt6Sm1VL
 6RfsQ9DX58eumxvozARjIpO3QA/8jww/XqZCmss/kqdwW4i0AdRgLHguF
 GDEJ/5JFlhmebGALwqvOaxCPtQtLSg+jaGOYOW9S4k92ThqbGmH/LEGz0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d/UD+EAh
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
branch HEAD: 18b797ca05eafff15ebb1474eb747644d5652b33  sysfs: do not create empty directories if no attributes are present

elapsed time: 728m

configs tested: 173
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
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                   randconfig-001-20230905   gcc  
arc                  randconfig-r003-20230905   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                          collie_defconfig   clang
arm                                 defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                   randconfig-001-20230905   clang
arm                  randconfig-r012-20230905   clang
arm                       versatile_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230905   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon               randconfig-001-20230905   clang
hexagon               randconfig-002-20230905   clang
hexagon              randconfig-r015-20230905   clang
hexagon              randconfig-r022-20230905   clang
hexagon              randconfig-r036-20230905   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   clang
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230905   clang
i386         buildonly-randconfig-002-20230905   clang
i386         buildonly-randconfig-003-20230905   clang
i386         buildonly-randconfig-004-20230905   clang
i386         buildonly-randconfig-005-20230905   clang
i386         buildonly-randconfig-006-20230905   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230905   clang
i386                  randconfig-002-20230905   clang
i386                  randconfig-003-20230905   clang
i386                  randconfig-004-20230905   clang
i386                  randconfig-005-20230905   clang
i386                  randconfig-006-20230905   clang
i386                  randconfig-011-20230905   gcc  
i386                  randconfig-012-20230905   gcc  
i386                  randconfig-013-20230905   gcc  
i386                  randconfig-014-20230905   gcc  
i386                  randconfig-015-20230905   gcc  
i386                  randconfig-016-20230905   gcc  
i386                 randconfig-r014-20230905   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230905   gcc  
loongarch            randconfig-r026-20230905   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230905   gcc  
m68k                 randconfig-r021-20230905   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r004-20230905   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip28_defconfig   clang
mips                 randconfig-r034-20230905   gcc  
mips                 randconfig-r035-20230905   gcc  
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
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc              randconfig-r011-20230905   gcc  
powerpc              randconfig-r031-20230905   clang
powerpc64            randconfig-r013-20230905   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230905   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230905   gcc  
s390                 randconfig-r024-20230905   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                   randconfig-r033-20230905   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230905   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r002-20230905   gcc  
sparc64              randconfig-r006-20230905   gcc  
sparc64              randconfig-r025-20230905   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230905   clang
x86_64       buildonly-randconfig-002-20230905   clang
x86_64       buildonly-randconfig-003-20230905   clang
x86_64       buildonly-randconfig-004-20230905   clang
x86_64       buildonly-randconfig-005-20230905   clang
x86_64       buildonly-randconfig-006-20230905   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230905   gcc  
x86_64                randconfig-002-20230905   gcc  
x86_64                randconfig-003-20230905   gcc  
x86_64                randconfig-004-20230905   gcc  
x86_64                randconfig-005-20230905   gcc  
x86_64                randconfig-006-20230905   gcc  
x86_64                randconfig-011-20230905   clang
x86_64                randconfig-012-20230905   clang
x86_64                randconfig-013-20230905   clang
x86_64                randconfig-014-20230905   clang
x86_64                randconfig-015-20230905   clang
x86_64                randconfig-016-20230905   clang
x86_64                randconfig-071-20230905   clang
x86_64                randconfig-072-20230905   clang
x86_64                randconfig-073-20230905   clang
x86_64                randconfig-074-20230905   clang
x86_64                randconfig-075-20230905   clang
x86_64                randconfig-076-20230905   clang
x86_64               randconfig-r032-20230905   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r023-20230905   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
