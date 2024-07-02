Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A392476A
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2024 20:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD8D960BD1;
	Tue,  2 Jul 2024 18:42:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uNvWEpXE_V87; Tue,  2 Jul 2024 18:42:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2A6A60BD8
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2A6A60BD8;
	Tue,  2 Jul 2024 18:42:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D57D01BF304
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2024 18:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2E0D60BD1
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2024 18:42:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 90aj9w4gyxrS for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2024 18:42:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B169606FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B169606FA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B169606FA
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2024 18:42:29 +0000 (UTC)
X-CSE-ConnectionGUID: PGJdkGVjRJec1XCobPZhjA==
X-CSE-MsgGUID: wFw/cs66QHiLRQeaZ7Sz+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="39654143"
X-IronPort-AV: E=Sophos;i="6.09,180,1716274800"; d="scan'208";a="39654143"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 11:42:28 -0700
X-CSE-ConnectionGUID: B1kxBUi2TXiEXvPOKIEWIg==
X-CSE-MsgGUID: 4N6mg2/BRHaL1wmVDfSXKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,180,1716274800"; d="scan'208";a="50330527"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 02 Jul 2024 11:42:27 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sOiSP-000OX2-1S;
 Tue, 02 Jul 2024 18:42:25 +0000
Date: Wed, 03 Jul 2024 02:41:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver] BUILD SUCCESS
 d382ec8299f1c375efe9d255b728c420a610f6a4
Message-ID: <202407030250.uqhINCS4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719945749; x=1751481749;
 h=date:from:to:cc:subject:message-id;
 bh=hsfeXuOwZiYDALoX2Aop4yxxZJDIs12gelMFqo2KA2E=;
 b=HnzoWXlrsSiVzRBMbUD9tccNGYEM3CWLo3rCO60OeMDeqqMq1QsBQCr2
 vxJF5P8QrZ1SfK6oA8AdI5Zj+ZrHFsECvXxtmaHjCJVlzp2eaLaq3dyO1
 u5ayo2mNU9LHHrEOUQUZr+KBKreQymsuamBAme6wKm4PR0Y6dBrbWLaZ5
 AflZYKA/ZFxdZL38c8yacB3Kv7o9aQGD0Ii+mp+jmLolIuoQWbeXGJsHW
 aYHcs9FZINtd+wODVTPkDEsb34vKuHrOF98Ld+9WAig4rKFWpfndCUTBv
 XpEpIFClfgIfZKJnhiAJV0ptFrHWstvQLMMDP60FvvKD9aDBrIaqNTPKs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HnzoWXlr
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
branch HEAD: d382ec8299f1c375efe9d255b728c420a610f6a4  USB: move dynamic ids out of usb driver structures

elapsed time: 1784m

