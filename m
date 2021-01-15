Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723E12F85CC
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 20:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C130B87205;
	Fri, 15 Jan 2021 19:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcQDSiCYv01e; Fri, 15 Jan 2021 19:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3793687196;
	Fri, 15 Jan 2021 19:56:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF3C31BF423
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 19:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 770CB2036E
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 19:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBMzIY7rOUW4 for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 19:56:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 3188E20341
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 19:56:17 +0000 (UTC)
IronPort-SDR: R67VybZ8LBpfi41fO/OyDeV6Ex+1yjNAZx4X5YbCY7VWP9jrrBlnupw77BcFr/B4orfw15B7C1
 6Oz8wdiXERcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="175095931"
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; d="scan'208";a="175095931"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 11:56:16 -0800
IronPort-SDR: Xr5Vwsv3lBspmVexjYoRGHbJ0TTjD9oZvb8IwFfXKoyPem9bSYPgnDtRVBDnhPXLQ1rSGTwOdO
 mOP1MROnNmhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; d="scan'208";a="465685838"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2021 11:56:15 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l0VCg-0000Vq-OK; Fri, 15 Jan 2021 19:56:14 +0000
Date: Sat, 16 Jan 2021 03:56:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 a1bfb0ccf94dc79223d0db0d50237d3b3898f0b2
Message-ID: <6001f354.sSj1bbXe0fhGFg39%lkp@intel.com>
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
branch HEAD: a1bfb0ccf94dc79223d0db0d50237d3b3898f0b2  Merge tag 'iio-fixes-for-5.11a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus

elapsed time: 727m

configs tested: 129
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                             alldefconfig
powerpc                   bluestone_defconfig
sh                          urquell_defconfig
arm                             mxs_defconfig
ia64                            zx1_defconfig
arm                          ixp4xx_defconfig
mips                  maltasmvp_eva_defconfig
sh                               j2_defconfig
powerpc                 mpc8560_ads_defconfig
sh                             shx3_defconfig
arm                          pxa168_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                 mpc834x_itx_defconfig
mips                     decstation_defconfig
mips                         bigsur_defconfig
powerpc                        cell_defconfig
powerpc               mpc834x_itxgp_defconfig
um                             i386_defconfig
mips                      malta_kvm_defconfig
sh                ecovec24-romimage_defconfig
arm                           viper_defconfig
sh                          rsk7201_defconfig
arm                         bcm2835_defconfig
sh                             sh03_defconfig
powerpc                     tqm8555_defconfig
mips                           ip32_defconfig
sh                                  defconfig
mips                           ip27_defconfig
m68k                       m5249evb_defconfig
powerpc                       ppc64_defconfig
arm                        multi_v5_defconfig
arm                         s3c2410_defconfig
arm                       imx_v4_v5_defconfig
arm                         socfpga_defconfig
m68k                         amcore_defconfig
powerpc                     sbc8548_defconfig
s390                                defconfig
arm                        vexpress_defconfig
powerpc                 canyonlands_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                           ci20_defconfig
openrisc                    or1ksim_defconfig
xtensa                  nommu_kc705_defconfig
sparc                            alldefconfig
mips                            e55_defconfig
powerpc                     tqm8541_defconfig
arm                         lpc18xx_defconfig
sh                          kfr2r09_defconfig
sh                             espt_defconfig
m68k                           sun3_defconfig
powerpc                     ksi8560_defconfig
arm                       mainstone_defconfig
arm                            xcep_defconfig
mips                      maltaaprp_defconfig
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
x86_64               randconfig-a004-20210115
x86_64               randconfig-a006-20210115
x86_64               randconfig-a001-20210115
x86_64               randconfig-a003-20210115
x86_64               randconfig-a005-20210115
x86_64               randconfig-a002-20210115
i386                 randconfig-a002-20210115
i386                 randconfig-a005-20210115
i386                 randconfig-a006-20210115
i386                 randconfig-a001-20210115
i386                 randconfig-a003-20210115
i386                 randconfig-a004-20210115
i386                 randconfig-a012-20210115
i386                 randconfig-a011-20210115
i386                 randconfig-a016-20210115
i386                 randconfig-a015-20210115
i386                 randconfig-a013-20210115
i386                 randconfig-a014-20210115
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210115
x86_64               randconfig-a012-20210115
x86_64               randconfig-a013-20210115
x86_64               randconfig-a016-20210115
x86_64               randconfig-a014-20210115
x86_64               randconfig-a011-20210115

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
