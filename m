Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEC16CB586
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 06:49:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF0AA6110F;
	Tue, 28 Mar 2023 04:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF0AA6110F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQo8-tubiVkJ; Tue, 28 Mar 2023 04:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7012661117;
	Tue, 28 Mar 2023 04:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7012661117
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A0CD1BF350
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 04:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CC6C400D1
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 04:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CC6C400D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJx7FnexJomV for <devel@linuxdriverproject.org>;
 Tue, 28 Mar 2023 04:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D820D400CF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D820D400CF
 for <devel@driverdev.osuosl.org>; Tue, 28 Mar 2023 04:49:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403079053"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="403079053"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 21:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="827321505"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="827321505"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Mar 2023 21:49:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ph1HI-000IHg-1K;
 Tue, 28 Mar 2023 04:49:48 +0000
Date: Tue, 28 Mar 2023 12:49:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 5c9a27df4eb9a402770d5547af255a765e1c10ac
Message-ID: <642271da.cCg7eWq+a9liaqSj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679978991; x=1711514991;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9nwN2nQJgNKpKt7kHv9hl/mNWORNB6W6mFj2U3mcL3U=;
 b=RdU56JMy3hd9Wz0wG/ZfQGv9ZiZsFPgEWLeQ4gPDUE20fI7uEg/X8yfo
 PZjLeicNDSeLvBPXTQ9RloTk1HnqtUgH3mKDDBgcy+FgpSRALIM0MUS7I
 GhR9DFOFKh+PLxxh84t5BYHpPBNrqUY+JqrxqnIA5eB5P/SQh7KPMS+n6
 MU28z7ubwAP0I6NJ01XECi3s9C06AW3wLMGifOWVwyiKFX9r+mcx2k15h
 TfI9bVWWm1ktMzTiCv2J/SHhldr/z9ehZRuy8i5vKLcVnoJ7iUYACvVLD
 M7iADMqrDZ16Pi9iLO59ggamN3kdEjiiVzPaNGWkB4XYbs0OpSNPeVt86
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RdU56JMy
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 5c9a27df4eb9a402770d5547af255a765e1c10ac  driver core: move sysfs_dev_char_kobj out of class.h

elapsed time: 726m

configs tested: 167
configs skipped: 16

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230327   gcc  
alpha                randconfig-r006-20230327   gcc  
alpha                randconfig-r015-20230327   gcc  
alpha                randconfig-r025-20230326   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230326   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r034-20230327   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230326   gcc  
arm                  randconfig-r013-20230327   gcc  
arm                  randconfig-r024-20230326   clang
arm                  randconfig-r031-20230327   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230327   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230326   clang
arm64                randconfig-r005-20230327   gcc  
arm64                randconfig-r012-20230326   gcc  
arm64                randconfig-r021-20230326   gcc  
arm64                randconfig-r026-20230327   clang
csky         buildonly-randconfig-r002-20230327   gcc  
csky         buildonly-randconfig-r003-20230326   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230326   gcc  
csky                 randconfig-r004-20230326   gcc  
csky                 randconfig-r012-20230326   gcc  
csky                 randconfig-r015-20230326   gcc  
csky                 randconfig-r016-20230326   gcc  
csky                 randconfig-r034-20230326   gcc  
hexagon              randconfig-r006-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                 randconfig-r006-20230327   gcc  
i386                 randconfig-r012-20230327   clang
i386                 randconfig-r036-20230327   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230326   gcc  
loongarch    buildonly-randconfig-r003-20230326   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230326   gcc  
loongarch            randconfig-r032-20230326   gcc  
loongarch            randconfig-r033-20230327   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230327   gcc  
m68k                 randconfig-r031-20230326   gcc  
microblaze           randconfig-r004-20230327   gcc  
microblaze           randconfig-r005-20230327   gcc  
microblaze           randconfig-r011-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230327   clang
mips                 randconfig-r002-20230327   clang
mips                 randconfig-r003-20230327   clang
mips                 randconfig-r023-20230327   gcc  
mips                 randconfig-r025-20230327   gcc  
nios2        buildonly-randconfig-r001-20230326   gcc  
nios2        buildonly-randconfig-r002-20230326   gcc  
nios2        buildonly-randconfig-r006-20230327   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230327   gcc  
nios2                randconfig-r006-20230326   gcc  
nios2                randconfig-r022-20230326   gcc  
nios2                randconfig-r024-20230327   gcc  
openrisc     buildonly-randconfig-r001-20230326   gcc  
openrisc     buildonly-randconfig-r001-20230327   gcc  
openrisc     buildonly-randconfig-r004-20230326   gcc  
openrisc             randconfig-r011-20230327   gcc  
openrisc             randconfig-r013-20230326   gcc  
openrisc             randconfig-r016-20230326   gcc  
parisc       buildonly-randconfig-r004-20230327   gcc  
parisc       buildonly-randconfig-r005-20230327   gcc  
parisc       buildonly-randconfig-r006-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230327   gcc  
parisc               randconfig-r003-20230327   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r014-20230327   clang
powerpc              randconfig-r021-20230327   clang
powerpc              randconfig-r023-20230326   gcc  
powerpc              randconfig-r031-20230327   gcc  
powerpc              randconfig-r036-20230327   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230327   clang
riscv        buildonly-randconfig-r006-20230327   clang
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230326   clang
riscv                randconfig-r005-20230326   clang
riscv                randconfig-r013-20230326   gcc  
riscv                randconfig-r021-20230327   clang
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r004-20230327   clang
s390                                defconfig   gcc  
s390                 randconfig-r003-20230326   clang
s390                 randconfig-r032-20230327   gcc  
s390                 randconfig-r034-20230327   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230326   gcc  
sh                   randconfig-r011-20230326   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230327   gcc  
sparc64      buildonly-randconfig-r006-20230326   gcc  
sparc64              randconfig-r002-20230327   gcc  
sparc64              randconfig-r024-20230327   gcc  
sparc64              randconfig-r035-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230327   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64               randconfig-r035-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230326   gcc  
xtensa               randconfig-r022-20230327   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
