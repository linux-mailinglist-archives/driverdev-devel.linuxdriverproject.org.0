Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971A077A434
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Aug 2023 01:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EFF740577;
	Sat, 12 Aug 2023 23:21:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EFF740577
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zd245YG5_G5o; Sat, 12 Aug 2023 23:21:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF350404DB;
	Sat, 12 Aug 2023 23:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF350404DB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEDB51BF3F9
 for <devel@linuxdriverproject.org>; Sat, 12 Aug 2023 23:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 981E560ED1
 for <devel@linuxdriverproject.org>; Sat, 12 Aug 2023 23:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 981E560ED1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id me7sBGuw6vmb for <devel@linuxdriverproject.org>;
 Sat, 12 Aug 2023 23:21:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71C4260608
 for <devel@driverdev.osuosl.org>; Sat, 12 Aug 2023 23:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71C4260608
X-IronPort-AV: E=McAfee;i="6600,9927,10800"; a="352180099"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="352180099"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2023 16:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10800"; a="823036450"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="823036450"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Aug 2023 16:21:26 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUxvB-0008pi-1c;
 Sat, 12 Aug 2023 23:21:25 +0000
Date: Sun, 13 Aug 2023 07:21:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 699fb50d99039a50e7494de644f96c889279aca3
Message-ID: <202308130703.Ul8xEvpz-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691882488; x=1723418488;
 h=date:from:to:cc:subject:message-id;
 bh=yuVX7dojDr2hR8olZqpP/AEcf5M8uQn8dItOKyhQ1ZI=;
 b=Pz3GBpDp44kbM8up1vcI68svz6UmkFRPs+sE1OZF6+ldmrQdbHrs2yQi
 A018fE16FDCR7xym1mVl3nx3BHcWj+nXMY8VDS9zcMUC1zOIYgDoyoref
 dXLyt6okpk72HqYxHw4At8PNOQnZ/PEjPHd8GlBeWUAMw09jGfRh76Iub
 KMsPBh0ACjvl6vnR5gc5A8xNh5IVXAedbIKLICzdWGa6Zsyk9/SRbnjd0
 bA8ZZt+sx/F+289z67/rudHAvKAJ+fCRVOMKmhLKyKyo//jJWy12kMbA0
 8OkyLKESR8iNCo9fMGLLh8VCgEsOzg8rNrWQ9iFdmw4YxvsRomjC6cgf8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pz3GBpDp
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
branch HEAD: 699fb50d99039a50e7494de644f96c889279aca3  drivers: base: Free devm resources when unregistering a device

elapsed time: 724m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r032-20230812   gcc  
arc                  randconfig-r035-20230812   gcc  
arc                  randconfig-r043-20230812   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r026-20230812   gcc  
arm                  randconfig-r046-20230812   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r023-20230812   gcc  
hexagon              randconfig-r002-20230812   clang
hexagon              randconfig-r006-20230812   clang
hexagon              randconfig-r041-20230812   clang
hexagon              randconfig-r045-20230812   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230812   gcc  
i386         buildonly-randconfig-r005-20230812   gcc  
i386         buildonly-randconfig-r006-20230812   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230812   gcc  
i386                 randconfig-i002-20230812   gcc  
i386                 randconfig-i003-20230812   gcc  
i386                 randconfig-i004-20230812   gcc  
i386                 randconfig-i005-20230812   gcc  
i386                 randconfig-i006-20230812   gcc  
i386                 randconfig-i011-20230812   clang
i386                 randconfig-i012-20230812   clang
i386                 randconfig-i013-20230812   clang
i386                 randconfig-i014-20230812   clang
i386                 randconfig-i015-20230812   clang
i386                 randconfig-i016-20230812   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230812   gcc  
m68k                 randconfig-r033-20230812   gcc  
m68k                 randconfig-r036-20230812   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r024-20230812   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230812   gcc  
openrisc             randconfig-r004-20230812   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r031-20230812   gcc  
riscv                randconfig-r042-20230812   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230812   gcc  
s390                 randconfig-r044-20230812   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r012-20230812   gcc  
sh                   randconfig-r015-20230812   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r013-20230812   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230812   clang
um                   randconfig-r022-20230812   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230812   gcc  
x86_64       buildonly-randconfig-r002-20230812   gcc  
x86_64       buildonly-randconfig-r003-20230812   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r011-20230812   clang
x86_64               randconfig-x001-20230812   clang
x86_64               randconfig-x002-20230812   clang
x86_64               randconfig-x003-20230812   clang
x86_64               randconfig-x004-20230812   clang
x86_64               randconfig-x005-20230812   clang
x86_64               randconfig-x006-20230812   clang
x86_64               randconfig-x011-20230812   gcc  
x86_64               randconfig-x012-20230812   gcc  
x86_64               randconfig-x013-20230812   gcc  
x86_64               randconfig-x014-20230812   gcc  
x86_64               randconfig-x015-20230812   gcc  
x86_64               randconfig-x016-20230812   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230812   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
