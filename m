Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FB0666993
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Jan 2023 04:21:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C7444023F;
	Thu, 12 Jan 2023 03:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C7444023F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHhVSxj2LUBx; Thu, 12 Jan 2023 03:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BC6540022;
	Thu, 12 Jan 2023 03:21:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BC6540022
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3B371BF35C
 for <devel@linuxdriverproject.org>; Thu, 12 Jan 2023 03:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7A1741703
 for <devel@linuxdriverproject.org>; Thu, 12 Jan 2023 03:21:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7A1741703
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0G40TwiD1ZJf for <devel@linuxdriverproject.org>;
 Thu, 12 Jan 2023 03:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68A79416FD
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68A79416FD
 for <devel@driverdev.osuosl.org>; Thu, 12 Jan 2023 03:21:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385914062"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="385914062"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 19:21:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="607635321"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="607635321"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 11 Jan 2023 19:21:36 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFo9n-0009kG-2u;
 Thu, 12 Jan 2023 03:21:35 +0000
Date: Thu, 12 Jan 2023 11:21:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 7bbb89b420d9e290cb34864832de8fcdf2c140dc
Message-ID: <63bf7cb8.wT2K5NKUeAoDqvc1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673493699; x=1705029699;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CGo0iRFNeeyhCjp6dgnB50kcn1bAMVLTPfovS92miew=;
 b=PauxQ9t3Fs9HSzw6dmToOTjmlsNWds79Q3wNygt6MMQE4HDprBvMi8PR
 Fzjuw18m3X6VUpPX6UKGpOLhM/jYTX21CS136G1XY3UPPnzoRoWKNIYMT
 PY2tL59N/4+NWBk9Wds03MvJLI85GSemHByA2VPOBc3S47j0f7qegm7BY
 Uo4e3D7+A9N9CRQsyABMylphsRPe01PyxG70PmzrEu+EfqNTuaIXVDg2o
 jCRCR3qVN3hCXZkHoWYRlS1UTBqRvWYOhi0wc+U7fZS2KnqENWLAzvo8m
 DMdw6GRohBQxrlXNh5Bbuj/r7HYe/jn1ohTTT5GOe4ny1ez1GJaB0vHa5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PauxQ9t3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 7bbb89b420d9e290cb34864832de8fcdf2c140dc  driver core: change to_subsys_private() to use container_of_const()

elapsed time: 725m

configs tested: 90
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                                defconfig
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20230110
arc                                 defconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
s390                             allmodconfig
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
riscv                randconfig-r042-20230110
i386                          randconfig-a001
x86_64                           rhel-8.3-bpf
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
arm                                 defconfig
i386                          randconfig-a003
s390                 randconfig-r044-20230110
ia64                             allmodconfig
x86_64                          rhel-8.3-func
s390                                defconfig
i386                          randconfig-a005
powerpc                           allnoconfig
x86_64                           allyesconfig
mips                             allyesconfig
s390                             allyesconfig
x86_64                        randconfig-a013
powerpc                          allmodconfig
x86_64                        randconfig-a011
arm64                            allyesconfig
x86_64                        randconfig-a015
sh                               allmodconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a004
i386                          randconfig-a012
x86_64                        randconfig-a002
i386                          randconfig-a016
x86_64                        randconfig-a006
m68k                         amcore_defconfig
arm                        multi_v7_defconfig
sh                              ul2_defconfig
m68k                             alldefconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                    klondike_defconfig
arm                          gemini_defconfig
powerpc                     tqm8548_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                  sh7785lcr_32bit_defconfig
powerpc                     pq2fads_defconfig
alpha                            alldefconfig

clang tested configs:
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
x86_64                        randconfig-a014
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a001
i386                          randconfig-a015
x86_64                        randconfig-a003
powerpc                      chrp32_defconfig
x86_64                        randconfig-a005
powerpc                        fsp2_defconfig
arm                         shannon_defconfig
arm                         s5pv210_defconfig
hexagon                          alldefconfig
powerpc                     ksi8560_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
