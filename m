Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16D035471A
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Apr 2021 21:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE689404DC;
	Mon,  5 Apr 2021 19:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O10gSgHKSvW4; Mon,  5 Apr 2021 19:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0361E4041E;
	Mon,  5 Apr 2021 19:25:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8D91BF350
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 19:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BA1560B3F
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 19:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ALGF015xw89v for <devel@linuxdriverproject.org>;
 Mon,  5 Apr 2021 19:25:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5515060B3D
 for <devel@driverdev.osuosl.org>; Mon,  5 Apr 2021 19:25:36 +0000 (UTC)
IronPort-SDR: tltIanpApcnJ4bLhBeLX5DtSky8q+zqvgguLI33XjEz2OzlbAITgK93lWIBHOO9DoSgzI2ryHh
 ckG2oms317cA==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="172980424"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="172980424"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 12:25:35 -0700
IronPort-SDR: zGMi8DikQ0qq1/iTdpLF6+xWqhPvhtipDtVZ7QITTJM9n90bex/IaLxnQ408VmMc5EXLApdU0+
 XbVhu8FrvsUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="386266107"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 05 Apr 2021 12:25:34 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lTUqr-000Aan-Re; Mon, 05 Apr 2021 19:25:33 +0000
Date: Tue, 06 Apr 2021 03:24:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 d81855117fe94efcd5de1fcb451a7413152d6b8f
Message-ID: <606b63fe.9tX/UQyR9sXcJb/h%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: d81855117fe94efcd5de1fcb451a7413152d6b8f  serial: pch_uart: fix build error with !CONFIG_DEBUG_FS

elapsed time: 727m

configs tested: 109
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
i386                             allyesconfig
riscv                            allyesconfig
nios2                         3c120_defconfig
powerpc                     rainier_defconfig
um                               allyesconfig
powerpc                       eiger_defconfig
powerpc                     kilauea_defconfig
mips                           gcw0_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                      obs600_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                      cm5200_defconfig
arm                        realview_defconfig
arm                       imx_v4_v5_defconfig
mips                           ip28_defconfig
m68k                       m5249evb_defconfig
h8300                               defconfig
arm                      jornada720_defconfig
openrisc                  or1klitex_defconfig
arm                       aspeed_g5_defconfig
arm                           spitz_defconfig
x86_64                              defconfig
mips                       lemote2f_defconfig
sh                           se7780_defconfig
sh                   sh7724_generic_defconfig
m68k                          sun3x_defconfig
arm                     am200epdkit_defconfig
mips                      pistachio_defconfig
mips                          ath25_defconfig
sh                          lboxre2_defconfig
sh                          rsk7203_defconfig
sh                          landisk_defconfig
i386                                defconfig
mips                       rbtx49xx_defconfig
mips                      maltasmvp_defconfig
xtensa                  nommu_kc705_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210405
i386                 randconfig-a003-20210405
i386                 randconfig-a001-20210405
i386                 randconfig-a004-20210405
i386                 randconfig-a002-20210405
i386                 randconfig-a005-20210405
x86_64               randconfig-a014-20210405
x86_64               randconfig-a015-20210405
x86_64               randconfig-a013-20210405
x86_64               randconfig-a011-20210405
x86_64               randconfig-a012-20210405
x86_64               randconfig-a016-20210405
i386                 randconfig-a014-20210405
i386                 randconfig-a011-20210405
i386                 randconfig-a016-20210405
i386                 randconfig-a012-20210405
i386                 randconfig-a015-20210405
i386                 randconfig-a013-20210405
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210405
x86_64               randconfig-a003-20210405
x86_64               randconfig-a005-20210405
x86_64               randconfig-a001-20210405
x86_64               randconfig-a002-20210405
x86_64               randconfig-a006-20210405

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
