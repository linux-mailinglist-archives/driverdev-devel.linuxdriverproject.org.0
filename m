Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0065D25ED01
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Sep 2020 08:12:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B1D0867F7;
	Sun,  6 Sep 2020 06:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5arPnY2ud0rT; Sun,  6 Sep 2020 06:12:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA566867CE;
	Sun,  6 Sep 2020 06:12:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9ECE41BF5D7
 for <devel@linuxdriverproject.org>; Sun,  6 Sep 2020 06:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 514922039E
 for <devel@linuxdriverproject.org>; Sun,  6 Sep 2020 06:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RL9qA2fqxaRF for <devel@linuxdriverproject.org>;
 Sun,  6 Sep 2020 06:12:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id A96562038B
 for <devel@driverdev.osuosl.org>; Sun,  6 Sep 2020 06:12:20 +0000 (UTC)
IronPort-SDR: XijME4Onli7vPevTYcDFJvVzqyo1jBz+15I3RT3SmmHdnDjZgURLR13CK36Yv5eiyyRMGuz5YB
 98DTpnQrSTtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9735"; a="155296680"
X-IronPort-AV: E=Sophos;i="5.76,396,1592895600"; d="scan'208";a="155296680"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2020 23:12:20 -0700
IronPort-SDR: EWJwr4VGmGsyoQKR85FWZTjCPwzWn6x/zTMRvtr1Ms0QXEilmij5wfKDxMrKmuIUJ9ZrqNKjZ+
 j9VBChH/fkcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,396,1592895600"; d="scan'208";a="447947264"
Received: from lkp-server01.sh.intel.com (HELO 4b5d6de90563) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 05 Sep 2020 23:12:18 -0700
Received: from kbuild by 4b5d6de90563 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kEnuU-00008U-1J; Sun, 06 Sep 2020 06:12:18 +0000
Date: Sun, 06 Sep 2020 14:12:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 76f50ad9b1503bc5bd2eb80c1e97149cbbf1d3f1
Message-ID: <5f547dbe.1djVMjUDPppUEuL+%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: 76f50ad9b1503bc5bd2eb80c1e97149cbbf1d3f1  staging: tegra-vde: fix common struct sg_table related issues

elapsed time: 723m

configs tested: 94
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
nds32                            alldefconfig
mips                     cu1000-neo_defconfig
arc                            hsdk_defconfig
mips                        jmr3927_defconfig
arm                       aspeed_g4_defconfig
sh                   sh7724_generic_defconfig
powerpc                    adder875_defconfig
sh                            titan_defconfig
mips                          rb532_defconfig
ia64                      gensparse_defconfig
arm                            zeus_defconfig
arm                        clps711x_defconfig
sh                     sh7710voipgw_defconfig
arm                           sunxi_defconfig
arm                            qcom_defconfig
sh                          sdk7786_defconfig
m68k                         amcore_defconfig
mips                        bcm47xx_defconfig
sh                         ecovec24_defconfig
mips                       lemote2f_defconfig
arm                          iop32x_defconfig
riscv                          rv32_defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200906
i386                 randconfig-a006-20200906
i386                 randconfig-a004-20200906
i386                 randconfig-a002-20200906
i386                 randconfig-a003-20200906
i386                 randconfig-a001-20200906
x86_64               randconfig-a013-20200906
x86_64               randconfig-a011-20200906
x86_64               randconfig-a016-20200906
x86_64               randconfig-a012-20200906
x86_64               randconfig-a015-20200906
x86_64               randconfig-a014-20200906
i386                 randconfig-a016-20200906
i386                 randconfig-a015-20200906
i386                 randconfig-a011-20200906
i386                 randconfig-a013-20200906
i386                 randconfig-a014-20200906
i386                 randconfig-a012-20200906
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200906
x86_64               randconfig-a004-20200906
x86_64               randconfig-a003-20200906
x86_64               randconfig-a005-20200906
x86_64               randconfig-a001-20200906
x86_64               randconfig-a002-20200906

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
