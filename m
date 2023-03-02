Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5052A6A78A7
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Mar 2023 02:01:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A548D81DF4;
	Thu,  2 Mar 2023 01:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A548D81DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KeLyU1eM4Fhm; Thu,  2 Mar 2023 01:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5885A81C6E;
	Thu,  2 Mar 2023 01:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5885A81C6E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 646191BF97E
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 01:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F0D94013B
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 01:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F0D94013B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LYlnGHe5N_d for <devel@linuxdriverproject.org>;
 Thu,  2 Mar 2023 01:00:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F0DF40129
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F0DF40129
 for <devel@driverdev.osuosl.org>; Thu,  2 Mar 2023 01:00:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314998031"
X-IronPort-AV: E=Sophos;i="5.98,226,1673942400"; d="scan'208";a="314998031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 17:00:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="705062636"
X-IronPort-AV: E=Sophos;i="5.98,226,1673942400"; d="scan'208";a="705062636"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 01 Mar 2023 17:00:53 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXXJU-00001R-25;
 Thu, 02 Mar 2023 01:00:52 +0000
Date: Thu, 02 Mar 2023 09:00:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 6c9bae12b288907e377182168dca9ed014493e6d
Message-ID: <63fff53b.+aeIirM1F9nULAbY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677718859; x=1709254859;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9vXqQ9dR57q9a7gxKijWN/0YCOBU/nkd0qYnLj/rekM=;
 b=ijj+XHTsZCDsu9Sr6e/NFLzJ6uhJSJvadTdZs4fVoY+CaorJrTiAwG18
 KXnXi5MbNQqjg1GX93zRNnSha35YNT2VkKpMh5d27YLRD6cjJF9s1pTA5
 4kK8korPCZpcdTv9ReMMR6ovkggGg0tMe3Ri6MJNooMkBq0L0TfND07er
 fdZLzBY5YAbUfs/a8V8bqAMYZDWVAQFVBMSaxCdN7j5PDG9rkmwJVop1t
 0zTDA/bJqVqWVi9VPkrACz7ws19m6rX23fq3eHBf3ZMgLeynRkQUD21Op
 UICpSz3H5rhTTbSWnolaY5Hog57iVcjxyIHl7AYjN82W9+Lmn92COepRM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ijj+XHTs
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: 6c9bae12b288907e377182168dca9ed014493e6d  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 728m

configs tested: 113
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230226   gcc  
alpha                randconfig-r021-20230227   gcc  
alpha                randconfig-r032-20230226   gcc  
alpha                randconfig-r032-20230227   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230226   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r011-20230301   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230302   clang
arm64                randconfig-r034-20230227   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230226   gcc  
csky                 randconfig-r014-20230301   gcc  
csky                 randconfig-r016-20230301   gcc  
csky                 randconfig-r022-20230302   gcc  
csky                 randconfig-r023-20230227   gcc  
hexagon              randconfig-r024-20230227   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230227   clang
i386                 randconfig-a002-20230227   clang
i386                 randconfig-a003-20230227   clang
i386                 randconfig-a004-20230227   clang
i386                 randconfig-a005-20230227   clang
i386                 randconfig-a006-20230227   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                 randconfig-r002-20230227   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r022-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230226   gcc  
loongarch            randconfig-r034-20230226   gcc  
loongarch            randconfig-r036-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r026-20230302   gcc  
microblaze   buildonly-randconfig-r001-20230302   gcc  
microblaze           randconfig-r023-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
mips                 randconfig-r015-20230301   clang
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230226   gcc  
openrisc             randconfig-r002-20230226   gcc  
openrisc             randconfig-r026-20230226   gcc  
parisc       buildonly-randconfig-r003-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230227   gcc  
parisc               randconfig-r036-20230227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r012-20230301   gcc  
powerpc              randconfig-r024-20230302   clang
powerpc              randconfig-r033-20230227   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230226   gcc  
riscv                randconfig-r035-20230227   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230302   clang
s390                                defconfig   gcc  
s390                 randconfig-r021-20230302   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230302   gcc  
sh                   randconfig-r001-20230226   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230227   gcc  
sparc                randconfig-r013-20230301   gcc  
sparc                randconfig-r035-20230226   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230227   clang
x86_64               randconfig-a002-20230227   clang
x86_64               randconfig-a003-20230227   clang
x86_64               randconfig-a004-20230227   clang
x86_64               randconfig-a005-20230227   clang
x86_64               randconfig-a006-20230227   clang
x86_64               randconfig-a011-20230227   gcc  
x86_64               randconfig-a012-20230227   gcc  
x86_64               randconfig-a013-20230227   gcc  
x86_64               randconfig-a014-20230227   gcc  
x86_64               randconfig-a015-20230227   gcc  
x86_64               randconfig-a016-20230227   gcc  
x86_64               randconfig-r004-20230227   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r031-20230226   gcc  
xtensa               randconfig-r033-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
