Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9842DD978
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 20:42:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2363C2E2E1;
	Thu, 17 Dec 2020 19:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GpAIlgkKlbal; Thu, 17 Dec 2020 19:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D6692E2D5;
	Thu, 17 Dec 2020 19:41:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 452141BF20B
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 19:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F14B52E2CE
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 19:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtwVcPFJzjWA for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 19:41:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id D0BAB20006
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 19:41:53 +0000 (UTC)
IronPort-SDR: JgScxSo+FoaHDc6tiTDw9i/jiqOxCb+Y7Ih77a+Hj0ulLEBcnKOxvXWggsTlKBHO8MIk1yEKoe
 W3QBLhB1+XIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="163054043"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="163054043"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 11:41:53 -0800
IronPort-SDR: ugBC9jKXxOjTfhJ3fvv+BAiWLprpj0AD9Y5fuseKEnMH+wJ+qQuIOxQq4pV4Ow/cr3DWKD0hkt
 jZu4gd11rDGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="338461366"
Received: from lkp-server02.sh.intel.com (HELO 070e1a605002) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 17 Dec 2020 11:41:51 -0800
Received: from kbuild by 070e1a605002 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kpz9q-0001LH-Vk; Thu, 17 Dec 2020 19:41:50 +0000
Date: Fri, 18 Dec 2020 03:41:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 b27a2f4feaab44f9c61dbf52c55924950cc6fe3d
Message-ID: <5fdbb466.5pRE93mDHKlkniH7%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  readfile
branch HEAD: b27a2f4feaab44f9c61dbf52c55924950cc6fe3d  readfile.2: new page describing readfile(2)

elapsed time: 725m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7751_defconfig
sh                         apsh4a3a_defconfig
mips                            gpr_defconfig
um                            kunit_defconfig
c6x                        evmc6474_defconfig
arm                            lart_defconfig
mips                    maltaup_xpa_defconfig
arm                          badge4_defconfig
mips                            e55_defconfig
mips                         rt305x_defconfig
powerpc                     pq2fads_defconfig
arm                        keystone_defconfig
arm                         mv78xx0_defconfig
arm                       multi_v4t_defconfig
h8300                       h8s-sim_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                      bmips_stb_defconfig
powerpc                   currituck_defconfig
mips                         tb0287_defconfig
mips                         tb0219_defconfig
arm                          gemini_defconfig
powerpc                      pmac32_defconfig
mips                   sb1250_swarm_defconfig
arm                        spear6xx_defconfig
arm                      footbridge_defconfig
powerpc                     stx_gp3_defconfig
sh                   rts7751r2dplus_defconfig
mips                           rs90_defconfig
microblaze                          defconfig
mips                        workpad_defconfig
sparc                       sparc64_defconfig
mips                        nlm_xlr_defconfig
microblaze                      mmu_defconfig
powerpc                      makalu_defconfig
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
parisc                           allyesconfig
s390                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
x86_64               randconfig-a003-20201217
x86_64               randconfig-a006-20201217
x86_64               randconfig-a002-20201217
x86_64               randconfig-a005-20201217
x86_64               randconfig-a004-20201217
x86_64               randconfig-a001-20201217
i386                 randconfig-a001-20201217
i386                 randconfig-a004-20201217
i386                 randconfig-a003-20201217
i386                 randconfig-a002-20201217
i386                 randconfig-a006-20201217
i386                 randconfig-a005-20201217
i386                 randconfig-a014-20201217
i386                 randconfig-a013-20201217
i386                 randconfig-a012-20201217
i386                 randconfig-a011-20201217
i386                 randconfig-a015-20201217
i386                 randconfig-a016-20201217
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
x86_64               randconfig-a016-20201217
x86_64               randconfig-a012-20201217
x86_64               randconfig-a013-20201217
x86_64               randconfig-a015-20201217
x86_64               randconfig-a014-20201217
x86_64               randconfig-a011-20201217

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
