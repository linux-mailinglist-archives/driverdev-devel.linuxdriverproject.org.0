Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B534DE58D
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Mar 2022 04:52:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34B09402E1;
	Sat, 19 Mar 2022 03:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUkHxsNtZfRU; Sat, 19 Mar 2022 03:52:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5828740139;
	Sat, 19 Mar 2022 03:52:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83B051BF330
 for <devel@linuxdriverproject.org>; Sat, 19 Mar 2022 03:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7066160ACF
 for <devel@linuxdriverproject.org>; Sat, 19 Mar 2022 03:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4p-gxbUz1zOQ for <devel@linuxdriverproject.org>;
 Sat, 19 Mar 2022 03:52:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 760BA60670
 for <devel@driverdev.osuosl.org>; Sat, 19 Mar 2022 03:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647661921; x=1679197921;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tvFVsPvza0I9bsl4Rh8xT/+Ckf+HRwkvvSSe+P+0Ze8=;
 b=bXUrrljOYW+GNMDK0JcJsDKIZapZcCG6mK86PrEyIZfhAmvWFnnjCc4q
 RFgoZqTUZqkJ/eTRyKgUwjHJ+F4CrxNWEkduv31U3vbyZl2UmCFsaqGGL
 M/t+bl1XVDV1S49PGM+SQdp6E37ZpnD5YPEatIcCJUvsAuvtIoDv3l3zd
 hJguhs2zvpQt6K1/sEFqQlyvG1NS7uJ2Ytdyc7Px+Kc66bBTrfpL/8Fqt
 lsqi+eJ49UJjh9wC/y34zO2VobP5vt9hqN5AH+goMOqL1NLzSMdDFqrbJ
 yyjtl8mjhfkeKyzlVqbnPnHNshoql2drcM+6w06QSlrn89DlEbrZFb4Q6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="343707026"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="343707026"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 20:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="647756055"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 18 Mar 2022 20:51:59 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nVQ8E-000FXT-Pu; Sat, 19 Mar 2022 03:51:58 +0000
Date: Sat, 19 Mar 2022 11:51:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 41197a5f11a4b2d11ac19bc62552022153032811
Message-ID: <6235532c.VRzuB6nm7AyFD3Dz%lkp@intel.com>
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
branch HEAD: 41197a5f11a4b2d11ac19bc62552022153032811  staging: r8188eu: remove unnecessary memset in r8188eu

elapsed time: 801m

configs tested: 150
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
arm64                            alldefconfig
arm                            xcep_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                         ap325rxa_defconfig
mips                       capcella_defconfig
arm                      footbridge_defconfig
m68k                          multi_defconfig
sh                             espt_defconfig
csky                             alldefconfig
arm                        mini2440_defconfig
arm                        mvebu_v7_defconfig
arm                        multi_v7_defconfig
mips                         rt305x_defconfig
ia64                        generic_defconfig
arm                        keystone_defconfig
xtensa                           alldefconfig
m68k                        m5307c3_defconfig
arc                         haps_hs_defconfig
openrisc                         alldefconfig
powerpc                           allnoconfig
arm                          lpd270_defconfig
arc                                 defconfig
mips                         mpc30x_defconfig
m68k                           sun3_defconfig
sh                        edosk7705_defconfig
arm                           corgi_defconfig
ia64                          tiger_defconfig
powerpc                  storcenter_defconfig
alpha                            alldefconfig
arm                             rpc_defconfig
sh                           se7619_defconfig
arm                        trizeps4_defconfig
powerpc                       maple_defconfig
alpha                               defconfig
mips                      maltasmvp_defconfig
sh                           se7705_defconfig
sh                          sdk7780_defconfig
powerpc                      bamboo_defconfig
arm                         lubbock_defconfig
sh                           sh2007_defconfig
arc                          axs101_defconfig
arm                             pxa_defconfig
mips                  maltasmvp_eva_defconfig
arm                        realview_defconfig
m68k                            mac_defconfig
sh                            hp6xx_defconfig
arm                  randconfig-c002-20220318
arm                  randconfig-c002-20220317
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
s390                 randconfig-r044-20220317
arc                  randconfig-r043-20220318
riscv                randconfig-r042-20220317
arc                  randconfig-r043-20220317
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220318
s390                 randconfig-c005-20220317
s390                 randconfig-c005-20220318
arm                  randconfig-c002-20220317
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220318
riscv                randconfig-c006-20220318
riscv                randconfig-c006-20220317
powerpc              randconfig-c003-20220317
mips                 randconfig-c004-20220317
mips                 randconfig-c004-20220318
i386                          randconfig-c001
mips                        qi_lb60_defconfig
hexagon                          alldefconfig
powerpc                     tqm8540_defconfig
mips                           ip22_defconfig
mips                          ath79_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220318
hexagon              randconfig-r045-20220317
hexagon              randconfig-r041-20220318
riscv                randconfig-r042-20220318
hexagon              randconfig-r041-20220317
s390                 randconfig-r044-20220318

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
