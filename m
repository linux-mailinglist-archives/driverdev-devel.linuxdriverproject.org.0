Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 056E86A78A9
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Mar 2023 02:02:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6FB781F78;
	Thu,  2 Mar 2023 01:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6FB781F78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BbfJYon6eAnB; Thu,  2 Mar 2023 01:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0D6A81C6E;
	Thu,  2 Mar 2023 01:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0D6A81C6E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DEB71BF97E
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 01:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 366F54013B
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 01:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 366F54013B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4VHKvask2jls for <devel@linuxdriverproject.org>;
 Thu,  2 Mar 2023 01:02:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22B8640129
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22B8640129
 for <devel@driverdev.osuosl.org>; Thu,  2 Mar 2023 01:02:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314242766"
X-IronPort-AV: E=Sophos;i="5.98,226,1673942400"; d="scan'208";a="314242766"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 17:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="743634462"
X-IronPort-AV: E=Sophos;i="5.98,226,1673942400"; d="scan'208";a="743634462"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 01 Mar 2023 17:01:53 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXXKS-00001i-2Z;
 Thu, 02 Mar 2023 01:01:52 +0000
Date: Thu, 02 Mar 2023 09:01:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 cb40533de595c7be51a749148220d19027b2a66e
Message-ID: <63fff54d.iL1+/Nq/QjjI4/tr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677718922; x=1709254922;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=x1g2xzHHfp+iRdL1K69lkHrnikZCVc8weUi/UOSJnUo=;
 b=Pn5dBGpQL5zhATsYoEV96vZ4XR31cQ8lmRr/ILLlGwUkZgQyy0Kwwnzw
 bMWzrCdzNWjWBp/gF7RMuMFRwccaZohEEkjxLQZs+tC/TRTQQ7CHeusbn
 T7YHkp1fqIaCr1K5+bF/PmJ0YTFUBdoa8vy0uDfV78Na6vfV5bTNtQLio
 sv9JahTVjISxCtbeBRlp/uhWqcA60EHmYR2iun5KyfrxRKL4Xp0gvQd83
 t5KK5pEolmM2mRFfatq/Z4I2Y+KVYsy/dJCtgND1byOjTfIGrIw9sMt0N
 oLtEYEc1WLG7wpP/ERx1xoRwSo0aGlJ99HaX4wOoZMypRfFN/FV6r7zU3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pn5dBGpQ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: cb40533de595c7be51a749148220d19027b2a66e  driver core: device: make device_create*() take a const struct class *

elapsed time: 729m

configs tested: 140
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230302   gcc  
alpha                randconfig-r006-20230302   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230226   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230302   gcc  
arc                  randconfig-r035-20230227   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230226   gcc  
arm          buildonly-randconfig-r005-20230227   clang
arm                                 defconfig   gcc  
arm                  randconfig-r034-20230227   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky         buildonly-randconfig-r001-20230226   gcc  
csky         buildonly-randconfig-r004-20230226   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r021-20230301   gcc  
csky                 randconfig-r036-20230226   gcc  
hexagon              randconfig-r013-20230302   clang
hexagon              randconfig-r025-20230301   clang
hexagon              randconfig-r032-20230227   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230227   clang
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230227   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230227   clang
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230227   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230227   clang
i386                          randconfig-a005   gcc  
i386                 randconfig-a006-20230227   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230227   gcc  
i386                          randconfig-a011   clang
i386                 randconfig-a012-20230227   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230227   gcc  
i386                          randconfig-a013   clang
i386                 randconfig-a014-20230227   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230227   gcc  
i386                          randconfig-a015   clang
i386                 randconfig-a016-20230227   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r033-20230226   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230302   gcc  
loongarch            randconfig-r023-20230301   gcc  
loongarch            randconfig-r031-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230302   gcc  
microblaze           randconfig-r005-20230302   gcc  
microblaze           randconfig-r034-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r022-20230301   clang
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230302   gcc  
nios2                randconfig-r032-20230226   gcc  
openrisc     buildonly-randconfig-r002-20230227   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230227   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r033-20230227   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r003-20230302   gcc  
sh                   randconfig-r035-20230226   gcc  
sparc        buildonly-randconfig-r001-20230227   gcc  
sparc        buildonly-randconfig-r006-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r024-20230301   gcc  
sparc64              randconfig-r001-20230302   gcc  
sparc64              randconfig-r036-20230227   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230227   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230227   clang
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230227   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230227   clang
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230227   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230227   clang
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230227   gcc  
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230227   gcc  
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230227   gcc  
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230227   gcc  
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230227   gcc  
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230227   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
