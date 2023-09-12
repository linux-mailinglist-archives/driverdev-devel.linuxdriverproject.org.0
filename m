Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A7179C40D
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Sep 2023 05:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9B104018B;
	Tue, 12 Sep 2023 03:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9B104018B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvapYgvDWtFh; Tue, 12 Sep 2023 03:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A4244036F;
	Tue, 12 Sep 2023 03:24:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A4244036F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A02641BF357
 for <devel@linuxdriverproject.org>; Tue, 12 Sep 2023 03:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7294B60AEB
 for <devel@linuxdriverproject.org>; Tue, 12 Sep 2023 03:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7294B60AEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2l2G2Jb3dTCi for <devel@linuxdriverproject.org>;
 Tue, 12 Sep 2023 03:24:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C93060AE6
 for <devel@driverdev.osuosl.org>; Tue, 12 Sep 2023 03:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C93060AE6
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="358540739"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="358540739"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 20:24:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720229065"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="720229065"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 11 Sep 2023 20:24:13 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qfu0Z-0007Dw-2D;
 Tue, 12 Sep 2023 03:24:11 +0000
Date: Tue, 12 Sep 2023 11:24:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 c27d96a2b642fd02ef7b08427b0499c244638bd6
Message-ID: <202309121101.xV8oHHg9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694489057; x=1726025057;
 h=date:from:to:cc:subject:message-id;
 bh=I2Ay00rswje6qQWB/NqhM55YXH1iYH93CYme20QmYW0=;
 b=E9ZUPl5VbIMPmWOWtStIEdxWz4j1K37+ztAakp5SQNcYfyL+lrEZVDW6
 99pwhTP1lBVovG5RdzT1jPdjXWEjofkpgi/q/rq+dspLZj+Kvl/HM5Yg+
 RiOqAuR7gixlCKUZL2gxrSQqTEYE8PflIGnesy7DfPIftTbrBCDDYT1c3
 IFLNaQ1k0B20V0RC0es2ocqa7qnEe8eBDt81xfFgWvMbJCqwZ3Gn6gCR1
 9q/pJwJUMu5h232JL3cuF79mZyIcx7UPAxBNLeqOKz/GQ0Itncyb0310E
 Pr2Rw3ZDKGJI/cePREE23yb66ixxvb1Br7jADCrI7aOeb545FlZ+hs62k
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E9ZUPl5V
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
branch HEAD: c27d96a2b642fd02ef7b08427b0499c244638bd6  rapidio: make all 'class' structures const

elapsed time: 909m

