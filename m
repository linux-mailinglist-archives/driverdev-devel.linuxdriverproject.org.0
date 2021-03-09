Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D47133313E
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 22:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B98F82DF4;
	Tue,  9 Mar 2021 21:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MnGPEy8cr_9h; Tue,  9 Mar 2021 21:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4375682C5E;
	Tue,  9 Mar 2021 21:49:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26A1C1BF287
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 21:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 231BD83F84
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 21:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 81BfUMX1vZfr for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 21:48:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D73883F66
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 21:48:50 +0000 (UTC)
IronPort-SDR: Lvc5oz6KFLnnP6iqlWLOS4vxv82H0LWyJU1RpGajbhS8SQkQz/Az/pIUf0gEs8g7Ed0Q/dBFTb
 WERD87XCbCjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="273362784"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="273362784"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 13:48:47 -0800
IronPort-SDR: jaLxuCETqQ6D2t7wIh2dmWWcyotCanc/kGKB7HKUSDjp8FLsYa7q+duI8DUPX1IrYj0nOVJS9x
 uIwiB74X3bMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="447657561"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 09 Mar 2021 13:48:44 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lJkDb-0001qP-Lc; Tue, 09 Mar 2021 21:48:43 +0000
Date: Wed, 10 Mar 2021 05:48:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 e44ad3f1815837c681988aeeb899dcfab5e033ca
Message-ID: <6047ed2b.7vCWRnPV1A9cGvGz%lkp@intel.com>
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
branch HEAD: e44ad3f1815837c681988aeeb899dcfab5e033ca  Merge v5.12-rc1 into staging-next

elapsed time: 724m

configs tested: 153
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                        workpad_defconfig
sh                           se7724_defconfig
mips                         bigsur_defconfig
mips                          ath25_defconfig
m68k                           sun3_defconfig
powerpc                  mpc866_ads_defconfig
mips                           gcw0_defconfig
arm                            lart_defconfig
sh                        edosk7705_defconfig
powerpc                 xes_mpc85xx_defconfig
sh                               alldefconfig
powerpc64                           defconfig
sh                        edosk7760_defconfig
mips                        jmr3927_defconfig
arm                            hisi_defconfig
powerpc                     powernv_defconfig
m68k                         apollo_defconfig
arc                    vdk_hs38_smp_defconfig
sparc                       sparc32_defconfig
mips                            gpr_defconfig
arm                          pxa3xx_defconfig
m68k                             alldefconfig
arm                          moxart_defconfig
powerpc                  storcenter_defconfig
arm                             ezx_defconfig
mips                       lemote2f_defconfig
powerpc                     tqm8541_defconfig
powerpc                     pq2fads_defconfig
arm                           stm32_defconfig
mips                 decstation_r4k_defconfig
powerpc                    amigaone_defconfig
powerpc                    mvme5100_defconfig
arc                            hsdk_defconfig
arm                        multi_v5_defconfig
sh                              ul2_defconfig
ia64                             allmodconfig
mips                         db1xxx_defconfig
ia64                          tiger_defconfig
mips                        qi_lb60_defconfig
arm                      pxa255-idp_defconfig
riscv             nommu_k210_sdcard_defconfig
xtensa                          iss_defconfig
powerpc                     kmeter1_defconfig
sh                   rts7751r2dplus_defconfig
arm                             mxs_defconfig
arm                        cerfcube_defconfig
sh                           se7343_defconfig
sh                        sh7785lcr_defconfig
arm                            qcom_defconfig
x86_64                           allyesconfig
arm                        realview_defconfig
arm                  colibri_pxa270_defconfig
arc                     nsimosci_hs_defconfig
arm                         nhk8815_defconfig
arc                          axs101_defconfig
powerpc                    ge_imp3a_defconfig
arm                     eseries_pxa_defconfig
mips                           jazz_defconfig
ia64                        generic_defconfig
mips                         tb0226_defconfig
powerpc                      pcm030_defconfig
um                           x86_64_defconfig
mips                       rbtx49xx_defconfig
arm                      integrator_defconfig
mips                     cu1830-neo_defconfig
sh                           se7722_defconfig
nios2                         3c120_defconfig
powerpc                 linkstation_defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210309
i386                 randconfig-a003-20210309
i386                 randconfig-a002-20210309
i386                 randconfig-a006-20210309
i386                 randconfig-a004-20210309
i386                 randconfig-a001-20210309
x86_64               randconfig-a013-20210309
x86_64               randconfig-a016-20210309
x86_64               randconfig-a015-20210309
x86_64               randconfig-a014-20210309
x86_64               randconfig-a011-20210309
x86_64               randconfig-a012-20210309
i386                 randconfig-a016-20210309
i386                 randconfig-a012-20210309
i386                 randconfig-a014-20210309
i386                 randconfig-a013-20210309
i386                 randconfig-a011-20210309
i386                 randconfig-a015-20210309
x86_64               randconfig-a006-20210308
x86_64               randconfig-a001-20210308
x86_64               randconfig-a004-20210308
x86_64               randconfig-a002-20210308
x86_64               randconfig-a005-20210308
x86_64               randconfig-a003-20210308
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
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
