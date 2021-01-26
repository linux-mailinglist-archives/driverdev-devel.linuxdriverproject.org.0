Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE67D304D3D
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 00:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFC7D8526D;
	Tue, 26 Jan 2021 23:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxZG5xS5Esdr; Tue, 26 Jan 2021 23:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FCDC84FD5;
	Tue, 26 Jan 2021 23:07:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D71F11BF59C
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 23:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3D1684FD5
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 23:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrKDGvVFlGN5 for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 23:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1548084EF0
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 23:07:16 +0000 (UTC)
IronPort-SDR: mNROYMAAht0pFpT25t7f1Hk8NjMAjRudsI+Q54G/PuelrMW8W8IssaV9qlcMIyYfmmsidRA8b6
 NUR1n+wqQYEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="264809111"
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="264809111"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 15:07:15 -0800
IronPort-SDR: jnKAjIWZavkbYNLT3bej+kt+IILDV6PLLVmDgZHhd7N7rVfoAdRXw5Ic/Lz1FCJCERA3YYD3dj
 Xwy0IaITCCyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="388043843"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 15:07:14 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l4XQX-000180-D8; Tue, 26 Jan 2021 23:07:13 +0000
Date: Wed, 27 Jan 2021 07:06:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 4104ca776ba38d81bd6610256d3b0d7e6a058067
Message-ID: <6010a072.bsrBJ76g8lVejTqj%lkp@intel.com>
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
branch HEAD: 4104ca776ba38d81bd6610256d3b0d7e6a058067  of: property: Add fw_devlink support for interrupts

elapsed time: 724m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           ip27_defconfig
powerpc                     tqm5200_defconfig
sh                            shmin_defconfig
arm                         s3c2410_defconfig
sh                            migor_defconfig
sh                               alldefconfig
arm                           sama5_defconfig
sh                        dreamcast_defconfig
mips                         cobalt_defconfig
s390                          debug_defconfig
arm                          moxart_defconfig
mips                           jazz_defconfig
arm                           omap1_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                         vf610m4_defconfig
m68k                            mac_defconfig
powerpc                        cell_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                    adder875_defconfig
m68k                        mvme16x_defconfig
mips                           ci20_defconfig
ia64                                defconfig
riscv                            allyesconfig
xtensa                    xip_kc705_defconfig
arm                       imx_v6_v7_defconfig
arm                        realview_defconfig
alpha                               defconfig
arm                       cns3420vb_defconfig
um                            kunit_defconfig
sh                        edosk7705_defconfig
nios2                         10m50_defconfig
sh                           se7751_defconfig
powerpc                  storcenter_defconfig
powerpc                     tqm8555_defconfig
sh                             shx3_defconfig
h8300                            alldefconfig
arm                             pxa_defconfig
sh                          landisk_defconfig
sh                           se7712_defconfig
sparc                            alldefconfig
powerpc                      bamboo_defconfig
arm                         assabet_defconfig
mips                     cu1830-neo_defconfig
arc                        vdk_hs38_defconfig
powerpc                    mvme5100_defconfig
mips                        nlm_xlr_defconfig
powerpc                 canyonlands_defconfig
ia64                             alldefconfig
arm                            qcom_defconfig
arm                        shmobile_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                     pseries_defconfig
arm                          lpd270_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
i386                 randconfig-a001-20210126
i386                 randconfig-a002-20210126
i386                 randconfig-a004-20210126
i386                 randconfig-a006-20210126
i386                 randconfig-a003-20210126
i386                 randconfig-a005-20210126
x86_64               randconfig-a012-20210126
x86_64               randconfig-a016-20210126
x86_64               randconfig-a015-20210126
x86_64               randconfig-a011-20210126
x86_64               randconfig-a013-20210126
x86_64               randconfig-a014-20210126
i386                 randconfig-a013-20210126
i386                 randconfig-a011-20210126
i386                 randconfig-a012-20210126
i386                 randconfig-a015-20210126
i386                 randconfig-a014-20210126
i386                 randconfig-a016-20210126
riscv                    nommu_k210_defconfig
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
x86_64               randconfig-a003-20210126
x86_64               randconfig-a002-20210126
x86_64               randconfig-a001-20210126
x86_64               randconfig-a005-20210126
x86_64               randconfig-a006-20210126
x86_64               randconfig-a004-20210126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
