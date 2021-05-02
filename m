Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3178F3709AA
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 May 2021 04:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA70A6FAA0;
	Sun,  2 May 2021 02:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0cGImhMxqks; Sun,  2 May 2021 02:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C5566FA88;
	Sun,  2 May 2021 02:25:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B06D1BF396
 for <devel@linuxdriverproject.org>; Sun,  2 May 2021 02:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AA63852D6
 for <devel@linuxdriverproject.org>; Sun,  2 May 2021 02:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLGCdvAjNP98 for <devel@linuxdriverproject.org>;
 Sun,  2 May 2021 02:25:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FFAD85294
 for <devel@driverdev.osuosl.org>; Sun,  2 May 2021 02:25:46 +0000 (UTC)
IronPort-SDR: v9p9hk1QHKALaQvZlqutHoUF7p8I11H4SvHj4j4XdR0slmPDEggHe70JG6egFw8gUB8nLnTR96
 75g/f0h6UYTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9971"; a="185008214"
X-IronPort-AV: E=Sophos;i="5.82,266,1613462400"; d="scan'208";a="185008214"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2021 19:25:44 -0700
IronPort-SDR: +z4xHIv6g/lkd2UFmcc5tV33N7JzbS6L4wDg3Pw/TcsT2xTHKvZazMRc8w7QdrbgQky0pddL+H
 zWkVi3ZYOKgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,266,1613462400"; d="scan'208";a="529397228"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 01 May 2021 19:25:43 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ld1ni-0008mb-HK; Sun, 02 May 2021 02:25:42 +0000
Date: Sun, 02 May 2021 10:25:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 d0d991584bf690a1febe20c2d5ce1cdf403eb02d
Message-ID: <608e0d99.t7F6PKfcX4huseF0%lkp@intel.com>
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
branch HEAD: d0d991584bf690a1febe20c2d5ce1cdf403eb02d  ethernet: sun: niu: fix missing checks of niu_pci_eeprom_read()

elapsed time: 723m

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
riscv                            allmodconfig
mips                     loongson1b_defconfig
powerpc                     rainier_defconfig
mips                       capcella_defconfig
arm                  colibri_pxa270_defconfig
arm                        clps711x_defconfig
sh                           se7724_defconfig
arm                            mmp2_defconfig
arm                     am200epdkit_defconfig
arm                       versatile_defconfig
nds32                               defconfig
powerpc                     tqm5200_defconfig
arm                             mxs_defconfig
arm                             rpc_defconfig
m68k                       bvme6000_defconfig
mips                          ath25_defconfig
sh                          r7780mp_defconfig
mips                      maltaaprp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
x86_64               randconfig-a001-20210501
x86_64               randconfig-a005-20210501
x86_64               randconfig-a003-20210501
x86_64               randconfig-a002-20210501
x86_64               randconfig-a006-20210501
x86_64               randconfig-a004-20210501
i386                 randconfig-a003-20210501
i386                 randconfig-a006-20210501
i386                 randconfig-a001-20210501
i386                 randconfig-a005-20210501
i386                 randconfig-a004-20210501
i386                 randconfig-a002-20210501
i386                 randconfig-a013-20210501
i386                 randconfig-a015-20210501
i386                 randconfig-a016-20210501
i386                 randconfig-a014-20210501
i386                 randconfig-a011-20210501
i386                 randconfig-a012-20210501
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
x86_64               randconfig-a014-20210501
x86_64               randconfig-a015-20210501
x86_64               randconfig-a012-20210501
x86_64               randconfig-a011-20210501
x86_64               randconfig-a013-20210501
x86_64               randconfig-a016-20210501

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
