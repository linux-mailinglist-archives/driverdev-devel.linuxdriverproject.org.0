Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A616A5276
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 05:56:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03BDC40184;
	Tue, 28 Feb 2023 04:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03BDC40184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmdS43ntCaUF; Tue, 28 Feb 2023 04:56:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F829400D6;
	Tue, 28 Feb 2023 04:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F829400D6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39C0B1BF2B0
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 04:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13DFE81F73
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 04:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13DFE81F73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d2ix12lzj2Jm for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 04:56:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D299481F5F
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D299481F5F
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 04:56:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="313723184"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="313723184"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 20:56:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676169559"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="676169559"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 27 Feb 2023 20:56:19 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWs2E-00056B-0g;
 Tue, 28 Feb 2023 04:56:18 +0000
Date: Tue, 28 Feb 2023 12:56:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 f7e918c1d1e5a0945d0693c4a787a547dcdfc3a6
Message-ID: <63fd896e.TXUgDgDaUANSWnqE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677560180; x=1709096180;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DWHj4/mdVAAUGiAo9G68fEiHvRZtyQjnHEQnNvvLZZc=;
 b=YR8tGx0TsbSgnYljQrWRu9YTpX7Nbj77Bl7aBEh6JU/iZ2M07krIHB/i
 CSGPMRcsjI9S0wG7+fK7W0N39meSRkDqpPNYeGBl588K1sOu26rHtsTsW
 zUuRP6TRTvQQwtJxal1zbQzj34onQbIojgKLeFwmPd2iUANBbNwVrTmEp
 i2YUS3r9k4kUFyteZWF16BTjhvFUofHMDhngeKf3RekcMheAEM6qW+1Xx
 napU1Efw3TXB0lx6zDR4q6gZ+I4vor0DDCiy3+IvSZbkntu/0Zv/vBmRv
 BaxkKfqmKMv5DPY4mDtNCHXSyypyCSZGIBa1w8VpaZMAi0S/C5aUB8Xmz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YR8tGx0T
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: f7e918c1d1e5a0945d0693c4a787a547dcdfc3a6  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 723m

configs tested: 137
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230227   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230226   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230226   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230226   gcc  
arc                  randconfig-r024-20230226   gcc  
arc                  randconfig-r035-20230227   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230226   gcc  
arm          buildonly-randconfig-r002-20230227   clang
arm          buildonly-randconfig-r005-20230226   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230227   gcc  
arm                  randconfig-r034-20230227   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230227   clang
arm64                randconfig-r016-20230227   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230227   gcc  
csky                 randconfig-r036-20230226   gcc  
hexagon              randconfig-r014-20230227   clang
hexagon              randconfig-r021-20230227   clang
hexagon              randconfig-r024-20230227   clang
hexagon              randconfig-r026-20230227   clang
hexagon              randconfig-r032-20230227   clang
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
i386                 randconfig-r001-20230227   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230227   gcc  
ia64                 randconfig-r015-20230226   gcc  
ia64                 randconfig-r021-20230226   gcc  
ia64                 randconfig-r033-20230226   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230227   gcc  
loongarch            randconfig-r031-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230226   gcc  
m68k                 randconfig-r002-20230227   gcc  
microblaze           randconfig-r003-20230226   gcc  
microblaze           randconfig-r034-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r012-20230226   gcc  
nios2        buildonly-randconfig-r005-20230227   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230226   gcc  
openrisc     buildonly-randconfig-r006-20230227   gcc  
openrisc             randconfig-r006-20230227   gcc  
openrisc             randconfig-r013-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230226   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230227   gcc  
powerpc              randconfig-r022-20230226   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230227   gcc  
riscv        buildonly-randconfig-r006-20230226   clang
riscv                               defconfig   gcc  
riscv                randconfig-r025-20230226   clang
riscv                randconfig-r026-20230226   clang
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230226   clang
s390                 randconfig-r025-20230227   gcc  
s390                 randconfig-r033-20230227   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r022-20230227   gcc  
sh                   randconfig-r035-20230226   gcc  
sparc        buildonly-randconfig-r003-20230226   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230227   gcc  
sparc                randconfig-r014-20230226   gcc  
sparc                randconfig-r023-20230227   gcc  
sparc64              randconfig-r001-20230227   gcc  
sparc64              randconfig-r036-20230227   gcc  
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
x86_64               randconfig-r005-20230227   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r011-20230227   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
