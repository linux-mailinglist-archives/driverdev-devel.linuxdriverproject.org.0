Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D29F27BB042
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Oct 2023 04:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1B2241E6A;
	Fri,  6 Oct 2023 02:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1B2241E6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMyOTfowIBmo; Fri,  6 Oct 2023 02:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA0D742221;
	Fri,  6 Oct 2023 02:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA0D742221
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E9361BF990
 for <devel@linuxdriverproject.org>; Fri,  6 Oct 2023 02:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B1376100C
 for <devel@linuxdriverproject.org>; Fri,  6 Oct 2023 02:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B1376100C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hfyyc-DoX2Fr for <devel@linuxdriverproject.org>;
 Fri,  6 Oct 2023 02:22:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9C3E60FEF
 for <devel@driverdev.osuosl.org>; Fri,  6 Oct 2023 02:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9C3E60FEF
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="5226461"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="5226461"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 19:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="842661966"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="842661966"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Oct 2023 19:22:36 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qoaU6-000M9N-2E;
 Fri, 06 Oct 2023 02:22:34 +0000
Date: Fri, 06 Oct 2023 10:22:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 ddb57e2bebda0a96ea3563520e43546c20467fec
Message-ID: <202310061023.bXNq1K7A-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696558960; x=1728094960;
 h=date:from:to:cc:subject:message-id;
 bh=Z2v8uq5+5rIHuwJbqchlaQKEwUmjatNEBetn21h5CJA=;
 b=D2wPqOq9S1iXRiFGdaBSYCiRmnmvGjTPRJHAveI17QR8kTYZU+FUPi0+
 fDFYNAYBMPdjcpaCdFXmft9XgYvJpkOrI5GJ7jVKJz6WLE6SP3dG8cu4D
 CGtZG77y4lCvUFwUMgRusMawjNAHIn7th8+0mRDkrD9m746noMd/WMyTq
 55rPsAFylsCa0EpEQ1XZHap71+HgBdr1J3wKsehq1ZPFAl94ANdP4EmC+
 PCB4d/BrpPnJmdHuMJL5sfOXPg9xBbsdtzs/IwSr73BWJm3czLl9FJfK1
 XSa4xQQKJwrc+u8SJQTSMfksMys5yCMC8hfpNJgIIOdZx4CUAR4Xfz29V
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D2wPqOq9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: ddb57e2bebda0a96ea3563520e43546c20467fec  staging: greybus: fw-management: make fw_mgmt_class constant

elapsed time: 741m

configs tested: 128
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231005   gcc  
arc                   randconfig-001-20231006   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231005   gcc  
arm                   randconfig-001-20231006   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231005   gcc  
i386         buildonly-randconfig-001-20231006   gcc  
i386         buildonly-randconfig-002-20231005   gcc  
i386         buildonly-randconfig-002-20231006   gcc  
i386         buildonly-randconfig-003-20231005   gcc  
i386         buildonly-randconfig-003-20231006   gcc  
i386         buildonly-randconfig-004-20231005   gcc  
i386         buildonly-randconfig-004-20231006   gcc  
i386         buildonly-randconfig-005-20231005   gcc  
i386         buildonly-randconfig-005-20231006   gcc  
i386         buildonly-randconfig-006-20231005   gcc  
i386         buildonly-randconfig-006-20231006   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231005   gcc  
i386                  randconfig-001-20231006   gcc  
i386                  randconfig-002-20231005   gcc  
i386                  randconfig-002-20231006   gcc  
i386                  randconfig-003-20231005   gcc  
i386                  randconfig-003-20231006   gcc  
i386                  randconfig-004-20231005   gcc  
i386                  randconfig-004-20231006   gcc  
i386                  randconfig-005-20231005   gcc  
i386                  randconfig-005-20231006   gcc  
i386                  randconfig-006-20231005   gcc  
i386                  randconfig-006-20231006   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231005   gcc  
loongarch             randconfig-001-20231006   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231005   gcc  
x86_64                randconfig-001-20231006   gcc  
x86_64                randconfig-002-20231005   gcc  
x86_64                randconfig-002-20231006   gcc  
x86_64                randconfig-003-20231005   gcc  
x86_64                randconfig-003-20231006   gcc  
x86_64                randconfig-004-20231005   gcc  
x86_64                randconfig-004-20231006   gcc  
x86_64                randconfig-005-20231005   gcc  
x86_64                randconfig-005-20231006   gcc  
x86_64                randconfig-006-20231005   gcc  
x86_64                randconfig-006-20231006   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
