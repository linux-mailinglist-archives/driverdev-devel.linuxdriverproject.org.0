Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D6E48C4D1
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 14:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7976584B75;
	Wed, 12 Jan 2022 13:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1JdKVdgyR-E; Wed, 12 Jan 2022 13:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5FD484B6E;
	Wed, 12 Jan 2022 13:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEC751BF3DC
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 13:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEEB242911
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 13:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xqe5EfsnOJRm for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 13:28:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16C9740354
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 13:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641994130; x=1673530130;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RLFZnriMbRFKA9peFlJacDGRtM0Nxx/enWVg8jlBOao=;
 b=Uu3Ue9i6bjRalYKtW87wxr26p7FtO9ApdroY8nMBbbgOswk9kRn6yof/
 v7F8ynY3pasY6UyHTIgy2M5j/PiC0dHmOiiVOsqqPgaJaIgqAZDF6kx/2
 Ud/ur96Hzwa5rdSR1s5KvmfXFM9RjupJmTROL2zRDRjWkw+bvrryKU+YY
 3NpG6baZ1t5IgPdi/15RBvmGWzQwVj3409mSPGDvABce3wRNesMykwyjc
 t9//fj5FkzlN29Rgl2ZIqV3sIFj/elZW596SyVszF+qfEPsjY5gcAsf5e
 m6Mo2hohKx3Gh3nlUxKOQvVm9iteACngqlt4sUiuFyq1aLfcKnRI71L8K Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="330078073"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="330078073"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 05:28:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474905500"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 12 Jan 2022 05:28:47 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n7dgF-0005r9-40; Wed, 12 Jan 2022 13:28:47 +0000
Date: Wed, 12 Jan 2022 21:28:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:module_ns] BUILD SUCCESS
 132187dccc9b217ffb129254f07e90fd30375a83
Message-ID: <61ded760.QXjFeDh0CU9l7vm+%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git module_ns
branch HEAD: 132187dccc9b217ffb129254f07e90fd30375a83  module.h: allow #define strings to work with MODULE_IMPORT_NS

elapsed time: 5120m

configs tested: 146
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
s390                          debug_defconfig
sh                          rsk7203_defconfig
m68k                            q40_defconfig
arm                            lart_defconfig
sh                             sh03_defconfig
powerpc                 mpc837x_mds_defconfig
um                                  defconfig
mips                      fuloong2e_defconfig
csky                             alldefconfig
powerpc                       ppc64_defconfig
powerpc                     taishan_defconfig
sh                           se7780_defconfig
nds32                            alldefconfig
arc                          axs101_defconfig
arc                     nsimosci_hs_defconfig
sparc64                             defconfig
sh                          kfr2r09_defconfig
sh                     sh7710voipgw_defconfig
h8300                       h8s-sim_defconfig
sh                           se7722_defconfig
openrisc                            defconfig
sh                            shmin_defconfig
powerpc                      ppc40x_defconfig
sh                           se7750_defconfig
arm                           u8500_defconfig
mips                             allmodconfig
microblaze                      mmu_defconfig
arm                         axm55xx_defconfig
s390                             allyesconfig
arm                  randconfig-c002-20220111
arm                  randconfig-c002-20220109
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20220109
i386                 randconfig-a005-20220109
i386                 randconfig-a006-20220109
i386                 randconfig-a004-20220109
i386                 randconfig-a001-20220109
i386                 randconfig-a002-20220109
x86_64               randconfig-a001-20220109
x86_64               randconfig-a004-20220109
x86_64               randconfig-a006-20220109
x86_64               randconfig-a003-20220109
x86_64               randconfig-a002-20220109
x86_64               randconfig-a005-20220109
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220111
arc                  randconfig-r043-20220111
s390                 randconfig-r044-20220111
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
x86_64                              defconfig
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
arm                  randconfig-c002-20220109
mips                 randconfig-c004-20220109
i386                 randconfig-c001-20220109
s390                 randconfig-c005-20220109
powerpc              randconfig-c003-20220109
x86_64               randconfig-c007-20220109
riscv                randconfig-c006-20220109
arm                  randconfig-c002-20220111
x86_64                        randconfig-c007
riscv                randconfig-c006-20220111
powerpc              randconfig-c003-20220111
i386                          randconfig-c001
mips                 randconfig-c004-20220111
s390                 randconfig-c005-20220111
riscv                          rv32_defconfig
arm                          imote2_defconfig
arm                         shannon_defconfig
powerpc                   bluestone_defconfig
arm                                 defconfig
powerpc                   lite5200b_defconfig
powerpc                     ppa8548_defconfig
mips                          rm200_defconfig
powerpc                      acadia_defconfig
hexagon                          alldefconfig
powerpc                      pmac32_defconfig
mips                           ip22_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a012-20220109
x86_64               randconfig-a014-20220109
x86_64               randconfig-a013-20220109
x86_64               randconfig-a011-20220109
x86_64               randconfig-a016-20220109
x86_64               randconfig-a015-20220109
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a012-20220109
i386                 randconfig-a015-20220109
i386                 randconfig-a014-20220109
i386                 randconfig-a011-20220109
i386                 randconfig-a013-20220109
i386                 randconfig-a016-20220109
hexagon              randconfig-r041-20220109
riscv                randconfig-r042-20220109
hexagon              randconfig-r045-20220109

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
