Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2BF4C2298
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 04:47:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 303B241674;
	Thu, 24 Feb 2022 03:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nNqMy1Ot9j6o; Thu, 24 Feb 2022 03:47:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AECFA4166F;
	Thu, 24 Feb 2022 03:47:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 021C41BF2A6
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 03:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E45CD41671
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 03:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bORu2UNwr5Gh for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 03:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 125A14166F
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 03:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645674423; x=1677210423;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PVLyxufVHlds0Oj1ISNFvyoL9pkVwerVB2HA7QX5pNQ=;
 b=Ktkl26rs7Fry6UDmm6KH+G9hngbBJdBHG3Gs4VkKwqHOOTq2SN82E4uN
 v7B8BBDPFKIxyPcLVRIIIZga8imTKmUnPylDSYrVt93QCowfn6j7C/MzO
 iqBGAIovUh2tp2EusjNNfPrANh6dXpOwqzWk5XPbw3HYprD8bGg9y6D8D
 3bdodz8n/9K8sPulJ0SzD8vS0Q+W7QM+l+IUFO/jktzqwgIl3Vv+mBH6Y
 0rXcBm4MNsZ9a07DgEUfbmgGlf//9Gpcne9Kaqn2VB0LYLn8gcFJd5uI0
 wDMnRdF/p9rvhooRpqcJXETo2nd18tCfr3PZRE7mJf+nwJx4CzHAaHJBT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="250970977"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="250970977"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 19:47:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="591948568"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 23 Feb 2022 19:47:01 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nN55o-0002Dh-TE; Thu, 24 Feb 2022 03:47:00 +0000
Date: Thu, 24 Feb 2022 11:46:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f2eb478f2f322217aa642e11c1cc011f99c797e6
Message-ID: <6216ff78.Sz7RoyWgc8nUjpWw%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: f2eb478f2f322217aa642e11c1cc011f99c797e6  kernfs: move struct kernfs_root out of the public view.

elapsed time: 724m

configs tested: 119
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                      bamboo_defconfig
arm                            pleb_defconfig
sh                          sdk7780_defconfig
sh                             sh03_defconfig
openrisc                    or1ksim_defconfig
arm                             ezx_defconfig
arc                        nsimosci_defconfig
arc                        nsim_700_defconfig
powerpc                     pq2fads_defconfig
powerpc                    klondike_defconfig
sh                          rsk7269_defconfig
mips                           jazz_defconfig
powerpc                      pasemi_defconfig
powerpc                     redwood_defconfig
sh                     magicpanelr2_defconfig
mips                           xway_defconfig
sh                          rsk7201_defconfig
sh                        sh7785lcr_defconfig
sh                        sh7757lcr_defconfig
arm                           viper_defconfig
nds32                               defconfig
powerpc                 linkstation_defconfig
sh                   sh7770_generic_defconfig
arm                  randconfig-c002-20220223
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
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
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a003
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220223
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
x86_64                                  kexec

clang tested configs:
powerpc              randconfig-c003-20220223
x86_64                        randconfig-c007
arm                  randconfig-c002-20220223
mips                 randconfig-c004-20220223
i386                          randconfig-c001
riscv                randconfig-c006-20220223
powerpc                      obs600_defconfig
powerpc                     ppa8548_defconfig
arm                          imote2_defconfig
mips                           mtx1_defconfig
arm                    vt8500_v6_v7_defconfig
arm                        magician_defconfig
mips                          ath79_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220223
hexagon              randconfig-r045-20220223
s390                 randconfig-r044-20220223
riscv                randconfig-r042-20220223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
