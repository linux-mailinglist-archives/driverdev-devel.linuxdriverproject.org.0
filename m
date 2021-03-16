Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D94633CC65
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 05:05:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FD2D4EC5C;
	Tue, 16 Mar 2021 04:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2qmdrFlq0-4; Tue, 16 Mar 2021 04:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49A604C0CC;
	Tue, 16 Mar 2021 04:05:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F9841BF309
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 04:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 294928302F
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 04:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ja021TlrALtc for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 04:05:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 105C483A55
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 04:05:00 +0000 (UTC)
IronPort-SDR: OTnLT2mZGEiRrY1Q4t7FeEwIcaMSldmmYWQlPXCVEwjAjLLBbQWRCOf6FOlxG5enU2NyHcNlF1
 Bvul+UBj3+AA==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="189286705"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="189286705"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 21:04:59 -0700
IronPort-SDR: dlNupK/ER8Oq+sTyq7ENdyqM6Z7vzw/LsXAscM3h9lhSUd4QUP8D29qLHeHIwmWBPLRLmEYzU2
 /CO73MheDVbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="388331019"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 15 Mar 2021 21:04:57 -0700
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lM0wz-0000lw-5h; Tue, 16 Mar 2021 04:04:57 +0000
Date: Tue, 16 Mar 2021 12:04:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 12ec5408d2135bfcdec14ff7e4248f1be8597f31
Message-ID: <60502e52.mtRBqrM7jtG9VGPx%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 12ec5408d2135bfcdec14ff7e4248f1be8597f31  Merge tag 'iio-fixes-for-5.12a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus

elapsed time: 722m

configs tested: 121
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
h8300                     edosk2674_defconfig
powerpc                    amigaone_defconfig
powerpc                 linkstation_defconfig
m68k                        m5407c3_defconfig
arc                 nsimosci_hs_smp_defconfig
openrisc                 simple_smp_defconfig
mips                      malta_kvm_defconfig
arm                          exynos_defconfig
ia64                         bigsur_defconfig
arm                            dove_defconfig
ia64                      gensparse_defconfig
arm                       spear13xx_defconfig
powerpc                     skiroot_defconfig
sh                         ecovec24_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      chrp32_defconfig
openrisc                         alldefconfig
arm                     am200epdkit_defconfig
arm                         palmz72_defconfig
arm                       versatile_defconfig
mips                           xway_defconfig
arm                         lpc32xx_defconfig
sh                            shmin_defconfig
mips                           ip32_defconfig
parisc                           alldefconfig
arm                         lubbock_defconfig
x86_64                              defconfig
sh                   rts7751r2dplus_defconfig
powerpc                     rainier_defconfig
parisc                generic-32bit_defconfig
arm                        mini2440_defconfig
mips                         rt305x_defconfig
arc                     haps_hs_smp_defconfig
sh                           se7712_defconfig
csky                                defconfig
powerpc                     mpc512x_defconfig
ia64                             alldefconfig
powerpc                   motionpro_defconfig
arm                           h3600_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                          g5_defconfig
arm                         orion5x_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      arches_defconfig
arm                          pcm027_defconfig
xtensa                           alldefconfig
mips                          ath79_defconfig
mips                       lemote2f_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
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
x86_64               randconfig-a006-20210315
x86_64               randconfig-a001-20210315
x86_64               randconfig-a005-20210315
x86_64               randconfig-a004-20210315
x86_64               randconfig-a002-20210315
x86_64               randconfig-a003-20210315
i386                 randconfig-a001-20210315
i386                 randconfig-a005-20210315
i386                 randconfig-a003-20210315
i386                 randconfig-a002-20210315
i386                 randconfig-a004-20210315
i386                 randconfig-a006-20210315
i386                 randconfig-a013-20210315
i386                 randconfig-a016-20210315
i386                 randconfig-a011-20210315
i386                 randconfig-a012-20210315
i386                 randconfig-a014-20210315
i386                 randconfig-a015-20210315
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20210315
x86_64               randconfig-a016-20210315
x86_64               randconfig-a013-20210315
x86_64               randconfig-a015-20210315
x86_64               randconfig-a014-20210315
x86_64               randconfig-a012-20210315

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
