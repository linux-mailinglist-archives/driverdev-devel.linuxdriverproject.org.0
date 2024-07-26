Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F9193DB1D
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2024 01:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CE7C607EC;
	Fri, 26 Jul 2024 23:12:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HnM0cIptU_56; Fri, 26 Jul 2024 23:12:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C07A6067E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C07A6067E;
	Fri, 26 Jul 2024 23:12:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 022651BF5DD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2024 23:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3D66405F7
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2024 23:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 82XYJl5V7nwn for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2024 23:12:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F1CC40534
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F1CC40534
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F1CC40534
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2024 23:12:10 +0000 (UTC)
X-CSE-ConnectionGUID: HVoKLXQfRM+1+RKtiEoEtg==
X-CSE-MsgGUID: 0lr3C64rTPqIlQyBlR9f9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11145"; a="30440528"
X-IronPort-AV: E=Sophos;i="6.09,239,1716274800"; d="scan'208";a="30440528"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 16:12:10 -0700
X-CSE-ConnectionGUID: 48psR/R0Ties1IVbtI3F9w==
X-CSE-MsgGUID: h0jB8/QxQq+0b2+qHnu+mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,239,1716274800"; d="scan'208";a="53473581"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 26 Jul 2024 16:12:09 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sXU6Z-000pTA-0F;
 Fri, 26 Jul 2024 23:12:07 +0000
Date: Sat, 27 Jul 2024 07:11:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_work] BUILD SUCCESS
 3d56539d92114bba680c1ea3aa0815adcd50c808
Message-ID: <202407270718.rR0hYCKr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722035531; x=1753571531;
 h=date:from:to:cc:subject:message-id;
 bh=FTSlMMWFuMTs+1LaTZ6W+R6DOx23yiKTvxty1vkgHhU=;
 b=JhoDNEuxkjByuqf0CE1v2BrsKQSr6+U4kXSnnT/hzsWXnVa/vzM/1Lvx
 evQOQ+gyXvnIkYGxS+j+0j5Zpp+6p9njpV4cdCbu5Nxj6gt+DU9lvs2jR
 /FEPXAbh4hBgLIKDoK01YsYwePnKIPXAyoHq2hQNPxY4Qcdf369TI//ls
 ktfkCpjjBKFIEaxFJn8KzjJZAzs7uQS+AKUzCtmP0T1FW6umbusV6mxyn
 mzABMMKoIb94FIZNJGOa+F6h0bl4rtXZEGfRBAmnqL7P9FxEHBd6JuU5b
 PjKeuUA7ncVGg9A1hrqPnaatGs7ImdLPHJSOJhLzWivIX4Gt4+DuAd2sw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JhoDNEux
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_work
branch HEAD: 3d56539d92114bba680c1ea3aa0815adcd50c808  misc: c2port: core: make c2port_class a static const structure

elapsed time: 877m

