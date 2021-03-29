Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5603C34C0E9
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 03:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DD3C40315;
	Mon, 29 Mar 2021 01:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFXWXjAHJQr7; Mon, 29 Mar 2021 01:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E32840309;
	Mon, 29 Mar 2021 01:15:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCE31BF990
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 01:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D133400CD
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 01:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JvHdFkMWZbjx for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 01:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E6AB400B9
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 01:14:55 +0000 (UTC)
IronPort-SDR: wvb5zQXW8rXyBt6rjviR777vqQxR6cBaHIxHJmgWzx9n39H0inrowDZ6NXJRlniFd2D2rn1eCV
 4bDVKg1j+hDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="179001268"
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="179001268"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 18:14:54 -0700
IronPort-SDR: rqVZa8cYVGLowRdoguAt6GtaRiDGEx1fQmdcMBYPA7mf4C+csy0u8IJVSTYfzn/jlgKTvWytiW
 9+286fhNUImg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="383378343"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Mar 2021 18:14:52 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lQgUW-0004H6-0X; Mon, 29 Mar 2021 01:14:52 +0000
Date: Mon, 29 Mar 2021 09:14:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 305271ab4f54f9ae7b9080473d1699c9511ae235
Message-ID: <60612a02.xaoYBqh9JBWWZ6Qy%lkp@intel.com>
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
branch HEAD: 305271ab4f54f9ae7b9080473d1699c9511ae235  staging: rtl8723bs: remove unused macros in include/drv_types.c

i386-tinyconfig vmlinux size:

+-------+-------------------------+------------------------------------------+
| DELTA |         SYMBOL          |                  COMMIT                  |
+-------+-------------------------+------------------------------------------+
|  +467 | TOTAL                   | a38fd8748464..305271ab4f54 (ALL COMMITS) |
|  +454 | TEXT                    | a38fd8748464..305271ab4f54 (ALL COMMITS) |
|   +80 | timekeeping_notify()    | a38fd8748464..305271ab4f54 (ALL COMMITS) |
|   +70 | __perf_pmu_sched_task() | a38fd8748464..305271ab4f54 (ALL COMMITS) |
|   +64 | perf_pmu_sched_task()   | a38fd8748464..305271ab4f54 (ALL COMMITS) |
|   -92 | change_clocksource()    | a38fd8748464..305271ab4f54 (ALL COMMITS) |
+-------+-------------------------+------------------------------------------+

elapsed time: 722m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
riscv                            allyesconfig
sh                                  defconfig
powerpc                   bluestone_defconfig
arc                                 defconfig
arm                       aspeed_g5_defconfig
sh                           se7712_defconfig
mips                           ip22_defconfig
arm                       aspeed_g4_defconfig
arm                             pxa_defconfig
sparc                       sparc32_defconfig
ia64                             alldefconfig
powerpc                        icon_defconfig
arc                        nsimosci_defconfig
powerpc                      mgcoge_defconfig
powerpc                      walnut_defconfig
mips                     cu1000-neo_defconfig
arm                            mmp2_defconfig
arm                         palmz72_defconfig
um                                  defconfig
i386                             alldefconfig
mips                      malta_kvm_defconfig
m68k                          sun3x_defconfig
mips                       rbtx49xx_defconfig
sh                            migor_defconfig
h8300                     edosk2674_defconfig
sh                          sdk7786_defconfig
xtensa                           alldefconfig
mips                       lemote2f_defconfig
powerpc                  iss476-smp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20210328
i386                 randconfig-a003-20210328
i386                 randconfig-a001-20210328
i386                 randconfig-a002-20210328
i386                 randconfig-a006-20210328
i386                 randconfig-a005-20210328
x86_64               randconfig-a015-20210328
x86_64               randconfig-a012-20210328
x86_64               randconfig-a013-20210328
x86_64               randconfig-a014-20210328
x86_64               randconfig-a016-20210328
x86_64               randconfig-a011-20210328
i386                 randconfig-a014-20210328
i386                 randconfig-a011-20210328
i386                 randconfig-a015-20210328
i386                 randconfig-a016-20210328
i386                 randconfig-a013-20210328
i386                 randconfig-a012-20210328
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210328
x86_64               randconfig-a003-20210328
x86_64               randconfig-a001-20210328
x86_64               randconfig-a006-20210328
x86_64               randconfig-a005-20210328
x86_64               randconfig-a004-20210328
x86_64               randconfig-a015-20210329
x86_64               randconfig-a012-20210329
x86_64               randconfig-a013-20210329
x86_64               randconfig-a014-20210329
x86_64               randconfig-a011-20210329
x86_64               randconfig-a016-20210329

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
