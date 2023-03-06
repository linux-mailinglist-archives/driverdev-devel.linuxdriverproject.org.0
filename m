Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234EC6AD064
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Mar 2023 22:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7007D40A21;
	Mon,  6 Mar 2023 21:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7007D40A21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FsygUuEnOxwi; Mon,  6 Mar 2023 21:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 192B5409FA;
	Mon,  6 Mar 2023 21:30:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 192B5409FA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F80E1BF2E4
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 21:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 685206101C
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 21:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 685206101C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FoyRvzjWOeIG for <devel@linuxdriverproject.org>;
 Mon,  6 Mar 2023 21:30:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2589F61001
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2589F61001
 for <devel@driverdev.osuosl.org>; Mon,  6 Mar 2023 21:30:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="338005206"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="338005206"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 13:29:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="850448057"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="850448057"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 06 Mar 2023 13:29:35 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZIOl-0000eh-0K;
 Mon, 06 Mar 2023 21:29:35 +0000
Date: Tue, 07 Mar 2023 05:28:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 ec738ca127d07ecac6afae36e2880341ec89150e
Message-ID: <64065b14.0mO+EpWm4MwueY2s%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678138221; x=1709674221;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CVzogmE7aUakRmeuBPHtbPweXHmxwTHpHh77PBf5Xw8=;
 b=RaQu/TkMz226G0bbJpDX8dywNk+cUN5hpxm+DXE0z/5JLc9Pil+Cr6b2
 Zk+CmvzRXrmBWhDNFFqbBSfEJ94I2ZTZTa0YBu9rtaini0Kq2u34EMKoL
 7QZ8WDDFP0zRaIrCLXegNTcgSdXYISZ42EqtwFPXfqJpq4aj1XzrcjD3A
 24Ze116ZT1HhfyoEWQZyd7elCOqwAWj12NUjo9GXQ2INyPhLtoieS02Fh
 xxHHF6S+dF1gIEMxIDJzTNyHujQId3oQfegQfLHCps+Id4wqH2GIvgL16
 MvRoRN3J3ESkpYm7vrvIfUnsfq/IDO4d0SOt9QNX8t9yyZYbS09a+/S9/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RaQu/TkM
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: ec738ca127d07ecac6afae36e2880341ec89150e  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 847m

configs tested: 128
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230306   gcc  
alpha                randconfig-r023-20230305   gcc  
alpha                randconfig-r031-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r022-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230306   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230305   gcc  
arm                  randconfig-r025-20230305   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230306   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230306   clang
csky         buildonly-randconfig-r001-20230305   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r026-20230305   gcc  
csky                 randconfig-r035-20230306   gcc  
hexagon              randconfig-r034-20230305   clang
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
i386                 randconfig-r004-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230306   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230306   gcc  
m68k                 randconfig-r036-20230306   gcc  
microblaze   buildonly-randconfig-r001-20230306   gcc  
microblaze           randconfig-r016-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r033-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230305   gcc  
nios2                randconfig-r021-20230305   gcc  
openrisc             randconfig-r011-20230305   gcc  
openrisc             randconfig-r012-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230306   gcc  
parisc               randconfig-r014-20230306   gcc  
parisc               randconfig-r021-20230306   gcc  
parisc               randconfig-r033-20230305   gcc  
parisc               randconfig-r034-20230306   gcc  
parisc               randconfig-r035-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r024-20230305   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230306   clang
riscv                randconfig-r013-20230305   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230306   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230305   gcc  
sh                   randconfig-r003-20230305   gcc  
sh                   randconfig-r036-20230305   gcc  
sparc        buildonly-randconfig-r006-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230306   gcc  
sparc                randconfig-r006-20230305   gcc  
sparc64              randconfig-r026-20230306   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230305   gcc  
xtensa       buildonly-randconfig-r005-20230305   gcc  
xtensa               randconfig-r002-20230305   gcc  
xtensa               randconfig-r006-20230306   gcc  
xtensa               randconfig-r014-20230305   gcc  
xtensa               randconfig-r015-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
