Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFD8685C28
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Feb 2023 01:28:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22FE281A15;
	Wed,  1 Feb 2023 00:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22FE281A15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2lYJNzXMKzih; Wed,  1 Feb 2023 00:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D56FD819F8;
	Wed,  1 Feb 2023 00:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D56FD819F8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 863371BF3D9
 for <devel@linuxdriverproject.org>; Wed,  1 Feb 2023 00:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58E6C81A15
 for <devel@linuxdriverproject.org>; Wed,  1 Feb 2023 00:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58E6C81A15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id giU7tQ4gLBr3 for <devel@linuxdriverproject.org>;
 Wed,  1 Feb 2023 00:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46D19819F8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46D19819F8
 for <devel@driverdev.osuosl.org>; Wed,  1 Feb 2023 00:28:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="308345058"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308345058"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 16:28:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="910108010"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="910108010"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jan 2023 16:28:34 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pN0zJ-0004qU-1Q;
 Wed, 01 Feb 2023 00:28:33 +0000
Date: Wed, 01 Feb 2023 08:28:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 88a1a0f60445d3a45ae259a8da562e38d67cd802
Message-ID: <63d9b227.+Ixb8zEMP09JcmCn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675211320; x=1706747320;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=40cgEs3j8tIvzp3qKsqV+ilspBvq49+pCgPp0VBwH1c=;
 b=lNm8OKYfnLCpUkw0s9QHZoFl5XUai6KnObLl4mpG1vQ8YP1+2pdjiWGT
 sjiADrkrQvYbAzlLTEbR9/YMWnaB3x+x4iN8mAbzWa0//1ZyINA9ORRf0
 JOarUWiV3IxKySdNsN4PT2QIZ1VcRZsu0aftnNZtsBuaTX5sUnozmJOfx
 tdiKJU4t7D90wYYci1YwpWt7xDu3j5I+zfo6+bpAuHMrN+yzcvJJrMVUA
 1Voy8pOy6OsSfoJUpN83qkOnuZX1hoh3ePNm2WTuhkvcU3RJey1YYjWGO
 hgxt67DABG3tNdXxE9fRSdCaJe/npj6JbN3GSHEWEF0H9g3A9gVfc/nF1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lNm8OKYf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 88a1a0f60445d3a45ae259a8da562e38d67cd802  driver core: platform: simplify __platform_driver_probe()

elapsed time: 943m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
x86_64                              defconfig
sh                               allmodconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
um                           x86_64_defconfig
arc                              allyesconfig
i386                 randconfig-a001-20230130
x86_64                           allyesconfig
ia64                             allmodconfig
mips                             allyesconfig
s390                                defconfig
i386                                defconfig
x86_64               randconfig-a001-20230130
x86_64                          rhel-8.3-func
s390                             allmodconfig
x86_64               randconfig-a003-20230130
i386                 randconfig-a004-20230130
x86_64               randconfig-a004-20230130
i386                 randconfig-a003-20230130
m68k                             allyesconfig
x86_64               randconfig-a002-20230130
i386                 randconfig-a002-20230130
x86_64               randconfig-a006-20230130
i386                 randconfig-a006-20230130
x86_64               randconfig-a005-20230130
i386                 randconfig-a005-20230130
s390                             allyesconfig
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
arm                                 defconfig
i386                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-c001
powerpc                          allmodconfig
arm                          pxa3xx_defconfig
sh                           se7206_defconfig
m68k                       m5475evb_defconfig
powerpc                     asp8347_defconfig
mips                         bigsur_defconfig
powerpc                      chrp32_defconfig
sh                                  defconfig
mips                            ar7_defconfig
arc                    vdk_hs38_smp_defconfig
arm                           h5000_defconfig
arm                         lpc18xx_defconfig
m68k                          multi_defconfig
sh                     magicpanelr2_defconfig
arc                            hsdk_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                       omap2plus_defconfig
sh                               j2_defconfig
mips                           ci20_defconfig
arm                       multi_v4t_defconfig
sh                           sh2007_defconfig
x86_64               randconfig-c001-20230130
i386                 randconfig-c001-20230130
arm                  randconfig-c002-20230130
powerpc                         ps3_defconfig
powerpc                      mgcoge_defconfig
arm                         cm_x300_defconfig
m68k                         amcore_defconfig
mips                        bcm47xx_defconfig
sh                            titan_defconfig
sh                ecovec24-romimage_defconfig
arm                         lubbock_defconfig
parisc                generic-32bit_defconfig
powerpc                     pq2fads_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
powerpc                        fsp2_defconfig
arm                       versatile_defconfig
powerpc                      pmac32_defconfig
powerpc                        icon_defconfig
arm                          ixp4xx_defconfig
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-k001
arm                          pxa168_defconfig
powerpc                          allyesconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig
hexagon                          alldefconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
