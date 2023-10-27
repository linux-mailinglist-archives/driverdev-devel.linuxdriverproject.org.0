Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0257D8C80
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Oct 2023 02:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44457703D8;
	Fri, 27 Oct 2023 00:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44457703D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6byU31KlbS_h; Fri, 27 Oct 2023 00:15:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E720C703E4;
	Fri, 27 Oct 2023 00:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E720C703E4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76FA01BF36E
 for <devel@linuxdriverproject.org>; Fri, 27 Oct 2023 00:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D207847C7
 for <devel@linuxdriverproject.org>; Fri, 27 Oct 2023 00:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D207847C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZlNLFfKLXF9 for <devel@linuxdriverproject.org>;
 Fri, 27 Oct 2023 00:15:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6891847C5
 for <devel@driverdev.osuosl.org>; Fri, 27 Oct 2023 00:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6891847C5
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="451921133"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="451921133"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 17:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="1006572542"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="1006572542"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 26 Oct 2023 17:15:51 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qwAVw-000AFi-2l;
 Fri, 27 Oct 2023 00:15:48 +0000
Date: Fri, 27 Oct 2023 08:15:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 6124e333ac92f13e162653ca8d3d300a899bd538
Message-ID: <202310270833.gqqiGk6D-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698365753; x=1729901753;
 h=date:from:to:cc:subject:message-id;
 bh=21AEQ6izquPynBLHmqSqRZZ3d/OxywsINcxE0cySsvk=;
 b=LZRmL0KQTb50yVqxdJ3xyCIgyYFkeT8iSCseq3aCZsNrkPulBABZOyCH
 8I35BX1KJXei+HRpw6z9iHeX8zB4lnM3eFqZ3bg52AHG0W0jCeNUlCInN
 Zlzd0RzA0kfzgRCyHOWzUwVqgfyTjl9Em0tYMVH9hcYy/ZORL78vPKLbU
 7j8hROo20GOPM+ygKxt0X3n+DAVKTCfL3ATtsnw6bbzyLI699zFwktBa9
 pfsgGcDXW3gYUE35lIkiVUDFzL48nUaph2SWEbGdzMRJDaXfC3rbOjYfP
 m8d42sZ5g+JyIhCc5ro8AJ108/IZJf8N2YiD3S7IZZAMOXL6QsDbR14gs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LZRmL0KQ
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
branch HEAD: 6124e333ac92f13e162653ca8d3d300a899bd538  uacce: make uacce_class constant

elapsed time: 3617m

