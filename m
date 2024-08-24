Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D02395DAA7
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Aug 2024 04:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D39A81ECB;
	Sat, 24 Aug 2024 02:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wI_93qEbPsIA; Sat, 24 Aug 2024 02:28:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BED0B81ECC
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED0B81ECC;
	Sat, 24 Aug 2024 02:28:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9AD1BF33D
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2024 02:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08C9B40135
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2024 02:28:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FsAWZDVYoTk6 for <devel@linuxdriverproject.org>;
 Sat, 24 Aug 2024 02:28:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01B5A400F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01B5A400F3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01B5A400F3
 for <devel@driverdev.osuosl.org>; Sat, 24 Aug 2024 02:28:54 +0000 (UTC)
X-CSE-ConnectionGUID: MHnD7eh6SoepLJFXpU/gKg==
X-CSE-MsgGUID: feY507xaQMeA31rH0fVxYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="22928644"
X-IronPort-AV: E=Sophos;i="6.10,172,1719903600"; d="scan'208";a="22928644"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 19:28:53 -0700
X-CSE-ConnectionGUID: +NZM8kA+QICev+yKybpzIw==
X-CSE-MsgGUID: uI+30pLgQEm89b495CV1ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,172,1719903600"; d="scan'208";a="61973859"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 23 Aug 2024 19:28:51 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1shgWH-000EDF-28;
 Sat, 24 Aug 2024 02:28:49 +0000
Date: Sat, 24 Aug 2024 10:28:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 5315266844ea3b0b8b6be9842d5901e439fa838a
Message-ID: <202408241028.dcqHdSQs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724466535; x=1756002535;
 h=date:from:to:cc:subject:message-id;
 bh=wW/VKuxl6k2uMvhp5p65SldvWc45zoVkC6tdIMIfUYE=;
 b=SjlKhFeRiI43xTz7l5tGV8Io0l6NCKIYv4cR4y+Sbz18sRiSOeUa1ERy
 Cy8XzydprXa4c3wel13EY3MVuQuqIr9ch2fHXBju9qUR7vWFcYGlrvq4w
 o5ArQYeQDqWjYUhVqoWRYK7/wF+xaROLko9m7OuszAnWqptXbR+73ybPI
 cEJMeiJ5rX0suxhfRl/RhTkhTacECIGAk1vJ90fWT3BgIDI9hayKrXXWu
 I02QZKBvcmDXIOxWf5T/q2asCPVG6kag+Uzgt6Xh7QaYrfcqqqogge/vW
 BVkojraVg8ssZagHlAYD3AgxkgFx16iKiYxUwwuyPf/Xh8UNkpS2ayQBU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SjlKhFeR
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
branch HEAD: 5315266844ea3b0b8b6be9842d5901e439fa838a  Staging: rtl8192e: Remove unnecessary blank line

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202408232049.UJef268y-lkp@intel.com

Warning: (recently discovered and may have been fixed)

drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

