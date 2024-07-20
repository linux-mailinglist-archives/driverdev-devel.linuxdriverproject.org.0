Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E1F938034
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2024 11:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AA4B40513;
	Sat, 20 Jul 2024 09:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yOU0zBp3h4NY; Sat, 20 Jul 2024 09:22:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A30740544
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A30740544;
	Sat, 20 Jul 2024 09:22:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2CF61BF3F9
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2024 09:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E72840544
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2024 09:22:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EucMnyehAB2s for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2024 09:22:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BCC5A40513
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCC5A40513
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCC5A40513
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2024 09:22:06 +0000 (UTC)
X-CSE-ConnectionGUID: blNRkXOIS4SL/JWTtQ1MdA==
X-CSE-MsgGUID: I8iH7IlsSWWzNG+FFq8BMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11138"; a="22957394"
X-IronPort-AV: E=Sophos;i="6.09,223,1716274800"; d="scan'208";a="22957394"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2024 02:22:06 -0700
X-CSE-ConnectionGUID: ROPi0FubTR+dEIjNt0r5LQ==
X-CSE-MsgGUID: 0sMLOQGYRHqw6gNQZwVSGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,223,1716274800"; d="scan'208";a="51625821"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 20 Jul 2024 02:22:05 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sV6Hz-000j48-0Z;
 Sat, 20 Jul 2024 09:22:03 +0000
Date: Sat, 20 Jul 2024 17:21:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:const_work] BUILD SUCCESS
 b994305068e2d36913c6c53976fc776d586c144d
Message-ID: <202407201730.XQJHGXOV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721467328; x=1753003328;
 h=date:from:to:cc:subject:message-id;
 bh=8+QDFOZBHiOPbOy7bj9vujaq29Ri5AOLdchBnlfFJq0=;
 b=AKL10yxhUaL47CVRAdrH6VdxAghGb7jI8V+5sMCOEVgLd+9PINHutzId
 zgrw6BwT+SmoR5vsbpvwABl24w3MgeVJbnX6fMAxOlL8XCVSI15uZ5tbR
 avd7w6EvysxAtVdGVbrAe4VvbwJSnD2Cpcag2EOlSTUOew9aoY18e62m2
 oxoZiLKVxby2FFI6sTO86rs0Itu04iBnEX8xVJdshNYOCrp+mY0qgYyip
 FSHEaFezjd6o6KVnFBA4u5BJ2uqmCYA6rtq8eyt/KFsSO+lZ+neNdpVxV
 9BGW3IeQnx/TKDvGDueUk8lxhQopMcBECEu3CSxwWAmnvh54gwA+8jBb4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AKL10yxh
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
branch HEAD: b994305068e2d36913c6c53976fc776d586c144d  crypto: qat: make adf_ctl_class constant

elapsed time: 1238m

configs tested: 151
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240720   gcc-13.2.0
arc                   randconfig-002-20240720   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-14.1.0
arm                         axm55xx_defconfig   clang-19
arm                            dove_defconfig   gcc-14.1.0
arm                       imx_v4_v5_defconfig   clang-16
arm                       imx_v6_v7_defconfig   clang-19
arm                   milbeaut_m10v_defconfig   clang-16
arm                            mmp2_defconfig   gcc-14.1.0
arm                        multi_v5_defconfig   gcc-14.1.0
arm                          pxa3xx_defconfig   clang-19
arm                   randconfig-001-20240720   clang-15
arm                   randconfig-002-20240720   gcc-14.1.0
arm                   randconfig-003-20240720   gcc-14.1.0
arm                   randconfig-004-20240720   gcc-14.1.0
arm                    vt8500_v6_v7_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240720   gcc-14.1.0
arm64                 randconfig-002-20240720   clang-17
arm64                 randconfig-003-20240720   gcc-14.1.0
arm64                 randconfig-004-20240720   clang-19
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240720   gcc-14.1.0
csky                  randconfig-002-20240720   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240720   clang-16
hexagon               randconfig-002-20240720   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240719   clang-18
i386         buildonly-randconfig-002-20240719   clang-18
i386         buildonly-randconfig-003-20240719   gcc-10
i386         buildonly-randconfig-004-20240719   clang-18
i386         buildonly-randconfig-005-20240719   gcc-10
i386         buildonly-randconfig-006-20240719   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240719   clang-18
i386                  randconfig-002-20240719   clang-18
i386                  randconfig-003-20240719   clang-18
i386                  randconfig-004-20240719   gcc-13
i386                  randconfig-005-20240719   clang-18
i386                  randconfig-006-20240719   clang-18
i386                  randconfig-011-20240719   clang-18
i386                  randconfig-012-20240719   clang-18
i386                  randconfig-013-20240719   clang-18
i386                  randconfig-014-20240719   clang-18
i386                  randconfig-015-20240719   gcc-13
i386                  randconfig-016-20240719   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240720   gcc-14.1.0
loongarch             randconfig-002-20240720   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                        m5307c3_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                  maltasmvp_eva_defconfig   gcc-13.2.0
mips                           mtx1_defconfig   clang-16
mips                           xway_defconfig   clang-19
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240720   gcc-14.1.0
nios2                 randconfig-002-20240720   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240720   gcc-14.1.0
parisc                randconfig-002-20240720   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc               mpc834x_itxgp_defconfig   clang-14
powerpc               randconfig-001-20240720   clang-19
powerpc               randconfig-002-20240720   clang-19
powerpc               randconfig-003-20240720   gcc-14.1.0
powerpc64             randconfig-001-20240720   clang-19
powerpc64             randconfig-002-20240720   clang-19
powerpc64             randconfig-003-20240720   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-002-20240720   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240720   gcc-14.1.0
s390                  randconfig-002-20240720   clang-15
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240720   gcc-14.1.0
sh                      rts7751r2d1_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240720   clang-18
x86_64       buildonly-randconfig-002-20240720   gcc-13
x86_64       buildonly-randconfig-003-20240720   clang-18
x86_64       buildonly-randconfig-004-20240720   clang-18
x86_64       buildonly-randconfig-005-20240720   gcc-13
x86_64       buildonly-randconfig-006-20240720   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240720   clang-18
x86_64                randconfig-002-20240720   gcc-13
x86_64                randconfig-003-20240720   clang-18
x86_64                randconfig-004-20240720   clang-18
x86_64                randconfig-005-20240720   clang-18
x86_64                randconfig-006-20240720   gcc-13
x86_64                randconfig-011-20240720   gcc-13
x86_64                randconfig-012-20240720   clang-18
x86_64                randconfig-013-20240720   gcc-13
x86_64                randconfig-014-20240720   clang-18
x86_64                randconfig-015-20240720   gcc-13
x86_64                randconfig-016-20240720   gcc-13
x86_64                randconfig-071-20240720   clang-18
x86_64                randconfig-072-20240720   gcc-13
x86_64                randconfig-073-20240720   gcc-13
x86_64                randconfig-074-20240720   gcc-9
x86_64                randconfig-075-20240720   gcc-13
x86_64                randconfig-076-20240720   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
