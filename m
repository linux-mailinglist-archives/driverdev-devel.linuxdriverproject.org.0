Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E7531B03F
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 12:47:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94425870FF;
	Sun, 14 Feb 2021 11:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3adQ2dzLGCJ; Sun, 14 Feb 2021 11:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1216A87048;
	Sun, 14 Feb 2021 11:47:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B063F1BF57B
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 11:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A91CC86960
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 11:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ohcf9yEZHTR9 for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 11:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C0C4D8695B
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 11:47:29 +0000 (UTC)
IronPort-SDR: Cv4fi6wFWOs2S8ARt9eXA+RvHzt1NBUvcQLHydjwi2zB4p7IGSWQSEJSJMtSnoh4evL8CdWQtl
 UMPoAz6WIung==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="182705888"
X-IronPort-AV: E=Sophos;i="5.81,178,1610438400"; d="scan'208";a="182705888"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2021 03:47:28 -0800
IronPort-SDR: yJGDXNvdjuzw2kHwe+G4rtevl31AKmdKj0y1NY7V5co9N2+4mfrw8lRQpwbPfZbofkQWzOtFwq
 P5D7GizZPc6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,178,1610438400"; d="scan'208";a="438187990"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 14 Feb 2021 03:47:27 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lBFs6-0006ch-Nk; Sun, 14 Feb 2021 11:47:26 +0000
Date: Sun, 14 Feb 2021 19:46:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4eb839aef182fccf8995ee439fc2b48d43e45918
Message-ID: <60290d92.9e1ge8a+E367GsB8%lkp@intel.com>
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
branch HEAD: 4eb839aef182fccf8995ee439fc2b48d43e45918  staging: hikey9xx: Fix alignment of function parameters

elapsed time: 722m

configs tested: 102
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                    socrates_defconfig
powerpc                        fsp2_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                      ppc44x_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 mpc8540_ads_defconfig
arm                         s5pv210_defconfig
xtensa                       common_defconfig
arm                           sunxi_defconfig
arc                        nsimosci_defconfig
mips                malta_kvm_guest_defconfig
sparc                               defconfig
sparc                            alldefconfig
xtensa                          iss_defconfig
sh                           se7721_defconfig
arm                       imx_v6_v7_defconfig
arm                        mini2440_defconfig
mips                         tb0226_defconfig
arm                          imote2_defconfig
arm                         nhk8815_defconfig
sh                           se7705_defconfig
mips                  cavium_octeon_defconfig
powerpc                     pq2fads_defconfig
c6x                         dsk6455_defconfig
arc                            hsdk_defconfig
arm                      integrator_defconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210214
x86_64               randconfig-a002-20210214
x86_64               randconfig-a001-20210214
x86_64               randconfig-a004-20210214
x86_64               randconfig-a005-20210214
x86_64               randconfig-a006-20210214
i386                 randconfig-a003-20210214
i386                 randconfig-a005-20210214
i386                 randconfig-a002-20210214
i386                 randconfig-a006-20210214
i386                 randconfig-a004-20210214
i386                 randconfig-a001-20210214
i386                 randconfig-a016-20210214
i386                 randconfig-a014-20210214
i386                 randconfig-a012-20210214
i386                 randconfig-a013-20210214
i386                 randconfig-a011-20210214
i386                 randconfig-a015-20210214
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
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20210214
x86_64               randconfig-a013-20210214
x86_64               randconfig-a012-20210214
x86_64               randconfig-a015-20210214
x86_64               randconfig-a014-20210214
x86_64               randconfig-a011-20210214

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
