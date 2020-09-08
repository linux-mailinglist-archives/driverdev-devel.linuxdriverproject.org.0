Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75473260806
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 03:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94A5B232D2;
	Tue,  8 Sep 2020 01:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mYWKkDMPiVCk; Tue,  8 Sep 2020 01:26:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B55922EE7;
	Tue,  8 Sep 2020 01:26:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB7211BF31C
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 01:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E56898708A
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 01:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKa-pKnDSucB for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 01:26:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D499487085
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 01:26:42 +0000 (UTC)
IronPort-SDR: FH6Daih3yHg2Ok2E39bW/ckooggyYe8wwi8ow9LG31wHbagIh7fNRdzKUxyPDaGpN7pI9r0tTL
 GRCqYroV6MdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="137574614"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="137574614"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 18:26:42 -0700
IronPort-SDR: Z5zKHIi0fukz0AXcguTiSj+SvTk9ygkGu5inbRgQPDHr/7G/r7PE8jaIYwv6gNIJKSpo+xcnWw
 xVu8tHWJgdlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="448580971"
Received: from lkp-server02.sh.intel.com (HELO a98deea729ba) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 07 Sep 2020 18:26:41 -0700
Received: from kbuild by a98deea729ba with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kFSPA-0000Lz-Bg; Tue, 08 Sep 2020 01:26:40 +0000
Date: Tue, 08 Sep 2020 09:26:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 ceea93444808c7d1fd07a01927937d20237d849e
Message-ID: <5f56ddb0.a4N9juPRbX5y2ooa%lkp@intel.com>
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
branch HEAD: ceea93444808c7d1fd07a01927937d20237d849e  drivers: most: add character device interface driver

elapsed time: 724m

configs tested: 133
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nds32                            alldefconfig
mips                        workpad_defconfig
mips                     cu1000-neo_defconfig
powerpc                          g5_defconfig
mips                          ath25_defconfig
arm                          pcm027_defconfig
powerpc                      ppc40x_defconfig
mips                        nlm_xlp_defconfig
sh                           se7780_defconfig
powerpc                           allnoconfig
arm                    vt8500_v6_v7_defconfig
c6x                        evmc6457_defconfig
arm                         lpc18xx_defconfig
arm                           u8500_defconfig
arm                           omap1_defconfig
mips                  decstation_64_defconfig
mips                           ip27_defconfig
arm                   milbeaut_m10v_defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
mips                 decstation_r4k_defconfig
arm                       omap2plus_defconfig
nios2                         3c120_defconfig
sh                         apsh4a3a_defconfig
m68k                          atari_defconfig
powerpc                     pseries_defconfig
arc                        nsimosci_defconfig
powerpc                      tqm8xx_defconfig
mips                           rs90_defconfig
xtensa                       common_defconfig
arm                            u300_defconfig
riscv                    nommu_k210_defconfig
arm                            mmp2_defconfig
powerpc                      ppc64e_defconfig
powerpc                    gamecube_defconfig
c6x                              allyesconfig
sh                   sh7724_generic_defconfig
mips                          ath79_defconfig
openrisc                    or1ksim_defconfig
sh                          lboxre2_defconfig
arc                              allyesconfig
powerpc                    mvme5100_defconfig
openrisc                            defconfig
ia64                             alldefconfig
nds32                               defconfig
sh                             sh03_defconfig
mips                       bmips_be_defconfig
c6x                        evmc6472_defconfig
mips                             allyesconfig
sh                          sdk7786_defconfig
arm                             ezx_defconfig
mips                       lemote2f_defconfig
mips                malta_kvm_guest_defconfig
s390                          debug_defconfig
c6x                        evmc6678_defconfig
arm                            zeus_defconfig
arm                          iop32x_defconfig
arm                        magician_defconfig
ia64                      gensparse_defconfig
arm                        spear6xx_defconfig
powerpc                      ppc6xx_defconfig
riscv                            alldefconfig
arm                            xcep_defconfig
powerpc                       holly_defconfig
sh                   sh7770_generic_defconfig
arm                            mps2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
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
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a004-20200907
i386                 randconfig-a005-20200907
i386                 randconfig-a006-20200907
i386                 randconfig-a002-20200907
i386                 randconfig-a003-20200907
i386                 randconfig-a001-20200907
x86_64               randconfig-a006-20200907
x86_64               randconfig-a004-20200907
x86_64               randconfig-a003-20200907
x86_64               randconfig-a005-20200907
x86_64               randconfig-a001-20200907
x86_64               randconfig-a002-20200907
i386                 randconfig-a016-20200907
i386                 randconfig-a015-20200907
i386                 randconfig-a011-20200907
i386                 randconfig-a013-20200907
i386                 randconfig-a014-20200907
i386                 randconfig-a012-20200907
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
x86_64               randconfig-a013-20200907
x86_64               randconfig-a011-20200907
x86_64               randconfig-a016-20200907
x86_64               randconfig-a012-20200907
x86_64               randconfig-a015-20200907
x86_64               randconfig-a014-20200907

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
