Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574776ACD50
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Mar 2023 19:57:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B91E5408AE;
	Mon,  6 Mar 2023 18:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B91E5408AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efBXJGU8ImOU; Mon,  6 Mar 2023 18:57:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5208D408BA;
	Mon,  6 Mar 2023 18:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5208D408BA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81B4D1BF34D
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 18:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B02F61012
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 18:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B02F61012
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XR85RyHOUm-e for <devel@linuxdriverproject.org>;
 Mon,  6 Mar 2023 18:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3240260A98
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3240260A98
 for <devel@driverdev.osuosl.org>; Mon,  6 Mar 2023 18:57:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="337162960"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="337162960"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 10:57:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="922049214"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="922049214"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2023 10:57:30 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZG1a-0000YB-00;
 Mon, 06 Mar 2023 18:57:30 +0000
Date: Tue, 07 Mar 2023 02:56:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 721da5cee9d43901105f5b8bd33fcb9101b12fc3
Message-ID: <64063770.T/bthsGPKh/I8ylM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678129053; x=1709665053;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OS3nIepBOwtwS+GElsv/P0DZOpKnXioq4kerwMOT9Pc=;
 b=Fdl1xOKpdA2xbXLUUmx2JH+ZYlKQOtuuDLhhs42UEr/DgU23kswNrO2n
 J0wDLvDjPv1/Nttol7T0xn6CdMgIhzCkTwJmg3kTusOeoF3u2+5KCFDP2
 scLoSgj5F7IxR96RolBAXMzJe+MWx72LW/4ttXYR51EGJG0QIXWDcWADa
 3P7rw77Rd1wVy3UpRTjIPcZn1UhWIkaOrNiwjyYPXdQxVeKBpOZl/z1Ur
 h6YxL0YwmgosDXYssAkHXtwShRw79pVLMgXr7hs+8PcdWpx9sRbTCGeyk
 NV5zJqLqQzCJW+dvDYX5SQZWbf9esibo4T81mF0PVhSUiIezybpijccKN
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fdl1xOKp
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
branch HEAD: 721da5cee9d43901105f5b8bd33fcb9101b12fc3  driver core: remove CONFIG_SYSFS_DEPRECATED and CONFIG_SYSFS_DEPRECATED_V2

elapsed time: 723m

configs tested: 125
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230306   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230305   gcc  
arc          buildonly-randconfig-r006-20230306   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230306   clang
arm                  randconfig-r005-20230306   clang
arm                  randconfig-r015-20230306   gcc  
arm                  randconfig-r021-20230306   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230306   gcc  
arm64        buildonly-randconfig-r005-20230305   clang
arm64        buildonly-randconfig-r006-20230305   clang
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230306   clang
arm64                randconfig-r022-20230305   gcc  
csky         buildonly-randconfig-r004-20230306   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230305   gcc  
hexagon              randconfig-r011-20230306   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230306   gcc  
loongarch            randconfig-r021-20230305   gcc  
loongarch            randconfig-r036-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230305   gcc  
m68k                 randconfig-r014-20230305   gcc  
microblaze           randconfig-r026-20230305   gcc  
microblaze           randconfig-r032-20230306   gcc  
microblaze           randconfig-r033-20230306   gcc  
microblaze           randconfig-r034-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230306   gcc  
openrisc     buildonly-randconfig-r001-20230306   gcc  
parisc       buildonly-randconfig-r002-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r022-20230306   gcc  
parisc               randconfig-r024-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230305   gcc  
powerpc              randconfig-r004-20230306   gcc  
powerpc              randconfig-r025-20230306   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230305   gcc  
sh                   randconfig-r031-20230306   gcc  
sparc        buildonly-randconfig-r003-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230306   gcc  
sparc                randconfig-r011-20230305   gcc  
sparc64              randconfig-r004-20230305   gcc  
sparc64              randconfig-r006-20230305   gcc  
sparc64              randconfig-r023-20230306   gcc  
sparc64              randconfig-r025-20230305   gcc  
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
x86_64               randconfig-r024-20230306   clang
x86_64               randconfig-r026-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230306   gcc  
xtensa               randconfig-r016-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
