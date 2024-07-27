Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFD893DCA4
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2024 02:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53F9940278;
	Sat, 27 Jul 2024 00:39:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFGQYvxwGp8C; Sat, 27 Jul 2024 00:39:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AA87405FB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AA87405FB;
	Sat, 27 Jul 2024 00:39:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF681BF41D
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2024 00:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A26B60808
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2024 00:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id phyVpg_rW-zD for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2024 00:39:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 029B1605D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 029B1605D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 029B1605D2
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2024 00:39:14 +0000 (UTC)
X-CSE-ConnectionGUID: /m4CQJ+SRbm0DQQRjPfBEg==
X-CSE-MsgGUID: J5RDCvE/T22p9wwYceFD2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11145"; a="30461945"
X-IronPort-AV: E=Sophos;i="6.09,240,1716274800"; d="scan'208";a="30461945"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 17:39:12 -0700
X-CSE-ConnectionGUID: 5wycvy00QgWw3tQK7NYXBQ==
X-CSE-MsgGUID: cBRgfI2URY+z7qKvKbUZWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,240,1716274800"; d="scan'208";a="58199275"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 26 Jul 2024 17:39:12 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sXVSn-000pWw-0K;
 Sat, 27 Jul 2024 00:39:09 +0000
Date: Sat, 27 Jul 2024 08:38:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD SUCCESS
 d0192328ccc7c6f93a4b2527aeecd3557714f70e
Message-ID: <202407270841.WojVdcrG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722040755; x=1753576755;
 h=date:from:to:cc:subject:message-id;
 bh=ssdb17WPrc31gCb+0F196ftXyll695GbGTuTPtHz5Vo=;
 b=TKx/D9mAwQbllCEy+SU2hrITSerzLs6AXWlBhyhVbPNJh2lepDF/QMQg
 KrAvPYrMl5ZZJkWcj1raj3dEl+LUd1/pP35zmLFsg6BICZhXT7pGfYy4V
 uXKfmrxnYNae6raiKhHiAXo1Lq+yQwNqKwRHYLgGiDp8GTyhy4LqjYVj3
 dYUmC17D0K5qsI1NnHR+QNO6Ldf1ougW2w1P5Qg0MnVCw80Em70PxwvgT
 gRVyLSsoRTbNjDqAM8QXZQ6vAciGrfosGYyDYTBAM54Z1HtESUIbdCmdA
 AWJJ72ft83Y1ra3EtP2uAjl+N2a3tFs/HA4sw6hAfRS+AOOHNAuAh0FYu
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TKx/D9mA
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
branch HEAD: d0192328ccc7c6f93a4b2527aeecd3557714f70e  USB: move dynamic ids out of usb driver structures

elapsed time: 965m

