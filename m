Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30801269A2C
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 02:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EDE486416;
	Tue, 15 Sep 2020 00:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w7oqOih3F6+Y; Tue, 15 Sep 2020 00:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17C798640E;
	Tue, 15 Sep 2020 00:08:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E79831BF968
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3DA786FE5
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHbB-0rVasVf for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 00:08:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02EAB86FE4
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 00:08:37 +0000 (UTC)
IronPort-SDR: sNu5SwUShrTBh4C/Sn5MWPIlGXYd/QZaQXd3Ww+61kL1WyvMrAr80kCamTDnykkKqtg4viJYWc
 OUtsm8ZHEjXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223361894"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="223361894"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 17:08:36 -0700
IronPort-SDR: RIZaBU1YTSzdOzubp1H/u7zQ+JF+Jxs8aUIZvGMvPVBMN68Xk71a8g0+iH82Znz53iIxDKWbR5
 BumUnHd8hqBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="409012542"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Sep 2020 17:08:35 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kHyWQ-0001Ex-Os; Tue, 15 Sep 2020 00:08:34 +0000
Date: Tue, 15 Sep 2020 08:08:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 9ef8638bd8c7e06bee087a04af7950cbc6123828
Message-ID: <5f6005fe.6aVhQN6iT5UTVt2/%lkp@intel.com>
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
branch HEAD: 9ef8638bd8c7e06bee087a04af7950cbc6123828  Merge 5.9-rc5 into driver-core-next

elapsed time: 724m

configs tested: 168
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
sh                          sdk7786_defconfig
powerpc                          g5_defconfig
arm                           tegra_defconfig
openrisc                 simple_smp_defconfig
powerpc                        icon_defconfig
m68k                         amcore_defconfig
mips                    maltaup_xpa_defconfig
mips                       rbtx49xx_defconfig
powerpc                   currituck_defconfig
riscv                          rv32_defconfig
sh                          r7780mp_defconfig
powerpc                    mvme5100_defconfig
um                             i386_defconfig
arc                            hsdk_defconfig
powerpc                    gamecube_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         shannon_defconfig
powerpc                      pcm030_defconfig
parisc                generic-64bit_defconfig
sh                        dreamcast_defconfig
arm                            mps2_defconfig
arm                          pxa3xx_defconfig
sh                                  defconfig
m68k                        m5307c3_defconfig
powerpc                      mgcoge_defconfig
sparc                               defconfig
arm                         nhk8815_defconfig
sh                           se7722_defconfig
powerpc                     ep8248e_defconfig
sparc                       sparc64_defconfig
ia64                         bigsur_defconfig
m68k                        m5272c3_defconfig
powerpc                 mpc8540_ads_defconfig
mips                 pnx8335_stb225_defconfig
powerpc                 linkstation_defconfig
powerpc                  storcenter_defconfig
alpha                               defconfig
m68k                           sun3_defconfig
sh                          r7785rp_defconfig
arm                           spitz_defconfig
mips                         cobalt_defconfig
arm                    vt8500_v6_v7_defconfig
ia64                                defconfig
mips                        bcm47xx_defconfig
arc                        nsimosci_defconfig
m68k                          hp300_defconfig
powerpc                      obs600_defconfig
riscv                            alldefconfig
arm                        multi_v5_defconfig
arm                         cm_x300_defconfig
xtensa                generic_kc705_defconfig
arm                         lpc18xx_defconfig
mips                      loongson3_defconfig
c6x                              allyesconfig
powerpc                     tqm8541_defconfig
arm                         hackkit_defconfig
nds32                             allnoconfig
arm                             ezx_defconfig
sh                   sh7724_generic_defconfig
powerpc64                           defconfig
arm                         lubbock_defconfig
arm                         palmz72_defconfig
arm                           sunxi_defconfig
m68k                        mvme16x_defconfig
arm                           omap1_defconfig
powerpc                         wii_defconfig
arm                       multi_v4t_defconfig
powerpc                  mpc866_ads_defconfig
m68k                             alldefconfig
mips                           jazz_defconfig
arm                              zx_defconfig
mips                      bmips_stb_defconfig
arm                       aspeed_g5_defconfig
powerpc                     tqm8560_defconfig
riscv                            allmodconfig
arm                        spear3xx_defconfig
c6x                              alldefconfig
arm                        trizeps4_defconfig
arm                        multi_v7_defconfig
ia64                             allyesconfig
ia64                             allmodconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20200914
x86_64               randconfig-a006-20200914
x86_64               randconfig-a003-20200914
x86_64               randconfig-a002-20200914
x86_64               randconfig-a001-20200914
x86_64               randconfig-a005-20200914
i386                 randconfig-a004-20200913
i386                 randconfig-a006-20200913
i386                 randconfig-a003-20200913
i386                 randconfig-a001-20200913
i386                 randconfig-a002-20200913
i386                 randconfig-a005-20200913
i386                 randconfig-a004-20200914
i386                 randconfig-a006-20200914
i386                 randconfig-a001-20200914
i386                 randconfig-a003-20200914
i386                 randconfig-a002-20200914
i386                 randconfig-a005-20200914
x86_64               randconfig-a014-20200913
x86_64               randconfig-a011-20200913
x86_64               randconfig-a012-20200913
x86_64               randconfig-a016-20200913
x86_64               randconfig-a015-20200913
x86_64               randconfig-a013-20200913
i386                 randconfig-a015-20200914
i386                 randconfig-a014-20200914
i386                 randconfig-a011-20200914
i386                 randconfig-a013-20200914
i386                 randconfig-a016-20200914
i386                 randconfig-a012-20200914
i386                 randconfig-a015-20200913
i386                 randconfig-a014-20200913
i386                 randconfig-a011-20200913
i386                 randconfig-a013-20200913
i386                 randconfig-a016-20200913
i386                 randconfig-a012-20200913
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200913
x86_64               randconfig-a004-20200913
x86_64               randconfig-a003-20200913
x86_64               randconfig-a002-20200913
x86_64               randconfig-a005-20200913
x86_64               randconfig-a001-20200913
x86_64               randconfig-a014-20200914
x86_64               randconfig-a011-20200914
x86_64               randconfig-a016-20200914
x86_64               randconfig-a012-20200914
x86_64               randconfig-a015-20200914
x86_64               randconfig-a013-20200914

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
