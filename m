Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40360937F1C
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2024 08:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37CA56060D;
	Sat, 20 Jul 2024 06:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1x-YGol1PE2I; Sat, 20 Jul 2024 06:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A0BC6062F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A0BC6062F;
	Sat, 20 Jul 2024 06:19:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AC9A1BF2FE
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2024 06:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 418FC40B5F
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2024 06:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQy2NLYOTWDP for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2024 06:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BEDE409D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BEDE409D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BEDE409D5
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2024 06:19:01 +0000 (UTC)
X-CSE-ConnectionGUID: Y0fycrYXRaqrNCrscqvpFg==
X-CSE-MsgGUID: 6ranCLWZTXS0pUoiK+R8Pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11138"; a="19217621"
X-IronPort-AV: E=Sophos;i="6.09,222,1716274800"; d="scan'208";a="19217621"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2024 23:19:01 -0700
X-CSE-ConnectionGUID: 2sZqJi9oRXeVPe1uWY4GXw==
X-CSE-MsgGUID: fwW0Mdx3TreXuytIWPMfUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,222,1716274800"; d="scan'208";a="56165080"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 19 Jul 2024 23:19:00 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sV3Qm-000iuI-2d;
 Sat, 20 Jul 2024 06:18:56 +0000
Date: Sat, 20 Jul 2024 14:18:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 b57d5ffc3ab507d0e19fc8b90b19c76af43fb790
Message-ID: <202407201407.YGCi4E8f-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721456343; x=1752992343;
 h=date:from:to:cc:subject:message-id;
 bh=UYWL5Xd+EUa96425d+XmAJgpyZm85SDA4XOEc5a78Ko=;
 b=eLQpgC4aXzR5IlyYBC8RypTNI2vYlQqRzFuI77O/NDBa0pSl4y3mSIZb
 jG/C0j0hQ7vRS0WrVEp3qDNdNhGLHj0cUnALAlTP7FucYs91/CvEIaty0
 9VSe0Tmd6g6K2PrblxM5l+BRd3n3J2DBBuMMB/9u46PcFq/7nvsWbnD8d
 VQrwU7Ee6Q9Ri8Xvd5ThQtbBkKYJki7vY8Rwgs6kM00QO908AeduAT3R+
 /QGKS7aZ4K9V459ZNC2Cof9prvjljjJKuGMka/hNUXd5Hyho6L9EDR8f8
 4ITZYsBFubB9fHo5jVCKE/okMJ728j9i30vS3nphzUcb80/hqEovwdAVU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eLQpgC4a
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
branch HEAD: b57d5ffc3ab507d0e19fc8b90b19c76af43fb790  ARM: sa1100: make match function take a const pointer

elapsed time: 1055m

configs tested: 160
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                     nsimosci_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240720   gcc-13.2.0
arc                   randconfig-002-20240720   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-14.1.0
arm                       aspeed_g5_defconfig   gcc-14.1.0
arm                       omap2plus_defconfig   gcc-14.1.0
arm                          pxa168_defconfig   clang-19
arm                   randconfig-001-20240720   clang-15
arm                   randconfig-002-20240720   gcc-14.1.0
arm                   randconfig-003-20240720   gcc-14.1.0
arm                   randconfig-004-20240720   gcc-14.1.0
arm                        shmobile_defconfig   gcc-14.1.0
arm                        vexpress_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240720   gcc-14.1.0
arm64                 randconfig-002-20240720   clang-17
arm64                 randconfig-003-20240720   gcc-14.1.0
arm64                 randconfig-004-20240720   clang-19
csky                             alldefconfig   gcc-14.1.0
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
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           gcw0_defconfig   clang-19
mips                           ip32_defconfig   clang-19
mips                      maltaaprp_defconfig   clang-14
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
powerpc                     asp8347_defconfig   clang-17
powerpc                 mpc832x_rdb_defconfig   gcc-14.1.0
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
riscv                 randconfig-001-20240720   clang-19
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
sh                               j2_defconfig   gcc-14.1.0
sh                     magicpanelr2_defconfig   gcc-14.1.0
sh                    randconfig-001-20240720   gcc-14.1.0
sh                    randconfig-002-20240720   gcc-14.1.0
sh                   rts7751r2dplus_defconfig   gcc-14.1.0
sh                             sh03_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240720   gcc-14.1.0
sparc64               randconfig-002-20240720   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240720   gcc-13
um                    randconfig-002-20240720   clang-15
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
xtensa                randconfig-001-20240720   gcc-14.1.0
xtensa                randconfig-002-20240720   gcc-14.1.0
xtensa                         virt_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