configs tested: 234
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
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
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   clang-14
arm                            mmp2_defconfig   gcc-14.1.0
arm                          pxa910_defconfig   gcc-14.1.0
arm                   randconfig-001-20240726   gcc-14.1.0
arm                   randconfig-002-20240726   gcc-14.1.0
arm                   randconfig-003-20240726   clang-20
arm                   randconfig-004-20240726   clang-20
arm                        vexpress_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240726   clang-15
arm64                 randconfig-002-20240726   gcc-14.1.0
arm64                 randconfig-003-20240726   gcc-14.1.0
arm64                 randconfig-004-20240726   clang-20
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240726   gcc-14.1.0
csky                  randconfig-002-20240726   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   clang-20
hexagon               randconfig-001-20240726   clang-20
hexagon               randconfig-002-20240726   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240726   gcc-13
i386         buildonly-randconfig-001-20240727   gcc-13
i386         buildonly-randconfig-002-20240726   clang-18
i386         buildonly-randconfig-002-20240727   gcc-13
i386         buildonly-randconfig-003-20240726   gcc-13
i386         buildonly-randconfig-003-20240727   gcc-13
i386         buildonly-randconfig-004-20240726   clang-18
i386         buildonly-randconfig-004-20240727   gcc-13
i386         buildonly-randconfig-005-20240726   gcc-7
i386         buildonly-randconfig-005-20240727   gcc-13
i386         buildonly-randconfig-006-20240726   clang-18
i386         buildonly-randconfig-006-20240727   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240726   gcc-13
i386                  randconfig-001-20240727   gcc-13
i386                  randconfig-002-20240726   gcc-13
i386                  randconfig-002-20240727   gcc-13
i386                  randconfig-003-20240726   clang-18
i386                  randconfig-003-20240727   gcc-13
i386                  randconfig-004-20240726   gcc-13
i386                  randconfig-004-20240727   gcc-13
i386                  randconfig-005-20240726   clang-18
i386                  randconfig-005-20240727   gcc-13
i386                  randconfig-006-20240726   clang-18
i386                  randconfig-006-20240727   gcc-13
i386                  randconfig-011-20240726   gcc-13
i386                  randconfig-011-20240727   gcc-13
i386                  randconfig-012-20240726   gcc-8
i386                  randconfig-012-20240727   gcc-13
i386                  randconfig-013-20240726   gcc-10
i386                  randconfig-013-20240727   gcc-13
i386                  randconfig-014-20240726   gcc-13
i386                  randconfig-014-20240727   gcc-13
i386                  randconfig-015-20240726   clang-18
i386                  randconfig-015-20240727   gcc-13
i386                  randconfig-016-20240726   gcc-13
i386                  randconfig-016-20240727   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240726   gcc-14.1.0
loongarch             randconfig-002-20240726   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                            q40_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                       bmips_be_defconfig   gcc-14.1.0
mips                           ci20_defconfig   clang-20
mips                           ip28_defconfig   gcc-14.1.0
mips                           xway_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240726   gcc-14.1.0
nios2                 randconfig-002-20240726   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240726   gcc-14.1.0
parisc                randconfig-002-20240726   gcc-14.1.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                       ebony_defconfig   clang-20
powerpc                        icon_defconfig   gcc-14.1.0
powerpc                  mpc866_ads_defconfig   clang-20
powerpc               randconfig-002-20240726   gcc-14.1.0
powerpc               randconfig-003-20240726   gcc-14.1.0
powerpc64             randconfig-001-20240726   clang-20
powerpc64             randconfig-002-20240726   clang-20
powerpc64             randconfig-003-20240726   clang-20
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240726   gcc-14.1.0
riscv                 randconfig-002-20240726   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240726   gcc-14.1.0
s390                  randconfig-002-20240726   clang-16
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240726   gcc-14.1.0
sh                    randconfig-002-20240726   gcc-14.1.0
sh                          rsk7264_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240726   gcc-14.1.0
sparc64               randconfig-002-20240726   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   clang-20
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-13
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240726   gcc-7
um                    randconfig-002-20240726   clang-15
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240726   gcc-13
x86_64       buildonly-randconfig-001-20240727   gcc-8
x86_64       buildonly-randconfig-002-20240726   gcc-13
x86_64       buildonly-randconfig-002-20240727   gcc-8
x86_64       buildonly-randconfig-003-20240726   clang-18
x86_64       buildonly-randconfig-003-20240727   gcc-8
x86_64       buildonly-randconfig-004-20240726   gcc-9
x86_64       buildonly-randconfig-004-20240727   gcc-8
x86_64       buildonly-randconfig-005-20240726   gcc-13
x86_64       buildonly-randconfig-005-20240727   gcc-8
x86_64       buildonly-randconfig-006-20240726   gcc-11
x86_64       buildonly-randconfig-006-20240727   gcc-8
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240726   gcc-13
x86_64                randconfig-001-20240727   gcc-8
x86_64                randconfig-002-20240726   gcc-8
x86_64                randconfig-002-20240727   gcc-8
x86_64                randconfig-003-20240726   gcc-13
x86_64                randconfig-003-20240727   gcc-8
x86_64                randconfig-004-20240726   gcc-13
x86_64                randconfig-004-20240727   gcc-8
x86_64                randconfig-005-20240726   gcc-13
x86_64                randconfig-005-20240727   gcc-8
x86_64                randconfig-006-20240726   gcc-10
x86_64                randconfig-006-20240727   gcc-8
x86_64                randconfig-011-20240726   gcc-11
x86_64                randconfig-011-20240727   gcc-8
x86_64                randconfig-012-20240726   clang-18
x86_64                randconfig-012-20240727   gcc-8
x86_64                randconfig-013-20240726   gcc-13
x86_64                randconfig-013-20240727   gcc-8
x86_64                randconfig-014-20240726   clang-18
x86_64                randconfig-014-20240727   gcc-8
x86_64                randconfig-015-20240726   gcc-11
x86_64                randconfig-015-20240727   gcc-8
x86_64                randconfig-016-20240726   clang-18
x86_64                randconfig-016-20240727   gcc-8
x86_64                randconfig-071-20240726   clang-18
x86_64                randconfig-071-20240727   gcc-8
x86_64                randconfig-072-20240726   clang-18
x86_64                randconfig-072-20240727   gcc-8
x86_64                randconfig-073-20240726   gcc-13
x86_64                randconfig-073-20240727   gcc-8
x86_64                randconfig-074-20240726   clang-18
x86_64                randconfig-074-20240727   gcc-8
x86_64                randconfig-075-20240726   gcc-7
x86_64                randconfig-075-20240727   gcc-8
x86_64                randconfig-076-20240726   gcc-11
x86_64                randconfig-076-20240727   gcc-8
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240726   gcc-14.1.0
xtensa                randconfig-002-20240726   gcc-14.1.0
xtensa                    smp_lx200_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
