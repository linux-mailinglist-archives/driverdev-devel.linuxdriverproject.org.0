Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B056AF722
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Mar 2023 22:03:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9599961117;
	Tue,  7 Mar 2023 21:03:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9599961117
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfcYZ5TyvBoF; Tue,  7 Mar 2023 21:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4501661104;
	Tue,  7 Mar 2023 21:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4501661104
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA2271BF3EC
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 21:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EB51812A7
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 21:03:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EB51812A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rgQT-xzY9u7A for <devel@linuxdriverproject.org>;
 Tue,  7 Mar 2023 21:03:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75756812A5
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75756812A5
 for <devel@driverdev.osuosl.org>; Tue,  7 Mar 2023 21:03:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="363606962"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="363606962"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 13:03:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="800502854"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="800502854"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 07 Mar 2023 13:03:19 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZeSs-0001bB-2L;
 Tue, 07 Mar 2023 21:03:18 +0000
Date: Wed, 08 Mar 2023 05:02:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 54a801eafb0de120f86fcd8911838ed375878889
Message-ID: <6407a65e.aGRsnJPgkEXLAU+/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678223001; x=1709759001;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NGgJR0FY89hMXshHWKZ4hpxw+pKK7a5LnNHGqH209C8=;
 b=DO4mAZ2buVcNgbMlKunpE3b/mc6tU0UEsNOYoPOk97qaLDdbCibXfrWL
 aooB4URpX4Fd72wps8aeFX+zURxN8RzDFZ8jM0OszdaVOy5jCTfu0405U
 /wOQsXXfuCGVOrAxF4jOzshA74nwg26r4+p/ZkhoOZ/XL/Sm0381Hxwqr
 GoF43tAGtUo3AjyJz+jOvWyUqdxPSnmiYqKydKdQ4bc3LcINobKvRZ5Yo
 dJlyE6nHGvov/SHvajH1fPyG/xfV6rOalCgzjuGP5rVbaoKooHjD2qEru
 R58hF0v43E/J/COelBqaJ5010EYl79tkpxgymtcQKg8V0l5j8jBUmcQeA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DO4mAZ2b
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
branch HEAD: 54a801eafb0de120f86fcd8911838ed375878889  driver core: device: make device_create*() take a const struct class *

elapsed time: 726m

configs tested: 132
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230306   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230305   gcc  
arc                  randconfig-r014-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230305   clang
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230306   clang
arm                  randconfig-r005-20230306   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230306   clang
arm64                randconfig-r024-20230306   clang
arm64                randconfig-r036-20230305   clang
csky                                defconfig   gcc  
csky                 randconfig-r012-20230306   gcc  
csky                 randconfig-r015-20230305   gcc  
hexagon      buildonly-randconfig-r001-20230305   clang
hexagon              randconfig-r032-20230305   clang
hexagon              randconfig-r033-20230306   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r032-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230305   gcc  
ia64                 randconfig-r031-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230305   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230305   gcc  
loongarch            randconfig-r022-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r023-20230306   gcc  
m68k                 randconfig-r026-20230305   gcc  
microblaze           randconfig-r013-20230306   gcc  
microblaze           randconfig-r016-20230306   gcc  
microblaze           randconfig-r022-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r036-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230306   gcc  
openrisc     buildonly-randconfig-r005-20230306   gcc  
openrisc     buildonly-randconfig-r006-20230305   gcc  
openrisc             randconfig-r026-20230306   gcc  
openrisc             randconfig-r033-20230305   gcc  
parisc       buildonly-randconfig-r003-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230305   gcc  
parisc               randconfig-r023-20230305   gcc  
parisc               randconfig-r024-20230305   gcc  
parisc               randconfig-r025-20230306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230306   gcc  
powerpc              randconfig-r025-20230305   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230306   clang
s390         buildonly-randconfig-r004-20230306   clang
s390                                defconfig   gcc  
s390                 randconfig-r021-20230305   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230305   gcc  
sh                   randconfig-r021-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230306   gcc  
sparc                randconfig-r012-20230305   gcc  
sparc                randconfig-r031-20230306   gcc  
sparc64      buildonly-randconfig-r004-20230305   gcc  
sparc64              randconfig-r004-20230305   gcc  
sparc64              randconfig-r006-20230305   gcc  
sparc64              randconfig-r034-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r011-20230306   clang
x86_64               randconfig-r035-20230306   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
