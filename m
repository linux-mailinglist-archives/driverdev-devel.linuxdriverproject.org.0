Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4669A326EB8
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 20:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D6096F9DA;
	Sat, 27 Feb 2021 19:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztlzhAlHcp3G; Sat, 27 Feb 2021 19:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0D066ED88;
	Sat, 27 Feb 2021 19:11:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65AE51BF31C
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 19:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 553566ED88
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 19:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cf_W00klppRR for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 19:11:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5757560709
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 19:11:08 +0000 (UTC)
IronPort-SDR: LnkY23qCeG3BKa/oxlmGSgA4KsfMYNqfX+5Lji8EYhgLJQXKGkTZjfv3pIbuXA0oocBzQKem4K
 Jrf5jyixVhtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="186269774"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; d="scan'208";a="186269774"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2021 11:11:06 -0800
IronPort-SDR: O18OxqLLf27wt96NAbiPV2vkBOMjWMfTNVdtCXS/vpzsxxynIshBjxb2r6+cqs8mxfRixPOUKf
 BVlh9OgNujFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; d="scan'208";a="434835781"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 27 Feb 2021 11:10:49 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lG4zD-0003on-U8; Sat, 27 Feb 2021 19:10:43 +0000
Date: Sun, 28 Feb 2021 03:09:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 051ad0e686630b642100e58904f79f49d61d1980
Message-ID: <603a9905.sZEpbPogv2gJlBP6%lkp@intel.com>
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
branch HEAD: 051ad0e686630b642100e58904f79f49d61d1980  staging: clocking-wizard: Remove the hardcoding of the clock outputs

elapsed time: 725m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          polaris_defconfig
arm                           corgi_defconfig
sh                          sdk7786_defconfig
arm                     am200epdkit_defconfig
arm                             ezx_defconfig
um                            kunit_defconfig
nds32                               defconfig
openrisc                  or1klitex_defconfig
arm                       versatile_defconfig
mips                           ip22_defconfig
arm                          imote2_defconfig
parisc                           alldefconfig
mips                     loongson1b_defconfig
arm                         assabet_defconfig
mips                           ci20_defconfig
arm                        multi_v7_defconfig
powerpc                      chrp32_defconfig
powerpc                      acadia_defconfig
h8300                    h8300h-sim_defconfig
arm                       imx_v4_v5_defconfig
xtensa                          iss_defconfig
arm                           viper_defconfig
m68k                             allyesconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
s390                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210227
i386                 randconfig-a006-20210227
i386                 randconfig-a004-20210227
i386                 randconfig-a001-20210227
i386                 randconfig-a003-20210227
i386                 randconfig-a002-20210227
x86_64               randconfig-a015-20210227
x86_64               randconfig-a011-20210227
x86_64               randconfig-a012-20210227
x86_64               randconfig-a016-20210227
x86_64               randconfig-a013-20210227
x86_64               randconfig-a014-20210227
i386                 randconfig-a013-20210227
i386                 randconfig-a012-20210227
i386                 randconfig-a011-20210227
i386                 randconfig-a014-20210227
i386                 randconfig-a016-20210227
i386                 randconfig-a015-20210227
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210227
x86_64               randconfig-a002-20210227
x86_64               randconfig-a003-20210227
x86_64               randconfig-a005-20210227
x86_64               randconfig-a004-20210227
x86_64               randconfig-a006-20210227

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
