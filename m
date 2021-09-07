Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73751402EA5
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Sep 2021 21:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA03482B34;
	Tue,  7 Sep 2021 19:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hV8BhwMca8rb; Tue,  7 Sep 2021 19:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0501982AC8;
	Tue,  7 Sep 2021 19:01:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0177C1BF35F
 for <devel@linuxdriverproject.org>; Tue,  7 Sep 2021 19:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E51EC60747
 for <devel@linuxdriverproject.org>; Tue,  7 Sep 2021 19:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cr3FqlDphBJV for <devel@linuxdriverproject.org>;
 Tue,  7 Sep 2021 19:00:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F9BF606EC
 for <devel@driverdev.osuosl.org>; Tue,  7 Sep 2021 19:00:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="217133193"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="217133193"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 12:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="465054789"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 07 Sep 2021 12:00:52 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mNgKx-0001D2-D9; Tue, 07 Sep 2021 19:00:51 +0000
Date: Wed, 08 Sep 2021 03:00:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 c7a50f2c03920084e080227ca2d081260c85b248
Message-ID: <6137b6c9.kcLvzEXFT1N8+NlN%lkp@intel.com>
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
branch HEAD: c7a50f2c03920084e080227ca2d081260c85b248  fs: make d_path-like functions all have unsigned size

elapsed time: 733m

configs tested: 142
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210906
mips                           ip28_defconfig
powerpc                        icon_defconfig
mips                         rt305x_defconfig
sh                           se7722_defconfig
mips                           jazz_defconfig
powerpc                     stx_gp3_defconfig
mips                        bcm63xx_defconfig
nios2                            alldefconfig
powerpc                 mpc8560_ads_defconfig
powerpc                      cm5200_defconfig
mips                        qi_lb60_defconfig
powerpc                           allnoconfig
powerpc                     redwood_defconfig
mips                     decstation_defconfig
arm                            mps2_defconfig
arm64                            alldefconfig
m68k                         apollo_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                           se7721_defconfig
alpha                               defconfig
arm                            zeus_defconfig
arm                            pleb_defconfig
arm                           h5000_defconfig
microblaze                      mmu_defconfig
powerpc                 mpc834x_itx_defconfig
mips                           ip27_defconfig
sh                        sh7763rdp_defconfig
arm                          badge4_defconfig
sh                   secureedge5410_defconfig
mips                      maltasmvp_defconfig
powerpc                    sam440ep_defconfig
sh                           se7751_defconfig
powerpc                     mpc83xx_defconfig
arm                          ixp4xx_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                               j2_defconfig
sparc                       sparc32_defconfig
arm                        multi_v7_defconfig
powerpc                 mpc836x_mds_defconfig
alpha                            allyesconfig
mips                         tb0287_defconfig
powerpc                     tqm8541_defconfig
alpha                            alldefconfig
sh                         apsh4a3a_defconfig
mips                    maltaup_xpa_defconfig
powerpc                    gamecube_defconfig
sh                          rsk7264_defconfig
mips                      fuloong2e_defconfig
sh                            shmin_defconfig
mips                           ip22_defconfig
m68k                       m5475evb_defconfig
sh                           se7724_defconfig
powerpc                      bamboo_defconfig
mips                        nlm_xlr_defconfig
powerpc                       maple_defconfig
powerpc                   bluestone_defconfig
sh                          rsk7203_defconfig
ia64                        generic_defconfig
nios2                         10m50_defconfig
powerpc                       ebony_defconfig
powerpc64                           defconfig
powerpc                     taishan_defconfig
sh                           se7619_defconfig
arm                         hackkit_defconfig
arm                  randconfig-c002-20210906
arm                  randconfig-c002-20210907
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
nios2                            allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a006-20210906
x86_64               randconfig-a004-20210906
x86_64               randconfig-a003-20210906
x86_64               randconfig-a005-20210906
x86_64               randconfig-a001-20210906
x86_64               randconfig-a002-20210906
arc                  randconfig-r043-20210906
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
s390                 randconfig-c005-20210906
mips                 randconfig-c004-20210906
powerpc              randconfig-c003-20210906
i386                 randconfig-c001-20210906
arm                  randconfig-c002-20210906
s390                 randconfig-c005-20210907
mips                 randconfig-c004-20210907
powerpc              randconfig-c003-20210907
arm                  randconfig-c002-20210907
riscv                randconfig-c006-20210907
x86_64               randconfig-a016-20210906
x86_64               randconfig-a011-20210906
x86_64               randconfig-a012-20210906
x86_64               randconfig-a015-20210906
x86_64               randconfig-a014-20210906
x86_64               randconfig-a013-20210906
i386                 randconfig-a011-20210906
i386                 randconfig-a016-20210906
riscv                randconfig-r042-20210906
hexagon              randconfig-r045-20210906
s390                 randconfig-r044-20210906
hexagon              randconfig-r041-20210906

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
