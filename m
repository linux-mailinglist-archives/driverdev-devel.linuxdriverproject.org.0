Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D6C35361A
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Apr 2021 03:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B6FD40F7C;
	Sun,  4 Apr 2021 01:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LJRxslDaqGKT; Sun,  4 Apr 2021 01:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D18440565;
	Sun,  4 Apr 2021 01:38:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1385F1BF9B5
 for <devel@linuxdriverproject.org>; Sun,  4 Apr 2021 01:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDE6E607F0
 for <devel@linuxdriverproject.org>; Sun,  4 Apr 2021 01:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x860vfSobwMg for <devel@linuxdriverproject.org>;
 Sun,  4 Apr 2021 01:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25A68607ED
 for <devel@driverdev.osuosl.org>; Sun,  4 Apr 2021 01:38:31 +0000 (UTC)
IronPort-SDR: 9rbdT6SGNZEyGEEQpdewvWN+mv4xpv6tXocL8U3+R0qM5IY/CeWEuejaRilwU3CiRpX5iDr0np
 35eqqHAjYtJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9943"; a="190447176"
X-IronPort-AV: E=Sophos;i="5.81,303,1610438400"; d="scan'208";a="190447176"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2021 18:38:31 -0700
IronPort-SDR: dYGt2fpfGKSU3TL2gXXe8FxzXAqH4F4B4wQ8lZHlLLtEEw0S6lmlisiafxpFVoiLldOFaALhIZ
 w+EQm9IgUrCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,303,1610438400"; d="scan'208";a="420220573"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 03 Apr 2021 18:38:29 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lSrie-00083T-Fo; Sun, 04 Apr 2021 01:38:28 +0000
Date: Sun, 04 Apr 2021 09:38:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 47cd5c82df8d5e40bd3959876ce374891e5f949c
Message-ID: <6069188c.VKLnh3qWt4Xs+xXH%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: 47cd5c82df8d5e40bd3959876ce374891e5f949c  serial: pch_uart: fix build error with !CONFIG_DEBUG_FS

elapsed time: 726m

configs tested: 94
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
powerpc                     powernv_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
powerpc                      ppc40x_defconfig
mips                         tb0226_defconfig
ia64                             allmodconfig
m68k                         amcore_defconfig
m68k                       bvme6000_defconfig
arm                       spear13xx_defconfig
powerpc                     ppa8548_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          sdk7780_defconfig
powerpc                     ep8248e_defconfig
powerpc                          g5_defconfig
alpha                            allyesconfig
m68k                             alldefconfig
sh                          r7780mp_defconfig
mips                       rbtx49xx_defconfig
powerpc                           allnoconfig
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
i386                 randconfig-a006-20210403
i386                 randconfig-a003-20210403
i386                 randconfig-a001-20210403
i386                 randconfig-a004-20210403
i386                 randconfig-a002-20210403
i386                 randconfig-a005-20210403
x86_64               randconfig-a014-20210403
x86_64               randconfig-a015-20210403
x86_64               randconfig-a011-20210403
x86_64               randconfig-a013-20210403
x86_64               randconfig-a012-20210403
x86_64               randconfig-a016-20210403
i386                 randconfig-a014-20210403
i386                 randconfig-a011-20210403
i386                 randconfig-a016-20210403
i386                 randconfig-a012-20210403
i386                 randconfig-a013-20210403
i386                 randconfig-a015-20210403
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
x86_64               randconfig-a004-20210403
x86_64               randconfig-a005-20210403
x86_64               randconfig-a003-20210403
x86_64               randconfig-a001-20210403
x86_64               randconfig-a002-20210403
x86_64               randconfig-a006-20210403

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
