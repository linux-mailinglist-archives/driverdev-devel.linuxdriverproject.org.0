Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B83715E44
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 May 2023 14:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C02CA4160A;
	Tue, 30 May 2023 12:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C02CA4160A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27N0ccrizl6m; Tue, 30 May 2023 12:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D69E341E7F;
	Tue, 30 May 2023 12:00:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D69E341E7F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD921BF5EA
 for <devel@linuxdriverproject.org>; Tue, 30 May 2023 12:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A390610E7
 for <devel@linuxdriverproject.org>; Tue, 30 May 2023 12:00:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A390610E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0pSfDDD0JkVQ for <devel@linuxdriverproject.org>;
 Tue, 30 May 2023 12:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08A2E60D78
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08A2E60D78
 for <devel@driverdev.osuosl.org>; Tue, 30 May 2023 12:00:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="357267645"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="357267645"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 05:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="683936923"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="683936923"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 30 May 2023 05:00:16 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q3y1P-0000Rp-1Q;
 Tue, 30 May 2023 12:00:15 +0000
Date: Tue, 30 May 2023 20:00:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 c6e9da9d556673b07e0ba4f00580904286787f22
Message-ID: <20230530120011.mi6yH%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685448022; x=1716984022;
 h=date:from:to:cc:subject:message-id;
 bh=pC7y2TSW8PmGwhxw5FKIf1AXodbzP16Cue8DHQWKPD0=;
 b=GW9nUW6hpqvWjT1RINdnYE89JjFb/b7UUoSfrqwBUgP9kVNFdzLm/j4l
 LqVDi8d8C9P7ehjXsL4RktueGY6Cphf8XX/PaG/LhqPFOiHWxaog7amdz
 duH40DFSN7DKU6KhoXnWDmjV0Knt4WWhFoF9dGy5BItMlhoidwmITWPb2
 zgHeMJDJE+7dgAmZ8UqgMAF4JBSH4iilQvzq40s58ubkINeHzOgKhizhh
 L8xvV0Doc7eGIGWhCo+1WzSIuOEhhhJSzYq/WAu7FMA/Nzm3QnOKmGUwR
 G37jyvB7aavaqkmp0kQ1tZ+VaTfSI+/lYVpWYw20wibtG1KCPxkkmCp10
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GW9nUW6h
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: c6e9da9d556673b07e0ba4f00580904286787f22  staging: rtl8192e: clean unnecessary braces warning on r8192E_phy.c

elapsed time: 2626m

