Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363844EE2A1
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Mar 2022 22:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2DFD408EF;
	Thu, 31 Mar 2022 20:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yw6NHroN3rMP; Thu, 31 Mar 2022 20:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7AD040ACC;
	Thu, 31 Mar 2022 20:27:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE2431BF384
 for <devel@linuxdriverproject.org>; Thu, 31 Mar 2022 20:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D841E41E81
 for <devel@linuxdriverproject.org>; Thu, 31 Mar 2022 20:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G-_sZBKdXbDU for <devel@linuxdriverproject.org>;
 Thu, 31 Mar 2022 20:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28F3B41E7D
 for <devel@driverdev.osuosl.org>; Thu, 31 Mar 2022 20:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648758440; x=1680294440;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gYntSxqDrr1tjVLDslsBh6sK378mcfJNp698JA4nVVw=;
 b=kv0KPE+pwhhigRxrAiA6aT0jhWnZtHzDKjN188say3dzIuJcSX64NJ1H
 bVvIQo8TH6uWaX7l6vQTdIJW7cGCG5rnVB1MGaAL/TNtkWkbaqcaK+L5s
 dUqk8J/DpqzbX14aVs7d8JU5z5KaIm+dKfNzYNXSqhVrsKDb2/N79YnRq
 hfHRvfkMATEvUdPvoJNvrl+iVjGK58QE/M8CmycA1zKxIf8FgwkB8K42C
 bA9pW0relbw858bMfJnN5sRw/XJayDR/ROaPKtuSCGSD2WklQWRPQgwK4
 B1aVRPOYiiJkAzMv3STod+Z/4ryKgmY1fCfSv/+6ZHGvHRivQSmmS9nQu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259662741"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259662741"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 13:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566805115"
Received: from lkp-server02.sh.intel.com (HELO 3231c491b0e2) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 31 Mar 2022 13:27:18 -0700
Received: from kbuild by 3231c491b0e2 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1na1O1-0000d6-Gk;
 Thu, 31 Mar 2022 20:27:17 +0000
Date: Fri, 01 Apr 2022 04:27:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b22c721c4f3fd4608da059c56fbe7a0cc598fb6a
Message-ID: <62460e95.vt7KUOzmIVw4SKxo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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
branch HEAD: b22c721c4f3fd4608da059c56fbe7a0cc598fb6a  staging: r8188eu: add a check for rtw_cbuf_alloc()

elapsed time: 725m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc                         wii_defconfig
powerpc                     taishan_defconfig
sh                               j2_defconfig
powerpc                 mpc837x_rdb_defconfig
nios2                         10m50_defconfig
sh                           sh2007_defconfig
m68k                            mac_defconfig
sparc                       sparc32_defconfig
powerpc                 linkstation_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220331
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220331
powerpc              randconfig-c003-20220331
riscv                randconfig-c006-20220331
mips                 randconfig-c004-20220331
powerpc                    socrates_defconfig
powerpc                   lite5200b_defconfig
arm                          pcm027_defconfig
powerpc                     ksi8560_defconfig
powerpc                     mpc5200_defconfig
mips                     cu1830-neo_defconfig
arm                            mmp2_defconfig
mips                       rbtx49xx_defconfig
powerpc                    mvme5100_defconfig
arm                            dove_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220331
hexagon              randconfig-r041-20220331

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
