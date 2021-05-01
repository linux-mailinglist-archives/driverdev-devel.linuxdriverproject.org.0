Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC15370923
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 May 2021 00:06:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6240460A3B;
	Sat,  1 May 2021 22:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gAiTQlwRq-n; Sat,  1 May 2021 22:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33E6E6090B;
	Sat,  1 May 2021 22:06:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45B731BF4D8
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 22:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 424DA608E7
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 22:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mcq2he0GPHV for <devel@linuxdriverproject.org>;
 Sat,  1 May 2021 22:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 605046090B
 for <devel@driverdev.osuosl.org>; Sat,  1 May 2021 22:06:35 +0000 (UTC)
IronPort-SDR: LRbN2lU8p5UZH3wxVadt+WjQKA14AlB11IBbXy8k5eWEvxom4mRR1jpzwF2Z3qIz3qAxyaDHul
 LrILKTw5rT+g==
X-IronPort-AV: E=McAfee;i="6200,9189,9971"; a="197616308"
X-IronPort-AV: E=Sophos;i="5.82,266,1613462400"; d="scan'208";a="197616308"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2021 15:06:34 -0700
IronPort-SDR: I13GQd5LIA9OzBIIETtYJrPMruVA4hesni4U8b5olrmEgx/qYsECzFsz79JSa85cCtKEZ6dv60
 GuUdviaV32Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,266,1613462400"; d="scan'208";a="538191476"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 01 May 2021 15:06:33 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcxku-0008im-B4; Sat, 01 May 2021 22:06:32 +0000
Date: Sun, 02 May 2021 06:05:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 a3dd125ce4331ce3b4756ba01be4b0acf9886a97
Message-ID: <608dd0ac.M54GcYBYoJvexZ2t%lkp@intel.com>
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
branch HEAD: a3dd125ce4331ce3b4756ba01be4b0acf9886a97  serial: pch_uart: fix build error with !CONFIG_DEBUG_FS

elapsed time: 723m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                             allyesconfig
arm                        shmobile_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                     tqm8560_defconfig
m68k                          multi_defconfig
sh                           se7780_defconfig
h8300                            allyesconfig
powerpc                      katmai_defconfig
m68k                       m5275evb_defconfig
arm                      pxa255-idp_defconfig
arm                        cerfcube_defconfig
xtensa                       common_defconfig
arm                          pxa910_defconfig
arm                          imote2_defconfig
powerpc                         ps3_defconfig
powerpc                     tqm8541_defconfig
arm                         axm55xx_defconfig
mips                     decstation_defconfig
arm                        trizeps4_defconfig
mips                           ip27_defconfig
ia64                          tiger_defconfig
mips                        jmr3927_defconfig
m68k                       bvme6000_defconfig
ia64                         bigsur_defconfig
mips                        vocore2_defconfig
parisc                              defconfig
s390                             alldefconfig
mips                          ath79_defconfig
m68k                        stmark2_defconfig
openrisc                  or1klitex_defconfig
mips                          rb532_defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
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
riscv                            allmodconfig
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
