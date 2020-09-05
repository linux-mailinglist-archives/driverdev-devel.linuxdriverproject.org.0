Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D025E997
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Sep 2020 19:55:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A866868B2;
	Sat,  5 Sep 2020 17:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-XNgHmENOuC; Sat,  5 Sep 2020 17:55:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30CAE8686E;
	Sat,  5 Sep 2020 17:55:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79F191BF3A3
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 17:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 769DF86055
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 17:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mhqtanj9AMOD for <devel@linuxdriverproject.org>;
 Sat,  5 Sep 2020 17:55:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 895AE85FC1
 for <devel@driverdev.osuosl.org>; Sat,  5 Sep 2020 17:55:38 +0000 (UTC)
IronPort-SDR: 5k/oVE2CJki1+bCIahl4kPN66DLjWKtP8x7NCk9wgrzf90YW7Dp+rMG7j/R9hGI0zlG5knFm6F
 +ijpUkqDwfDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9735"; a="145577931"
X-IronPort-AV: E=Sophos;i="5.76,394,1592895600"; d="scan'208";a="145577931"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2020 10:55:37 -0700
IronPort-SDR: UrDv9w4ZFYhDsLP8P93RbB0WYYdamr+voLR1ZcJqXr6675jyBmO9HB1TP/1naSe+GInhl6zh1n
 AjP2gbpt6jlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,394,1592895600"; d="scan'208";a="340262402"
Received: from lkp-server01.sh.intel.com (HELO 4b5d6de90563) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Sep 2020 10:55:36 -0700
Received: from kbuild by 4b5d6de90563 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kEcPY-00000w-0C; Sat, 05 Sep 2020 17:55:36 +0000
Date: Sun, 06 Sep 2020 01:55:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 51fae39bd5018e4f6d3e65a1a1a8ad40b5ee3662
Message-ID: <5f53d10c.8KUbgTkqwEdm+2vC%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 51fae39bd5018e4f6d3e65a1a1a8ad40b5ee3662  scripts/dev-needs: Add script to list device dependencies

elapsed time: 1466m

configs tested: 133
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                 nsimosci_hs_smp_defconfig
m68k                          atari_defconfig
mips                     loongson1c_defconfig
mips                       bmips_be_defconfig
xtensa                              defconfig
mips                      maltaaprp_defconfig
arm                         axm55xx_defconfig
xtensa                    xip_kc705_defconfig
powerpc                          allmodconfig
s390                                defconfig
m68k                                defconfig
nios2                               defconfig
arm                       imx_v6_v7_defconfig
parisc                           allyesconfig
sh                         ecovec24_defconfig
arm                      footbridge_defconfig
arm                          iop32x_defconfig
xtensa                       common_defconfig
arm                        mvebu_v5_defconfig
mips                          malta_defconfig
openrisc                 simple_smp_defconfig
arm                         nhk8815_defconfig
arc                     haps_hs_smp_defconfig
arm                      tct_hammer_defconfig
sh                             sh03_defconfig
mips                      loongson3_defconfig
sh                        edosk7705_defconfig
sh                          landisk_defconfig
powerpc                          g5_defconfig
arm                            hisi_defconfig
powerpc                     skiroot_defconfig
arm                         shannon_defconfig
nios2                         3c120_defconfig
arc                      axs103_smp_defconfig
mips                      malta_kvm_defconfig
arc                         haps_hs_defconfig
xtensa                generic_kc705_defconfig
ia64                          tiger_defconfig
sh                           se7750_defconfig
mips                      fuloong2e_defconfig
powerpc                       ppc64_defconfig
arm                         palmz72_defconfig
s390                             alldefconfig
arm                  colibri_pxa270_defconfig
mips                            ar7_defconfig
mips                           xway_defconfig
m68k                       m5275evb_defconfig
m68k                            q40_defconfig
m68k                          sun3x_defconfig
mips                      pistachio_defconfig
arm                            mps2_defconfig
openrisc                    or1ksim_defconfig
powerpc                      ep88xc_defconfig
mips                          ath25_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                             defconfig
x86_64               randconfig-a006-20200905
x86_64               randconfig-a004-20200905
x86_64               randconfig-a003-20200905
x86_64               randconfig-a005-20200905
x86_64               randconfig-a001-20200905
x86_64               randconfig-a002-20200905
i386                 randconfig-a004-20200904
i386                 randconfig-a005-20200904
i386                 randconfig-a006-20200904
i386                 randconfig-a002-20200904
i386                 randconfig-a003-20200904
i386                 randconfig-a001-20200904
x86_64               randconfig-a013-20200904
x86_64               randconfig-a011-20200904
x86_64               randconfig-a016-20200904
x86_64               randconfig-a012-20200904
x86_64               randconfig-a015-20200904
x86_64               randconfig-a014-20200904
x86_64               randconfig-a013-20200906
x86_64               randconfig-a011-20200906
x86_64               randconfig-a016-20200906
x86_64               randconfig-a012-20200906
x86_64               randconfig-a015-20200906
x86_64               randconfig-a014-20200906
i386                 randconfig-a016-20200904
i386                 randconfig-a015-20200904
i386                 randconfig-a011-20200904
i386                 randconfig-a013-20200904
i386                 randconfig-a014-20200904
i386                 randconfig-a012-20200904
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
x86_64               randconfig-a006-20200904
x86_64               randconfig-a004-20200904
x86_64               randconfig-a003-20200904
x86_64               randconfig-a005-20200904
x86_64               randconfig-a001-20200904
x86_64               randconfig-a002-20200904

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
