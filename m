Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD2135B69F
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Apr 2021 20:49:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62190606F7;
	Sun, 11 Apr 2021 18:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rvdzLXfudImO; Sun, 11 Apr 2021 18:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D801605DC;
	Sun, 11 Apr 2021 18:49:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66D7D1BF5A8
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 18:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 633EA83868
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 18:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEZ0W85E8kXd for <devel@linuxdriverproject.org>;
 Sun, 11 Apr 2021 18:49:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72EB5834BA
 for <devel@driverdev.osuosl.org>; Sun, 11 Apr 2021 18:49:41 +0000 (UTC)
IronPort-SDR: GFVVFNQe4pkw2xFMatgKc1pHGEK7GSbRm1qMivaLAOO66EOgMb4QWAMgHcbWiY62q7BXwbbUqz
 zWnnsiJgfz/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="194172656"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="194172656"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 11:49:38 -0700
IronPort-SDR: 9vPkbW9Jx6t00RqFU8iDN21tPMi31COMNU7M3zHvph466L9CJFn0TGhrwTH6lDKkwkZ/FBktsa
 Xh8pn8vTv6aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="459891159"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 11 Apr 2021 11:49:37 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lVf9M-000J4I-J8; Sun, 11 Apr 2021 18:49:36 +0000
Date: Mon, 12 Apr 2021 02:49:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 26be3a5d845312bae0397b1008e766340945cb53
Message-ID: <607344b8.CuUo5kxrcvG80FWd%lkp@intel.com>
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
branch HEAD: 26be3a5d845312bae0397b1008e766340945cb53  staging: rtl8192e: Fix incorrect pointer check

elapsed time: 724m

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
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
nios2                               defconfig
sh                   sh7724_generic_defconfig
sparc                            alldefconfig
arm                            xcep_defconfig
um                            kunit_defconfig
mips                            ar7_defconfig
arm                           spitz_defconfig
m68k                        mvme147_defconfig
xtensa                          iss_defconfig
mips                            gpr_defconfig
microblaze                          defconfig
xtensa                generic_kc705_defconfig
mips                         db1xxx_defconfig
arm                       netwinder_defconfig
um                                  defconfig
openrisc                 simple_smp_defconfig
sh                         ecovec24_defconfig
powerpc                      pasemi_defconfig
powerpc                 mpc8540_ads_defconfig
arm                        spear6xx_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                      tqm8xx_defconfig
s390                          debug_defconfig
powerpc                       ebony_defconfig
sh                   secureedge5410_defconfig
sh                                  defconfig
sh                          landisk_defconfig
h8300                    h8300h-sim_defconfig
mips                  decstation_64_defconfig
arm                         cm_x300_defconfig
sh                        edosk7760_defconfig
sparc                       sparc64_defconfig
sh                           se7343_defconfig
csky                                defconfig
m68k                          sun3x_defconfig
arm                          ep93xx_defconfig
riscv                          rv32_defconfig
mips                           ip22_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 mpc837x_rdb_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
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
arc                              allyesconfig
nds32                             allnoconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210411
x86_64               randconfig-a002-20210411
x86_64               randconfig-a001-20210411
x86_64               randconfig-a005-20210411
x86_64               randconfig-a006-20210411
x86_64               randconfig-a004-20210411
i386                 randconfig-a003-20210411
i386                 randconfig-a001-20210411
i386                 randconfig-a006-20210411
i386                 randconfig-a005-20210411
i386                 randconfig-a004-20210411
i386                 randconfig-a002-20210411
i386                 randconfig-a015-20210411
i386                 randconfig-a014-20210411
i386                 randconfig-a013-20210411
i386                 randconfig-a012-20210411
i386                 randconfig-a016-20210411
i386                 randconfig-a011-20210411
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210411
x86_64               randconfig-a015-20210411
x86_64               randconfig-a011-20210411
x86_64               randconfig-a013-20210411
x86_64               randconfig-a012-20210411
x86_64               randconfig-a016-20210411

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
