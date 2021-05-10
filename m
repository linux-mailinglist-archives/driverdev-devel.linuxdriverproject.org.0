Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC5C379953
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 May 2021 23:39:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1AE4402CD;
	Mon, 10 May 2021 21:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDv8P8OWG6rH; Mon, 10 May 2021 21:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22A23402C9;
	Mon, 10 May 2021 21:39:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC961BF574
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 21:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF4F2405F3
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 21:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6sqsoyhA8J_S for <devel@linuxdriverproject.org>;
 Mon, 10 May 2021 21:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AEFBB405F0
 for <devel@driverdev.osuosl.org>; Mon, 10 May 2021 21:39:42 +0000 (UTC)
IronPort-SDR: Q9MV91EBQtmNUigsDWNcKiH75al727IxVjAFOyFCv94yAhqLfPw1dASeISxKs8PEN5ZurwTzxK
 GjVC8VGdaK9Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="179560294"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="179560294"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 14:39:40 -0700
IronPort-SDR: s+db9NRMuDGmZtQR8QVDncQjZT7bXqywdZtT46PP4DZQ9rW4TXDLfecaR3LgpVHGWNXDLEOq9T
 sNTbqb8jZGHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="399032090"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 10 May 2021 14:39:39 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgDcp-0000Nj-5A; Mon, 10 May 2021 21:39:39 +0000
Date: Tue, 11 May 2021 05:39:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kbuild] BUILD SUCCESS
 063cb956cd444b9fa77cbb03898feb05707e8b60
Message-ID: <6099a812.XV14RY4DwCh09diO%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kbuild
branch HEAD: 063cb956cd444b9fa77cbb03898feb05707e8b60  kbuild: allow arches to have their own "bootloader.sh"

elapsed time: 721m

configs tested: 127
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
i386                             allyesconfig
riscv                            allyesconfig
arc                     haps_hs_smp_defconfig
mips                malta_qemu_32r6_defconfig
arm                        mvebu_v5_defconfig
arm                         vf610m4_defconfig
h8300                            alldefconfig
m68k                        mvme16x_defconfig
mips                           xway_defconfig
powerpc                  storcenter_defconfig
mips                           ip32_defconfig
mips                         rt305x_defconfig
arm                     eseries_pxa_defconfig
powerpc                    amigaone_defconfig
mips                      pic32mzda_defconfig
powerpc                mpc7448_hpc2_defconfig
nios2                               defconfig
mips                     cu1830-neo_defconfig
x86_64                           alldefconfig
mips                        bcm47xx_defconfig
mips                         tb0226_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                     decstation_defconfig
mips                        omega2p_defconfig
arm                         mv78xx0_defconfig
ia64                             alldefconfig
arc                        vdk_hs38_defconfig
mips                          ath79_defconfig
openrisc                    or1ksim_defconfig
sh                           se7206_defconfig
sh                        sh7763rdp_defconfig
arm                     am200epdkit_defconfig
mips                       rbtx49xx_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                          g5_defconfig
arm                      footbridge_defconfig
arm                       multi_v4t_defconfig
sh                        sh7757lcr_defconfig
mips                        nlm_xlp_defconfig
arc                 nsimosci_hs_smp_defconfig
csky                                defconfig
arm                          pxa3xx_defconfig
sh                               j2_defconfig
powerpc                   currituck_defconfig
mips                            gpr_defconfig
arm                          ixp4xx_defconfig
sh                              ul2_defconfig
powerpc                   motionpro_defconfig
nios2                            alldefconfig
h8300                    h8300h-sim_defconfig
mips                          ath25_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210510
x86_64               randconfig-a004-20210510
x86_64               randconfig-a001-20210510
x86_64               randconfig-a005-20210510
x86_64               randconfig-a002-20210510
x86_64               randconfig-a006-20210510
i386                 randconfig-a003-20210510
i386                 randconfig-a001-20210510
i386                 randconfig-a005-20210510
i386                 randconfig-a004-20210510
i386                 randconfig-a002-20210510
i386                 randconfig-a006-20210510
i386                 randconfig-a016-20210510
i386                 randconfig-a014-20210510
i386                 randconfig-a011-20210510
i386                 randconfig-a015-20210510
i386                 randconfig-a012-20210510
i386                 randconfig-a013-20210510
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
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
x86_64               randconfig-a015-20210510
x86_64               randconfig-a012-20210510
x86_64               randconfig-a011-20210510
x86_64               randconfig-a013-20210510
x86_64               randconfig-a016-20210510
x86_64               randconfig-a014-20210510

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
