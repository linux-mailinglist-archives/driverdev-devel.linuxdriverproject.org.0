Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C47AC6C58C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Mar 2023 22:27:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D422C614CB;
	Wed, 22 Mar 2023 21:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D422C614CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlW1N7p2ao9t; Wed, 22 Mar 2023 21:27:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 645C6614BC;
	Wed, 22 Mar 2023 21:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 645C6614BC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A39841BF333
 for <devel@linuxdriverproject.org>; Wed, 22 Mar 2023 21:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87D4B81E5D
 for <devel@linuxdriverproject.org>; Wed, 22 Mar 2023 21:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87D4B81E5D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fH8DAIRg9V0a for <devel@linuxdriverproject.org>;
 Wed, 22 Mar 2023 21:26:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DE3C81F66
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DE3C81F66
 for <devel@driverdev.osuosl.org>; Wed, 22 Mar 2023 21:26:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="367073095"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="367073095"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 14:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="927984906"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="927984906"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 22 Mar 2023 14:26:55 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pf5yx-000Dfr-0P;
 Wed, 22 Mar 2023 21:26:55 +0000
Date: Thu, 23 Mar 2023 05:26:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 31504debb45c41080997ff244feeea0de3829d8e
Message-ID: <641b7281.7bSb0z9VRqA8nsdT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679520418; x=1711056418;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=iBE9JGzAY+gP1O9zl8H/BPc1dDAZiiN20xqslmSB/H8=;
 b=XWJadYd8HURg2/Ocysut1JrDCWOTxczUbAe+fZT68Il+EoksXQZQDPyT
 6Dw0BB98pX8pXWi7eo1Nsv4HnEMuXTHC0boYBOtMf3XPfhSvTYTcjSnQY
 nCDH6ygBgq5eRnjlffjJY3uMIDK/1w9w71ESYxQo3BfROqs+1w62St0uV
 WPsyNjXEBoudyyBVLLIvW2zScYV65zegM3tkq6uZtNnlmaoViUKLxLo+l
 PA678vT8p6fOXAj6K3K9N5cVP8PUZ8HTupIZXFX9V+ZpgwLz+Y/jIfCjU
 p9ProKE5kFrcjxPy1A4eejUrD8uBx2M36LpCSIylxRtzaDFIZVeHeBEjB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XWJadYd8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 31504debb45c41080997ff244feeea0de3829d8e  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 724m

configs tested: 120
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230322   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                  randconfig-r043-20230322   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                  randconfig-r022-20230322   clang
arm                  randconfig-r046-20230322   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230322   clang
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230322   clang
arm64                randconfig-r006-20230322   clang
arm64                randconfig-r011-20230322   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230322   gcc  
csky                 randconfig-r024-20230322   gcc  
csky                 randconfig-r026-20230322   gcc  
hexagon              randconfig-r033-20230322   clang
hexagon              randconfig-r041-20230322   clang
hexagon              randconfig-r045-20230322   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230322   gcc  
ia64                 randconfig-r015-20230322   gcc  
ia64                 randconfig-r026-20230322   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230322   gcc  
loongarch            randconfig-r014-20230322   gcc  
loongarch            randconfig-r023-20230322   gcc  
loongarch            randconfig-r024-20230322   gcc  
loongarch            randconfig-r032-20230322   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230322   gcc  
m68k                 randconfig-r016-20230322   gcc  
microblaze           randconfig-r015-20230322   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r036-20230322   gcc  
openrisc             randconfig-r012-20230322   gcc  
openrisc             randconfig-r021-20230322   gcc  
openrisc             randconfig-r023-20230322   gcc  
parisc       buildonly-randconfig-r003-20230322   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230322   gcc  
parisc               randconfig-r011-20230322   gcc  
parisc               randconfig-r016-20230322   gcc  
parisc               randconfig-r034-20230322   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230322   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230322   clang
riscv                randconfig-r021-20230322   gcc  
riscv                randconfig-r042-20230322   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230322   clang
s390                 randconfig-r012-20230322   gcc  
s390                 randconfig-r022-20230322   gcc  
s390                 randconfig-r044-20230322   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230322   gcc  
sh                               j2_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230322   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r031-20230322   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r035-20230322   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
