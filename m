Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A1F2101FA
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 04:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CAEB87861;
	Wed,  1 Jul 2020 02:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ai7xmX58vbHN; Wed,  1 Jul 2020 02:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E2B85871C8;
	Wed,  1 Jul 2020 02:24:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A6C61BF5A0
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 02:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 335E925715
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 02:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HvmLoqLYTgnj for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 02:24:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 905D52544B
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 02:24:12 +0000 (UTC)
IronPort-SDR: pZZUcsjASQnGjWU07WHF4f3ylu8AkxHzBvOnB6jM+JTlMQnhio1QyxUzlQedLmdWlKppxrfgsd
 PWKB7femGmcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="126070856"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="126070856"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 19:24:12 -0700
IronPort-SDR: 33qpNHf3HiLYRBVWUUP0Bs6IYIazZo4zdIVPKMzp/cC6GQ9rZ0ZPr/cSdoIdnY1dr3vrieE10T
 wHWoEWxQl7oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="313614466"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jun 2020 19:24:11 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jqSPy-0002Kd-F7; Wed, 01 Jul 2020 02:24:10 +0000
Date: Wed, 01 Jul 2020 10:22:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 c3eacdd9fcdc9fb16844622ae807083cf1f78cb3
Message-ID: <5efbf357./abgP4UpI5xQ0t5C%lkp@intel.com>
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
branch HEAD: c3eacdd9fcdc9fb16844622ae807083cf1f78cb3  selftests: add readfile(2) selftests

elapsed time: 2458m

configs tested: 185
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
mips                         tb0287_defconfig
powerpc                  mpc866_ads_defconfig
mips                      pistachio_defconfig
sparc64                          allyesconfig
arm                         ebsa110_defconfig
powerpc                          g5_defconfig
mips                            e55_defconfig
s390                             alldefconfig
riscv                          rv32_defconfig
m68k                             alldefconfig
arm                         socfpga_defconfig
mips                              allnoconfig
arm                         s3c2410_defconfig
openrisc                 simple_smp_defconfig
arm                    vt8500_v6_v7_defconfig
arm                           corgi_defconfig
m68k                        m5307c3_defconfig
arm                           u8500_defconfig
sparc                       sparc32_defconfig
m68k                          hp300_defconfig
sh                          landisk_defconfig
sh                         apsh4a3a_defconfig
arm                          badge4_defconfig
arm                          lpd270_defconfig
mips                         tb0219_defconfig
powerpc                      mgcoge_defconfig
nds32                             allnoconfig
arm                          pcm027_defconfig
mips                         mpc30x_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                           se7751_defconfig
mips                     loongson1b_defconfig
arm                           sama5_defconfig
sh                           sh2007_defconfig
arm                             pxa_defconfig
mips                 pnx8335_stb225_defconfig
mips                      pic32mzda_defconfig
mips                           xway_defconfig
mips                           mtx1_defconfig
um                             i386_defconfig
mips                        maltaup_defconfig
m68k                          multi_defconfig
sh                      rts7751r2d1_defconfig
arm                           viper_defconfig
powerpc                      ppc44x_defconfig
arm                          moxart_defconfig
sh                        sh7763rdp_defconfig
arm                        mvebu_v7_defconfig
arm                          exynos_defconfig
c6x                        evmc6474_defconfig
sh                           se7724_defconfig
arm                            pleb_defconfig
arm                             ezx_defconfig
xtensa                       common_defconfig
arm                         orion5x_defconfig
arm                         nhk8815_defconfig
powerpc                          allyesconfig
mips                           gcw0_defconfig
mips                     decstation_defconfig
arc                        nsim_700_defconfig
mips                       rbtx49xx_defconfig
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
nds32                               defconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200630
i386                 randconfig-a003-20200630
i386                 randconfig-a002-20200630
i386                 randconfig-a004-20200630
i386                 randconfig-a005-20200630
i386                 randconfig-a006-20200630
i386                 randconfig-a006-20200629
i386                 randconfig-a002-20200629
i386                 randconfig-a003-20200629
i386                 randconfig-a001-20200629
i386                 randconfig-a005-20200629
i386                 randconfig-a004-20200629
x86_64               randconfig-a011-20200629
x86_64               randconfig-a012-20200629
x86_64               randconfig-a013-20200629
x86_64               randconfig-a014-20200629
x86_64               randconfig-a015-20200629
x86_64               randconfig-a016-20200629
x86_64               randconfig-a011-20200630
x86_64               randconfig-a014-20200630
x86_64               randconfig-a013-20200630
x86_64               randconfig-a015-20200630
x86_64               randconfig-a016-20200630
x86_64               randconfig-a012-20200630
x86_64               randconfig-a012-20200701
x86_64               randconfig-a016-20200701
x86_64               randconfig-a014-20200701
x86_64               randconfig-a011-20200701
x86_64               randconfig-a015-20200701
x86_64               randconfig-a013-20200701
i386                 randconfig-a013-20200629
i386                 randconfig-a016-20200629
i386                 randconfig-a014-20200629
i386                 randconfig-a012-20200629
i386                 randconfig-a015-20200629
i386                 randconfig-a011-20200629
i386                 randconfig-a011-20200630
i386                 randconfig-a016-20200630
i386                 randconfig-a015-20200630
i386                 randconfig-a012-20200630
i386                 randconfig-a014-20200630
i386                 randconfig-a013-20200630
i386                 randconfig-a011-20200701
i386                 randconfig-a015-20200701
i386                 randconfig-a014-20200701
i386                 randconfig-a016-20200701
i386                 randconfig-a012-20200701
i386                 randconfig-a013-20200701
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
