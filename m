Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E56F433AA64
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 05:27:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0D6A6F55F;
	Mon, 15 Mar 2021 04:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UBDsJG_GMsej; Mon, 15 Mar 2021 04:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 129D16F515;
	Mon, 15 Mar 2021 04:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDEFD1BF3C9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 04:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAF3A430BF
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 04:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FOw_7nQwSyXi for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 04:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9A2B430BB
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 04:27:22 +0000 (UTC)
IronPort-SDR: 7CcHjFgvznYcIjopjW23BYQ1gpxLYD6oFzmS/gZ1TsVfY4y2RNPbfP2gReoSK8ghOkgOyXt3Ko
 1Qskp5sfcWOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="250399633"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="250399633"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2021 21:27:21 -0700
IronPort-SDR: RtgcKM3JfDBzBVQYoXWheCutW/g5CeFh/9Fqph6TmiCQZsPt0gTJFF/MA7aI51UfYLlpA0bUTx
 CWG8sLkuuVhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="410525753"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 14 Mar 2021 21:27:19 -0700
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lLep5-0000OV-8I; Mon, 15 Mar 2021 04:27:19 +0000
Date: Mon, 15 Mar 2021 12:27:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 0ba8b68b5b30ad3cba7ed8b6323ff6a127017ff4
Message-ID: <604ee214.s7pUm3KCOD9v2xmC%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 0ba8b68b5b30ad3cba7ed8b6323ff6a127017ff4  Staging: rtl8723bs: fixed a brace coding style

elapsed time: 722m

configs tested: 103
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
nios2                         3c120_defconfig
mips                     decstation_defconfig
mips                         db1xxx_defconfig
mips                        maltaup_defconfig
powerpc                      makalu_defconfig
arm                              alldefconfig
mips                         tb0287_defconfig
powerpc                 mpc8272_ads_defconfig
arm                        realview_defconfig
arm                           tegra_defconfig
sh                            migor_defconfig
powerpc                      pmac32_defconfig
powerpc                   motionpro_defconfig
nds32                             allnoconfig
powerpc                     sbc8548_defconfig
powerpc                       eiger_defconfig
riscv                            allmodconfig
arc                      axs103_smp_defconfig
mips                           rs90_defconfig
h8300                    h8300h-sim_defconfig
arm                            zeus_defconfig
x86_64                           alldefconfig
arm                        vexpress_defconfig
sh                            shmin_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                malta_kvm_guest_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7712_defconfig
arc                     nsimosci_hs_defconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210314
i386                 randconfig-a005-20210314
i386                 randconfig-a003-20210314
i386                 randconfig-a002-20210314
i386                 randconfig-a004-20210314
i386                 randconfig-a006-20210314
x86_64               randconfig-a011-20210314
x86_64               randconfig-a016-20210314
x86_64               randconfig-a013-20210314
x86_64               randconfig-a015-20210314
x86_64               randconfig-a014-20210314
x86_64               randconfig-a012-20210314
i386                 randconfig-a013-20210314
i386                 randconfig-a016-20210314
i386                 randconfig-a011-20210314
i386                 randconfig-a012-20210314
i386                 randconfig-a014-20210314
i386                 randconfig-a015-20210314
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210314
x86_64               randconfig-a001-20210314
x86_64               randconfig-a005-20210314
x86_64               randconfig-a004-20210314
x86_64               randconfig-a002-20210314
x86_64               randconfig-a003-20210314

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
