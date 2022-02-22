Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C21264C02E6
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Feb 2022 21:14:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F58980BD7;
	Tue, 22 Feb 2022 20:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nKvUpJczIVTg; Tue, 22 Feb 2022 20:14:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2AA480BB9;
	Tue, 22 Feb 2022 20:14:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13AF31BF33C
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 20:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0238780BD7
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 20:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gZ32eojYyvc4 for <devel@linuxdriverproject.org>;
 Tue, 22 Feb 2022 20:14:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0543680BB9
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 20:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645560845; x=1677096845;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1FcaBuTe3HGGE2EVCGWz+j5aD8A4osDDS0Vtd16k9P0=;
 b=dYUgr/m0B5htzAn0pmslkeNi+B/mdKOTNhtlilhCLmiE4jYaQCgNROuZ
 wfd63LF79c3zKTUCglALuVP4iZYOV0oswguUtxDHyX9iyA7OC1aDKZLZT
 Lx1NpqfUStjQtWwBEH1ExftwmoP+kxEqqDlp3j3HdcZYfEerJmazxYVIo
 0ihZyOZ8yNIoFK4wSK5hs2H3UVjTUsyclamipbEQSIDaxOAU9bS1TIl+W
 uor03o7QgCzYKUJivNZK16C5lpeQkJuO8rrGqjEl4LFMucdVd0O1pLKEL
 rOCq3uAK1D6wALY9gmKk6IJTdmzO9RDQ/4tRVw5x0rgGskEgPF2mYBV7L A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232426034"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="232426034"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 12:13:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="532375756"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 22 Feb 2022 12:13:53 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nMbXk-0000Zx-QJ; Tue, 22 Feb 2022 20:13:52 +0000
Date: Wed, 23 Feb 2022 04:13:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 b4ae8c2fb673d2fc60cb8fe645dba4f4db8b0dab
Message-ID: <621543f8.ri7w8TS76WoXcY7u%lkp@intel.com>
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
branch HEAD: b4ae8c2fb673d2fc60cb8fe645dba4f4db8b0dab  driver core: cleanup double words comments

elapsed time: 737m

configs tested: 159
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220221
arm                         lubbock_defconfig
sh                           se7619_defconfig
nios2                         3c120_defconfig
sh                          rsk7203_defconfig
sh                           se7712_defconfig
arm                        multi_v7_defconfig
powerpc                      pasemi_defconfig
sh                          r7780mp_defconfig
arm                        oxnas_v6_defconfig
xtensa                         virt_defconfig
ia64                          tiger_defconfig
arm                          iop32x_defconfig
sh                             shx3_defconfig
sh                 kfr2r09-romimage_defconfig
m68k                        mvme147_defconfig
arm                       aspeed_g5_defconfig
h8300                    h8300h-sim_defconfig
powerpc                      ep88xc_defconfig
powerpc                         wii_defconfig
m68k                            q40_defconfig
sh                           se7724_defconfig
alpha                            alldefconfig
powerpc                     sequoia_defconfig
m68k                       m5475evb_defconfig
m68k                       m5275evb_defconfig
arm                         assabet_defconfig
arm                          pxa3xx_defconfig
powerpc                        warp_defconfig
sh                           sh2007_defconfig
arm                        clps711x_defconfig
arm                            pleb_defconfig
powerpc                       holly_defconfig
sh                   sh7770_generic_defconfig
xtensa                  cadence_csp_defconfig
arc                     haps_hs_smp_defconfig
arm                           stm32_defconfig
microblaze                          defconfig
powerpc                     redwood_defconfig
powerpc                      makalu_defconfig
s390                       zfcpdump_defconfig
powerpc                    sam440ep_defconfig
ia64                             allyesconfig
sh                         ecovec24_defconfig
m68k                             alldefconfig
powerpc                      ppc6xx_defconfig
mips                            gpr_defconfig
mips                         db1xxx_defconfig
arc                           tb10x_defconfig
arm                        mvebu_v7_defconfig
powerpc                        cell_defconfig
powerpc                  iss476-smp_defconfig
m68k                       bvme6000_defconfig
powerpc                   currituck_defconfig
mips                           ci20_defconfig
arm                  randconfig-c002-20220221
arm                  randconfig-c002-20220222
ia64                                defconfig
ia64                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
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
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
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
x86_64               randconfig-a003-20220221
x86_64               randconfig-a002-20220221
x86_64               randconfig-a005-20220221
x86_64               randconfig-a006-20220221
x86_64               randconfig-a001-20220221
x86_64               randconfig-a004-20220221
i386                 randconfig-a002-20220221
i386                 randconfig-a001-20220221
i386                 randconfig-a005-20220221
i386                 randconfig-a003-20220221
i386                 randconfig-a006-20220221
i386                 randconfig-a004-20220221
arc                  randconfig-r043-20220221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc              randconfig-c003-20220222
x86_64                        randconfig-c007
arm                  randconfig-c002-20220222
mips                 randconfig-c004-20220222
i386                          randconfig-c001
riscv                randconfig-c006-20220222
powerpc              randconfig-c003-20220221
x86_64               randconfig-c007-20220221
arm                  randconfig-c002-20220221
mips                 randconfig-c004-20220221
i386                 randconfig-c001-20220221
riscv                randconfig-c006-20220221
mips                          ath79_defconfig
mips                       lemote2f_defconfig
powerpc                     kmeter1_defconfig
arm                        spear3xx_defconfig
arm                         mv78xx0_defconfig
powerpc                     tqm5200_defconfig
powerpc                 mpc836x_mds_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      ppc44x_defconfig
arm64                            allyesconfig
powerpc                     tqm8540_defconfig
x86_64               randconfig-a011-20220221
x86_64               randconfig-a015-20220221
x86_64               randconfig-a014-20220221
x86_64               randconfig-a016-20220221
x86_64               randconfig-a013-20220221
x86_64               randconfig-a012-20220221
i386                 randconfig-a012-20220221
i386                 randconfig-a011-20220221
i386                 randconfig-a014-20220221
i386                 randconfig-a013-20220221
i386                 randconfig-a016-20220221
i386                 randconfig-a015-20220221
hexagon              randconfig-r045-20220221
hexagon              randconfig-r041-20220221
riscv                randconfig-r042-20220221
s390                 randconfig-r044-20220221

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