configs tested: 241
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230911   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                  randconfig-r011-20230912   gcc  
arc                  randconfig-r012-20230911   gcc  
arc                  randconfig-r032-20230911   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                       aspeed_g5_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20230912   clang
arm                  randconfig-r004-20230911   clang
arm                  randconfig-r026-20230912   clang
arm                         s3c6400_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230912   clang
arm64                randconfig-r006-20230912   clang
arm64                randconfig-r016-20230912   gcc  
arm64                randconfig-r036-20230912   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r033-20230911   gcc  
hexagon               randconfig-001-20230912   clang
hexagon               randconfig-002-20230912   clang
hexagon              randconfig-r004-20230912   clang
hexagon              randconfig-r015-20230911   clang
hexagon              randconfig-r032-20230912   clang
hexagon              randconfig-r035-20230911   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230911   gcc  
i386         buildonly-randconfig-001-20230912   clang
i386         buildonly-randconfig-002-20230911   gcc  
i386         buildonly-randconfig-002-20230912   clang
i386         buildonly-randconfig-003-20230911   gcc  
i386         buildonly-randconfig-003-20230912   clang
i386         buildonly-randconfig-004-20230911   gcc  
i386         buildonly-randconfig-004-20230912   clang
i386         buildonly-randconfig-005-20230911   gcc  
i386         buildonly-randconfig-005-20230912   clang
i386         buildonly-randconfig-006-20230911   gcc  
i386         buildonly-randconfig-006-20230912   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230911   gcc  
i386                  randconfig-001-20230912   clang
i386                  randconfig-002-20230911   gcc  
i386                  randconfig-002-20230912   clang
i386                  randconfig-003-20230911   gcc  
i386                  randconfig-003-20230912   clang
i386                  randconfig-004-20230911   gcc  
i386                  randconfig-004-20230912   clang
i386                  randconfig-005-20230911   gcc  
i386                  randconfig-005-20230912   clang
i386                  randconfig-006-20230911   gcc  
i386                  randconfig-006-20230912   clang
i386                  randconfig-011-20230911   clang
i386                  randconfig-011-20230912   gcc  
i386                  randconfig-012-20230911   clang
i386                  randconfig-012-20230912   gcc  
i386                  randconfig-013-20230911   clang
i386                  randconfig-013-20230912   gcc  
i386                  randconfig-014-20230911   clang
i386                  randconfig-014-20230912   gcc  
i386                  randconfig-015-20230911   clang
i386                  randconfig-015-20230912   gcc  
i386                  randconfig-016-20230911   clang
i386                  randconfig-016-20230912   gcc  
i386                 randconfig-r003-20230911   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230911   gcc  
loongarch             randconfig-001-20230912   gcc  
loongarch            randconfig-r015-20230912   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r002-20230911   gcc  
m68k                 randconfig-r034-20230911   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r013-20230912   gcc  
microblaze           randconfig-r023-20230911   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230911   gcc  
nios2                randconfig-r005-20230911   gcc  
nios2                randconfig-r016-20230911   gcc  
nios2                randconfig-r036-20230911   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r011-20230911   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r022-20230911   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                     ppa8548_defconfig   clang
powerpc                      ppc6xx_defconfig   gcc  
powerpc              randconfig-r001-20230912   clang
powerpc              randconfig-r005-20230912   clang
powerpc                        warp_defconfig   gcc  
powerpc64            randconfig-r013-20230911   clang
powerpc64            randconfig-r014-20230912   gcc  
powerpc64            randconfig-r024-20230911   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                 randconfig-001-20230912   clang
riscv                randconfig-r005-20230912   clang
riscv                randconfig-r021-20230911   clang
riscv                randconfig-r025-20230911   clang
riscv                randconfig-r035-20230912   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r031-20230912   clang
s390                 randconfig-r032-20230912   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r012-20230912   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r006-20230911   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r026-20230911   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230911   gcc  
x86_64       buildonly-randconfig-001-20230912   clang
x86_64       buildonly-randconfig-002-20230911   gcc  
x86_64       buildonly-randconfig-002-20230912   clang
x86_64       buildonly-randconfig-003-20230911   gcc  
x86_64       buildonly-randconfig-003-20230912   clang
x86_64       buildonly-randconfig-004-20230911   gcc  
x86_64       buildonly-randconfig-004-20230912   clang
x86_64       buildonly-randconfig-005-20230911   gcc  
x86_64       buildonly-randconfig-005-20230912   clang
x86_64       buildonly-randconfig-006-20230911   gcc  
x86_64       buildonly-randconfig-006-20230912   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230911   clang
x86_64                randconfig-001-20230912   gcc  
x86_64                randconfig-002-20230911   clang
x86_64                randconfig-002-20230912   gcc  
x86_64                randconfig-003-20230911   clang
x86_64                randconfig-003-20230912   gcc  
x86_64                randconfig-004-20230911   clang
x86_64                randconfig-004-20230912   gcc  
x86_64                randconfig-005-20230911   clang
x86_64                randconfig-005-20230912   gcc  
x86_64                randconfig-006-20230911   clang
x86_64                randconfig-006-20230912   gcc  
x86_64                randconfig-011-20230911   gcc  
x86_64                randconfig-011-20230912   clang
x86_64                randconfig-012-20230911   gcc  
x86_64                randconfig-012-20230912   clang
x86_64                randconfig-013-20230911   gcc  
x86_64                randconfig-013-20230912   clang
x86_64                randconfig-014-20230911   gcc  
x86_64                randconfig-014-20230912   clang
x86_64                randconfig-015-20230911   gcc  
x86_64                randconfig-015-20230912   clang
x86_64                randconfig-016-20230911   gcc  
x86_64                randconfig-016-20230912   clang
x86_64                randconfig-071-20230911   gcc  
x86_64                randconfig-071-20230912   clang
x86_64                randconfig-072-20230911   gcc  
x86_64                randconfig-072-20230912   clang
x86_64                randconfig-073-20230911   gcc  
x86_64                randconfig-073-20230912   clang
x86_64                randconfig-074-20230911   gcc  
x86_64                randconfig-074-20230912   clang
x86_64                randconfig-075-20230911   gcc  
x86_64                randconfig-075-20230912   clang
x86_64                randconfig-076-20230911   gcc  
x86_64                randconfig-076-20230912   clang
x86_64               randconfig-r031-20230911   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
