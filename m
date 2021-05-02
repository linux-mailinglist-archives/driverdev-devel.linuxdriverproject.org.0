Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC17370F5A
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 May 2021 23:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F6A260A3E;
	Sun,  2 May 2021 21:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bdUEiNr0Pwz1; Sun,  2 May 2021 21:28:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 798E460604;
	Sun,  2 May 2021 21:28:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10CE21BF389
 for <devel@linuxdriverproject.org>; Sun,  2 May 2021 21:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D70B84563
 for <devel@linuxdriverproject.org>; Sun,  2 May 2021 21:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2dYtSWA9n_U for <devel@linuxdriverproject.org>;
 Sun,  2 May 2021 21:27:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3023984577
 for <devel@driverdev.osuosl.org>; Sun,  2 May 2021 21:27:42 +0000 (UTC)
IronPort-SDR: VXwJy5Lo/Fjf7i1JpiF6S0awcXRb+PqTW4PMQCGeQUvAsBRpiamGM+vWu9TlGrkA3TGHe4nMz9
 VAgVhO7kdyEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="261577116"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="261577116"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2021 14:27:41 -0700
IronPort-SDR: giwWSIqopGAyDfYsSjKHU+2/+0OXFwPr0nesLfv/kVLThvjFTyAwFPbGdpKHVkA8RrPfvVCdHy
 jJMjFotujk9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="426902764"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 02 May 2021 14:27:40 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ldJcp-00092I-DE; Sun, 02 May 2021 21:27:39 +0000
Date: Mon, 03 May 2021 05:27:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 7ab9c2b89422e03ba56b3ce58b96dd1b4c46a854
Message-ID: <608f192e.2PMBGR1m2FOQw43x%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 7ab9c2b89422e03ba56b3ce58b96dd1b4c46a854  debugfs: remove return value of debugfs_create_bool()

elapsed time: 721m

configs tested: 95
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
openrisc                         alldefconfig
powerpc                      walnut_defconfig
sh                   secureedge5410_defconfig
arm                             ezx_defconfig
powerpc                    socrates_defconfig
sh                            titan_defconfig
powerpc                   lite5200b_defconfig
mips                        jmr3927_defconfig
powerpc                      cm5200_defconfig
sparc64                          alldefconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                     kmeter1_defconfig
sh                          polaris_defconfig
sh                   sh7724_generic_defconfig
arc                    vdk_hs38_smp_defconfig
sh                           se7343_defconfig
arm                  colibri_pxa270_defconfig
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
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
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
