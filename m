Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD4E29837A
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 21:21:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40F0486932;
	Sun, 25 Oct 2020 20:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l73YEVFA_I_M; Sun, 25 Oct 2020 20:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 031BA85644;
	Sun, 25 Oct 2020 20:21:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D51A1BF373
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 20:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 075E020020
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 20:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UnEWNwqLq+K5 for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 20:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 788772001F
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 20:21:19 +0000 (UTC)
IronPort-SDR: Wr/t+eva3b4mTC82CqmkhYl/RZzwYVi8Jo0uj/944SKc3KmHNu1L6L2iG7jPJaCfrpopMA/+TE
 EjQJ8kEmXvDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9785"; a="229488156"
X-IronPort-AV: E=Sophos;i="5.77,417,1596524400"; d="scan'208";a="229488156"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2020 13:21:18 -0700
IronPort-SDR: KndRVzjTkl2PgbfiJEgH8f0RqSgzGXRuATzESRg/UHOKK1ZScPGgzB7lFzaiObXBw0fB4hQOTv
 jmhPxNIhxfAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,417,1596524400"; d="scan'208";a="423927938"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2020 13:21:17 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kWmVw-00012h-Su; Sun, 25 Oct 2020 20:21:16 +0000
Date: Mon, 26 Oct 2020 04:20:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 2a1ed3b223489bd154c7c2760c953f3299e8ff5e
Message-ID: <5f95de12.Ifo211pr27KGeqz6%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 2a1ed3b223489bd154c7c2760c953f3299e8ff5e  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 720m

configs tested: 90
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         lpc18xx_defconfig
powerpc                     tqm5200_defconfig
mips                           xway_defconfig
mips                       bmips_be_defconfig
sh                           sh2007_defconfig
mips                         tb0219_defconfig
powerpc                      walnut_defconfig
mips                         db1xxx_defconfig
mips                           ip28_defconfig
m68k                        mvme16x_defconfig
powerpc                    klondike_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7206_defconfig
sh                           se7722_defconfig
csky                             alldefconfig
sparc                       sparc32_defconfig
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
x86_64               randconfig-a001-20201025
x86_64               randconfig-a003-20201025
x86_64               randconfig-a002-20201025
x86_64               randconfig-a006-20201025
x86_64               randconfig-a005-20201025
x86_64               randconfig-a004-20201025
i386                 randconfig-a002-20201025
i386                 randconfig-a003-20201025
i386                 randconfig-a005-20201025
i386                 randconfig-a001-20201025
i386                 randconfig-a006-20201025
i386                 randconfig-a004-20201025
i386                 randconfig-a016-20201025
i386                 randconfig-a015-20201025
i386                 randconfig-a014-20201025
i386                 randconfig-a013-20201025
i386                 randconfig-a012-20201025
i386                 randconfig-a011-20201025
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
x86_64               randconfig-a011-20201025
x86_64               randconfig-a013-20201025
x86_64               randconfig-a016-20201025
x86_64               randconfig-a015-20201025
x86_64               randconfig-a012-20201025
x86_64               randconfig-a014-20201025

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
