Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB1D2994A3
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 18:58:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 130612E0E7;
	Mon, 26 Oct 2020 17:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id as+U-DzBebSe; Mon, 26 Oct 2020 17:58:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F16F2E10D;
	Mon, 26 Oct 2020 17:58:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34A0B1BF376
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3193586554
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0YuyX8EsmSr for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 17:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD44986272
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 17:58:14 +0000 (UTC)
IronPort-SDR: eMYmY/qrEWGhY96vQa8bISzMeN9gz0yL7nY3yvt47QJ8vkv8SxRn7a6CnBVEVINQ9hiMD6GKzA
 vtqc16fOoysg==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="147249166"
X-IronPort-AV: E=Sophos;i="5.77,420,1596524400"; d="scan'208";a="147249166"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 10:58:13 -0700
IronPort-SDR: x4ZZTYKv8+f9a7/3ZGFqybXEzUZfipKJvqg5xBKo6ENv2pjWHIMhfFlceb0RVvjxQzJx2kIe+O
 vQM9r9LdAgTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,420,1596524400"; d="scan'208";a="317942753"
Received: from lkp-server01.sh.intel.com (HELO ca9e3ad0a302) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2020 10:58:12 -0700
Received: from kbuild by ca9e3ad0a302 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kX6l1-00005M-AN; Mon, 26 Oct 2020 17:58:11 +0000
Date: Tue, 27 Oct 2020 01:58:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 9ab476ba001ead1f64430a3a61c9466ac0fa91ed
Message-ID: <5f970e30.wQP7De+HBS1goJsS%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: 9ab476ba001ead1f64430a3a61c9466ac0fa91ed  staging: r8188eu: inline rtw_init_netdev_name()

elapsed time: 723m

configs tested: 155
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                       maple_defconfig
mips                           gcw0_defconfig
arm                          ixp4xx_defconfig
mips                         cobalt_defconfig
arm                           efm32_defconfig
mips                     cu1830-neo_defconfig
sh                ecovec24-romimage_defconfig
xtensa                  audio_kc705_defconfig
sh                        sh7757lcr_defconfig
arm                      jornada720_defconfig
sh                           se7705_defconfig
arm                        spear6xx_defconfig
arm                              zx_defconfig
mips                          malta_defconfig
alpha                               defconfig
arm                         mv78xx0_defconfig
m68k                          atari_defconfig
arm                           stm32_defconfig
alpha                            allyesconfig
arm                            dove_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                        bcm63xx_defconfig
mips                         tb0287_defconfig
mips                        workpad_defconfig
m68k                         amcore_defconfig
arm                          badge4_defconfig
powerpc                     stx_gp3_defconfig
ia64                                defconfig
nios2                         10m50_defconfig
mips                     decstation_defconfig
arm                       aspeed_g5_defconfig
arm                        realview_defconfig
mips                          ath79_defconfig
sh                           se7750_defconfig
powerpc                    mvme5100_defconfig
mips                         tb0226_defconfig
arm                  colibri_pxa270_defconfig
arm                       spear13xx_defconfig
c6x                        evmc6474_defconfig
arm                  colibri_pxa300_defconfig
arm                         ebsa110_defconfig
sparc64                             defconfig
powerpc                     tqm8540_defconfig
arm                          collie_defconfig
arm                         shannon_defconfig
nds32                               defconfig
arm                         s3c6400_defconfig
arm                         assabet_defconfig
sh                            shmin_defconfig
arm                         hackkit_defconfig
sh                          sdk7780_defconfig
xtensa                       common_defconfig
sh                           sh2007_defconfig
powerpc64                        alldefconfig
arm                        oxnas_v6_defconfig
m68k                         apollo_defconfig
sh                             shx3_defconfig
powerpc                      makalu_defconfig
mips                           ip28_defconfig
c6x                        evmc6678_defconfig
m68k                       m5275evb_defconfig
arm                         socfpga_defconfig
sh                        sh7763rdp_defconfig
arm                        mini2440_defconfig
arm                           spitz_defconfig
m68k                          multi_defconfig
powerpc                         ps3_defconfig
sh                          polaris_defconfig
c6x                                 defconfig
powerpc                      katmai_defconfig
c6x                              alldefconfig
xtensa                generic_kc705_defconfig
sh                   sh7724_generic_defconfig
powerpc                 linkstation_defconfig
powerpc                      pmac32_defconfig
sh                          r7780mp_defconfig
m68k                        m5407c3_defconfig
riscv                            alldefconfig
xtensa                          iss_defconfig
mips                           ip22_defconfig
sh                        edosk7705_defconfig
arm                         cm_x300_defconfig
powerpc                     rainier_defconfig
powerpc                     pseries_defconfig
mips                       bmips_be_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
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
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20201026
i386                 randconfig-a003-20201026
i386                 randconfig-a005-20201026
i386                 randconfig-a001-20201026
i386                 randconfig-a006-20201026
i386                 randconfig-a004-20201026
x86_64               randconfig-a011-20201026
x86_64               randconfig-a013-20201026
x86_64               randconfig-a016-20201026
x86_64               randconfig-a015-20201026
x86_64               randconfig-a012-20201026
x86_64               randconfig-a014-20201026
i386                 randconfig-a016-20201026
i386                 randconfig-a015-20201026
i386                 randconfig-a014-20201026
i386                 randconfig-a012-20201026
i386                 randconfig-a013-20201026
i386                 randconfig-a011-20201026
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
x86_64               randconfig-a001-20201026
x86_64               randconfig-a003-20201026
x86_64               randconfig-a002-20201026
x86_64               randconfig-a006-20201026
x86_64               randconfig-a004-20201026
x86_64               randconfig-a005-20201026

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
