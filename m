Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC83B6D51D1
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Apr 2023 22:02:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D67B81CC3;
	Mon,  3 Apr 2023 20:02:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D67B81CC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDQTR07OUhb4; Mon,  3 Apr 2023 20:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26F0981C44;
	Mon,  3 Apr 2023 20:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26F0981C44
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D73E71C1162
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 20:02:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B005760FE3
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 20:02:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B005760FE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0UTsi_0YduwR for <devel@linuxdriverproject.org>;
 Mon,  3 Apr 2023 20:02:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77E6060F42
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77E6060F42
 for <devel@driverdev.osuosl.org>; Mon,  3 Apr 2023 20:02:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369811889"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="369811889"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 13:02:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="809954938"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="809954938"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 03 Apr 2023 13:02:38 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjQNx-000OkI-1l;
 Mon, 03 Apr 2023 20:02:37 +0000
Date: Tue, 04 Apr 2023 04:02:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 57531d392198f649cb9df85dc5dfcc915eb61b28
Message-ID: <642b30cd.ujaH9/XdGwCtU+If%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680552168; x=1712088168;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BKuYfEmqjYVyjJOa1xq9mySpmDe93LW6WysID2NVGAs=;
 b=LZasyiveqhJUiB2U3R73j6NtKmujPHsHYMHOR16XYWj6T2uvQ0Fk2fKN
 epQExSDjkIrISN6mff0itpXFxwsMLIVAE+aDMg9eZg4INJ4CwqykJb8Wu
 N5E8Xj9kTwgk5g2WgCTApdayI/FV8fdez4pbYHh/Gw9gc2OM01rXpfVW9
 EGxhrj7kL5BagAoENucwePZ87sLvlc2QI6zl4g451vW+EeODAbIArvFnS
 FioNnqc2QzUYZefc9ZNAFQVnvPSTVipzlm78Ye7sP4X7Xs1Wb8lfoHQyr
 Xad90zGMp5mWYKb1qmyAMjSRd9uA/DGI6BOikancaLuTgiNLpT3BGOpxk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LZasyive
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 57531d392198f649cb9df85dc5dfcc915eb61b28  readfile.2: new page describing readfile(2)

elapsed time: 720m

configs tested: 113
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230402   gcc  
alpha                randconfig-r012-20230402   gcc  
alpha                randconfig-r033-20230402   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230402   gcc  
arc                  randconfig-r043-20230402   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230403   gcc  
arm                  randconfig-r014-20230403   clang
arm                  randconfig-r033-20230403   gcc  
arm                  randconfig-r046-20230402   gcc  
arm                  randconfig-r046-20230403   clang
arm                           tegra_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230403   clang
arm64                randconfig-r015-20230403   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r002-20230402   clang
hexagon              randconfig-r013-20230403   clang
hexagon              randconfig-r014-20230402   clang
hexagon              randconfig-r035-20230402   clang
hexagon              randconfig-r041-20230402   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230402   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                          randconfig-c001   gcc  
i386                 randconfig-r036-20230403   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230403   gcc  
microblaze           randconfig-r006-20230402   gcc  
microblaze           randconfig-r031-20230402   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230402   gcc  
openrisc             randconfig-r003-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230403   gcc  
parisc               randconfig-r015-20230402   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc              randconfig-r005-20230402   gcc  
powerpc              randconfig-r016-20230402   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230403   clang
riscv                randconfig-r011-20230403   gcc  
riscv                randconfig-r042-20230402   clang
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230402   clang
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r032-20230402   gcc  
sh                           se7206_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230402   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230403   gcc  
xtensa               randconfig-r031-20230403   gcc  
xtensa               randconfig-r036-20230402   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
