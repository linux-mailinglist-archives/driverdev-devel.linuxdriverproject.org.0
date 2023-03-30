Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 031BC6CF91D
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 04:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9C978419F;
	Thu, 30 Mar 2023 02:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9C978419F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2O1LOPqEumvj; Thu, 30 Mar 2023 02:27:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71B0981213;
	Thu, 30 Mar 2023 02:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71B0981213
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55B111BF31F
 for <devel@linuxdriverproject.org>; Thu, 30 Mar 2023 02:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EAB14011F
 for <devel@linuxdriverproject.org>; Thu, 30 Mar 2023 02:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EAB14011F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x6NKnQZ0lzNV for <devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 02:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3E064010D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3E064010D
 for <devel@driverdev.osuosl.org>; Thu, 30 Mar 2023 02:27:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="403697646"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="403697646"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 19:27:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753819396"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753819396"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 29 Mar 2023 19:27:22 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phi0X-000KBW-1i;
 Thu, 30 Mar 2023 02:27:21 +0000
Date: Thu, 30 Mar 2023 10:26:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 61f21988d806a5c93c39179f2d91ea2d3219b025
Message-ID: <6424f362.95IDiiovV1+owZYS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680143244; x=1711679244;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WEqo0bcLixRXIE0c0v/bMeWKrZuuJQq32tXcIEAkCns=;
 b=lBuHfbjol57DfFaj6HQY/cMZCHFPfBxqSvGLipJQIvrLVtKMrIUc3sjG
 fW36EvLkgXki95fq+PgsjHIWGr+QCb2ClnJCX3ysNau5QI4L6vi19Mt/C
 pgBucZtPCuuGQ7wRlyNmsEZY2Kn4o7HB5k8nrle7tCqufMuJcyQ+RIBuG
 cgi4z2SGFHBA5z8dauohhd9Qn9XTd3rvyzcWz2I+bzBkBsfpXJrFNArkI
 ZXpUUs2MNqj7hALh5UesHrhyIIhzDMvLj+wO4jQG/Ad4SR5A3bvcHRH3N
 5zS7WEmTYaXA2rAp4Tvejq5aPiEjD/T6Sy6PoE6eh1i05Hf1c84uE4KOl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lBuHfbjo
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
branch HEAD: 61f21988d806a5c93c39179f2d91ea2d3219b025  docs: driver-api: firmware_loader: fix missing argument in usage example

elapsed time: 730m

