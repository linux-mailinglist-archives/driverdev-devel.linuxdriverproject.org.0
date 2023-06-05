Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F483722DC7
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Jun 2023 19:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66F88611DF;
	Mon,  5 Jun 2023 17:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66F88611DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EYLlojw5gm9h; Mon,  5 Jun 2023 17:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFA07611B8;
	Mon,  5 Jun 2023 17:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFA07611B8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B52C21BF40B
 for <devel@linuxdriverproject.org>; Mon,  5 Jun 2023 17:42:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E99E40620
 for <devel@linuxdriverproject.org>; Mon,  5 Jun 2023 17:42:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E99E40620
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AS6Lvp6w-fYZ for <devel@linuxdriverproject.org>;
 Mon,  5 Jun 2023 17:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 342A04037E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 342A04037E
 for <devel@driverdev.osuosl.org>; Mon,  5 Jun 2023 17:42:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358885255"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="358885255"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 10:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="702834935"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="702834935"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 05 Jun 2023 10:42:16 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6EDf-0004JQ-1G;
 Mon, 05 Jun 2023 17:42:15 +0000
Date: Tue, 06 Jun 2023 01:41:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 16b58423b4c33dfd9622dcfc93bc5ce35c17ce72
Message-ID: <20230605174119.cYSIq%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685986938; x=1717522938;
 h=date:from:to:cc:subject:message-id;
 bh=2X7vEDOG3I2e8iNw7JTpTUmoOlO8HoC69MGNw1Lb4NU=;
 b=HDhHBU1iEwb6eCBvnBqf/rPUijg9EsVDRJZpOyYHZOKPTWg2KeOhzb+C
 hNmdZ6cW5WjcGN9Uq9i5b2d5AwDH4essL0tRJwoT2dvVKHdvJ7dWc7vdb
 32DgD0S3xSo2w37rm3T9NIHGEhw9JW5jPGZHuMd9cBCq8TQQ5jf0hVzLy
 0/18fPo4ViyII4SUnYY9XKg+oXdgh5rKt5Uoq+lxXNHRCFkh4zWMzVWYL
 OCzRbh4zwB5Og8D+0MTl1isFo5BcTzsfrrJQUzPucEQK5XdAlGHfNH6U0
 Y9TdUurRwKT22Zh9Fn9t/EKKVD+7+31LvQad5qZEh06iGqRplL6nBdeMY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HDhHBU1i
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 16b58423b4c33dfd9622dcfc93bc5ce35c17ce72  Merge 6.4-rc5 into driver-core-next

elapsed time: 721m

