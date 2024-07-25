Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ACB93CA49
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2024 23:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84A2040EED;
	Thu, 25 Jul 2024 21:39:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPzBBbCgl0p5; Thu, 25 Jul 2024 21:39:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 371A240EEB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 371A240EEB;
	Thu, 25 Jul 2024 21:39:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20AE01BF2B1
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2024 21:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1885B40EE7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2024 21:39:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fG52X7obaK7d for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2024 21:39:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 87CD140EE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87CD140EE4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87CD140EE4
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2024 21:39:24 +0000 (UTC)
X-CSE-ConnectionGUID: nGWTeGVNR82D2QVyfYXWOQ==
X-CSE-MsgGUID: Enk42nsiTvm2rSm8zsephw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="37177376"
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="37177376"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 14:39:24 -0700
X-CSE-ConnectionGUID: iIUrPrJeQy2rxNFqja0dAg==
X-CSE-MsgGUID: /EL9h66NTRy0Xsql1EFadQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="57635534"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 25 Jul 2024 14:39:23 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sX6BF-000oUE-06;
 Thu, 25 Jul 2024 21:39:21 +0000
Date: Fri, 26 Jul 2024 05:39:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-6.11-rc1-merge-resolution] BUILD
 SUCCESS 6ea6aad5e0dfd8ec82a52f082cda0e3458e46976
Message-ID: <202407260559.xpmwqgBX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721943565; x=1753479565;
 h=date:from:to:cc:subject:message-id;
 bh=43ArBDNAVlhukaCWyNlsU75027vSVFKKwj1VhcHMR+U=;
 b=l2Xg8yFDpzC2ApmimBzWzTAi3OOatchOzkCYgoaHCP6fCXdXfyVitPNo
 dK4Cp2F2FnoXvWQ6vVSzgt3sXGrTHEuhsjal9OxDXQsQ37BlgSwYjI+4c
 N1sSDKBgRu2WHi3ysrbdCAh1gyr7XCjR3FuS3oouFnX3sTqFLpfgoNmuh
 KAaCNPUNgRBvi00W2V4LQ1evzvLPIpkR7NsiL2WRqIlU6ygmZ7MJ9aUGC
 cBC2BQcnpFYWlirANPpHEsRR1aLbpRwJO2u0iRrUu6T3hfe5GiEZDD67Q
 TUX4SWIiiVNEqoV5hrBwBDYa7k4ZItBNE66J1SZgh620uK9sLAlt8JRoW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l2Xg8yFD
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-6.11-rc1-merge-resolution
branch HEAD: 6ea6aad5e0dfd8ec82a52f082cda0e3458e46976  net: ethernet: rtsn: Fix up for remove() coversion to return void

elapsed time: 860m

configs tested: 143
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                        nsimosci_defconfig   gcc-13.2.0
arc                   randconfig-001-20240725   gcc-13.2.0
arc                   randconfig-002-20240725   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                         mv78xx0_defconfig   clang-20
arm                        mvebu_v5_defconfig   gcc-14.1.0
arm                       omap2plus_defconfig   gcc-14.1.0
arm                   randconfig-001-20240725   clang-20
arm                   randconfig-002-20240725   clang-20
arm                   randconfig-003-20240725   clang-17
arm                   randconfig-004-20240725   clang-20
arm                           tegra_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240725   clang-20
arm64                 randconfig-002-20240725   clang-20
arm64                 randconfig-003-20240725   gcc-14.1.0
arm64                 randconfig-004-20240725   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240725   gcc-14.1.0
csky                  randconfig-002-20240725   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240725   clang-20
hexagon               randconfig-002-20240725   clang-20
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240725   gcc-13
i386         buildonly-randconfig-002-20240725   gcc-8
i386         buildonly-randconfig-003-20240725   gcc-13
i386         buildonly-randconfig-004-20240725   gcc-8
i386         buildonly-randconfig-005-20240725   gcc-13
i386         buildonly-randconfig-006-20240725   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240725   gcc-13
i386                  randconfig-002-20240725   gcc-13
i386                  randconfig-003-20240725   gcc-13
i386                  randconfig-004-20240725   gcc-8
i386                  randconfig-005-20240725   clang-18
i386                  randconfig-006-20240725   clang-18
i386                  randconfig-011-20240725   clang-18
i386                  randconfig-012-20240725   gcc-13
i386                  randconfig-013-20240725   clang-18
i386                  randconfig-014-20240725   gcc-13
i386                  randconfig-015-20240725   clang-18
i386                  randconfig-016-20240725   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240725   gcc-14.1.0
loongarch             randconfig-002-20240725   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           gcw0_defconfig   clang-20
mips                           xway_defconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240725   gcc-14.1.0
nios2                 randconfig-002-20240725   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240725   gcc-14.1.0
parisc                randconfig-002-20240725   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                    amigaone_defconfig   gcc-14.1.0
powerpc                      arches_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240725   clang-20
powerpc               randconfig-002-20240725   clang-20
powerpc               randconfig-003-20240725   gcc-14.1.0
powerpc                     taishan_defconfig   clang-20
powerpc64             randconfig-001-20240725   gcc-14.1.0
powerpc64             randconfig-002-20240725   gcc-14.1.0
powerpc64             randconfig-003-20240725   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240725   gcc-14.1.0
riscv                 randconfig-002-20240725   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                  randconfig-001-20240725   clang-20
s390                  randconfig-002-20240725   clang-15
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                        dreamcast_defconfig   gcc-14.1.0
sh                          r7780mp_defconfig   gcc-14.1.0
sh                    randconfig-001-20240725   gcc-14.1.0
sh                    randconfig-002-20240725   gcc-14.1.0
sh                          rsk7269_defconfig   gcc-14.1.0
sh                          sdk7780_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240725   gcc-14.1.0
sparc64               randconfig-002-20240725   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240725   gcc-12
um                    randconfig-002-20240725   clang-20
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240725   clang-18
x86_64       buildonly-randconfig-002-20240725   clang-18
x86_64       buildonly-randconfig-003-20240725   clang-18
x86_64       buildonly-randconfig-004-20240725   clang-18
x86_64       buildonly-randconfig-005-20240725   gcc-13
x86_64       buildonly-randconfig-006-20240725   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240725   clang-18
x86_64                randconfig-002-20240725   clang-18
x86_64                randconfig-003-20240725   clang-18
x86_64                randconfig-004-20240725   clang-18
x86_64                randconfig-005-20240725   gcc-13
x86_64                randconfig-006-20240725   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                  audio_kc705_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240725   gcc-14.1.0
xtensa                randconfig-002-20240725   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
