Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD59302F4E
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Jan 2021 23:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8566487205;
	Mon, 25 Jan 2021 22:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbM55EiGIbfE; Mon, 25 Jan 2021 22:44:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34C7086A00;
	Mon, 25 Jan 2021 22:44:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B83471BF3A8
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 22:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B4AD385DCF
 for <devel@linuxdriverproject.org>; Mon, 25 Jan 2021 22:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rc0GAjZxBsOd for <devel@linuxdriverproject.org>;
 Mon, 25 Jan 2021 22:44:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC86885A22
 for <devel@driverdev.osuosl.org>; Mon, 25 Jan 2021 22:44:52 +0000 (UTC)
IronPort-SDR: fD5d0XqTXZeUbHlt9RutKw5ptia7W6psk3YBV6uV7ypu+vMSfIVZUn5PfqcjUkuva865CgCp/m
 ldLtgu9h3JEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="177246124"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="177246124"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 14:44:52 -0800
IronPort-SDR: F12G7D0Rxnmv/5Gt4FeaEJyWlRQTZA9kMbwnlEKGdAtUmBuxARW5DHMGhUupnmS5ZnQm7WPL41
 9nVqKTenphNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="504320350"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 25 Jan 2021 14:44:51 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l4AbK-0000Qn-EO; Mon, 25 Jan 2021 22:44:50 +0000
Date: Tue, 26 Jan 2021 06:43:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 ec52736c35f29ed96a45e641dd6aad61bc9cb6f7
Message-ID: <600f49ac.YEkaAQXHUjH89jl/%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: ec52736c35f29ed96a45e641dd6aad61bc9cb6f7  Merge 5.11-rc5 into staging-next

elapsed time: 722m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sparc                               defconfig
arm                       aspeed_g5_defconfig
riscv                            alldefconfig
arm                          imote2_defconfig
powerpc                     redwood_defconfig
arm                        shmobile_defconfig
m68k                          sun3x_defconfig
arm                         s5pv210_defconfig
parisc                           alldefconfig
mips                           jazz_defconfig
powerpc                     taishan_defconfig
xtensa                  audio_kc705_defconfig
arm                         vf610m4_defconfig
arm                        magician_defconfig
powerpc                 mpc832x_mds_defconfig
arm                          pcm027_defconfig
mips                        qi_lb60_defconfig
mips                  decstation_64_defconfig
mips                         tb0287_defconfig
sh                      rts7751r2d1_defconfig
mips                         tb0219_defconfig
mips                           ip27_defconfig
m68k                         apollo_defconfig
arc                        nsimosci_defconfig
arm                         hackkit_defconfig
sparc                            allyesconfig
sh                               j2_defconfig
powerpc                        fsp2_defconfig
mips                       rbtx49xx_defconfig
mips                        bcm47xx_defconfig
s390                             allyesconfig
powerpc                       holly_defconfig
arm                        keystone_defconfig
arm                            u300_defconfig
powerpc                     ppa8548_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      ep88xc_defconfig
i386                                defconfig
h8300                    h8300h-sim_defconfig
arm                       multi_v4t_defconfig
nios2                            allyesconfig
sh                   sh7770_generic_defconfig
sh                         ecovec24_defconfig
sh                 kfr2r09-romimage_defconfig
arm                            mmp2_defconfig
ia64                      gensparse_defconfig
arm                              alldefconfig
mips                   sb1250_swarm_defconfig
arm                         lpc18xx_defconfig
mips                         db1xxx_defconfig
sh                        sh7763rdp_defconfig
powerpc                     tqm8555_defconfig
powerpc                    amigaone_defconfig
mips                      fuloong2e_defconfig
arm                         nhk8815_defconfig
um                           x86_64_defconfig
sh                           se7712_defconfig
sparc                       sparc32_defconfig
arm                          ixp4xx_defconfig
mips                  maltasmvp_eva_defconfig
arc                            hsdk_defconfig
powerpc                     mpc83xx_defconfig
m68k                            q40_defconfig
mips                malta_qemu_32r6_defconfig
arm                        multi_v7_defconfig
ia64                             allmodconfig
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                               tinyconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210125
x86_64               randconfig-a002-20210125
x86_64               randconfig-a001-20210125
x86_64               randconfig-a005-20210125
x86_64               randconfig-a006-20210125
x86_64               randconfig-a004-20210125
i386                 randconfig-a001-20210125
i386                 randconfig-a002-20210125
i386                 randconfig-a004-20210125
i386                 randconfig-a006-20210125
i386                 randconfig-a005-20210125
i386                 randconfig-a003-20210125
x86_64               randconfig-a012-20210126
x86_64               randconfig-a016-20210126
x86_64               randconfig-a015-20210126
x86_64               randconfig-a011-20210126
x86_64               randconfig-a013-20210126
x86_64               randconfig-a014-20210126
i386                 randconfig-a013-20210125
i386                 randconfig-a011-20210125
i386                 randconfig-a012-20210125
i386                 randconfig-a015-20210125
i386                 randconfig-a014-20210125
i386                 randconfig-a016-20210125
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
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
x86_64               randconfig-a012-20210125
x86_64               randconfig-a016-20210125
x86_64               randconfig-a015-20210125
x86_64               randconfig-a011-20210125
x86_64               randconfig-a013-20210125
x86_64               randconfig-a014-20210125

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
