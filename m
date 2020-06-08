Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F731F2AFD
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 02:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D7C1885D5;
	Tue,  9 Jun 2020 00:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GgJa817H5v1n; Tue,  9 Jun 2020 00:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77505885CA;
	Tue,  9 Jun 2020 00:15:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 323C91BF349
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 00:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2979387855
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 00:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHGDkJ0nxRzk for <devel@linuxdriverproject.org>;
 Tue,  9 Jun 2020 00:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B01887847
 for <devel@driverdev.osuosl.org>; Tue,  9 Jun 2020 00:15:24 +0000 (UTC)
IronPort-SDR: GndcqauvNpy2Qr70OKAreqNvNnUz6lpLverdpzj3wMW8XW/WnMj19eeHy/debI4uv0lL4sn9iz
 frXD2QoInJTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 17:15:23 -0700
IronPort-SDR: NbkmDV4vD+wQqe0shx4SM07TtRSOtICxSOAfJXGHZyTJpbokrhbTfBS790FuEdzkcJsUY1taJH
 +1lNhrlrgOKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="259618153"
Received: from lkp-server01.sh.intel.com (HELO 12d5c0ac8e64) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 Jun 2020 17:15:22 -0700
Received: from kbuild by 12d5c0ac8e64 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jiRvF-00004M-A3; Tue, 09 Jun 2020 00:15:21 +0000
Date: Tue, 09 Jun 2020 03:57:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD REGRESSION
 441f2a237a46b372c52fa905467f4dfb602ff7eb
Message-ID: <5ede980f.GNpeTnHJTnQsTR33%lkp@intel.com>
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
branch HEAD: 441f2a237a46b372c52fa905467f4dfb602ff7eb  selftests: add readfile(2) selftests

Error/Warning in current branch:

arch/arm64/include/asm/unistd32.h:888:23: error: array index in initializer exceeds array bounds
arch/arm64/include/asm/unistd32.h:889:11: note: in expansion of macro '__NR_readfile'
arch/arm64/kernel/sys32.c:130:35: warning: excess elements in array initializer

Error/Warning ids grouped by kconfigs:

recent_errors
|-- arm64-allmodconfig
|   |-- arch-arm64-include-asm-unistd32.h:error:array-index-in-initializer-exceeds-array-bounds
|   |-- arch-arm64-include-asm-unistd32.h:note:in-expansion-of-macro-__NR_readfile
|   `-- arch-arm64-kernel-sys32.c:warning:excess-elements-in-array-initializer
|-- arm64-allyesconfig
|   |-- arch-arm64-include-asm-unistd32.h:error:array-index-in-initializer-exceeds-array-bounds
|   |-- arch-arm64-include-asm-unistd32.h:note:in-expansion-of-macro-__NR_readfile
|   `-- arch-arm64-kernel-sys32.c:warning:excess-elements-in-array-initializer
`-- arm64-defconfig
    |-- arch-arm64-include-asm-unistd32.h:error:array-index-in-initializer-exceeds-array-bounds
    |-- arch-arm64-include-asm-unistd32.h:note:in-expansion-of-macro-__NR_readfile
    `-- arch-arm64-kernel-sys32.c:warning:excess-elements-in-array-initializer

elapsed time: 540m

configs tested: 151
configs skipped: 13

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
m68k                         amcore_defconfig
mips                       rbtx49xx_defconfig
um                                  defconfig
sh                     magicpanelr2_defconfig
powerpc                      ep88xc_defconfig
sh                ecovec24-romimage_defconfig
sparc64                          allmodconfig
powerpc                  mpc885_ads_defconfig
mips                           xway_defconfig
arm                       cns3420vb_defconfig
m68k                          sun3x_defconfig
sparc                       sparc32_defconfig
riscv                          rv32_defconfig
arm                           efm32_defconfig
arm                        vexpress_defconfig
xtensa                          iss_defconfig
mips                  decstation_64_defconfig
sh                           cayman_defconfig
sh                           se7705_defconfig
mips                     decstation_defconfig
c6x                        evmc6678_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        mvebu_v5_defconfig
arm                          iop32x_defconfig
arm                            mps2_defconfig
mips                  cavium_octeon_defconfig
nds32                               defconfig
sparc64                             defconfig
sh                           se7343_defconfig
mips                         tb0226_defconfig
h8300                    h8300h-sim_defconfig
arm                         shannon_defconfig
um                                allnoconfig
arm                         socfpga_defconfig
sh                   sh7724_generic_defconfig
arc                                 defconfig
powerpc                    amigaone_defconfig
arc                        nsim_700_defconfig
arm                          exynos_defconfig
arm                     davinci_all_defconfig
mips                  maltasmvp_eva_defconfig
arm                            xcep_defconfig
arm                         mv78xx0_defconfig
c6x                        evmc6457_defconfig
m68k                        mvme16x_defconfig
s390                             allmodconfig
ia64                      gensparse_defconfig
arm                            zeus_defconfig
sh                           se7206_defconfig
sh                          rsk7203_defconfig
sh                          polaris_defconfig
arm                       omap2plus_defconfig
i386                             alldefconfig
parisc                generic-32bit_defconfig
arm                          ep93xx_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a001-20200607
i386                 randconfig-a006-20200607
i386                 randconfig-a002-20200607
i386                 randconfig-a005-20200607
i386                 randconfig-a004-20200607
i386                 randconfig-a003-20200607
i386                 randconfig-a014-20200607
i386                 randconfig-a015-20200607
i386                 randconfig-a011-20200607
i386                 randconfig-a016-20200607
i386                 randconfig-a012-20200607
i386                 randconfig-a013-20200607
i386                 randconfig-a014-20200608
i386                 randconfig-a011-20200608
i386                 randconfig-a015-20200608
i386                 randconfig-a016-20200608
i386                 randconfig-a012-20200608
i386                 randconfig-a013-20200608
x86_64               randconfig-a002-20200607
x86_64               randconfig-a001-20200607
x86_64               randconfig-a006-20200607
x86_64               randconfig-a003-20200607
x86_64               randconfig-a004-20200607
x86_64               randconfig-a005-20200607
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                               allmodconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
