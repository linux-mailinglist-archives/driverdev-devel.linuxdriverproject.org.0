Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D22799A92
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Sep 2023 21:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 322508148B;
	Sat,  9 Sep 2023 19:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 322508148B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tq78JifHHIWj; Sat,  9 Sep 2023 19:29:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEFA48148F;
	Sat,  9 Sep 2023 19:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEFA48148F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 712001BF591
 for <devel@linuxdriverproject.org>; Sat,  9 Sep 2023 19:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A6AA81466
 for <devel@linuxdriverproject.org>; Sat,  9 Sep 2023 19:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A6AA81466
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihpkhoY41mB4 for <devel@linuxdriverproject.org>;
 Sat,  9 Sep 2023 19:29:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C31081457
 for <devel@driverdev.osuosl.org>; Sat,  9 Sep 2023 19:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C31081457
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="381663279"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="381663279"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2023 12:29:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="692608471"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="692608471"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Sep 2023 12:29:42 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qf3eG-0003pF-22;
 Sat, 09 Sep 2023 19:29:40 +0000
Date: Sun, 10 Sep 2023 03:29:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 86495af1171e1feec79faa9b64c05c89f46e41d1
Message-ID: <202309100312.jUxWcREj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694287791; x=1725823791;
 h=date:from:to:cc:subject:message-id;
 bh=fY24JhBeHgm47M7BhYvZibV2GT9PZnWkFiwAbi174Hg=;
 b=LDBMxuWhlOx03Va6qeekdKo93gKqHYhZ9GUwPz95MczT5tL5zuFmaipO
 KLfYRKTk2IH+QHVcfwaktnmmia25ZsEDy39izjoYLY5noQYORP2MRH0BT
 FI5TJoIvddoozL1+TpsQ+pWDast/BuzEOOiZyPOYnxk6xcRD39db+JrWf
 pPNSou1T/k62eoLOrBoVQaEK6CQMblHTyjP6ifEB88nG/QBSrSdcImakI
 X/5cxtt9qrYNdvGVwjb0itZ7P5KkrP3rb9uuNXWa14nZYNjO1KuTep3Ek
 rGTwfGnE7JKK+c4ieON5a74l+JrizRYZdZFi6DtGtSZXvpbdazS8a1/oe
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LDBMxuWh
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 86495af1171e1feec79faa9b64c05c89f46e41d1  media: dvb: symbol fixup for dvb_attach()

elapsed time: 723m

configs tested: 170
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230909   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230909   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                   randconfig-001-20230909   clang
arm                        spear3xx_defconfig   clang
arm                           spitz_defconfig   clang
arm                           sunxi_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon               randconfig-001-20230909   clang
hexagon               randconfig-002-20230909   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230909   clang
i386         buildonly-randconfig-002-20230909   clang
i386         buildonly-randconfig-003-20230909   clang
i386         buildonly-randconfig-004-20230909   clang
i386         buildonly-randconfig-005-20230909   clang
i386         buildonly-randconfig-006-20230909   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-012-20230909   gcc  
i386                  randconfig-013-20230909   gcc  
i386                 randconfig-r013-20230909   gcc  
i386                 randconfig-r025-20230909   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230909   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r005-20230909   gcc  
mips                        vocore2_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230909   gcc  
nios2                randconfig-r023-20230909   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230909   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      ppc44x_defconfig   clang
powerpc                     skiroot_defconfig   clang
powerpc                  storcenter_defconfig   gcc  
powerpc                     stx_gp3_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
powerpc64            randconfig-r012-20230909   gcc  
powerpc64            randconfig-r016-20230909   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230909   clang
riscv                randconfig-r022-20230909   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r021-20230909   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r014-20230909   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230909   clang
x86_64       buildonly-randconfig-002-20230909   clang
x86_64       buildonly-randconfig-003-20230909   clang
x86_64       buildonly-randconfig-004-20230909   clang
x86_64       buildonly-randconfig-005-20230909   clang
x86_64       buildonly-randconfig-006-20230909   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230909   gcc  
x86_64                randconfig-002-20230909   gcc  
x86_64                randconfig-003-20230909   gcc  
x86_64                randconfig-004-20230909   gcc  
x86_64                randconfig-005-20230909   gcc  
x86_64                randconfig-006-20230909   gcc  
x86_64                randconfig-011-20230909   clang
x86_64                randconfig-012-20230909   clang
x86_64                randconfig-013-20230909   clang
x86_64                randconfig-014-20230909   clang
x86_64                randconfig-015-20230909   clang
x86_64                randconfig-016-20230909   clang
x86_64                randconfig-071-20230910   clang
x86_64                randconfig-072-20230910   clang
x86_64                randconfig-073-20230910   clang
x86_64                randconfig-074-20230910   clang
x86_64                randconfig-075-20230910   clang
x86_64                randconfig-076-20230910   clang
x86_64               randconfig-r006-20230909   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r001-20230909   gcc  
xtensa               randconfig-r011-20230909   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
