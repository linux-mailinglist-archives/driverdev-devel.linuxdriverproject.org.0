Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC25728FC2C
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 03:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30A6488806;
	Fri, 16 Oct 2020 01:06:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Pok8Uu2qzzN; Fri, 16 Oct 2020 01:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9AA58880B;
	Fri, 16 Oct 2020 01:06:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BFE51BF397
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 01:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 086DB88807
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 01:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4qiRZYd4-HER for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 01:06:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50B4988806
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 01:06:24 +0000 (UTC)
IronPort-SDR: c0kObEnn8flKhOl4m5uAUxcyEifOI3lNmSG6FFHC2i3+KFfH+tSd2vv5OiNLGBv093rvzkZ2qW
 J9BSzAruSc2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163021592"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163021592"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 18:06:22 -0700
IronPort-SDR: Vbvcs9g2bblTCa+UbjUyfgmn+sgdv1PB6TI/8M+0GRAv4VsYzMmDe8+5G/FnIWlkO+CdAaNyom
 CpahgruEcg6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="520978482"
Received: from lkp-server01.sh.intel.com (HELO 5003fa193bf3) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 15 Oct 2020 18:06:21 -0700
Received: from kbuild by 5003fa193bf3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kTECK-0000An-Cp; Fri, 16 Oct 2020 01:06:20 +0000
Date: Fri, 16 Oct 2020 09:05:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 5e7a83494e62ec7530c7427a57f87304bab75eee
Message-ID: <5f88f1f1.89j78vGVrAWcwnlV%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  readfile
branch HEAD: 5e7a83494e62ec7530c7427a57f87304bab75eee  readfile.2: new page describing readfile(2)

elapsed time: 724m

configs tested: 130
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      pcm030_defconfig
m68k                         apollo_defconfig
arm                           viper_defconfig
ia64                             alldefconfig
mips                        bcm63xx_defconfig
xtensa                  audio_kc705_defconfig
m68k                        mvme147_defconfig
powerpc                        cell_defconfig
arm                          collie_defconfig
mips                      maltaaprp_defconfig
arm                         cm_x300_defconfig
arm                              zx_defconfig
powerpc                 mpc8560_ads_defconfig
mips                        jmr3927_defconfig
powerpc                     tqm8555_defconfig
arm                              alldefconfig
powerpc                         ps3_defconfig
xtensa                generic_kc705_defconfig
arc                        vdk_hs38_defconfig
powerpc                      katmai_defconfig
sparc                       sparc32_defconfig
sh                           se7780_defconfig
powerpc                   motionpro_defconfig
mips                          malta_defconfig
arm                         lpc32xx_defconfig
arm                          simpad_defconfig
sh                               allmodconfig
arm                         at91_dt_defconfig
arm                            lart_defconfig
parisc                generic-64bit_defconfig
x86_64                           alldefconfig
mips                     decstation_defconfig
sh                          r7785rp_defconfig
arm                         lubbock_defconfig
arm                        mini2440_defconfig
sh                   rts7751r2dplus_defconfig
sh                           se7206_defconfig
sh                          r7780mp_defconfig
ia64                                defconfig
nios2                            allyesconfig
ia64                         bigsur_defconfig
powerpc                      ppc44x_defconfig
arm                       aspeed_g5_defconfig
arm                        mvebu_v5_defconfig
powerpc                     stx_gp3_defconfig
arm                       omap2plus_defconfig
arm                            xcep_defconfig
xtensa                              defconfig
arm                         shannon_defconfig
powerpc                    sam440ep_defconfig
m68k                        m5307c3_defconfig
sh                             sh03_defconfig
sh                        edosk7705_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
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
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201014
i386                 randconfig-a006-20201014
i386                 randconfig-a001-20201014
i386                 randconfig-a003-20201014
i386                 randconfig-a004-20201014
i386                 randconfig-a002-20201014
x86_64               randconfig-a016-20201014
x86_64               randconfig-a012-20201014
x86_64               randconfig-a015-20201014
x86_64               randconfig-a013-20201014
x86_64               randconfig-a014-20201014
x86_64               randconfig-a011-20201014
i386                 randconfig-a016-20201014
i386                 randconfig-a013-20201014
i386                 randconfig-a015-20201014
i386                 randconfig-a011-20201014
i386                 randconfig-a012-20201014
i386                 randconfig-a014-20201014
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201014
x86_64               randconfig-a002-20201014
x86_64               randconfig-a006-20201014
x86_64               randconfig-a001-20201014
x86_64               randconfig-a005-20201014
x86_64               randconfig-a003-20201014
x86_64               randconfig-a016-20201015
x86_64               randconfig-a012-20201015
x86_64               randconfig-a015-20201015
x86_64               randconfig-a013-20201015
x86_64               randconfig-a014-20201015
x86_64               randconfig-a011-20201015

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
