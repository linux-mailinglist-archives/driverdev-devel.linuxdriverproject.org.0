Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E080D92865A
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2024 12:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEA68409C5;
	Fri,  5 Jul 2024 10:05:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WpYnvQu9osQi; Fri,  5 Jul 2024 10:05:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 498B7409CA
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 498B7409CA;
	Fri,  5 Jul 2024 10:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B21A1BF289
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2024 10:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 457B360755
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2024 10:05:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Otd0Zd-uBLfU for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2024 10:05:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DD53606F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DD53606F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DD53606F9
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2024 10:05:27 +0000 (UTC)
X-CSE-ConnectionGUID: PQ6BhChoRECcPm6lKZzqzA==
X-CSE-MsgGUID: Co4/8gxGSMa6P4SYJXuArA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17108290"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="17108290"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 03:05:27 -0700
X-CSE-ConnectionGUID: Aa3nuH55Slu8IyXUnh5FLQ==
X-CSE-MsgGUID: 5vQjZ+9/SjGwHZDE5YPWug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="46807617"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 05 Jul 2024 03:05:26 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sPfoi-000SEp-0h;
 Fri, 05 Jul 2024 10:05:24 +0000
Date: Fri, 05 Jul 2024 18:05:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 997197b58bf6e22b8c6ef88a168d8292fa9acec9
Message-ID: <202407051817.yEAnb8xs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720173928; x=1751709928;
 h=date:from:to:cc:subject:message-id;
 bh=tGvT2D1yCHHvXo3YushLDYgB7LfxtPfjHamuynyjBvE=;
 b=PyXf9p8XPK+Jw6v0k/PINFDVN85hy9qE4ii05BcrbSAaSlmf90clM82q
 a/aUTKl4eNiczu86ZEpsAt7XZVKE5SIOhCswobRAmRtIoH3qd3d8lmARi
 jI3sWFOFBIVO2FO06dTlDBJ6uiRR1TKF4AU6p9cvQDloI3QArnNnKldjR
 n+tHYa/rv1lwAjtKCOSde4mxzRos2/BeIEIQ2ctlI3alhwr2J3cT2TGSH
 cKWxCriyiEpN3vq62SyyxY7DOosJL0w3hITAyycKT0aD3oqXdmU3BUBXt
 fNGotUYRIKsai1zqJRzCr040La/ZVjn9hBbFnW4kYVJ6CLopnEDJTLFi4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PyXf9p8X
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
branch HEAD: 997197b58bf6e22b8c6ef88a168d8292fa9acec9  devres: Correct code style for functions that return a pointer type

elapsed time: 1341m

configs tested: 153
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240705   gcc-13.2.0
arc                   randconfig-002-20240705   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-13.2.0
arm                   randconfig-001-20240705   gcc-13.2.0
arm                   randconfig-002-20240705   gcc-13.2.0
arm                   randconfig-003-20240705   gcc-13.2.0
arm                   randconfig-004-20240705   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240705   clang-19
arm64                 randconfig-002-20240705   clang-19
arm64                 randconfig-003-20240705   clang-19
arm64                 randconfig-004-20240705   clang-19
csky                              allnoconfig   gcc-13.2.0
csky                  randconfig-001-20240705   gcc-13.2.0
csky                  randconfig-002-20240705   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240705   clang-19
hexagon               randconfig-002-20240705   clang-17
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240705   gcc-13
i386         buildonly-randconfig-002-20240705   gcc-9
i386         buildonly-randconfig-003-20240705   gcc-11
i386         buildonly-randconfig-004-20240705   clang-18
i386         buildonly-randconfig-005-20240705   clang-18
i386         buildonly-randconfig-006-20240705   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240705   gcc-13
i386                  randconfig-002-20240705   clang-18
i386                  randconfig-003-20240705   gcc-11
i386                  randconfig-004-20240705   gcc-13
i386                  randconfig-005-20240705   clang-18
i386                  randconfig-006-20240705   clang-18
i386                  randconfig-011-20240705   gcc-13
i386                  randconfig-012-20240705   gcc-13
i386                  randconfig-013-20240705   clang-18
i386                  randconfig-014-20240705   gcc-8
i386                  randconfig-015-20240705   gcc-10
i386                  randconfig-016-20240705   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240705   gcc-13.2.0
loongarch             randconfig-002-20240705   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                          hp300_defconfig   gcc-13.2.0
m68k                          sun3x_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                     decstation_defconfig   gcc-13.2.0
mips                          rb532_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240705   gcc-13.2.0
nios2                 randconfig-002-20240705   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                generic-64bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240705   gcc-13.2.0
parisc                randconfig-002-20240705   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   clang-19
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                   bluestone_defconfig   clang-19
powerpc                      cm5200_defconfig   clang-19
powerpc                      pcm030_defconfig   clang-19
powerpc                      pmac32_defconfig   clang-19
powerpc                      ppc64e_defconfig   gcc-13.2.0
powerpc                     rainier_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240705   gcc-13.2.0
powerpc               randconfig-002-20240705   clang-19
powerpc               randconfig-003-20240705   clang-19
powerpc                     tqm8548_defconfig   clang-19
powerpc64             randconfig-001-20240705   gcc-13.2.0
powerpc64             randconfig-002-20240705   clang-19
powerpc64             randconfig-003-20240705   clang-19
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240705   gcc-13.2.0
riscv                 randconfig-002-20240705   clang-19
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240705   gcc-13.2.0
s390                  randconfig-002-20240705   clang-16
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                          lboxre2_defconfig   gcc-13.2.0
sh                    randconfig-001-20240705   gcc-13.2.0
sh                    randconfig-002-20240705   gcc-13.2.0
sh                            shmin_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240705   gcc-13.2.0
sparc64               randconfig-002-20240705   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240705   clang-19
um                    randconfig-002-20240705   clang-15
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240705   gcc-7
x86_64       buildonly-randconfig-002-20240705   gcc-13
x86_64       buildonly-randconfig-003-20240705   clang-18
x86_64       buildonly-randconfig-004-20240705   clang-18
x86_64       buildonly-randconfig-005-20240705   clang-18
x86_64       buildonly-randconfig-006-20240705   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240705   clang-18
x86_64                randconfig-002-20240705   gcc-13
x86_64                randconfig-003-20240705   clang-18
x86_64                randconfig-004-20240705   gcc-13
x86_64                randconfig-005-20240705   gcc-13
x86_64                randconfig-006-20240705   gcc-13
x86_64                randconfig-011-20240705   clang-18
x86_64                randconfig-012-20240705   gcc-9
x86_64                randconfig-013-20240705   clang-18
x86_64                randconfig-014-20240705   gcc-13
x86_64                randconfig-016-20240705   gcc-9
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                  audio_kc705_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240705   gcc-13.2.0
xtensa                randconfig-002-20240705   gcc-13.2.0
xtensa                    xip_kc705_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