configs tested: 309
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230529   gcc  
alpha        buildonly-randconfig-r005-20230529   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230528   gcc  
alpha                randconfig-r024-20230528   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230529   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230529   gcc  
arc                  randconfig-r005-20230529   gcc  
arc                  randconfig-r022-20230528   gcc  
arc                  randconfig-r024-20230529   gcc  
arc                  randconfig-r043-20230528   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                  randconfig-r005-20230528   clang
arm                  randconfig-r046-20230528   gcc  
arm                  randconfig-r046-20230529   clang
arm                             rpc_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r006-20230530   clang
hexagon              randconfig-r041-20230528   clang
hexagon              randconfig-r041-20230529   clang
hexagon              randconfig-r045-20230528   clang
hexagon              randconfig-r045-20230529   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230528   gcc  
i386                 randconfig-i001-20230529   clang
i386                 randconfig-i002-20230528   gcc  
i386                 randconfig-i002-20230529   clang
i386                 randconfig-i003-20230528   gcc  
i386                 randconfig-i003-20230529   clang
i386                 randconfig-i004-20230528   gcc  
i386                 randconfig-i004-20230529   clang
i386                 randconfig-i005-20230528   gcc  
i386                 randconfig-i005-20230529   clang
i386                 randconfig-i006-20230528   gcc  
i386                 randconfig-i006-20230529   clang
i386                 randconfig-i011-20230528   clang
i386                 randconfig-i011-20230529   gcc  
i386                 randconfig-i012-20230528   clang
i386                 randconfig-i012-20230529   gcc  
i386                 randconfig-i013-20230528   clang
i386                 randconfig-i013-20230529   gcc  
i386                 randconfig-i014-20230528   clang
i386                 randconfig-i014-20230529   gcc  
i386                 randconfig-i015-20230528   clang
i386                 randconfig-i015-20230529   gcc  
i386                 randconfig-i016-20230528   clang
i386                 randconfig-i016-20230529   gcc  
i386                 randconfig-i051-20230528   gcc  
i386                 randconfig-i051-20230529   clang
i386                 randconfig-i051-20230530   clang
i386                 randconfig-i052-20230528   gcc  
i386                 randconfig-i052-20230529   clang
i386                 randconfig-i052-20230530   clang
i386                 randconfig-i053-20230528   gcc  
i386                 randconfig-i053-20230529   clang
i386                 randconfig-i053-20230530   clang
i386                 randconfig-i054-20230528   gcc  
i386                 randconfig-i054-20230529   clang
i386                 randconfig-i054-20230530   clang
i386                 randconfig-i055-20230528   gcc  
i386                 randconfig-i055-20230529   clang
i386                 randconfig-i055-20230530   clang
i386                 randconfig-i056-20230528   gcc  
i386                 randconfig-i056-20230529   clang
i386                 randconfig-i056-20230530   clang
i386                 randconfig-i061-20230529   clang
i386                 randconfig-i061-20230530   clang
i386                 randconfig-i062-20230529   clang
i386                 randconfig-i062-20230530   clang
i386                 randconfig-i063-20230529   clang
i386                 randconfig-i063-20230530   clang
i386                 randconfig-i064-20230529   clang
i386                 randconfig-i064-20230530   clang
i386                 randconfig-i065-20230528   gcc  
i386                 randconfig-i065-20230529   clang
i386                 randconfig-i065-20230530   clang
i386                 randconfig-i066-20230528   gcc  
i386                 randconfig-i066-20230529   clang
i386                 randconfig-i066-20230530   clang
i386                 randconfig-i071-20230528   clang
i386                 randconfig-i071-20230529   gcc  
i386                 randconfig-i072-20230528   clang
i386                 randconfig-i072-20230529   gcc  
i386                 randconfig-i073-20230528   clang
i386                 randconfig-i073-20230529   gcc  
i386                 randconfig-i074-20230528   clang
i386                 randconfig-i074-20230529   gcc  
i386                 randconfig-i075-20230528   clang
i386                 randconfig-i075-20230529   gcc  
i386                 randconfig-i076-20230528   clang
i386                 randconfig-i076-20230529   gcc  
i386                 randconfig-i081-20230528   clang
i386                 randconfig-i081-20230529   gcc  
i386                 randconfig-i082-20230528   clang
i386                 randconfig-i082-20230529   gcc  
i386                 randconfig-i083-20230528   clang
i386                 randconfig-i083-20230529   gcc  
i386                 randconfig-i084-20230528   clang
i386                 randconfig-i084-20230529   gcc  
i386                 randconfig-i085-20230528   clang
i386                 randconfig-i085-20230529   gcc  
i386                 randconfig-i086-20230528   clang
i386                 randconfig-i086-20230529   gcc  
i386                 randconfig-i091-20230529   clang
i386                 randconfig-i092-20230529   clang
i386                 randconfig-i093-20230529   clang
i386                 randconfig-i094-20230529   clang
i386                 randconfig-i095-20230529   clang
i386                 randconfig-i096-20230529   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r002-20230529   gcc  
m68k                 randconfig-r013-20230529   gcc  
m68k                 randconfig-r035-20230528   gcc  
microblaze   buildonly-randconfig-r004-20230529   gcc  
microblaze           randconfig-r012-20230530   gcc  
microblaze           randconfig-r033-20230530   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips         buildonly-randconfig-r002-20230528   clang
mips                 randconfig-r001-20230528   clang
mips                 randconfig-r001-20230529   gcc  
mips                 randconfig-r026-20230528   gcc  
mips                          rb532_defconfig   gcc  
mips                        vocore2_defconfig   gcc  
nios2        buildonly-randconfig-r006-20230528   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230530   gcc  
nios2                randconfig-r012-20230529   gcc  
nios2                randconfig-r016-20230529   gcc  
openrisc     buildonly-randconfig-r003-20230528   gcc  
openrisc             randconfig-r021-20230529   gcc  
openrisc             randconfig-r036-20230530   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r004-20230529   gcc  
parisc               randconfig-r015-20230529   gcc  
parisc               randconfig-r025-20230528   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc                 mpc8540_ads_defconfig   gcc  
powerpc              randconfig-r022-20230529   gcc  
powerpc              randconfig-r036-20230528   gcc  
powerpc                     sequoia_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230528   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230528   gcc  
s390                 randconfig-r013-20230530   gcc  
s390                 randconfig-r014-20230530   gcc  
s390                 randconfig-r023-20230528   clang
s390                 randconfig-r023-20230529   gcc  
s390                 randconfig-r044-20230528   clang
sh                               allmodconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r031-20230528   gcc  
sh                   randconfig-r032-20230528   gcc  
sh                   randconfig-r035-20230530   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230530   gcc  
sparc                randconfig-r025-20230529   gcc  
sparc                randconfig-r026-20230529   gcc  
sparc                randconfig-r034-20230528   gcc  
sparc64              randconfig-r006-20230528   gcc  
sparc64              randconfig-r006-20230529   gcc  
sparc64              randconfig-r014-20230529   gcc  
sparc64              randconfig-r032-20230530   gcc  
um                               alldefconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230530   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230528   gcc  
x86_64               randconfig-a001-20230529   clang
x86_64               randconfig-a002-20230528   gcc  
x86_64               randconfig-a002-20230529   clang
x86_64               randconfig-a003-20230528   gcc  
x86_64               randconfig-a003-20230529   clang
x86_64               randconfig-a004-20230528   gcc  
x86_64               randconfig-a004-20230529   clang
x86_64               randconfig-a005-20230528   gcc  
x86_64               randconfig-a005-20230529   clang
x86_64               randconfig-a006-20230528   gcc  
x86_64               randconfig-a006-20230529   clang
x86_64               randconfig-a011-20230528   clang
x86_64               randconfig-a011-20230529   gcc  
x86_64               randconfig-a011-20230530   gcc  
x86_64               randconfig-a012-20230528   clang
x86_64               randconfig-a012-20230529   gcc  
x86_64               randconfig-a012-20230530   gcc  
x86_64               randconfig-a013-20230528   clang
x86_64               randconfig-a013-20230529   gcc  
x86_64               randconfig-a013-20230530   gcc  
x86_64               randconfig-a014-20230528   clang
x86_64               randconfig-a014-20230529   gcc  
x86_64               randconfig-a014-20230530   gcc  
x86_64               randconfig-a015-20230528   clang
x86_64               randconfig-a015-20230529   gcc  
x86_64               randconfig-a015-20230530   gcc  
x86_64               randconfig-a016-20230528   clang
x86_64               randconfig-a016-20230529   gcc  
x86_64               randconfig-a016-20230530   gcc  
x86_64               randconfig-k001-20230528   clang
x86_64               randconfig-r015-20230528   clang
x86_64               randconfig-x051-20230528   clang
x86_64               randconfig-x051-20230529   gcc  
x86_64               randconfig-x052-20230528   clang
x86_64               randconfig-x052-20230529   gcc  
x86_64               randconfig-x053-20230528   clang
x86_64               randconfig-x053-20230529   gcc  
x86_64               randconfig-x054-20230528   clang
x86_64               randconfig-x054-20230529   gcc  
x86_64               randconfig-x055-20230528   clang
x86_64               randconfig-x055-20230529   gcc  
x86_64               randconfig-x056-20230528   clang
x86_64               randconfig-x056-20230529   gcc  
x86_64               randconfig-x061-20230528   clang
x86_64               randconfig-x061-20230529   gcc  
x86_64               randconfig-x061-20230530   gcc  
x86_64               randconfig-x062-20230528   clang
x86_64               randconfig-x062-20230529   gcc  
x86_64               randconfig-x062-20230530   gcc  
x86_64               randconfig-x063-20230528   clang
x86_64               randconfig-x063-20230529   gcc  
x86_64               randconfig-x063-20230530   gcc  
x86_64               randconfig-x064-20230528   clang
x86_64               randconfig-x064-20230529   gcc  
x86_64               randconfig-x064-20230530   gcc  
x86_64               randconfig-x065-20230528   clang
x86_64               randconfig-x065-20230529   gcc  
x86_64               randconfig-x065-20230530   gcc  
x86_64               randconfig-x066-20230528   clang
x86_64               randconfig-x066-20230529   gcc  
x86_64               randconfig-x066-20230530   gcc  
x86_64               randconfig-x071-20230528   gcc  
x86_64               randconfig-x071-20230529   clang
x86_64               randconfig-x072-20230528   gcc  
x86_64               randconfig-x072-20230529   clang
x86_64               randconfig-x073-20230528   gcc  
x86_64               randconfig-x073-20230529   clang
x86_64               randconfig-x074-20230528   gcc  
x86_64               randconfig-x074-20230529   clang
x86_64               randconfig-x075-20230528   gcc  
x86_64               randconfig-x075-20230529   clang
x86_64               randconfig-x076-20230528   gcc  
x86_64               randconfig-x076-20230529   clang
x86_64               randconfig-x081-20230529   clang
x86_64               randconfig-x082-20230529   clang
x86_64               randconfig-x083-20230529   clang
x86_64               randconfig-x084-20230529   clang
x86_64               randconfig-x085-20230529   clang
x86_64               randconfig-x086-20230529   clang
x86_64               randconfig-x091-20230528   clang
x86_64               randconfig-x091-20230529   gcc  
x86_64               randconfig-x092-20230528   clang
x86_64               randconfig-x092-20230529   gcc  
x86_64               randconfig-x093-20230528   clang
x86_64               randconfig-x093-20230529   gcc  
x86_64               randconfig-x094-20230528   clang
x86_64               randconfig-x094-20230529   gcc  
x86_64               randconfig-x095-20230528   clang
x86_64               randconfig-x095-20230529   gcc  
x86_64               randconfig-x096-20230528   clang
x86_64               randconfig-x096-20230529   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa       buildonly-randconfig-r006-20230529   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r011-20230529   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
