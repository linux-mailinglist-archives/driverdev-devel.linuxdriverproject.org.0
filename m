Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E0677F065
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Aug 2023 08:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B20C683BF1;
	Thu, 17 Aug 2023 06:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B20C683BF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PshdgHnB_qGi; Thu, 17 Aug 2023 06:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BE1083BE6;
	Thu, 17 Aug 2023 06:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BE1083BE6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE5BD1BF3F2
 for <devel@linuxdriverproject.org>; Thu, 17 Aug 2023 06:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DD56403C6
 for <devel@linuxdriverproject.org>; Thu, 17 Aug 2023 06:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DD56403C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-mej2s-MlK7 for <devel@linuxdriverproject.org>;
 Thu, 17 Aug 2023 06:11:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1BAD4019D
 for <devel@driverdev.osuosl.org>; Thu, 17 Aug 2023 06:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1BAD4019D
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="362873826"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="362873826"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 23:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848761980"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="848761980"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2023 23:11:09 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWWDs-0000qD-14;
 Thu, 17 Aug 2023 06:11:08 +0000
Date: Thu, 17 Aug 2023 14:10:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f7bb242601deae2bb62db40ce4edea9a6193d0d2
Message-ID: <202308171453.E7N3Bcf0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692252671; x=1723788671;
 h=date:from:to:cc:subject:message-id;
 bh=mF/+M7uBl66L9EnPkoigkgz2pRY8/b3kh8GFUH8GyzE=;
 b=B4zOz2oiR/bwFxavfS9zm7FyUPuzg+cCefg3dd4EmLWXQD36YagzFpyy
 yblMm4PIEDX87woU+pTOl8XOnwoGZFctR0VZK5Lnay/SeaRf9oV+7Fbqw
 E5ljZ+/+KLfSsdkjs3yUuLiXM2LbuQT4SL2UpOBDRAXgPKQd/DA16oyWl
 vPxy1dPhOsLj/MVRZtrsv3doBMbXzJMXq+FJJc96mccf2dwN5/gvMrQeU
 9yZhJQUj2IZYb+Taivrw9UcM+Jipr9xbcEqs+ZvGZ+pK5ObfvROohxegO
 Or841+4HbPCs1GD7B2vTXJFWe6xM8RrCMEJRov0+GhYv7BUisdkaWRb4I
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B4zOz2oi
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
branch HEAD: f7bb242601deae2bb62db40ce4edea9a6193d0d2  drivers: base: test: Add missing MODULE_* macros to root device tests

elapsed time: 725m

configs tested: 162
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230817   gcc  
alpha                randconfig-r006-20230817   gcc  
alpha                randconfig-r035-20230817   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r025-20230817   gcc  
arc                  randconfig-r026-20230817   gcc  
arc                  randconfig-r043-20230817   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                  randconfig-r001-20230817   gcc  
arm                  randconfig-r026-20230817   clang
arm                  randconfig-r046-20230817   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230817   gcc  
arm64                randconfig-r024-20230817   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230817   gcc  
csky                 randconfig-r005-20230817   gcc  
csky                 randconfig-r013-20230817   gcc  
hexagon              randconfig-r003-20230817   clang
hexagon              randconfig-r024-20230817   clang
hexagon              randconfig-r034-20230817   clang
hexagon              randconfig-r041-20230817   clang
hexagon              randconfig-r045-20230817   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230817   clang
i386         buildonly-randconfig-r005-20230817   clang
i386         buildonly-randconfig-r006-20230817   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230817   clang
i386                 randconfig-i002-20230817   clang
i386                 randconfig-i003-20230817   clang
i386                 randconfig-i004-20230817   clang
i386                 randconfig-i005-20230817   clang
i386                 randconfig-i006-20230817   clang
i386                 randconfig-i011-20230817   gcc  
i386                 randconfig-i012-20230817   gcc  
i386                 randconfig-i013-20230817   gcc  
i386                 randconfig-i014-20230817   gcc  
i386                 randconfig-i015-20230817   gcc  
i386                 randconfig-i016-20230817   gcc  
i386                 randconfig-r015-20230817   gcc  
i386                 randconfig-r024-20230817   gcc  
i386                 randconfig-r025-20230817   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r001-20230817   gcc  
microblaze           randconfig-r012-20230817   gcc  
microblaze           randconfig-r016-20230817   gcc  
microblaze           randconfig-r026-20230817   gcc  
microblaze           randconfig-r032-20230817   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   gcc  
mips                 randconfig-r002-20230817   gcc  
mips                 randconfig-r004-20230817   gcc  
mips                 randconfig-r013-20230817   clang
mips                 randconfig-r016-20230817   clang
mips                 randconfig-r023-20230817   clang
mips                 randconfig-r033-20230817   gcc  
mips                 randconfig-r034-20230817   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230817   gcc  
openrisc             randconfig-r004-20230817   gcc  
openrisc             randconfig-r005-20230817   gcc  
openrisc             randconfig-r013-20230817   gcc  
openrisc             randconfig-r014-20230817   gcc  
openrisc             randconfig-r022-20230817   gcc  
parisc                           alldefconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230817   gcc  
parisc               randconfig-r033-20230817   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     stx_gp3_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230817   clang
riscv                randconfig-r011-20230817   gcc  
riscv                randconfig-r036-20230817   clang
riscv                randconfig-r042-20230817   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230817   clang
s390                 randconfig-r044-20230817   gcc  
sh                               allmodconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                   randconfig-r015-20230817   gcc  
sh                   randconfig-r023-20230817   gcc  
sh                          rsk7269_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230817   gcc  
sparc                randconfig-r023-20230817   gcc  
sparc                randconfig-r026-20230817   gcc  
sparc                randconfig-r032-20230817   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230817   gcc  
um                   randconfig-r011-20230817   clang
um                   randconfig-r024-20230817   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230817   clang
x86_64       buildonly-randconfig-r002-20230817   clang
x86_64       buildonly-randconfig-r003-20230817   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r002-20230817   clang
x86_64               randconfig-r003-20230817   clang
x86_64               randconfig-r012-20230817   gcc  
x86_64               randconfig-r022-20230817   gcc  
x86_64               randconfig-r023-20230817   gcc  
x86_64               randconfig-r035-20230817   clang
x86_64               randconfig-x001-20230817   gcc  
x86_64               randconfig-x002-20230817   gcc  
x86_64               randconfig-x003-20230817   gcc  
x86_64               randconfig-x004-20230817   gcc  
x86_64               randconfig-x005-20230817   gcc  
x86_64               randconfig-x006-20230817   gcc  
x86_64               randconfig-x011-20230817   clang
x86_64               randconfig-x012-20230817   clang
x86_64               randconfig-x013-20230817   clang
x86_64               randconfig-x014-20230817   clang
x86_64               randconfig-x015-20230817   clang
x86_64               randconfig-x016-20230817   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230817   gcc  
xtensa               randconfig-r025-20230817   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
