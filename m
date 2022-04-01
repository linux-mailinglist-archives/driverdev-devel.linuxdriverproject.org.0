Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 306D14EFCD5
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 00:35:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8204B41592;
	Fri,  1 Apr 2022 22:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1YxhARnDyrX; Fri,  1 Apr 2022 22:35:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B106415A3;
	Fri,  1 Apr 2022 22:35:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C8951BF484
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 22:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 775BC41592
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 22:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GdL8ahlq5SJs for <devel@linuxdriverproject.org>;
 Fri,  1 Apr 2022 22:34:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 158774154D
 for <devel@driverdev.osuosl.org>; Fri,  1 Apr 2022 22:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648852497; x=1680388497;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wbOwtCnICtAHuKXzOT2xfjVKBi8tgKpMP8lU4pA8wqo=;
 b=YAzvOn65/cMTLkkRueZFxUpgt2l4Th8shmwnWWrOU6ym+0oqIFAM8E0r
 Jsg8Rda+4XAlr0lJDvLP8P9JlL93sKaBgQlzebXKCCwnCbTSmixxXJV3c
 0Xwu0EJOct7XDknF6mR411wtEASSdQLzm0CLKLqiyVmlPTi5pazFORV0P
 2fWeY/mK+LQk8M5GfoDnsXCf/D2R5Hc3/HW3/CT6gguS//3Fp4RKtk87p
 Np2xk8pI6B/PbFYQbrvodZawIB2cH8+zwmFMWYMkAmq/0/wA520hh6RNZ
 Bzbs1Q63yKDYAcqt/u+uqPl+9MGoAiE6HIfrJazznuk1XcEzdIx3lJtIw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="242388165"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="242388165"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 15:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="721037240"
Received: from lkp-server02.sh.intel.com (HELO 3231c491b0e2) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 01 Apr 2022 15:34:54 -0700
Received: from kbuild by 3231c491b0e2 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1naPr4-0001ZM-5o;
 Fri, 01 Apr 2022 22:34:54 +0000
Date: Sat, 02 Apr 2022 06:34:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 5ccc23cddfc5a6d1a41a21e456b9ce5e8c238d53
Message-ID: <62477df5.lggXBQWMF+k2x/nY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 5ccc23cddfc5a6d1a41a21e456b9ce5e8c238d53  kobject: kobj_type: remove default_attrs

elapsed time: 1001m

configs tested: 112
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                                 defconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
ia64                            zx1_defconfig
h8300                     edosk2674_defconfig
mips                           ip32_defconfig
arm                          badge4_defconfig
sh                          landisk_defconfig
m68k                             alldefconfig
mips                     loongson1b_defconfig
mips                         mpc30x_defconfig
openrisc                  or1klitex_defconfig
arm                          iop32x_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                     magicpanelr2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220331
ia64                             allyesconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                               defconfig
alpha                            allyesconfig
csky                                defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220331
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc              randconfig-c003-20220331
x86_64                        randconfig-c007
s390                 randconfig-c005-20220331
arm                  randconfig-c002-20220331
riscv                randconfig-c006-20220331
mips                 randconfig-c004-20220331
i386                          randconfig-c001
riscv                             allnoconfig
arm                       mainstone_defconfig
arm                           spitz_defconfig
powerpc                      ppc44x_defconfig
powerpc                   lite5200b_defconfig
arm                          pxa168_defconfig
arm                  colibri_pxa300_defconfig
powerpc                   bluestone_defconfig
mips                      pic32mzda_defconfig
powerpc                    gamecube_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220331
riscv                randconfig-r042-20220331
s390                 randconfig-r044-20220331
hexagon              randconfig-r041-20220331

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
