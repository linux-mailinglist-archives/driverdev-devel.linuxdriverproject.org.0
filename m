Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD0E939787
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jul 2024 02:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C95F810CA;
	Tue, 23 Jul 2024 00:43:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2CcAdW2UUWIP; Tue, 23 Jul 2024 00:43:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B09F810D0
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B09F810D0;
	Tue, 23 Jul 2024 00:43:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA9071BF95C
 for <devel@linuxdriverproject.org>; Tue, 23 Jul 2024 00:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C775940177
 for <devel@linuxdriverproject.org>; Tue, 23 Jul 2024 00:43:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uVLA7WvrOusF for <devel@linuxdriverproject.org>;
 Tue, 23 Jul 2024 00:43:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 20E26400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20E26400B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20E26400B9
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2024 00:43:08 +0000 (UTC)
X-CSE-ConnectionGUID: +yl1LdbUTaKscJ5Xdyh4Jg==
X-CSE-MsgGUID: T+jQ706YTlu+BdQRHy6rEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29912793"
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="29912793"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 17:43:08 -0700
X-CSE-ConnectionGUID: nr+8bIbDRj6v09zr4aqBKQ==
X-CSE-MsgGUID: MQFexRlTTxyAwRGkkRDxPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="56608200"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 22 Jul 2024 17:43:07 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sW3cP-000lVn-0F;
 Tue, 23 Jul 2024 00:43:05 +0000
Date: Tue, 23 Jul 2024 08:42:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 501f065920b87daf2b5c5ee3a2d3ed6306678733
Message-ID: <202407230824.iNHQrrFU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721695389; x=1753231389;
 h=date:from:to:cc:subject:message-id;
 bh=YQunNBHzcl5KoJQvjXZt/MvQvkVlZNF18ZqB/7VU+RY=;
 b=PNWexPsjnoVITjuMpwYih8ZEO9swsAOYW9nBcyI920SeGYXSOqxpFq6i
 294SIZxC7bRI8wGEX6j3ZlPZNyqYOA7bNBeJfE+/OOJRNSlK4nmMPh6ln
 XxEXlfnmGTZWNVdu1EPlq1fphx4GwpVA091h7+oVb5imk/dMhEPBkbdII
 TTecL5+m2UrH0NHGe8Xe0I0/GaAoAmGnMyazi8hAA5RsHtpjnUHv7VQ5i
 LUMLgbE9eEdxrW05/b2Zp7BLaKINIYuOzQza/YQERxqf18nEcBvOJNZCo
 7sZU557bdEP5+42SoWlRKzathWOKF8ENnrkc8UburVDe706ZfQMr1VG/3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PNWexPsj
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 501f065920b87daf2b5c5ee3a2d3ed6306678733  staging: rtl8712: style fix multiple line dereference

elapsed time: 723m

configs tested: 186
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240722   gcc-13.2.0
arc                   randconfig-002-20240722   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                          moxart_defconfig   gcc-14.1.0
arm                   randconfig-001-20240722   gcc-14.1.0
arm                   randconfig-002-20240722   clang-19
arm                   randconfig-003-20240722   clang-19
arm                   randconfig-004-20240722   clang-19
arm                          sp7021_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240722   clang-19
arm64                 randconfig-002-20240722   clang-19
arm64                 randconfig-003-20240722   clang-15
arm64                 randconfig-004-20240722   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240722   gcc-14.1.0
csky                  randconfig-002-20240722   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240722   clang-17
hexagon               randconfig-002-20240722   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240722   gcc-13
i386         buildonly-randconfig-001-20240723   gcc-8
i386         buildonly-randconfig-002-20240722   gcc-13
i386         buildonly-randconfig-002-20240723   gcc-8
i386         buildonly-randconfig-003-20240722   clang-18
i386         buildonly-randconfig-003-20240723   gcc-8
i386         buildonly-randconfig-004-20240722   clang-18
i386         buildonly-randconfig-004-20240723   gcc-8
i386         buildonly-randconfig-005-20240722   gcc-9
i386         buildonly-randconfig-005-20240723   gcc-8
i386         buildonly-randconfig-006-20240722   clang-18
i386         buildonly-randconfig-006-20240723   gcc-8
i386                                defconfig   clang-18
i386                  randconfig-001-20240722   clang-18
i386                  randconfig-001-20240723   gcc-8
i386                  randconfig-002-20240722   clang-18
i386                  randconfig-002-20240723   gcc-8
i386                  randconfig-003-20240722   gcc-11
i386                  randconfig-003-20240723   gcc-8
i386                  randconfig-004-20240722   clang-18
i386                  randconfig-004-20240723   gcc-8
i386                  randconfig-005-20240722   clang-18
i386                  randconfig-005-20240723   gcc-8
i386                  randconfig-006-20240722   gcc-13
i386                  randconfig-006-20240723   gcc-8
i386                  randconfig-011-20240722   gcc-13
i386                  randconfig-011-20240723   gcc-8
i386                  randconfig-012-20240722   clang-18
i386                  randconfig-012-20240723   gcc-8
i386                  randconfig-013-20240722   clang-18
i386                  randconfig-013-20240723   gcc-8
i386                  randconfig-014-20240722   clang-18
i386                  randconfig-014-20240723   gcc-8
i386                  randconfig-015-20240722   clang-18
i386                  randconfig-015-20240723   gcc-8
i386                  randconfig-016-20240722   gcc-13
i386                  randconfig-016-20240723   gcc-8
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-14.1.0
loongarch             randconfig-001-20240722   gcc-14.1.0
loongarch             randconfig-002-20240722   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-14.1.0
m68k                            mac_defconfig   gcc-14.1.0
m68k                        mvme147_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        maltaup_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240722   gcc-14.1.0
nios2                 randconfig-002-20240722   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240722   gcc-14.1.0
parisc                randconfig-002-20240722   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                      ep88xc_defconfig   gcc-14.1.0
powerpc                 mpc8313_rdb_defconfig   gcc-14.1.0
powerpc                 mpc836x_rdk_defconfig   clang-19
powerpc               randconfig-001-20240722   clang-19
powerpc               randconfig-002-20240722   clang-19
powerpc               randconfig-003-20240722   gcc-14.1.0
powerpc64             randconfig-001-20240722   gcc-14.1.0
powerpc64             randconfig-002-20240722   gcc-14.1.0
powerpc64             randconfig-003-20240722   clang-19
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240722   clang-19
riscv                 randconfig-002-20240722   clang-17
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240722   gcc-14.1.0
s390                  randconfig-002-20240722   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         ap325rxa_defconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240722   gcc-14.1.0
sh                    randconfig-002-20240722   gcc-14.1.0
sh                           se7724_defconfig   gcc-14.1.0
sh                           se7751_defconfig   gcc-14.1.0
sh                            shmin_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240722   gcc-14.1.0
sparc64               randconfig-002-20240722   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240722   gcc-13
um                    randconfig-002-20240722   clang-19
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240723   gcc-10
x86_64       buildonly-randconfig-002-20240723   gcc-10
x86_64       buildonly-randconfig-003-20240723   gcc-12
x86_64       buildonly-randconfig-004-20240723   gcc-8
x86_64       buildonly-randconfig-005-20240723   gcc-12
x86_64       buildonly-randconfig-006-20240723   gcc-10
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240723   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240722   gcc-14.1.0
xtensa                randconfig-002-20240722   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
