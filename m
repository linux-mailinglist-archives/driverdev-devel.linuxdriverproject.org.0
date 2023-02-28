Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B68A66A502A
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 01:33:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1625560E66;
	Tue, 28 Feb 2023 00:33:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1625560E66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0O-LPFb0yZPS; Tue, 28 Feb 2023 00:33:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0621610A5;
	Tue, 28 Feb 2023 00:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0621610A5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1D571BF94D
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 00:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BF3740353
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 00:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BF3740353
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hChCuNNLntac for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 00:33:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03469402BC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03469402BC
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 00:33:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="335498991"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="335498991"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 16:33:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="737956912"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="737956912"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2023 16:33:10 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWnvZ-0004vW-1o;
 Tue, 28 Feb 2023 00:33:09 +0000
Date: Tue, 28 Feb 2023 08:33:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 0991e7e3175ba7e93d8c646d3068584c5888e0d9
Message-ID: <63fd4bbd.LNdRo2KUn7mtAT1p%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677544392; x=1709080392;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Z4CMhhAC34rMu2PpD9GijXHvViryIAznhPXtAbhbvpc=;
 b=FB+zqZ5vlOkLgHbkuCDtQMK3SxeGrVtdKgMUYMOwdsdpc73x9ozRYnfk
 bzWqtZi5IQ3o+9eiYvdBarLTj6kCo4uGa5BbGVu8H9PersvRiuuDsvwRr
 F/OY2+wZ3NP9fMEw/zigi3WSXFasHhz+AVw0p25GNEUPT5aZen/I4NnhY
 2zrIxsLLUSfGqHbHYL6qSRqHaxHki47dG9Yk1smYGWp4tIf9I+Oc2inBK
 WThkayZosQUJYWwWWkQuQGuinJPNF0qOUU76kNxu1d5m3RDPJlEsfz1u6
 S4EAYb7yfnq2q2c5WNUkivJQkFeo57vP8/2O87I6jlsvExQKSZSy6Z0mv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FB+zqZ5v
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
branch HEAD: 0991e7e3175ba7e93d8c646d3068584c5888e0d9  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 722m

configs tested: 129
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230226   gcc  
alpha                randconfig-r021-20230227   gcc  
alpha                randconfig-r031-20230226   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230226   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230227   gcc  
arc                  randconfig-r021-20230226   gcc  
arc                  randconfig-r033-20230226   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r033-20230227   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230227   clang
arm64        buildonly-randconfig-r005-20230226   gcc  
arm64        buildonly-randconfig-r005-20230227   clang
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230227   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r023-20230227   gcc  
hexagon      buildonly-randconfig-r003-20230227   clang
hexagon              randconfig-r014-20230227   clang
hexagon              randconfig-r024-20230227   clang
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
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230227   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r015-20230226   gcc  
ia64                 randconfig-r022-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r034-20230227   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r025-20230227   gcc  
m68k                 randconfig-r035-20230226   gcc  
microblaze   buildonly-randconfig-r006-20230227   gcc  
microblaze           randconfig-r035-20230227   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230226   clang
mips                 randconfig-r012-20230226   gcc  
mips                 randconfig-r034-20230226   clang
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230226   gcc  
nios2                randconfig-r031-20230227   gcc  
nios2                randconfig-r036-20230227   gcc  
openrisc             randconfig-r004-20230226   gcc  
openrisc             randconfig-r013-20230226   gcc  
openrisc             randconfig-r026-20230226   gcc  
openrisc             randconfig-r036-20230226   gcc  
parisc       buildonly-randconfig-r004-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230227   gcc  
parisc               randconfig-r025-20230226   gcc  
parisc               randconfig-r032-20230226   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230227   gcc  
powerpc              randconfig-r022-20230226   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230227   clang
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230227   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230226   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r003-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230226   gcc  
sparc64              randconfig-r003-20230226   gcc  
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
xtensa       buildonly-randconfig-r006-20230226   gcc  
xtensa               randconfig-r002-20230226   gcc  
xtensa               randconfig-r011-20230227   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