configs tested: 193
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
arc                   randconfig-001-20231024   gcc  
arc                   randconfig-001-20231025   gcc  
arc                   randconfig-001-20231026   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231025   gcc  
arm                         s3c6400_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
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
i386         buildonly-randconfig-001-20231025   gcc  
i386         buildonly-randconfig-001-20231026   gcc  
i386         buildonly-randconfig-002-20231025   gcc  
i386         buildonly-randconfig-002-20231026   gcc  
i386         buildonly-randconfig-003-20231025   gcc  
i386         buildonly-randconfig-003-20231026   gcc  
i386         buildonly-randconfig-004-20231025   gcc  
i386         buildonly-randconfig-004-20231026   gcc  
i386         buildonly-randconfig-005-20231025   gcc  
i386         buildonly-randconfig-005-20231026   gcc  
i386         buildonly-randconfig-006-20231025   gcc  
i386         buildonly-randconfig-006-20231026   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231025   gcc  
i386                  randconfig-001-20231026   gcc  
i386                  randconfig-002-20231025   gcc  
i386                  randconfig-002-20231026   gcc  
i386                  randconfig-003-20231025   gcc  
i386                  randconfig-003-20231026   gcc  
i386                  randconfig-004-20231025   gcc  
i386                  randconfig-004-20231026   gcc  
i386                  randconfig-005-20231025   gcc  
i386                  randconfig-005-20231026   gcc  
i386                  randconfig-006-20231025   gcc  
i386                  randconfig-006-20231026   gcc  
i386                  randconfig-011-20231025   gcc  
i386                  randconfig-011-20231026   gcc  
i386                  randconfig-012-20231025   gcc  
i386                  randconfig-012-20231026   gcc  
i386                  randconfig-013-20231025   gcc  
i386                  randconfig-013-20231026   gcc  
i386                  randconfig-014-20231025   gcc  
i386                  randconfig-014-20231026   gcc  
i386                  randconfig-015-20231025   gcc  
i386                  randconfig-015-20231026   gcc  
i386                  randconfig-016-20231025   gcc  
i386                  randconfig-016-20231026   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231024   gcc  
loongarch             randconfig-001-20231025   gcc  
loongarch             randconfig-001-20231026   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                        maltaup_defconfig   clang
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
powerpc                      ppc44x_defconfig   clang
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231024   gcc  
riscv                 randconfig-001-20231026   gcc  
riscv                          rv32_defconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231024   gcc  
s390                  randconfig-001-20231026   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231024   gcc  
sparc                 randconfig-001-20231025   gcc  
sparc                 randconfig-001-20231026   gcc  
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
x86_64       buildonly-randconfig-001-20231024   gcc  
x86_64       buildonly-randconfig-001-20231025   gcc  
x86_64       buildonly-randconfig-001-20231026   gcc  
x86_64       buildonly-randconfig-002-20231024   gcc  
x86_64       buildonly-randconfig-002-20231025   gcc  
x86_64       buildonly-randconfig-002-20231026   gcc  
x86_64       buildonly-randconfig-003-20231024   gcc  
x86_64       buildonly-randconfig-003-20231025   gcc  
x86_64       buildonly-randconfig-003-20231026   gcc  
x86_64       buildonly-randconfig-004-20231024   gcc  
x86_64       buildonly-randconfig-004-20231025   gcc  
x86_64       buildonly-randconfig-004-20231026   gcc  
x86_64       buildonly-randconfig-005-20231024   gcc  
x86_64       buildonly-randconfig-005-20231025   gcc  
x86_64       buildonly-randconfig-005-20231026   gcc  
x86_64       buildonly-randconfig-006-20231024   gcc  
x86_64       buildonly-randconfig-006-20231025   gcc  
x86_64       buildonly-randconfig-006-20231026   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231025   gcc  
x86_64                randconfig-001-20231026   gcc  
x86_64                randconfig-002-20231025   gcc  
x86_64                randconfig-002-20231026   gcc  
x86_64                randconfig-003-20231025   gcc  
x86_64                randconfig-003-20231026   gcc  
x86_64                randconfig-004-20231025   gcc  
x86_64                randconfig-004-20231026   gcc  
x86_64                randconfig-005-20231025   gcc  
x86_64                randconfig-005-20231026   gcc  
x86_64                randconfig-006-20231025   gcc  
x86_64                randconfig-006-20231026   gcc  
x86_64                randconfig-011-20231025   gcc  
x86_64                randconfig-011-20231026   gcc  
x86_64                randconfig-012-20231025   gcc  
x86_64                randconfig-012-20231026   gcc  
x86_64                randconfig-013-20231025   gcc  
x86_64                randconfig-013-20231026   gcc  
x86_64                randconfig-014-20231025   gcc  
x86_64                randconfig-014-20231026   gcc  
x86_64                randconfig-015-20231025   gcc  
x86_64                randconfig-015-20231026   gcc  
x86_64                randconfig-016-20231025   gcc  
x86_64                randconfig-016-20231026   gcc  
x86_64                randconfig-071-20231025   gcc  
x86_64                randconfig-072-20231025   gcc  
x86_64                randconfig-073-20231025   gcc  
x86_64                randconfig-074-20231025   gcc  
x86_64                randconfig-075-20231025   gcc  
x86_64                randconfig-076-20231025   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
