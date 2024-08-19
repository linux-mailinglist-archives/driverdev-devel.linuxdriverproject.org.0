Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0519A95728B
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2024 19:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB1E980FBA;
	Mon, 19 Aug 2024 17:58:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XWSVZC8vZKE7; Mon, 19 Aug 2024 17:58:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAD1E80FBC
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAD1E80FBC;
	Mon, 19 Aug 2024 17:58:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 215211BF3E0
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2024 17:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E8A6403F5
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2024 17:58:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Vn2_jQX4H9Q for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2024 17:57:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5EE35401A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EE35401A3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EE35401A3
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2024 17:57:58 +0000 (UTC)
X-CSE-ConnectionGUID: rNNgbejGSIC0SBRP87iRVw==
X-CSE-MsgGUID: 4TQ0VXxNRtSMoTJD1Mz19w==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26152188"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="26152188"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 10:57:58 -0700
X-CSE-ConnectionGUID: n7Xd/VMhQeuTtc8zyhXZLw==
X-CSE-MsgGUID: iINiDrOGTZai0FsQRExpXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="64842805"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 19 Aug 2024 10:57:56 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sg6dd-0009HI-2Y;
 Mon, 19 Aug 2024 17:57:53 +0000
Date: Tue, 20 Aug 2024 01:57:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 87ee9981d1f86ee9b1623a46c7f9e4ac24461fe4
Message-ID: <202408200111.WOUBu0fF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724090280; x=1755626280;
 h=date:from:to:cc:subject:message-id;
 bh=GYFKPWF25MmUdEeSMHnZU2Y0zPLpXwoZZs8KCwEh0Hk=;
 b=S++RRK02UmpnqMY+5t/xcRu05SuwPum3fxRurMXrxGGifYpTjIslFgeA
 044db5RMsgkJmoR2IDgtQQ5pjXJ5r/MQYtbdaq969eMIA0rEcVYXqtSe4
 WJ5dOtOpKXWi//HJZOhbbfqBZCghOqWWFO3y+AwJ0+GecGkMaSwDcpKD8
 Dq4We/tAGx87Xu+Yi2PcZXLYl9IqTZqVGVk3DMvufHHth97GBLpB79tct
 n2Hqq/F3nvwmGNoobHSQfubvMhXgDjqJBsZOTk2c8kyKXIbAKeSesdhlH
 kk353CujSWcWl/DXZ+5w5T1GzunHEjVlrStDu1fZuSHuPr0+i259xdGly
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S++RRK02
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 87ee9981d1f86ee9b1623a46c7f9e4ac24461fe4  Merge 6.11-rc4 into driver-core-next

elapsed time: 825m

