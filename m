Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F11B6A8C06
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Mar 2023 23:38:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2EF740BA1;
	Thu,  2 Mar 2023 22:37:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2EF740BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O544NxryWyyS; Thu,  2 Mar 2023 22:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62A8840BAC;
	Thu,  2 Mar 2023 22:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62A8840BAC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1507A1BF48D
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 22:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6762280D44
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 22:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6762280D44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3vcm_MTelYPQ for <devel@linuxdriverproject.org>;
 Thu,  2 Mar 2023 22:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 863D880E4D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 863D880E4D
 for <devel@driverdev.osuosl.org>; Thu,  2 Mar 2023 22:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="332358306"
X-IronPort-AV: E=Sophos;i="5.98,229,1673942400"; d="scan'208";a="332358306"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 14:37:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="652584819"
X-IronPort-AV: E=Sophos;i="5.98,229,1673942400"; d="scan'208";a="652584819"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2023 14:37:38 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXrYP-0000x4-0j;
 Thu, 02 Mar 2023 22:37:37 +0000
Date: Fri, 03 Mar 2023 06:37:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 41c1bf8d0dc4376b2d432e0fa898392debdf1d75
Message-ID: <6401250c.ou3npKWEOvAkskbK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677796663; x=1709332663;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=b4vDzvUEi7oE1j6KR/TG5iLSDEaQFL0psd4fiH3varQ=;
 b=DQ72qUO9HmLQ39g1EVhMmBTAe+oFN5F8p9tH6KaWxh2EaGX3OH0fFLRK
 tMhNLHenSTs7G/tbOGqn8SMx4KSWaBe4umZ7slTL2ryMX3GJyqY/HXBmx
 pe3wuouFQtcLoUay6ez8V29idVfPDtNnbO+g6jgsePgcrnChBoo7eWnGN
 8N8+rLyhOf1b4bwshyv13S6HKFmxYtvCh5or5QY0aGzXHMpVyJtlW4Aab
 3spWYxBgR0wo2BYcCUWPmFI+tZhI03JV/j7EHSF0fPpwRXiEoz/8kRA1P
 DLGDCc9LTh0m0rPXHu6f0oydQ7gPn8izNdOqma6a+akBDZ9B8SXw2lmca
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DQ72qUO9
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
branch HEAD: 41c1bf8d0dc4376b2d432e0fa898392debdf1d75  driver core: device: make device_create*() take a const struct class *

elapsed time: 724m

configs tested: 96
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230302   gcc  
alpha        buildonly-randconfig-r006-20230302   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230302   gcc  
alpha                randconfig-r021-20230302   gcc  
alpha                randconfig-r023-20230302   gcc  
alpha                randconfig-r033-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r036-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r014-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
csky                 randconfig-r024-20230302   gcc  
hexagon              randconfig-r025-20230302   clang
hexagon              randconfig-r031-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
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
ia64         buildonly-randconfig-r004-20230302   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230302   gcc  
loongarch            randconfig-r035-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230302   gcc  
microblaze           randconfig-r006-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r034-20230302   clang
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r001-20230302   gcc  
openrisc             randconfig-r012-20230302   gcc  
openrisc             randconfig-r013-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230302   clang
powerpc              randconfig-r004-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230302   gcc  
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r026-20230302   clang
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230302   gcc  
sparc        buildonly-randconfig-r002-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230302   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