configs tested: 233
configs skipped: 29

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230330   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230329   gcc  
alpha                randconfig-r012-20230329   gcc  
alpha                randconfig-r023-20230329   gcc  
alpha                randconfig-r026-20230329   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230329   gcc  
arc          buildonly-randconfig-r005-20230329   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r005-20230329   gcc  
arc                  randconfig-r013-20230329   gcc  
arc                  randconfig-r016-20230329   gcc  
arc                  randconfig-r025-20230329   gcc  
arc                  randconfig-r033-20230329   gcc  
arc                  randconfig-r034-20230329   gcc  
arc                  randconfig-r043-20230329   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm          buildonly-randconfig-r003-20230329   gcc  
arm          buildonly-randconfig-r006-20230329   gcc  
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                  randconfig-r013-20230329   gcc  
arm                  randconfig-r021-20230329   gcc  
arm                  randconfig-r025-20230329   gcc  
arm                  randconfig-r046-20230329   gcc  
arm                        realview_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230329   gcc  
arm64        buildonly-randconfig-r002-20230329   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230329   clang
arm64                randconfig-r025-20230329   clang
arm64                randconfig-r026-20230329   clang
arm64                randconfig-r032-20230329   gcc  
arm64                randconfig-r035-20230329   gcc  
arm64                randconfig-r036-20230329   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230329   gcc  
csky                 randconfig-r004-20230329   gcc  
csky                 randconfig-r011-20230329   gcc  
csky                 randconfig-r026-20230329   gcc  
hexagon              randconfig-r016-20230329   clang
hexagon              randconfig-r033-20230329   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r045-20230329   clang
i386                              allnoconfig   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230329   gcc  
ia64         buildonly-randconfig-r005-20230329   gcc  
ia64         buildonly-randconfig-r005-20230330   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230329   gcc  
ia64                 randconfig-r005-20230329   gcc  
ia64                 randconfig-r015-20230329   gcc  
ia64                 randconfig-r036-20230329   gcc  
ia64                            zx1_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230329   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r002-20230329   gcc  
loongarch            randconfig-r004-20230329   gcc  
loongarch            randconfig-r006-20230329   gcc  
loongarch            randconfig-r015-20230329   gcc  
loongarch            randconfig-r022-20230329   gcc  
loongarch            randconfig-r023-20230329   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k         buildonly-randconfig-r002-20230330   gcc  
m68k         buildonly-randconfig-r006-20230329   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230329   gcc  
m68k                 randconfig-r004-20230329   gcc  
m68k                 randconfig-r015-20230329   gcc  
m68k                 randconfig-r025-20230329   gcc  
m68k                 randconfig-r031-20230329   gcc  
m68k                 randconfig-r035-20230329   gcc  
microblaze   buildonly-randconfig-r002-20230329   gcc  
microblaze   buildonly-randconfig-r004-20230329   gcc  
microblaze   buildonly-randconfig-r005-20230329   gcc  
microblaze   buildonly-randconfig-r006-20230329   gcc  
microblaze           randconfig-r005-20230329   gcc  
microblaze           randconfig-r016-20230329   gcc  
microblaze           randconfig-r021-20230329   gcc  
microblaze           randconfig-r032-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      bmips_stb_defconfig   clang
mips                           ip32_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
mips                 randconfig-r001-20230329   clang
mips                 randconfig-r015-20230329   gcc  
mips                 randconfig-r021-20230329   gcc  
mips                 randconfig-r025-20230329   gcc  
nios2        buildonly-randconfig-r005-20230329   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230329   gcc  
nios2                randconfig-r006-20230329   gcc  
nios2                randconfig-r012-20230329   gcc  
nios2                randconfig-r016-20230329   gcc  
nios2                randconfig-r024-20230329   gcc  
nios2                randconfig-r031-20230329   gcc  
nios2                randconfig-r033-20230329   gcc  
nios2                randconfig-r035-20230329   gcc  
openrisc     buildonly-randconfig-r001-20230329   gcc  
openrisc     buildonly-randconfig-r003-20230329   gcc  
openrisc     buildonly-randconfig-r006-20230329   gcc  
openrisc             randconfig-r006-20230329   gcc  
openrisc             randconfig-r021-20230329   gcc  
openrisc             randconfig-r026-20230329   gcc  
openrisc             randconfig-r032-20230329   gcc  
openrisc             randconfig-r034-20230329   gcc  
openrisc             randconfig-r036-20230329   gcc  
parisc       buildonly-randconfig-r005-20230329   gcc  
parisc       buildonly-randconfig-r006-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230329   gcc  
parisc               randconfig-r022-20230329   gcc  
parisc               randconfig-r024-20230329   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                       ebony_defconfig   clang
powerpc                       holly_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r003-20230329   gcc  
powerpc              randconfig-r011-20230329   clang
powerpc              randconfig-r024-20230329   clang
powerpc              randconfig-r032-20230329   gcc  
powerpc              randconfig-r034-20230329   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230329   clang
riscv                randconfig-r026-20230329   clang
riscv                randconfig-r031-20230329   gcc  
riscv                randconfig-r042-20230329   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230329   clang
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230329   gcc  
s390                 randconfig-r005-20230329   gcc  
s390                 randconfig-r014-20230329   clang
s390                 randconfig-r015-20230329   clang
s390                 randconfig-r023-20230329   clang
s390                 randconfig-r035-20230329   gcc  
s390                 randconfig-r044-20230329   clang
sh                               allmodconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                   randconfig-r021-20230329   gcc  
sh                   randconfig-r022-20230329   gcc  
sh                   randconfig-r023-20230329   gcc  
sh                          rsk7264_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                             allnoconfig   gcc  
sparc        buildonly-randconfig-r001-20230329   gcc  
sparc        buildonly-randconfig-r003-20230329   gcc  
sparc        buildonly-randconfig-r006-20230329   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230329   gcc  
sparc                randconfig-r022-20230329   gcc  
sparc                randconfig-r024-20230329   gcc  
sparc64      buildonly-randconfig-r003-20230329   gcc  
sparc64      buildonly-randconfig-r004-20230329   gcc  
sparc64              randconfig-r003-20230329   gcc  
sparc64              randconfig-r013-20230329   gcc  
sparc64              randconfig-r024-20230329   gcc  
sparc64              randconfig-r031-20230329   gcc  
sparc64              randconfig-r033-20230329   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230329   gcc  
xtensa       buildonly-randconfig-r003-20230329   gcc  
xtensa       buildonly-randconfig-r003-20230330   gcc  
xtensa       buildonly-randconfig-r004-20230329   gcc  
xtensa       buildonly-randconfig-r006-20230330   gcc  
xtensa               randconfig-r002-20230329   gcc  
xtensa               randconfig-r003-20230329   gcc  
xtensa               randconfig-r012-20230329   gcc  
xtensa               randconfig-r021-20230329   gcc  
xtensa               randconfig-r022-20230329   gcc  
xtensa               randconfig-r024-20230329   gcc  
xtensa               randconfig-r033-20230329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
