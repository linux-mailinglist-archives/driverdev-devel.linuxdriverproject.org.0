Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F6E28C479
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 00:03:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03B1C850AD;
	Mon, 12 Oct 2020 22:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XkWAAoexaKb; Mon, 12 Oct 2020 22:03:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C470784456;
	Mon, 12 Oct 2020 22:03:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36D031BF3C9
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 22:03:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3073F84456
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 22:03:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_GRybhOAeq8 for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 22:03:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7185C840B2
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 22:03:17 +0000 (UTC)
IronPort-SDR: 3vbRX3uMY1wL893X3eS7NLbPuaSGloiDKP9tqR6IhxH0GZ8bkViijyHIvsgj/5h1gZFo1I3m48
 Qfa7c5yBryww==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="152741132"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="152741132"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 15:03:16 -0700
IronPort-SDR: JkWj7RIMpFLOG7SSRoei0/5hZ4dlklAV2b53qEmcy7NPmDLZRy3KKKyMacY5ai6GYf0kpNamHf
 qZI54kid6qCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="345043708"
Received: from lkp-server01.sh.intel.com (HELO aa1d92d39b27) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2020 15:03:15 -0700
Received: from kbuild by aa1d92d39b27 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kS5uU-0000Ar-Hc; Mon, 12 Oct 2020 22:03:14 +0000
Date: Tue, 13 Oct 2020 06:03:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 504a7b9422191386279b76fbe221a99de1696f54
Message-ID: <5f84d299.ItuUrClZ55I/vehj%lkp@intel.com>
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
branch HEAD: 504a7b9422191386279b76fbe221a99de1696f54  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 721m

configs tested: 114
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                    ge_imp3a_defconfig
sh                          r7780mp_defconfig
c6x                         dsk6455_defconfig
xtensa                          iss_defconfig
arm                           sunxi_defconfig
h8300                       h8s-sim_defconfig
sh                   sh7724_generic_defconfig
arm                            pleb_defconfig
arm                           spitz_defconfig
mips                           ip32_defconfig
powerpc                     mpc512x_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     asp8347_defconfig
arm                  colibri_pxa270_defconfig
mips                      loongson3_defconfig
powerpc                     kilauea_defconfig
sh                             espt_defconfig
arm                      footbridge_defconfig
arm                         palmz72_defconfig
mips                         mpc30x_defconfig
sh                        dreamcast_defconfig
arc                        vdk_hs38_defconfig
powerpc                    amigaone_defconfig
riscv                            allyesconfig
powerpc                    mvme5100_defconfig
sh                              ul2_defconfig
powerpc                 mpc8540_ads_defconfig
sparc                       sparc32_defconfig
arm                        multi_v5_defconfig
sh                           sh2007_defconfig
arm                          simpad_defconfig
openrisc                    or1ksim_defconfig
openrisc                         alldefconfig
arm                           h3600_defconfig
sh                             sh03_defconfig
powerpc                      ppc40x_defconfig
powerpc                       ebony_defconfig
arm                             rpc_defconfig
arm                        vexpress_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                     ppa8548_defconfig
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
i386                 randconfig-a005-20201012
i386                 randconfig-a006-20201012
i386                 randconfig-a001-20201012
i386                 randconfig-a003-20201012
i386                 randconfig-a004-20201012
i386                 randconfig-a002-20201012
x86_64               randconfig-a016-20201012
x86_64               randconfig-a015-20201012
x86_64               randconfig-a012-20201012
x86_64               randconfig-a013-20201012
x86_64               randconfig-a014-20201012
x86_64               randconfig-a011-20201012
i386                 randconfig-a016-20201012
i386                 randconfig-a015-20201012
i386                 randconfig-a013-20201012
i386                 randconfig-a012-20201012
i386                 randconfig-a011-20201012
i386                 randconfig-a014-20201012
riscv                    nommu_k210_defconfig
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
x86_64               randconfig-a004-20201012
x86_64               randconfig-a002-20201012
x86_64               randconfig-a006-20201012
x86_64               randconfig-a001-20201012
x86_64               randconfig-a003-20201012
x86_64               randconfig-a005-20201012

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
