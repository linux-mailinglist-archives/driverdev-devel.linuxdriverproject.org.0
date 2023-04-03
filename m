Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E37596D51D0
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Apr 2023 22:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0A8381C40;
	Mon,  3 Apr 2023 20:02:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0A8381C40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dq1R0U7GE0dk; Mon,  3 Apr 2023 20:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88A3F81B60;
	Mon,  3 Apr 2023 20:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88A3F81B60
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D47121BF2B8
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 20:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADC0881B69
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 20:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADC0881B69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2i89owRn8Itg for <devel@linuxdriverproject.org>;
 Mon,  3 Apr 2023 20:02:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB80381B60
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB80381B60
 for <devel@driverdev.osuosl.org>; Mon,  3 Apr 2023 20:02:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="330577372"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="330577372"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 13:02:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="663329752"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="663329752"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 03 Apr 2023 13:02:38 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjQNx-000OkO-23;
 Mon, 03 Apr 2023 20:02:37 +0000
Date: Tue, 04 Apr 2023 04:02:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 cb21a0a2efbe6996216b9d1b1464031c78f2ddf9
Message-ID: <642b30da.7SDmpf1oPsGgSgzX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680552161; x=1712088161;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=l9A8scK5Bu4R6k6qLRLeR9hXVOJ1hU9ZT2XVvbOjdvk=;
 b=MOm8Hv2BcUd96tXju0Y5sfi7tPKm1PAMqNpJoeOXwZT7vNVVTC6vt4TK
 1o1DYKXG/hqJeHStwCPwpdDCmVXwLKBDjJT0msLIe43xov+9e1nC7hzjH
 lnLr6d/oIQ7lFApfkg4i51QbWVEYlbDnFDaPXCGaNDxJOOJUTR1v4Bnhr
 E5J95hBSlBBSwpoJ4NR2C+xl/08mlw4Jn/8egVODrPNpUJyX+W4m2IxpS
 Y9EXK7eReSCSLeQhyNxkgVvkUxGbadmdjH5KvI1yJNBhoxtnNC7h95F/D
 +F89CDeK2Lim9OYy25c0822mUMavaRWecCKnBWlakpLi0phCzctoY6WT4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MOm8Hv2B
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: cb21a0a2efbe6996216b9d1b1464031c78f2ddf9  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 721m

configs tested: 134
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230402   gcc  
alpha        buildonly-randconfig-r005-20230402   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230403   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230402   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r006-20230403   clang
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230403   gcc  
arm                  randconfig-r026-20230402   gcc  
arm                  randconfig-r031-20230402   clang
arm                  randconfig-r046-20230402   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230403   clang
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230402   gcc  
csky                 randconfig-r036-20230402   gcc  
hexagon              randconfig-r022-20230402   clang
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
i386                 randconfig-r003-20230403   clang
i386                 randconfig-r004-20230403   clang
i386                 randconfig-r032-20230403   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230402   gcc  
ia64         buildonly-randconfig-r003-20230403   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230402   gcc  
ia64                 randconfig-r016-20230403   gcc  
ia64                 randconfig-r035-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230402   gcc  
loongarch            randconfig-r002-20230402   gcc  
loongarch            randconfig-r031-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r016-20230402   gcc  
microblaze           randconfig-r021-20230403   gcc  
microblaze           randconfig-r035-20230402   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230403   gcc  
nios2                randconfig-r036-20230403   gcc  
openrisc             randconfig-r022-20230403   gcc  
openrisc             randconfig-r026-20230403   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230403   gcc  
powerpc              randconfig-r032-20230402   gcc  
powerpc              randconfig-r033-20230402   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r005-20230403   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230403   clang
riscv                randconfig-r014-20230402   clang
riscv                randconfig-r015-20230403   gcc  
riscv                randconfig-r034-20230402   gcc  
riscv                randconfig-r034-20230403   clang
riscv                randconfig-r042-20230402   clang
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230402   gcc  
s390                 randconfig-r044-20230402   clang
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r001-20230402   gcc  
sparc        buildonly-randconfig-r003-20230402   gcc  
sparc        buildonly-randconfig-r006-20230402   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230403   gcc  
sparc                randconfig-r021-20230402   gcc  
sparc                randconfig-r023-20230402   gcc  
sparc                randconfig-r024-20230403   gcc  
sparc                randconfig-r025-20230403   gcc  
sparc64              randconfig-r005-20230403   gcc  
sparc64              randconfig-r012-20230403   gcc  
sparc64              randconfig-r013-20230403   gcc  
sparc64              randconfig-r014-20230403   gcc  
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
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230402   gcc  
xtensa               randconfig-r006-20230402   gcc  
xtensa               randconfig-r012-20230402   gcc  
xtensa               randconfig-r023-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