recent_errors
|-- arm64-allmodconfig
|   `-- drivers-staging-rtl8192e-rtllib_crypt_tkip.c:warning:variable-iv16-set-but-not-used
|-- powerpc-allyesconfig
|   `-- drivers-staging-rtl8192e-rtllib_crypt_tkip.c:warning:variable-iv16-set-but-not-used
|-- riscv-allmodconfig
|   `-- drivers-staging-rtl8192e-rtllib_crypt_tkip.c:warning:variable-iv16-set-but-not-used
|-- riscv-allyesconfig
|   `-- drivers-staging-rtl8192e-rtllib_crypt_tkip.c:warning:variable-iv16-set-but-not-used
|-- um-allmodconfig
|   `-- drivers-staging-rtl8192e-rtllib_crypt_tkip.c:warning:variable-iv16-set-but-not-used
`-- x86_64-allyesconfig
    `-- drivers-staging-rtl8192e-rtllib_crypt_tkip.c:warning:variable-iv16-set-but-not-used

elapsed time: 1456m

configs tested: 225
configs skipped: 6

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                 nsimosci_hs_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240823   gcc-13.2.0
arc                   randconfig-002-20240823   gcc-13.2.0
arc                        vdk_hs38_defconfig   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                       aspeed_g4_defconfig   clang-20
arm                         axm55xx_defconfig   gcc-13.2.0
arm                         bcm2835_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                          exynos_defconfig   gcc-13.2.0
arm                          gemini_defconfig   clang-20
arm                           imxrt_defconfig   gcc-13.2.0
arm                      integrator_defconfig   gcc-13.2.0
arm                          pxa3xx_defconfig   gcc-13.2.0
arm                   randconfig-001-20240823   gcc-13.2.0
arm                   randconfig-002-20240823   gcc-13.2.0
arm                   randconfig-003-20240823   gcc-13.2.0
arm                   randconfig-004-20240823   gcc-13.2.0
arm                        vexpress_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240823   gcc-13.2.0
arm64                 randconfig-002-20240823   gcc-13.2.0
arm64                 randconfig-003-20240823   gcc-13.2.0
arm64                 randconfig-004-20240823   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240823   gcc-13.2.0
csky                  randconfig-002-20240823   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240823   clang-18
i386         buildonly-randconfig-001-20240824   clang-18
i386         buildonly-randconfig-002-20240823   clang-18
i386         buildonly-randconfig-002-20240824   clang-18
i386         buildonly-randconfig-003-20240823   clang-18
i386         buildonly-randconfig-003-20240824   clang-18
i386         buildonly-randconfig-004-20240823   clang-18
i386         buildonly-randconfig-004-20240824   clang-18
i386         buildonly-randconfig-005-20240823   clang-18
i386         buildonly-randconfig-005-20240824   clang-18
i386         buildonly-randconfig-006-20240823   clang-18
i386         buildonly-randconfig-006-20240824   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240823   clang-18
i386                  randconfig-001-20240824   clang-18
i386                  randconfig-002-20240823   clang-18
i386                  randconfig-002-20240824   clang-18
i386                  randconfig-003-20240823   clang-18
i386                  randconfig-003-20240824   clang-18
i386                  randconfig-004-20240823   clang-18
i386                  randconfig-004-20240824   clang-18
i386                  randconfig-005-20240823   clang-18
i386                  randconfig-005-20240824   clang-18
i386                  randconfig-006-20240823   clang-18
i386                  randconfig-006-20240824   clang-18
i386                  randconfig-011-20240823   clang-18
i386                  randconfig-011-20240824   clang-18
i386                  randconfig-012-20240823   clang-18
i386                  randconfig-012-20240824   clang-18
i386                  randconfig-013-20240823   clang-18
i386                  randconfig-013-20240824   clang-18
i386                  randconfig-014-20240823   clang-18
i386                  randconfig-014-20240824   clang-18
i386                  randconfig-015-20240823   clang-18
i386                  randconfig-015-20240824   clang-18
i386                  randconfig-016-20240823   clang-18
i386                  randconfig-016-20240824   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240823   gcc-13.2.0
loongarch             randconfig-002-20240823   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                          hp300_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           ip32_defconfig   gcc-13.2.0
mips                     loongson2k_defconfig   gcc-13.2.0
mips                          rb532_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240823   gcc-13.2.0
nios2                 randconfig-002-20240823   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                    or1ksim_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240823   gcc-13.2.0
parisc                randconfig-002-20240823   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                     mpc512x_defconfig   gcc-13.2.0
powerpc                      pasemi_defconfig   clang-20
powerpc                      pcm030_defconfig   gcc-13.2.0
powerpc                      ppc64e_defconfig   clang-20
powerpc               randconfig-001-20240823   gcc-13.2.0
powerpc               randconfig-002-20240823   gcc-13.2.0
powerpc                    socrates_defconfig   gcc-13.2.0
powerpc                     taishan_defconfig   gcc-13.2.0
powerpc                     tqm8548_defconfig   clang-20
powerpc                     tqm8548_defconfig   gcc-13.2.0
powerpc                 xes_mpc85xx_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240823   gcc-13.2.0
powerpc64             randconfig-002-20240823   gcc-13.2.0
powerpc64             randconfig-003-20240823   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240823   gcc-13.2.0
riscv                 randconfig-002-20240823   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                          debug_defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240823   gcc-13.2.0
s390                  randconfig-002-20240823   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240823   gcc-13.2.0
sh                    randconfig-002-20240823   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7721_defconfig   gcc-13.2.0
sh                        sh7785lcr_defconfig   gcc-13.2.0
sh                            titan_defconfig   gcc-13.2.0
sh                          urquell_defconfig   gcc-13.2.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240823   gcc-13.2.0
sparc64               randconfig-002-20240823   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240823   gcc-13.2.0
um                    randconfig-002-20240823   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240823   gcc-12
x86_64       buildonly-randconfig-001-20240824   clang-18
x86_64       buildonly-randconfig-002-20240823   gcc-12
x86_64       buildonly-randconfig-002-20240824   clang-18
x86_64       buildonly-randconfig-003-20240823   gcc-12
x86_64       buildonly-randconfig-003-20240824   clang-18
x86_64       buildonly-randconfig-004-20240823   gcc-12
x86_64       buildonly-randconfig-004-20240824   clang-18
x86_64       buildonly-randconfig-005-20240823   gcc-12
x86_64       buildonly-randconfig-005-20240824   clang-18
x86_64       buildonly-randconfig-006-20240823   gcc-12
x86_64       buildonly-randconfig-006-20240824   clang-18
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240823   gcc-12
x86_64                randconfig-001-20240824   clang-18
x86_64                randconfig-002-20240823   gcc-12
x86_64                randconfig-002-20240824   clang-18
x86_64                randconfig-003-20240823   gcc-12
x86_64                randconfig-003-20240824   clang-18
x86_64                randconfig-004-20240823   gcc-12
x86_64                randconfig-004-20240824   clang-18
x86_64                randconfig-005-20240823   gcc-12
x86_64                randconfig-005-20240824   clang-18
x86_64                randconfig-006-20240823   gcc-12
x86_64                randconfig-006-20240824   clang-18
x86_64                randconfig-011-20240823   gcc-12
x86_64                randconfig-011-20240824   clang-18
x86_64                randconfig-012-20240823   gcc-12
x86_64                randconfig-012-20240824   clang-18
x86_64                randconfig-013-20240823   gcc-12
x86_64                randconfig-013-20240824   clang-18
x86_64                randconfig-014-20240823   gcc-12
x86_64                randconfig-014-20240824   clang-18
x86_64                randconfig-015-20240823   gcc-12
x86_64                randconfig-015-20240824   clang-18
x86_64                randconfig-016-20240823   gcc-12
x86_64                randconfig-016-20240824   clang-18
x86_64                randconfig-071-20240823   gcc-12
x86_64                randconfig-071-20240824   clang-18
x86_64                randconfig-072-20240823   gcc-12
x86_64                randconfig-072-20240824   clang-18
x86_64                randconfig-073-20240823   gcc-12
x86_64                randconfig-073-20240824   clang-18
x86_64                randconfig-074-20240823   gcc-12
x86_64                randconfig-074-20240824   clang-18
x86_64                randconfig-075-20240823   gcc-12
x86_64                randconfig-075-20240824   clang-18
x86_64                randconfig-076-20240823   gcc-12
x86_64                randconfig-076-20240824   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240823   gcc-13.2.0
xtensa                randconfig-002-20240823   gcc-13.2.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0
xtensa                    xip_kc705_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