configs tested: 203
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs103_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                   randconfig-001-20240819   gcc-13.2.0
arc                   randconfig-002-20240819   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                   randconfig-001-20240819   clang-20
arm                   randconfig-002-20240819   clang-20
arm                   randconfig-003-20240819   clang-17
arm                   randconfig-004-20240819   gcc-14.1.0
arm                         socfpga_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240819   gcc-14.1.0
arm64                 randconfig-002-20240819   gcc-14.1.0
arm64                 randconfig-003-20240819   clang-20
arm64                 randconfig-004-20240819   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240819   gcc-14.1.0
csky                  randconfig-002-20240819   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240819   clang-20
hexagon               randconfig-002-20240819   clang-15
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240819   clang-18
i386         buildonly-randconfig-002-20240819   clang-18
i386         buildonly-randconfig-002-20240819   gcc-12
i386         buildonly-randconfig-003-20240819   clang-18
i386         buildonly-randconfig-003-20240819   gcc-11
i386         buildonly-randconfig-004-20240819   clang-18
i386         buildonly-randconfig-005-20240819   clang-18
i386         buildonly-randconfig-005-20240819   gcc-12
i386         buildonly-randconfig-006-20240819   clang-18
i386         buildonly-randconfig-006-20240819   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240819   clang-18
i386                  randconfig-001-20240819   gcc-12
i386                  randconfig-002-20240819   clang-18
i386                  randconfig-003-20240819   clang-18
i386                  randconfig-003-20240819   gcc-12
i386                  randconfig-004-20240819   clang-18
i386                  randconfig-004-20240819   gcc-12
i386                  randconfig-005-20240819   clang-18
i386                  randconfig-005-20240819   gcc-12
i386                  randconfig-006-20240819   clang-18
i386                  randconfig-006-20240819   gcc-12
i386                  randconfig-011-20240819   clang-18
i386                  randconfig-011-20240819   gcc-12
i386                  randconfig-012-20240819   clang-18
i386                  randconfig-012-20240819   gcc-12
i386                  randconfig-013-20240819   clang-18
i386                  randconfig-013-20240819   gcc-12
i386                  randconfig-014-20240819   clang-18
i386                  randconfig-014-20240819   gcc-12
i386                  randconfig-015-20240819   clang-18
i386                  randconfig-015-20240819   gcc-12
i386                  randconfig-016-20240819   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240819   gcc-14.1.0
loongarch             randconfig-002-20240819   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                        m5407c3_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
nios2                         3c120_defconfig   gcc-13.2.0
nios2                            alldefconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240819   gcc-14.1.0
nios2                 randconfig-002-20240819   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240819   gcc-14.1.0
parisc                randconfig-002-20240819   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                       ebony_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240819   gcc-14.1.0
powerpc               randconfig-002-20240819   gcc-14.1.0
powerpc               randconfig-003-20240819   clang-20
powerpc64             randconfig-001-20240819   clang-14
powerpc64             randconfig-002-20240819   clang-20
powerpc64             randconfig-003-20240819   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240819   clang-20
riscv                 randconfig-002-20240819   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240819   gcc-14.1.0
s390                  randconfig-002-20240819   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                               j2_defconfig   gcc-13.2.0
sh                    randconfig-001-20240819   gcc-14.1.0
sh                    randconfig-002-20240819   gcc-14.1.0
sh                      rts7751r2d1_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240819   gcc-14.1.0
sparc64               randconfig-002-20240819   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   clang-20
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-12
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240819   gcc-12
um                    randconfig-002-20240819   clang-20
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240819   gcc-12
x86_64       buildonly-randconfig-002-20240819   gcc-12
x86_64       buildonly-randconfig-003-20240819   gcc-12
x86_64       buildonly-randconfig-004-20240819   gcc-12
x86_64       buildonly-randconfig-005-20240819   gcc-12
x86_64       buildonly-randconfig-006-20240819   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240819   clang-18
x86_64                randconfig-001-20240819   gcc-12
x86_64                randconfig-002-20240819   clang-18
x86_64                randconfig-002-20240819   gcc-12
x86_64                randconfig-003-20240819   gcc-12
x86_64                randconfig-004-20240819   gcc-12
x86_64                randconfig-005-20240819   clang-18
x86_64                randconfig-005-20240819   gcc-12
x86_64                randconfig-006-20240819   clang-18
x86_64                randconfig-006-20240819   gcc-12
x86_64                randconfig-011-20240819   gcc-12
x86_64                randconfig-012-20240819   clang-18
x86_64                randconfig-012-20240819   gcc-12
x86_64                randconfig-013-20240819   clang-18
x86_64                randconfig-013-20240819   gcc-12
x86_64                randconfig-014-20240819   gcc-12
x86_64                randconfig-015-20240819   gcc-12
x86_64                randconfig-016-20240819   gcc-12
x86_64                randconfig-071-20240819   gcc-12
x86_64                randconfig-072-20240819   gcc-12
x86_64                randconfig-073-20240819   clang-18
x86_64                randconfig-073-20240819   gcc-12
x86_64                randconfig-074-20240819   gcc-12
x86_64                randconfig-075-20240819   gcc-12
x86_64                randconfig-076-20240819   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                  audio_kc705_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240819   gcc-14.1.0
xtensa                randconfig-002-20240819   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
