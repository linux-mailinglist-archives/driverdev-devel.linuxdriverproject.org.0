Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977D83091D9
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 05:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4811874F7;
	Sat, 30 Jan 2021 04:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQvuNaeJ670Z; Sat, 30 Jan 2021 04:30:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD9F4874E9;
	Sat, 30 Jan 2021 04:30:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21CA31BF23B
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 04:30:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D9FF22FB9
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 04:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HY4K0b340A6N for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 04:30:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1671B20472
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 04:30:47 +0000 (UTC)
IronPort-SDR: V7xKbT082SwRc1IflWd6tESWa6y7YhQVOcSl1GqnRkQXfrIKnwnCfN8OasQlDvHdjobDUIosMy
 MfXOXx7t0KcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="180585296"
X-IronPort-AV: E=Sophos;i="5.79,387,1602572400"; d="scan'208";a="180585296"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 20:30:46 -0800
IronPort-SDR: E7ZXt0VOMtl/1seGIhhqbB/3PX3MlmQ/D1LupMv0IaSC6rDbGToRKrM7LYdzgB0dNGgkSPvM+u
 xCZ4h8wdSw3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,387,1602572400"; d="scan'208";a="410997231"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2021 20:30:44 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l5huF-0004Ho-Vo; Sat, 30 Jan 2021 04:30:43 +0000
Date: Sat, 30 Jan 2021 12:29:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 02bd88b4834d22cedd47f17fbce6cfa66a323287
Message-ID: <6014e0b9.fF/GdYauAgQ0QGFV%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 02bd88b4834d22cedd47f17fbce6cfa66a323287  staging: qlge: add documentation for debugging qlge

elapsed time: 725m

configs tested: 106
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
sh                          polaris_defconfig
ia64                          tiger_defconfig
arm                            xcep_defconfig
sparc64                          alldefconfig
sh                             espt_defconfig
mips                       capcella_defconfig
mips                           ci20_defconfig
riscv                             allnoconfig
m68k                           sun3_defconfig
riscv                            allmodconfig
mips                           ip27_defconfig
arm                       imx_v6_v7_defconfig
powerpc                        fsp2_defconfig
arm                       netwinder_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                   bluestone_defconfig
c6x                        evmc6457_defconfig
mips                             allyesconfig
sh                          r7785rp_defconfig
mips                       bmips_be_defconfig
powerpc                     tqm8548_defconfig
arm                       imx_v4_v5_defconfig
sh                          rsk7203_defconfig
arm                      tct_hammer_defconfig
powerpc                    mvme5100_defconfig
sh                           se7712_defconfig
c6x                        evmc6474_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210129
i386                 randconfig-a002-20210129
i386                 randconfig-a004-20210129
i386                 randconfig-a005-20210129
i386                 randconfig-a003-20210129
i386                 randconfig-a006-20210129
i386                 randconfig-a005-20210130
i386                 randconfig-a003-20210130
i386                 randconfig-a002-20210130
i386                 randconfig-a001-20210130
i386                 randconfig-a004-20210130
i386                 randconfig-a006-20210130
i386                 randconfig-a013-20210129
i386                 randconfig-a011-20210129
i386                 randconfig-a012-20210129
i386                 randconfig-a016-20210129
i386                 randconfig-a014-20210129
i386                 randconfig-a015-20210129
x86_64               randconfig-a002-20210129
x86_64               randconfig-a003-20210129
x86_64               randconfig-a001-20210129
x86_64               randconfig-a005-20210129
x86_64               randconfig-a006-20210129
x86_64               randconfig-a004-20210129
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20210129
x86_64               randconfig-a015-20210129
x86_64               randconfig-a016-20210129
x86_64               randconfig-a011-20210129
x86_64               randconfig-a013-20210129
x86_64               randconfig-a014-20210129

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
