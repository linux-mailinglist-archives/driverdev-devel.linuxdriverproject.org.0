Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAB86B3225
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Mar 2023 00:42:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 690DF4114E;
	Thu,  9 Mar 2023 23:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 690DF4114E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIRyF1dl8MtK; Thu,  9 Mar 2023 23:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EEBA4016B;
	Thu,  9 Mar 2023 23:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EEBA4016B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37F591BF35D
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 23:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1073C418DA
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 23:42:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1073C418DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1x6EJW_zDvrc for <devel@linuxdriverproject.org>;
 Thu,  9 Mar 2023 23:42:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B5654099E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B5654099E
 for <devel@driverdev.osuosl.org>; Thu,  9 Mar 2023 23:42:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="316996019"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="316996019"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 15:42:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="680005667"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="680005667"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2023 15:42:43 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paPuE-0003IR-27;
 Thu, 09 Mar 2023 23:42:42 +0000
Date: Fri, 10 Mar 2023 07:42:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 466123c54f3153b77c7460e08850c385fa4fe3fc
Message-ID: <640a6eca.vJCvL8I2R7PmZi4q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678405365; x=1709941365;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8O9UK82cn/9Hpbf0Mv08qDnrR8WB8jel4a0s2cnRMQc=;
 b=jenrOtnZ8tKV/xu8UXVHBGrYp1XCqWU7ArXlRGoKwgr+QnfDfeGbLkKY
 aDxNuCIF2oJMbS6YgN3PKG8h2fxvhRGGmJ4ePjhk33KneXEOplDr9Zgjs
 DVPVVox/HLBwFzFYEBPwVnT0jqoFz0aWKoxrQnb355YgMdj2IBU3qtrRl
 xPErcyAYW2ibBr/9XaYh52z5IJTZeF/Jwmmys127wqh/0gMNMsxFAGdm8
 mjHz3MFim2Tmerr8K1X76u8DLD3xivEDfvXVN65KhNPN+ESpMJkko67+Q
 8xKbbZnV8LgT9a2Fe8b67MYiK7au+MfgqjogeC+ABeQwKySibOUJq0u+i
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jenrOtnZ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 466123c54f3153b77c7460e08850c385fa4fe3fc  staging: rtl8192e: rtl92e_clear_irq() is not used

elapsed time: 727m

configs tested: 101
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230309   gcc  
arm                  randconfig-r046-20230308   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230309   clang
arm64                randconfig-r004-20230309   clang
arm64                randconfig-r015-20230308   clang
arm64                randconfig-r023-20230308   clang
arm64                randconfig-r035-20230308   gcc  
csky         buildonly-randconfig-r002-20230308   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r002-20230309   clang
hexagon              randconfig-r011-20230308   clang
hexagon              randconfig-r013-20230308   clang
hexagon              randconfig-r025-20230308   clang
hexagon              randconfig-r033-20230308   clang
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
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
ia64                 randconfig-r006-20230309   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230308   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r036-20230308   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230308   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r024-20230308   gcc  
microblaze           randconfig-r034-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230308   clang
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230308   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230309   gcc  
parisc               randconfig-r022-20230308   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230308   clang
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r026-20230308   clang
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r031-20230308   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r032-20230308   gcc  
sparc64      buildonly-randconfig-r001-20230308   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230308   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