configs tested: 109
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240702   gcc-13.2.0
arc                   randconfig-002-20240702   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                          collie_defconfig   gcc-13.2.0
arm                          gemini_defconfig   clang-19
arm                   randconfig-001-20240702   gcc-13.2.0
arm                   randconfig-002-20240702   gcc-13.2.0
arm                   randconfig-003-20240702   gcc-13.2.0
arm                   randconfig-004-20240702   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240702   gcc-13.2.0
arm64                 randconfig-002-20240702   clang-19
arm64                 randconfig-002-20240702   gcc-13.2.0
arm64                 randconfig-003-20240702   gcc-13.2.0
arm64                 randconfig-004-20240702   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                  randconfig-001-20240702   gcc-13.2.0
csky                  randconfig-002-20240702   gcc-13.2.0
hexagon               randconfig-001-20240702   clang-19
hexagon               randconfig-002-20240702   clang-19
i386         buildonly-randconfig-001-20240702   gcc-13
i386         buildonly-randconfig-002-20240702   gcc-13
i386         buildonly-randconfig-003-20240702   gcc-13
i386         buildonly-randconfig-004-20240702   gcc-13
i386         buildonly-randconfig-005-20240702   gcc-13
i386         buildonly-randconfig-006-20240702   gcc-13
i386                  randconfig-001-20240702   gcc-13
i386                  randconfig-002-20240702   gcc-13
i386                  randconfig-003-20240702   gcc-13
i386                  randconfig-004-20240702   gcc-13
i386                  randconfig-005-20240702   gcc-13
i386                  randconfig-006-20240702   gcc-13
i386                  randconfig-011-20240702   gcc-13
i386                  randconfig-012-20240702   gcc-13
i386                  randconfig-013-20240702   gcc-13
i386                  randconfig-014-20240702   gcc-13
i386                  randconfig-015-20240702   gcc-13
i386                  randconfig-016-20240702   gcc-13
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240702   gcc-13.2.0
loongarch             randconfig-002-20240702   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240702   gcc-13.2.0
nios2                 randconfig-002-20240702   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                randconfig-001-20240702   gcc-13.2.0
parisc                randconfig-002-20240702   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-001-20240702   gcc-13.2.0
powerpc               randconfig-002-20240702   clang-16
powerpc               randconfig-002-20240702   gcc-13.2.0
powerpc               randconfig-003-20240702   gcc-13.2.0
powerpc64             randconfig-001-20240702   clang-19
powerpc64             randconfig-001-20240702   gcc-13.2.0
powerpc64             randconfig-002-20240702   gcc-13.2.0
powerpc64             randconfig-003-20240702   clang-19
powerpc64             randconfig-003-20240702   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                 randconfig-001-20240702   gcc-13.2.0
riscv                 randconfig-002-20240702   gcc-13.2.0
s390                              allnoconfig   gcc-13.2.0
s390                  randconfig-001-20240702   clang-19
s390                  randconfig-001-20240702   gcc-13.2.0
s390                  randconfig-002-20240702   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                    randconfig-001-20240702   gcc-13.2.0
sh                    randconfig-002-20240702   gcc-13.2.0
sparc64               randconfig-001-20240702   gcc-13.2.0
sparc64               randconfig-002-20240702   gcc-13.2.0
um                                allnoconfig   gcc-13.2.0
um                    randconfig-001-20240702   gcc-13.2.0
um                    randconfig-001-20240702   gcc-8
um                    randconfig-002-20240702   gcc-13
um                    randconfig-002-20240702   gcc-13.2.0
x86_64                           alldefconfig   gcc-13
x86_64       buildonly-randconfig-001-20240702   gcc-8
x86_64       buildonly-randconfig-002-20240702   clang-18
x86_64       buildonly-randconfig-003-20240702   clang-18
x86_64       buildonly-randconfig-004-20240702   clang-18
x86_64       buildonly-randconfig-005-20240702   gcc-13
x86_64       buildonly-randconfig-006-20240702   clang-18
x86_64                randconfig-001-20240702   clang-18
x86_64                randconfig-002-20240702   gcc-11
x86_64                randconfig-003-20240702   gcc-13
x86_64                randconfig-004-20240702   gcc-9
x86_64                randconfig-005-20240702   clang-18
x86_64                randconfig-006-20240702   gcc-13
x86_64                randconfig-011-20240702   clang-18
x86_64                randconfig-012-20240702   gcc-8
x86_64                randconfig-013-20240702   clang-18
x86_64                randconfig-014-20240702   gcc-13
x86_64                randconfig-015-20240702   gcc-13
x86_64                randconfig-016-20240702   clang-18
x86_64                randconfig-071-20240702   clang-18
x86_64                randconfig-072-20240702   gcc-13
x86_64                randconfig-073-20240702   gcc-8
x86_64                randconfig-074-20240702   clang-18
x86_64                randconfig-075-20240702   gcc-13
x86_64                randconfig-076-20240702   gcc-8
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240702   gcc-13.2.0
xtensa                randconfig-002-20240702   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
