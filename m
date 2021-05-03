Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AD33710B5
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 May 2021 05:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48549843AE;
	Mon,  3 May 2021 03:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7tVuGOIR9YR8; Mon,  3 May 2021 03:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8283D8438B;
	Mon,  3 May 2021 03:55:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12E4D1BF370
 for <devel@linuxdriverproject.org>; Mon,  3 May 2021 03:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01AFD4065E
 for <devel@linuxdriverproject.org>; Mon,  3 May 2021 03:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OhkhcDEh0y37 for <devel@linuxdriverproject.org>;
 Mon,  3 May 2021 03:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB5354065B
 for <devel@driverdev.osuosl.org>; Mon,  3 May 2021 03:55:05 +0000 (UTC)
IronPort-SDR: NLz+uCwIlRIEgw6IbiXlJ9hWrRh3xrkquAWaOsCs3Bi/kZTV21oCPclvKgJTiMuhrGLO0qHzXJ
 ielW1E4L0pcg==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="194515519"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="194515519"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2021 20:55:01 -0700
IronPort-SDR: azVxMpDbdOIvGRhX9CZnfXhhjaJJQlUxDfrYYH2tqUY/noUoDhADRAJKPichQaFjIceJui8j0e
 3daa/xp9b6Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="617781324"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 02 May 2021 20:55:00 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ldPff-00098D-Ki; Mon, 03 May 2021 03:54:59 +0000
Date: Mon, 03 May 2021 11:54:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 2c913b8ec4971f82c26a5828d2b887849258df93
Message-ID: <608f73f6.IX5JlksPe1O/iN44%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts
branch HEAD: 2c913b8ec4971f82c26a5828d2b887849258df93  ALSA: sb8: Add a comment note regarding an unused pointer

elapsed time: 721m

configs tested: 101
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
powerpc                     mpc5200_defconfig
sh                           se7750_defconfig
i386                             alldefconfig
mips                         tb0219_defconfig
mips                      bmips_stb_defconfig
openrisc                    or1ksim_defconfig
xtensa                    xip_kc705_defconfig
powerpc                 linkstation_defconfig
mips                          rm200_defconfig
arc                            hsdk_defconfig
arm                             ezx_defconfig
m68k                        mvme16x_defconfig
arm64                            alldefconfig
mips                     cu1000-neo_defconfig
arm                        mvebu_v5_defconfig
m68k                       bvme6000_defconfig
arm                        mini2440_defconfig
riscv                            alldefconfig
arm                        realview_defconfig
arm                       netwinder_defconfig
arm                          badge4_defconfig
powerpc                     tqm8560_defconfig
sh                          rsk7201_defconfig
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
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210502
i386                 randconfig-a006-20210502
i386                 randconfig-a001-20210502
i386                 randconfig-a005-20210502
i386                 randconfig-a004-20210502
i386                 randconfig-a002-20210502
x86_64               randconfig-a014-20210502
x86_64               randconfig-a015-20210502
x86_64               randconfig-a012-20210502
x86_64               randconfig-a011-20210502
x86_64               randconfig-a013-20210502
x86_64               randconfig-a016-20210502
i386                 randconfig-a013-20210502
i386                 randconfig-a015-20210502
i386                 randconfig-a016-20210502
i386                 randconfig-a014-20210502
i386                 randconfig-a011-20210502
i386                 randconfig-a012-20210502
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210502
x86_64               randconfig-a005-20210502
x86_64               randconfig-a003-20210502
x86_64               randconfig-a002-20210502
x86_64               randconfig-a006-20210502
x86_64               randconfig-a004-20210502

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
