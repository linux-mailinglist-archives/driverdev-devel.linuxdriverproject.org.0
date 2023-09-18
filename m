Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAA77A5470
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Sep 2023 22:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1030741599;
	Mon, 18 Sep 2023 20:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1030741599
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oT0SQkGDNDDt; Mon, 18 Sep 2023 20:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5BD8400BF;
	Mon, 18 Sep 2023 20:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5BD8400BF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 941A81BF39C
 for <devel@linuxdriverproject.org>; Mon, 18 Sep 2023 20:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D0388220C
 for <devel@linuxdriverproject.org>; Mon, 18 Sep 2023 20:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D0388220C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZBO5uad6yuv for <devel@linuxdriverproject.org>;
 Mon, 18 Sep 2023 20:52:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46BF482208
 for <devel@driverdev.osuosl.org>; Mon, 18 Sep 2023 20:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46BF482208
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="364811059"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="364811059"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 13:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="722597039"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="722597039"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 18 Sep 2023 13:51:37 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qiLDT-0006Tm-1v;
 Mon, 18 Sep 2023 20:51:35 +0000
Date: Tue, 19 Sep 2023 04:50:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 c8510451dcbe4e0abff0f92aedc7723a2b30b9f6
Message-ID: <202309190437.TlupiMMt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695070322; x=1726606322;
 h=date:from:to:cc:subject:message-id;
 bh=4mPIWmjkzNJnq6SNCqBv5MPErSSs/0h1QTw7ATh24GU=;
 b=ZjDJ6WLr4wjJqRYF8ppJTsKOlXo2YrI0hYmjbMYqv/4MDMpZyE5LAF0Z
 4FbMy4+wd4ZPpDNbuPFVWebLf0ALShpl/XzrkNh0yu5OILmht8HpDUEaN
 rYEmV64Av2qp/4V510tkWJfuB26QtFt55wWOUFVNaQpz3WgPwNsbik59s
 l1cKzFRv2gjCH3d9c/7OPi7hjMKMZnmpgguXCLtLfOFwab9VzWiHEwBQ2
 5/VaMqPw8zmOaR2ZJGBoRFeVTXo3chU+NJlvMdSeZ25EKkLMx1XzCNQ+m
 4qD6vIYmQdgB6ONoWoXzt3Cp9l7tuHUVv53lcca8e/RsOiG5c/vaYUzls
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZjDJ6WLr
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: c8510451dcbe4e0abff0f92aedc7723a2b30b9f6  sysfs: do not create empty directories if no attributes are present

elapsed time: 801m

configs tested: 139
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
arc                   randconfig-001-20230918   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                                 defconfig   gcc  
arm                          ixp4xx_defconfig   clang
arm                       netwinder_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                   randconfig-001-20230918   gcc  
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
i386         buildonly-randconfig-001-20230918   gcc  
i386         buildonly-randconfig-002-20230918   gcc  
i386         buildonly-randconfig-003-20230918   gcc  
i386         buildonly-randconfig-004-20230918   gcc  
i386         buildonly-randconfig-005-20230918   gcc  
i386         buildonly-randconfig-006-20230918   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230918   gcc  
i386                  randconfig-002-20230918   gcc  
i386                  randconfig-003-20230918   gcc  
i386                  randconfig-004-20230918   gcc  
i386                  randconfig-005-20230918   gcc  
i386                  randconfig-006-20230918   gcc  
i386                  randconfig-013-20230918   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230918   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                      maltaaprp_defconfig   clang
nios2                         10m50_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         alldefconfig   gcc  
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
powerpc                      cm5200_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                     redwood_defconfig   gcc  
powerpc                     sequoia_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230918   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230918   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230918   gcc  
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
x86_64       buildonly-randconfig-001-20230918   gcc  
x86_64       buildonly-randconfig-002-20230918   gcc  
x86_64       buildonly-randconfig-003-20230918   gcc  
x86_64       buildonly-randconfig-004-20230918   gcc  
x86_64       buildonly-randconfig-005-20230918   gcc  
x86_64       buildonly-randconfig-006-20230918   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-011-20230918   gcc  
x86_64                randconfig-012-20230918   gcc  
x86_64                randconfig-013-20230918   gcc  
x86_64                randconfig-014-20230918   gcc  
x86_64                randconfig-015-20230918   gcc  
x86_64                randconfig-016-20230918   gcc  
x86_64                randconfig-071-20230918   gcc  
x86_64                randconfig-072-20230918   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
