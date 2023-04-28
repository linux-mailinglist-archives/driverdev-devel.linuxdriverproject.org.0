Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 260CB6F1DD9
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Apr 2023 20:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 907B981DA0;
	Fri, 28 Apr 2023 18:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 907B981DA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kEl8oL9jpJ4I; Fri, 28 Apr 2023 18:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53215819D6;
	Fri, 28 Apr 2023 18:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53215819D6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73E881BF578
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5752542A7E
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5752542A7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDGFQtqXHHAI for <devel@linuxdriverproject.org>;
 Fri, 28 Apr 2023 18:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 544B442A6F
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 544B442A6F
 for <devel@driverdev.osuosl.org>; Fri, 28 Apr 2023 18:13:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="349847669"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="349847669"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="838940648"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="838940648"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2023 11:13:40 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psSbD-0000b7-1x;
 Fri, 28 Apr 2023 18:13:39 +0000
Date: Sat, 29 Apr 2023 02:13:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 3e13b44726447d4efdc8c06f10dfb8a5df88f4ad
Message-ID: <20230428181302.DR3-X%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682705622; x=1714241622;
 h=date:from:to:cc:subject:message-id;
 bh=1ssiPa4KBHZFnUpzX4IjtA8b2l4xaXdimr+RMKOCvRk=;
 b=kcPOkiZMCLYUp+Q+76gJzmKdVHJRXPRLlRaHgBvsp8l8hMraoN65LbDr
 oBXYdEF+dajJV41t1grSxLCwNuwoJKAhqp9ySNJMeR4/bN4jOwqNt8GtC
 vrXlatvBCr0QqhglqcaSrVqJQaTyJpxjyNvY13HyjCR0Yb99EKkhslyaV
 EQeKrKROUIlJdAtL/D17Tao8klKL412C9hht75JYpeXv9laVya6WnVgOw
 99aPI8yB0+kOMBOv966DJE6fDdZTg9sBVjY8qEnvoDmC0uAjlj44iI3r/
 +urOIIiJBoG6/xKZxVxZVR7KFrZbQ8271FFGnTyPtljqCBU/k6K0VmTvi
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kcPOkiZM
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: 3e13b44726447d4efdc8c06f10dfb8a5df88f4ad  driver core: convert class_create() to class_register()

elapsed time: 723m

configs tested: 109
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230428   gcc  
alpha                randconfig-r013-20230427   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230428   gcc  
arc                  randconfig-r043-20230427   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r031-20230427   clang
arm                  randconfig-r046-20230427   gcc  
arm                             rpc_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky         buildonly-randconfig-r001-20230427   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230428   gcc  
csky                 randconfig-r022-20230427   gcc  
hexagon      buildonly-randconfig-r006-20230427   clang
hexagon              randconfig-r015-20230427   clang
hexagon              randconfig-r041-20230427   clang
hexagon              randconfig-r045-20230427   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230427   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230427   gcc  
ia64                 randconfig-r021-20230427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230427   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230427   gcc  
loongarch            randconfig-r014-20230427   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230428   gcc  
m68k                 randconfig-r006-20230428   gcc  
microblaze           randconfig-r024-20230427   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                           ip28_defconfig   clang
mips                 randconfig-r033-20230427   clang
mips                 randconfig-r035-20230427   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230427   gcc  
openrisc     buildonly-randconfig-r005-20230427   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230427   gcc  
parisc               randconfig-r034-20230427   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230427   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230427   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r025-20230427   clang
s390                 randconfig-r036-20230427   gcc  
s390                 randconfig-r044-20230427   clang
sh                               allmodconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230428   gcc  
sparc                randconfig-r006-20230427   gcc  
sparc64              randconfig-r026-20230427   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230427   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
