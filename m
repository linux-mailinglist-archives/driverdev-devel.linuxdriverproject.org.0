Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4D13E4D0B
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Aug 2021 21:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EAAC8268F;
	Mon,  9 Aug 2021 19:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUVP7NF9wmlT; Mon,  9 Aug 2021 19:25:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C8A282538;
	Mon,  9 Aug 2021 19:25:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 478DE1BF281
 for <devel@linuxdriverproject.org>; Mon,  9 Aug 2021 19:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35804402BA
 for <devel@linuxdriverproject.org>; Mon,  9 Aug 2021 19:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYlMk-8z6jIp for <devel@linuxdriverproject.org>;
 Mon,  9 Aug 2021 19:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E0814023B
 for <devel@driverdev.osuosl.org>; Mon,  9 Aug 2021 19:25:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="201933181"
X-IronPort-AV: E=Sophos;i="5.84,308,1620716400"; d="scan'208";a="201933181"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 12:25:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,308,1620716400"; d="scan'208";a="460176740"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2021 12:25:18 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mDAti-000Jq0-5z; Mon, 09 Aug 2021 19:25:18 +0000
Date: Tue, 10 Aug 2021 03:24:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 bd935a7b21340e2e37f51a7f2d3188145e2fcf1f
Message-ID: <611180e6.ljAPMwwFaEeDw6ah%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: bd935a7b21340e2e37f51a7f2d3188145e2fcf1f  Merge 5.14-rc5 into driver-core-next

elapsed time: 729m

configs tested: 134
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                      obs600_defconfig
m68k                         amcore_defconfig
powerpc                      ppc64e_defconfig
powerpc                   microwatt_defconfig
arm                       aspeed_g5_defconfig
h8300                     edosk2674_defconfig
sh                          r7785rp_defconfig
powerpc                     ksi8560_defconfig
sh                        edosk7705_defconfig
arm                         lpc18xx_defconfig
powerpc                     taishan_defconfig
arm                        keystone_defconfig
x86_64                            allnoconfig
sh                     sh7710voipgw_defconfig
arc                              allyesconfig
powerpc                    klondike_defconfig
i386                                defconfig
sh                           se7343_defconfig
powerpc                     tqm8541_defconfig
sh                         apsh4a3a_defconfig
mips                       capcella_defconfig
arm                      pxa255-idp_defconfig
sh                          rsk7201_defconfig
mips                     cu1830-neo_defconfig
sh                          sdk7780_defconfig
mips                       bmips_be_defconfig
mips                  decstation_64_defconfig
powerpc                     stx_gp3_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         tb0287_defconfig
powerpc                      ep88xc_defconfig
powerpc64                           defconfig
m68k                        stmark2_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                     loongson1b_defconfig
powerpc                     tqm8555_defconfig
powerpc                 mpc834x_mds_defconfig
arm                           sunxi_defconfig
sh                          urquell_defconfig
mips                     loongson1c_defconfig
powerpc                       holly_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20210808
i386                 randconfig-a005-20210808
i386                 randconfig-a006-20210808
i386                 randconfig-a002-20210808
i386                 randconfig-a001-20210808
i386                 randconfig-a003-20210808
i386                 randconfig-a004-20210809
i386                 randconfig-a005-20210809
i386                 randconfig-a006-20210809
i386                 randconfig-a002-20210809
i386                 randconfig-a001-20210809
i386                 randconfig-a003-20210809
x86_64               randconfig-a016-20210808
x86_64               randconfig-a012-20210808
x86_64               randconfig-a013-20210808
x86_64               randconfig-a011-20210808
x86_64               randconfig-a014-20210808
x86_64               randconfig-a015-20210808
i386                 randconfig-a012-20210808
i386                 randconfig-a015-20210808
i386                 randconfig-a011-20210808
i386                 randconfig-a013-20210808
i386                 randconfig-a014-20210808
i386                 randconfig-a016-20210808
x86_64               randconfig-a002-20210809
x86_64               randconfig-a004-20210809
x86_64               randconfig-a006-20210809
x86_64               randconfig-a003-20210809
x86_64               randconfig-a001-20210809
x86_64               randconfig-a005-20210809
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210809
x86_64               randconfig-a002-20210808
x86_64               randconfig-a004-20210808
x86_64               randconfig-a006-20210808
x86_64               randconfig-a003-20210808
x86_64               randconfig-a001-20210808
x86_64               randconfig-a005-20210808
x86_64               randconfig-a016-20210809
x86_64               randconfig-a012-20210809
x86_64               randconfig-a013-20210809
x86_64               randconfig-a011-20210809
x86_64               randconfig-a014-20210809
x86_64               randconfig-a015-20210809

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
