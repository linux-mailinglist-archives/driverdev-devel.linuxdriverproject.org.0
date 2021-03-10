Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC30F3348F3
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 21:35:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B233B4ECC2;
	Wed, 10 Mar 2021 20:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2NrY009SEntb; Wed, 10 Mar 2021 20:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 904F64EC80;
	Wed, 10 Mar 2021 20:35:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF4ED1BF859
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 20:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE8A5605F4
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 20:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXPPwqMJxmKr for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 20:35:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2A57605C1
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 20:35:34 +0000 (UTC)
IronPort-SDR: npcLKzC1FJ50TWNUc4CufeP6uIPZZ6LohDOSoKVFJPmiPTrzefYT/vqw4S6POjxTJNCxfYKXcq
 kO4bIGvrdFKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="175664099"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="175664099"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 12:35:33 -0800
IronPort-SDR: 0ZukkZABKSjSuM9B/zlAv+BxVsj0dV9jzxNfjhezNT9re6KQhSEVVHTUw0lgyWiFgYxq5FexAC
 XBCDcLbC1Iuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="410342071"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2021 12:35:31 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lK5YJ-0000MW-60; Wed, 10 Mar 2021 20:35:31 +0000
Date: Thu, 11 Mar 2021 04:34:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 16d7586dccf83785819f5b66f4d20fac9bfcd644
Message-ID: <60492d67.oys+Wk2VgJW7+wUA%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 16d7586dccf83785819f5b66f4d20fac9bfcd644  Revert "staging: wfx: remove unused included header files"

elapsed time: 729m

configs tested: 172
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                         tb0287_defconfig
mips                     cu1830-neo_defconfig
powerpc                 mpc8540_ads_defconfig
mips                           jazz_defconfig
sh                          r7785rp_defconfig
m68k                          hp300_defconfig
powerpc                    adder875_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                      ppc40x_defconfig
mips                      pistachio_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                          landisk_defconfig
sh                          rsk7264_defconfig
sh                          r7780mp_defconfig
m68k                        mvme16x_defconfig
powerpc                    mvme5100_defconfig
arm                             mxs_defconfig
sh                         microdev_defconfig
mips                       capcella_defconfig
arm                        mvebu_v7_defconfig
xtensa                  cadence_csp_defconfig
powerpc                    sam440ep_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7206_defconfig
sh                   sh7724_generic_defconfig
m68k                       m5208evb_defconfig
sh                   sh7770_generic_defconfig
arm                             ezx_defconfig
powerpc                       eiger_defconfig
ia64                            zx1_defconfig
ia64                             allmodconfig
i386                                defconfig
arm                         hackkit_defconfig
sh                               j2_defconfig
mips                        omega2p_defconfig
arm                       versatile_defconfig
sh                        sh7757lcr_defconfig
sh                                  defconfig
powerpc                 mpc832x_rdb_defconfig
arm                       cns3420vb_defconfig
m68k                       m5275evb_defconfig
h8300                               defconfig
mips                        bcm63xx_defconfig
mips                  maltasmvp_eva_defconfig
h8300                    h8300h-sim_defconfig
mips                            gpr_defconfig
powerpc64                        alldefconfig
sh                           se7705_defconfig
powerpc                     asp8347_defconfig
mips                        jmr3927_defconfig
arc                           tb10x_defconfig
s390                             alldefconfig
powerpc                    ge_imp3a_defconfig
mips                     loongson1b_defconfig
h8300                            alldefconfig
arm                       omap2plus_defconfig
arm                      tct_hammer_defconfig
arm                         lubbock_defconfig
arm                            hisi_defconfig
mips                           ip32_defconfig
sh                          lboxre2_defconfig
powerpc                 mpc832x_mds_defconfig
arm                         s3c2410_defconfig
mips                          ath79_defconfig
riscv                               defconfig
arm                            xcep_defconfig
arm                          ep93xx_defconfig
powerpc                     stx_gp3_defconfig
arm                          pxa910_defconfig
powerpc                        icon_defconfig
m68k                        m5307c3_defconfig
powerpc                     tqm5200_defconfig
xtensa                          iss_defconfig
sh                         ap325rxa_defconfig
arm                        multi_v5_defconfig
m68k                        m5272c3_defconfig
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
i386                               tinyconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210308
x86_64               randconfig-a001-20210308
x86_64               randconfig-a004-20210308
x86_64               randconfig-a002-20210308
x86_64               randconfig-a005-20210308
x86_64               randconfig-a003-20210308
i386                 randconfig-a005-20210309
i386                 randconfig-a003-20210309
i386                 randconfig-a002-20210309
i386                 randconfig-a006-20210309
i386                 randconfig-a004-20210309
i386                 randconfig-a001-20210309
i386                 randconfig-a005-20210308
i386                 randconfig-a003-20210308
i386                 randconfig-a002-20210308
i386                 randconfig-a006-20210308
i386                 randconfig-a004-20210308
i386                 randconfig-a001-20210308
x86_64               randconfig-a013-20210309
x86_64               randconfig-a016-20210309
x86_64               randconfig-a015-20210309
x86_64               randconfig-a014-20210309
x86_64               randconfig-a011-20210309
x86_64               randconfig-a012-20210309
x86_64               randconfig-a011-20210310
x86_64               randconfig-a016-20210310
x86_64               randconfig-a013-20210310
x86_64               randconfig-a015-20210310
x86_64               randconfig-a014-20210310
x86_64               randconfig-a012-20210310
i386                 randconfig-a016-20210309
i386                 randconfig-a012-20210309
i386                 randconfig-a014-20210309
i386                 randconfig-a013-20210309
i386                 randconfig-a011-20210309
i386                 randconfig-a015-20210309
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210309
x86_64               randconfig-a001-20210309
x86_64               randconfig-a004-20210309
x86_64               randconfig-a002-20210309
x86_64               randconfig-a005-20210309
x86_64               randconfig-a003-20210309
x86_64               randconfig-a013-20210308
x86_64               randconfig-a016-20210308
x86_64               randconfig-a015-20210308
x86_64               randconfig-a014-20210308
x86_64               randconfig-a011-20210308
x86_64               randconfig-a012-20210308

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
