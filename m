Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 591993290B7
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 21:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE3614F087;
	Mon,  1 Mar 2021 20:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8Ua0f1d-x4f; Mon,  1 Mar 2021 20:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 822F64EEA0;
	Mon,  1 Mar 2021 20:16:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8682D1BF34A
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 20:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8141B430BD
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 20:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HyfbSaFUC-5q for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 20:15:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88B62430CD
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 20:15:50 +0000 (UTC)
IronPort-SDR: kTGU5czGzHVguOc9gNRkh7xfSR9ENilAZW3bNltbbUujmvo/g4oR24MGnhYbZPEAA4ioNQ4UHj
 vY2y9AlgMigQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174219232"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="174219232"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 12:15:49 -0800
IronPort-SDR: 1xkrqhzg3NhqQ9XQWBeMb5VrOGguBJsKiR/NCunzkSCkFNMO3UipS9jgpGVMsH+/rMVYO8zFLv
 LgGPHK/z22/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="434419214"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Mar 2021 12:15:48 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lGoxH-0004iX-Dn; Mon, 01 Mar 2021 20:15:47 +0000
Date: Tue, 02 Mar 2021 04:15:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 b0ff7ee301a6ed3220056d99a3b343f534edd788
Message-ID: <603d4b50.V6qmCrdJQoluY5Fg%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: b0ff7ee301a6ed3220056d99a3b343f534edd788  staging: clocking-wizard: Remove the hardcoding of the clock outputs

elapsed time: 728m

configs tested: 126
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          moxart_defconfig
m68k                            q40_defconfig
alpha                               defconfig
ia64                             alldefconfig
powerpc                      makalu_defconfig
sh                           se7724_defconfig
mips                           xway_defconfig
arm                        realview_defconfig
mips                        vocore2_defconfig
arm                         shannon_defconfig
sh                          polaris_defconfig
arc                              allyesconfig
powerpc                      arches_defconfig
ia64                            zx1_defconfig
sh                           se7619_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                      walnut_defconfig
m68k                        mvme16x_defconfig
arm                        vexpress_defconfig
s390                       zfcpdump_defconfig
xtensa                    xip_kc705_defconfig
powerpc                      katmai_defconfig
sparc                       sparc32_defconfig
arm                           sama5_defconfig
powerpc                       maple_defconfig
sh                               alldefconfig
sh                          kfr2r09_defconfig
powerpc               mpc834x_itxgp_defconfig
x86_64                           allyesconfig
m68k                       m5475evb_defconfig
mips                         bigsur_defconfig
powerpc                     sequoia_defconfig
riscv                            alldefconfig
arm                           spitz_defconfig
powerpc                        warp_defconfig
xtensa                       common_defconfig
arm                        neponset_defconfig
sh                     magicpanelr2_defconfig
arm                            zeus_defconfig
mips                     cu1830-neo_defconfig
sh                          rsk7269_defconfig
mips                         mpc30x_defconfig
arm                       versatile_defconfig
nios2                            alldefconfig
powerpc                       ebony_defconfig
powerpc                 mpc8313_rdb_defconfig
riscv                    nommu_virt_defconfig
powerpc                 mpc834x_mds_defconfig
i386                             alldefconfig
sh                   secureedge5410_defconfig
mips                        qi_lb60_defconfig
powerpc                       eiger_defconfig
sh                          rsk7201_defconfig
powerpc                  iss476-smp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
nds32                             allnoconfig
c6x                              allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
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
i386                 randconfig-a005-20210301
i386                 randconfig-a003-20210301
i386                 randconfig-a002-20210301
i386                 randconfig-a004-20210301
i386                 randconfig-a006-20210301
i386                 randconfig-a001-20210301
x86_64               randconfig-a013-20210301
x86_64               randconfig-a016-20210301
x86_64               randconfig-a015-20210301
x86_64               randconfig-a014-20210301
x86_64               randconfig-a012-20210301
x86_64               randconfig-a011-20210301
i386                 randconfig-a016-20210301
i386                 randconfig-a012-20210301
i386                 randconfig-a014-20210301
i386                 randconfig-a013-20210301
i386                 randconfig-a011-20210301
i386                 randconfig-a015-20210301
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210301
x86_64               randconfig-a001-20210301
x86_64               randconfig-a004-20210301
x86_64               randconfig-a002-20210301
x86_64               randconfig-a005-20210301
x86_64               randconfig-a003-20210301

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
