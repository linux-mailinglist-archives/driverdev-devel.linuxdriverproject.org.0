Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4004B6ACE2D
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Mar 2023 20:34:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B980B81B25;
	Mon,  6 Mar 2023 19:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B980B81B25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8uzl11AMBgVE; Mon,  6 Mar 2023 19:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DBD281A24;
	Mon,  6 Mar 2023 19:34:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DBD281A24
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89EDC1BF870
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 19:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FA3060758
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 19:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FA3060758
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vKHQhscSUBfg for <devel@linuxdriverproject.org>;
 Mon,  6 Mar 2023 19:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E7F060F8F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E7F060F8F
 for <devel@driverdev.osuosl.org>; Mon,  6 Mar 2023 19:34:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="398236347"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="398236347"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 11:34:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="626266147"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="626266147"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2023 11:34:31 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZGbO-0000ZX-2D;
 Mon, 06 Mar 2023 19:34:30 +0000
Date: Tue, 07 Mar 2023 03:33:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:sysfs_deprecation_removal] BUILD SUCCESS
 baebcdc267937efdf9a8a1878edbdcedcd79d454
Message-ID: <64064017.H71FH8aXBANKdrAi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678131273; x=1709667273;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fL9eXfFVA9tfttqhoMP68hD2m+U1EQfCZ3+QN453Dtw=;
 b=HCmu2ldOWSu+YYeRwbmTy4QVat29zzITH9on9fenDBfVhII7UmavTqPb
 F3ywqMZLaRXPXj3xO1Q2kOYIyPZ+F25lJKOG9/cy15tox4+f5ofPla46i
 r5n8IaeNZFKE9smzx2pC8Y34nrcrVDOHBl8CI4vx0/Z7gPxypUIkXvFuQ
 7ByunDWPUeXkv9ilhPjdUf2eeDt/h2V3IihhWrfgraAj1HcpnFY4GfePx
 ngl91/zmZACJDLWls5xZ+br2wt7KX/yeuUEhENwF5HAoxykGGFOmDHQD+
 WTB423qJoD7CC1UYNN+2d6kwi8kBm4pPr0dfwFchPU4xyRG3zFq0tX7X8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HCmu2ldO
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git sysfs_deprecation_removal
branch HEAD: baebcdc267937efdf9a8a1878edbdcedcd79d454  driver core: remove CONFIG_SYSFS_DEPRECATED and CONFIG_SYSFS_DEPRECATED_V2

elapsed time: 732m

configs tested: 120
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230306   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230305   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230306   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230306   gcc  
arm64                randconfig-r033-20230306   gcc  
arm64                randconfig-r034-20230306   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230306   gcc  
csky                 randconfig-r015-20230306   gcc  
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
i386                 randconfig-r012-20230306   clang
i386                 randconfig-r022-20230306   clang
i386                 randconfig-r024-20230306   clang
i386                 randconfig-r036-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230305   gcc  
ia64                 randconfig-r006-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230306   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230305   gcc  
m68k                 randconfig-r011-20230306   gcc  
microblaze   buildonly-randconfig-r001-20230306   gcc  
microblaze           randconfig-r003-20230306   gcc  
microblaze           randconfig-r026-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230305   gcc  
mips                 randconfig-r005-20230305   gcc  
mips                 randconfig-r006-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r013-20230305   gcc  
nios2                randconfig-r035-20230305   gcc  
openrisc             randconfig-r011-20230305   gcc  
openrisc             randconfig-r014-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r035-20230306   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r033-20230305   clang
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230306   gcc  
sparc                randconfig-r016-20230306   gcc  
sparc64              randconfig-r005-20230306   gcc  
sparc64              randconfig-r021-20230306   gcc  
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
x86_64               randconfig-r025-20230306   clang
x86_64               randconfig-r031-20230306   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230305   gcc  
xtensa               randconfig-r014-20230306   gcc  
xtensa               randconfig-r015-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