configs tested: 258
configs skipped: 22

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230605   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230605   gcc  
alpha                randconfig-r013-20230605   gcc  
alpha                randconfig-r016-20230605   gcc  
alpha                randconfig-r033-20230605   gcc  
alpha                randconfig-r035-20230605   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230605   gcc  
arc          buildonly-randconfig-r005-20230605   gcc  
arc          buildonly-randconfig-r006-20230605   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r015-20230605   gcc  
arc                  randconfig-r016-20230605   gcc  
arc                  randconfig-r025-20230605   gcc  
arc                  randconfig-r026-20230605   gcc  
arc                  randconfig-r043-20230605   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm          buildonly-randconfig-r003-20230605   clang
arm                                 defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                             pxa_defconfig   gcc  
arm                  randconfig-r005-20230605   gcc  
arm                  randconfig-r012-20230605   clang
arm                  randconfig-r024-20230605   clang
arm                  randconfig-r031-20230605   gcc  
arm                  randconfig-r036-20230605   gcc  
arm                  randconfig-r046-20230605   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230605   clang
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230605   clang
arm64                randconfig-r011-20230605   gcc  
arm64                randconfig-r012-20230605   gcc  
arm64                randconfig-r026-20230605   gcc  
arm64                randconfig-r034-20230605   clang
csky         buildonly-randconfig-r001-20230605   gcc  
csky         buildonly-randconfig-r005-20230605   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230605   gcc  
csky                 randconfig-r002-20230605   gcc  
csky                 randconfig-r004-20230605   gcc  
csky                 randconfig-r012-20230605   gcc  
csky                 randconfig-r014-20230605   gcc  
csky                 randconfig-r015-20230605   gcc  
csky                 randconfig-r022-20230605   gcc  
csky                 randconfig-r032-20230605   gcc  
hexagon                          alldefconfig   clang
hexagon      buildonly-randconfig-r005-20230605   clang
hexagon              randconfig-r003-20230605   clang
hexagon              randconfig-r004-20230605   clang
hexagon              randconfig-r014-20230605   clang
hexagon              randconfig-r036-20230605   clang
hexagon              randconfig-r041-20230605   clang
hexagon              randconfig-r045-20230605   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r001-20230605   clang
i386         buildonly-randconfig-r003-20230605   clang
i386         buildonly-randconfig-r004-20230605   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230605   clang
i386                 randconfig-i002-20230605   clang
i386                 randconfig-i003-20230605   clang
i386                 randconfig-i004-20230605   clang
i386                 randconfig-i005-20230605   clang
i386                 randconfig-i006-20230605   clang
i386                 randconfig-i011-20230605   gcc  
i386                 randconfig-i012-20230605   gcc  
i386                 randconfig-i013-20230605   gcc  
i386                 randconfig-i014-20230605   gcc  
i386                 randconfig-i015-20230605   gcc  
i386                 randconfig-i016-20230605   gcc  
i386                 randconfig-i051-20230605   clang
i386                 randconfig-i052-20230605   clang
i386                 randconfig-i053-20230605   clang
i386                 randconfig-i054-20230605   clang
i386                 randconfig-i055-20230605   clang
i386                 randconfig-i056-20230605   clang
i386                 randconfig-i061-20230605   clang
i386                 randconfig-i062-20230605   clang
i386                 randconfig-i063-20230605   clang
i386                 randconfig-i064-20230605   clang
i386                 randconfig-i065-20230605   clang
i386                 randconfig-i066-20230605   clang
i386                 randconfig-r002-20230605   clang
i386                 randconfig-r021-20230605   gcc  
i386                 randconfig-r022-20230605   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230605   gcc  
loongarch    buildonly-randconfig-r006-20230605   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r003-20230605   gcc  
loongarch            randconfig-r016-20230605   gcc  
loongarch            randconfig-r024-20230605   gcc  
loongarch            randconfig-r031-20230605   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230605   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230605   gcc  
m68k                 randconfig-r023-20230605   gcc  
microblaze   buildonly-randconfig-r004-20230605   gcc  
microblaze           randconfig-r001-20230605   gcc  
microblaze           randconfig-r004-20230605   gcc  
microblaze           randconfig-r006-20230605   gcc  
microblaze           randconfig-r016-20230605   gcc  
microblaze           randconfig-r026-20230605   gcc  
microblaze           randconfig-r034-20230605   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230605   gcc  
mips                         db1xxx_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                      malta_kvm_defconfig   clang
mips                        maltaup_defconfig   clang
mips                      pic32mzda_defconfig   clang
mips                        qi_lb60_defconfig   clang
mips                 randconfig-r003-20230605   gcc  
nios2                            alldefconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230605   gcc  
nios2                randconfig-r005-20230605   gcc  
nios2                randconfig-r011-20230605   gcc  
nios2                randconfig-r014-20230605   gcc  
nios2                randconfig-r016-20230605   gcc  
nios2                randconfig-r024-20230605   gcc  
nios2                randconfig-r032-20230605   gcc  
nios2                randconfig-r035-20230605   gcc  
openrisc     buildonly-randconfig-r003-20230605   gcc  
openrisc     buildonly-randconfig-r005-20230605   gcc  
openrisc             randconfig-r006-20230605   gcc  
parisc       buildonly-randconfig-r003-20230605   gcc  
parisc       buildonly-randconfig-r004-20230605   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230605   gcc  
parisc               randconfig-r002-20230605   gcc  
parisc               randconfig-r012-20230605   gcc  
parisc               randconfig-r013-20230605   gcc  
parisc               randconfig-r014-20230605   gcc  
parisc               randconfig-r015-20230605   gcc  
parisc               randconfig-r021-20230605   gcc  
parisc               randconfig-r025-20230605   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230605   gcc  
powerpc      buildonly-randconfig-r003-20230605   gcc  
powerpc                       ebony_defconfig   clang
powerpc                       eiger_defconfig   gcc  
powerpc                     kmeter1_defconfig   clang
powerpc                   motionpro_defconfig   gcc  
powerpc                     mpc5200_defconfig   clang
powerpc                 mpc8313_rdb_defconfig   clang
powerpc                 mpc8540_ads_defconfig   gcc  
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r001-20230605   clang
powerpc              randconfig-r002-20230605   clang
powerpc              randconfig-r012-20230605   gcc  
powerpc              randconfig-r015-20230605   gcc  
powerpc              randconfig-r021-20230605   gcc  
powerpc              randconfig-r036-20230605   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230605   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230605   clang
riscv                randconfig-r022-20230605   gcc  
riscv                randconfig-r036-20230605   clang
riscv                randconfig-r042-20230605   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230605   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230605   gcc  
s390                 randconfig-r022-20230605   gcc  
s390                 randconfig-r044-20230605   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230605   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r013-20230605   gcc  
sh                   randconfig-r016-20230605   gcc  
sh                   randconfig-r034-20230605   gcc  
sh                           se7721_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230605   gcc  
sparc                randconfig-r004-20230605   gcc  
sparc                randconfig-r012-20230605   gcc  
sparc                randconfig-r022-20230605   gcc  
sparc                randconfig-r024-20230605   gcc  
sparc                randconfig-r025-20230605   gcc  
sparc                randconfig-r026-20230605   gcc  
sparc                randconfig-r033-20230605   gcc  
sparc64      buildonly-randconfig-r003-20230605   gcc  
sparc64      buildonly-randconfig-r006-20230605   gcc  
sparc64              randconfig-r004-20230605   gcc  
sparc64              randconfig-r011-20230605   gcc  
sparc64              randconfig-r023-20230605   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230605   clang
x86_64               randconfig-a002-20230605   clang
x86_64               randconfig-a003-20230605   clang
x86_64               randconfig-a004-20230605   clang
x86_64               randconfig-a005-20230605   clang
x86_64               randconfig-a006-20230605   clang
x86_64               randconfig-a011-20230605   gcc  
x86_64               randconfig-a012-20230605   gcc  
x86_64               randconfig-a013-20230605   gcc  
x86_64               randconfig-a014-20230605   gcc  
x86_64               randconfig-a015-20230605   gcc  
x86_64               randconfig-a016-20230605   gcc  
x86_64               randconfig-k001-20230605   gcc  
x86_64               randconfig-r005-20230605   clang
x86_64               randconfig-r016-20230605   gcc  
x86_64               randconfig-r023-20230605   gcc  
x86_64               randconfig-x051-20230605   gcc  
x86_64               randconfig-x052-20230605   gcc  
x86_64               randconfig-x053-20230605   gcc  
x86_64               randconfig-x054-20230605   gcc  
x86_64               randconfig-x055-20230605   gcc  
x86_64               randconfig-x056-20230605   gcc  
x86_64               randconfig-x061-20230605   gcc  
x86_64               randconfig-x062-20230605   gcc  
x86_64               randconfig-x063-20230605   gcc  
x86_64               randconfig-x064-20230605   gcc  
x86_64               randconfig-x065-20230605   gcc  
x86_64               randconfig-x066-20230605   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230605   gcc  
xtensa       buildonly-randconfig-r006-20230605   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r002-20230605   gcc  
xtensa               randconfig-r004-20230605   gcc  
xtensa               randconfig-r006-20230605   gcc  
xtensa               randconfig-r011-20230605   gcc  
xtensa               randconfig-r012-20230605   gcc  
xtensa               randconfig-r013-20230605   gcc  
xtensa               randconfig-r015-20230605   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
