Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0173932703C
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Feb 2021 05:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD8AF83FF7;
	Sun, 28 Feb 2021 04:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRkuVKimopKx; Sun, 28 Feb 2021 04:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0826683FF0;
	Sun, 28 Feb 2021 04:15:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5545F1BF3D7
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 04:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44F5B83FF0
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 04:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzyzP9rB5eAF for <devel@linuxdriverproject.org>;
 Sun, 28 Feb 2021 04:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51CE183FEC
 for <devel@driverdev.osuosl.org>; Sun, 28 Feb 2021 04:14:55 +0000 (UTC)
IronPort-SDR: 82M/r1g0aO3kv14NHMldrF9uIOWKSdp6pmn03NizKXVAVpFcPdUaaBeiPYCn1Rh46E1k0I9CJ3
 jx2nnYSb0/cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="185516250"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; d="scan'208";a="185516250"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2021 20:14:54 -0800
IronPort-SDR: +by8Om6yAD8PzFRpq42pEK47doYv9v5c/8HY8HazyB/9KKYK8934yxz6ipMtSEnSrFHUf7gshD
 k65HLVbRajyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; d="scan'208";a="434956751"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 27 Feb 2021 20:14:32 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lGDTO-00040G-ST; Sun, 28 Feb 2021 04:14:26 +0000
Date: Sun, 28 Feb 2021 12:14:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 c7edeca1bc4ae27d8cf08cd6bd781348acbdce5d
Message-ID: <603b188a.50/9dyexxzHMEqag%lkp@intel.com>
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
branch HEAD: c7edeca1bc4ae27d8cf08cd6bd781348acbdce5d  x86/tools/relocs: add __printf attribute to die()

elapsed time: 720m

configs tested: 104
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          rsk7269_defconfig
xtensa                    xip_kc705_defconfig
mips                            ar7_defconfig
sh                               j2_defconfig
m68k                        mvme147_defconfig
powerpc                     kilauea_defconfig
mips                        workpad_defconfig
alpha                            alldefconfig
arc                     haps_hs_smp_defconfig
arm                         at91_dt_defconfig
arm                        oxnas_v6_defconfig
sh                          lboxre2_defconfig
sh                           se7705_defconfig
mips                      malta_kvm_defconfig
s390                             allmodconfig
arm                         mv78xx0_defconfig
sh                            hp6xx_defconfig
openrisc                  or1klitex_defconfig
arm                            qcom_defconfig
arm                           sama5_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                      pmac32_defconfig
mips                        vocore2_defconfig
ia64                             allmodconfig
m68k                        m5272c3_defconfig
arm                         socfpga_defconfig
arc                      axs103_smp_defconfig
arm                         s5pv210_defconfig
arm                        magician_defconfig
microblaze                      mmu_defconfig
ia64                                defconfig
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
x86_64               randconfig-a002-20210228
x86_64               randconfig-a001-20210228
x86_64               randconfig-a003-20210228
x86_64               randconfig-a005-20210228
x86_64               randconfig-a006-20210228
x86_64               randconfig-a004-20210228
i386                 randconfig-a006-20210228
i386                 randconfig-a005-20210228
i386                 randconfig-a004-20210228
i386                 randconfig-a003-20210228
i386                 randconfig-a001-20210228
i386                 randconfig-a002-20210228
i386                 randconfig-a013-20210228
i386                 randconfig-a012-20210228
i386                 randconfig-a014-20210228
i386                 randconfig-a011-20210228
i386                 randconfig-a015-20210228
i386                 randconfig-a016-20210228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210228
x86_64               randconfig-a011-20210228
x86_64               randconfig-a012-20210228
x86_64               randconfig-a016-20210228
x86_64               randconfig-a014-20210228
x86_64               randconfig-a013-20210228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