configs tested: 216
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                     nsimosci_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240726   gcc-13.2.0
arc                   randconfig-002-20240726   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                          gemini_defconfig   clang-20
arm                        keystone_defconfig   clang-20
arm                            mmp2_defconfig   gcc-13.2.0
arm                          pxa168_defconfig   clang-20
arm                          pxa910_defconfig   gcc-13.2.0
arm                   randconfig-001-20240726   gcc-14.1.0
arm                   randconfig-002-20240726   gcc-14.1.0
arm                   randconfig-003-20240726   clang-20
arm                   randconfig-004-20240726   clang-20
arm                         s3c6400_defconfig   clang-20
arm                        vexpress_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240726   clang-15
arm64                 randconfig-002-20240726   gcc-14.1.0
arm64                 randconfig-003-20240726   gcc-14.1.0
arm64                 randconfig-004-20240726   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240726   gcc-14.1.0
csky                  randconfig-002-20240726   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240726   clang-20
hexagon               randconfig-002-20240726   clang-20
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240726   gcc-13
i386         buildonly-randconfig-001-20240727   gcc-13
i386         buildonly-randconfig-002-20240726   clang-18
i386         buildonly-randconfig-002-20240726   gcc-13
i386         buildonly-randconfig-002-20240727   gcc-13
i386         buildonly-randconfig-003-20240726   gcc-13
i386         buildonly-randconfig-003-20240727   gcc-13
i386         buildonly-randconfig-004-20240726   clang-18
i386         buildonly-randconfig-004-20240726   gcc-13
i386         buildonly-randconfig-004-20240727   gcc-13
i386         buildonly-randconfig-005-20240726   gcc-13
i386         buildonly-randconfig-005-20240726   gcc-7
i386         buildonly-randconfig-005-20240727   gcc-13
i386         buildonly-randconfig-006-20240726   clang-18
i386         buildonly-randconfig-006-20240726   gcc-13
i386         buildonly-randconfig-006-20240727   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240726   gcc-13
i386                  randconfig-001-20240727   gcc-13
i386                  randconfig-002-20240726   gcc-13
i386                  randconfig-002-20240727   gcc-13
i386                  randconfig-003-20240726   clang-18
i386                  randconfig-003-20240726   gcc-13
i386                  randconfig-003-20240727   gcc-13
i386                  randconfig-004-20240726   gcc-13
i386                  randconfig-004-20240727   gcc-13
i386                  randconfig-005-20240726   clang-18
i386                  randconfig-005-20240726   gcc-13
i386                  randconfig-005-20240727   gcc-13
i386                  randconfig-006-20240726   clang-18
i386                  randconfig-006-20240726   gcc-13
i386                  randconfig-006-20240727   gcc-13
i386                  randconfig-011-20240726   gcc-13
i386                  randconfig-011-20240727   gcc-13
i386                  randconfig-012-20240726   gcc-13
i386                  randconfig-012-20240726   gcc-8
i386                  randconfig-012-20240727   gcc-13
i386                  randconfig-013-20240726   gcc-10
i386                  randconfig-013-20240726   gcc-13
i386                  randconfig-013-20240727   gcc-13
i386                  randconfig-014-20240726   gcc-13
i386                  randconfig-014-20240727   gcc-13
i386                  randconfig-015-20240726   clang-18
i386                  randconfig-015-20240726   gcc-13
i386                  randconfig-015-20240727   gcc-13
i386                  randconfig-016-20240726   gcc-13
i386                  randconfig-016-20240727   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240726   gcc-14.1.0
loongarch             randconfig-002-20240726   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                            q40_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                       bmips_be_defconfig   gcc-13.2.0
mips                           ci20_defconfig   gcc-13.2.0
mips                          eyeq5_defconfig   clang-20
mips                           ip28_defconfig   gcc-13.2.0
mips                     loongson1c_defconfig   gcc-13.2.0
mips                           xway_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240726   gcc-14.1.0
nios2                 randconfig-002-20240726   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240726   gcc-14.1.0
parisc                randconfig-002-20240726   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      bamboo_defconfig   clang-20
powerpc                       ebony_defconfig   clang-20
powerpc                       ebony_defconfig   gcc-13.2.0
powerpc                        icon_defconfig   gcc-13.2.0
powerpc                 mpc832x_rdb_defconfig   clang-20
powerpc                  mpc866_ads_defconfig   gcc-13.2.0
powerpc                  mpc885_ads_defconfig   clang-20
powerpc               randconfig-002-20240726   gcc-14.1.0
powerpc               randconfig-003-20240726   gcc-14.1.0
powerpc64             randconfig-001-20240726   clang-20
powerpc64             randconfig-002-20240726   clang-20
powerpc64             randconfig-003-20240726   clang-20
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240726   gcc-14.1.0
riscv                 randconfig-002-20240726   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240726   gcc-14.1.0
s390                  randconfig-002-20240726   clang-16
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240726   gcc-14.1.0
sh                    randconfig-002-20240726   gcc-14.1.0
sh                          rsk7264_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240726   gcc-14.1.0
sparc64               randconfig-002-20240726   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240726   gcc-7
um                    randconfig-002-20240726   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240726   gcc-13
x86_64       buildonly-randconfig-002-20240726   gcc-13
x86_64       buildonly-randconfig-003-20240726   gcc-13
x86_64       buildonly-randconfig-004-20240726   gcc-13
x86_64       buildonly-randconfig-005-20240726   gcc-13
x86_64       buildonly-randconfig-006-20240726   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240726   gcc-13
x86_64                randconfig-002-20240726   gcc-13
x86_64                randconfig-003-20240726   gcc-13
x86_64                randconfig-004-20240726   gcc-13
x86_64                randconfig-005-20240726   gcc-13
x86_64                randconfig-006-20240726   gcc-13
x86_64                randconfig-011-20240726   gcc-13
x86_64                randconfig-012-20240726   gcc-13
x86_64                randconfig-013-20240726   gcc-13
x86_64                randconfig-014-20240726   gcc-13
x86_64                randconfig-015-20240726   gcc-13
x86_64                randconfig-016-20240726   gcc-13
x86_64                randconfig-071-20240726   gcc-13
x86_64                randconfig-072-20240726   gcc-13
x86_64                randconfig-073-20240726   gcc-13
x86_64                randconfig-074-20240726   gcc-13
x86_64                randconfig-075-20240726   gcc-13
x86_64                randconfig-076-20240726   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240726   gcc-14.1.0
xtensa                randconfig-002-20240726   gcc-14.1.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
