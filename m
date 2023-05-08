Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 819676FB5EB
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 19:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAF0A42877;
	Mon,  8 May 2023 17:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAF0A42877
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Oy3gY0xJznH; Mon,  8 May 2023 17:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0C0842809;
	Mon,  8 May 2023 17:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0C0842809
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 670F91BF359
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 17:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 402A381FC8
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 17:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 402A381FC8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJiBqbQpKtst for <devel@linuxdriverproject.org>;
 Mon,  8 May 2023 17:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964B281F64
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 964B281F64
 for <devel@driverdev.osuosl.org>; Mon,  8 May 2023 17:28:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="348536826"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="348536826"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="698601348"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="698601348"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 08 May 2023 10:28:37 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pw4f7-0001LQ-1v;
 Mon, 08 May 2023 17:28:37 +0000
Date: Tue, 09 May 2023 01:28:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 47493666337022938831542647d844ed8fec3626
Message-ID: <20230508172800.1BRN3%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683566920; x=1715102920;
 h=date:from:to:cc:subject:message-id;
 bh=gH8NKaBw3KwYvK3qejKQcGx67plCA2NzQT9dqsa4qM8=;
 b=TTT3gqC2XGamx2xgQS/mlh7e0qrPxP8jq0D454q2F483KpBEdgHEIRCC
 YT2VATQNKYxrEquxu+9A78zbxoQIiChRN+b5QD9tnX1Rm9evrADvBDf2O
 ++MEGsVa0FXslq3XyDa7bsHLQ34gedBF8l696FPJD08d3pgYS6AwCiSpD
 N8JbSji8hM5k40gScRPS+90HDENFpur925Qvt8uzAcQcWZdMYU+PoaXWJ
 gXWdOtMjzAHvC1Az40tyKLWFSMHQSSiq6tC5+YFLo8beolJgXY835TIjc
 CqnVlAgeGpFPUmwYTrOgKftJyqEdu3X8BAkDD80gur6WEjIcKhlMcl7Vr
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TTT3gqC2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 47493666337022938831542647d844ed8fec3626  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 832m

configs tested: 129
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230507   gcc  
alpha        buildonly-randconfig-r005-20230508   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230508   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230508   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230507   gcc  
arc                  randconfig-r043-20230507   gcc  
arc                  randconfig-r043-20230508   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230507   gcc  
arm                  randconfig-r046-20230508   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r032-20230507   gcc  
arm64                randconfig-r035-20230507   gcc  
csky         buildonly-randconfig-r004-20230507   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r024-20230508   gcc  
csky                 randconfig-r026-20230508   gcc  
hexagon              randconfig-r003-20230507   clang
hexagon              randconfig-r021-20230507   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r041-20230508   clang
hexagon              randconfig-r045-20230507   clang
hexagon              randconfig-r045-20230508   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230507   gcc  
ia64                 randconfig-r014-20230508   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230508   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230507   gcc  
loongarch            randconfig-r005-20230508   gcc  
loongarch            randconfig-r025-20230507   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230507   gcc  
m68k                 randconfig-r012-20230508   gcc  
m68k                 randconfig-r016-20230507   gcc  
microblaze   buildonly-randconfig-r001-20230508   gcc  
microblaze           randconfig-r003-20230508   gcc  
microblaze           randconfig-r005-20230507   gcc  
microblaze           randconfig-r013-20230507   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230507   clang
mips                 randconfig-r031-20230507   clang
nios2        buildonly-randconfig-r005-20230507   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230507   gcc  
nios2                randconfig-r015-20230508   gcc  
nios2                randconfig-r022-20230507   gcc  
openrisc             randconfig-r002-20230508   gcc  
openrisc             randconfig-r023-20230508   gcc  
openrisc             randconfig-r026-20230507   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r033-20230507   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r036-20230507   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230508   gcc  
riscv                randconfig-r022-20230508   gcc  
riscv                randconfig-r042-20230507   clang
riscv                randconfig-r042-20230508   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230507   clang
s390                 randconfig-r044-20230508   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r014-20230507   gcc  
sparc        buildonly-randconfig-r002-20230507   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r006-20230508   gcc  
sparc64              randconfig-r006-20230507   gcc  
sparc64              randconfig-r011-20230508   gcc  
sparc64              randconfig-r034-20230507   gcc  
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
x86_64               randconfig-a011-20230508   gcc  
x86_64               randconfig-a012-20230508   gcc  
x86_64               randconfig-a013-20230508   gcc  
x86_64               randconfig-a014-20230508   gcc  
x86_64               randconfig-a015-20230508   gcc  
x86_64               randconfig-a016-20230508   gcc  
x86_64               randconfig-r001-20230508   clang
x86_64               randconfig-r006-20230508   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230508   gcc  
xtensa               randconfig-r012-20230507   gcc  
xtensa               randconfig-r024-20230507   gcc  
xtensa               randconfig-r025-20230508   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
