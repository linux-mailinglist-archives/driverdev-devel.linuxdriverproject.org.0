Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEF4379D1F
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 May 2021 04:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04EF1405A3;
	Tue, 11 May 2021 02:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_DOKOnJfHUZ; Tue, 11 May 2021 02:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1657640247;
	Tue, 11 May 2021 02:44:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21C971BF2A3
 for <devel@linuxdriverproject.org>; Tue, 11 May 2021 02:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E47D83641
 for <devel@linuxdriverproject.org>; Tue, 11 May 2021 02:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xxMMzColr6h5 for <devel@linuxdriverproject.org>;
 Tue, 11 May 2021 02:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2009D835ED
 for <devel@driverdev.osuosl.org>; Tue, 11 May 2021 02:44:29 +0000 (UTC)
IronPort-SDR: H8cWy2Vas69uuQSPfjIBYw+/wQx7rLHKyCfSHlKpBNgsmJ8LW1vSaRLRsfDpWVHQG7Ce3vQWiu
 gZRQmIeX7w5w==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="196246519"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="196246519"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 19:44:29 -0700
IronPort-SDR: c0Qi+YuH3vK1J35F6K3BplRDt7bJF6pRJ2EnKBKy+gMI2Je92OsqTQW768iQ/0NQqpFM3df/P2
 ugdyWt2Y6nZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="541478522"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 May 2021 19:44:26 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgINl-0000WA-Vc; Tue, 11 May 2021 02:44:25 +0000
Date: Tue, 11 May 2021 10:43:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 28ec344bb8911bb0d4910456b22ba0dd4f662521
Message-ID: <6099ef59.zcHDpFXqNyYgvkMU%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 28ec344bb8911bb0d4910456b22ba0dd4f662521  usb: typec: tcpm: Don't block probing of consumers of "connector" nodes

elapsed time: 725m

configs tested: 171
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
arm                           spitz_defconfig
h8300                            alldefconfig
sh                          lboxre2_defconfig
nds32                               defconfig
m68k                                defconfig
sh                          urquell_defconfig
arm                         at91_dt_defconfig
arc                         haps_hs_defconfig
mips                       capcella_defconfig
powerpc                    sam440ep_defconfig
arm                       aspeed_g4_defconfig
sh                          polaris_defconfig
powerpc                     tqm5200_defconfig
arm                            xcep_defconfig
powerpc                      ppc44x_defconfig
mips                        workpad_defconfig
arm                       aspeed_g5_defconfig
arm                           u8500_defconfig
arm                          iop32x_defconfig
mips                          ath25_defconfig
sh                           se7343_defconfig
openrisc                    or1ksim_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                      chrp32_defconfig
arm                             mxs_defconfig
parisc                generic-64bit_defconfig
arm                          simpad_defconfig
nios2                            alldefconfig
powerpc64                           defconfig
mips                        omega2p_defconfig
arm                         lpc32xx_defconfig
sparc                       sparc32_defconfig
mips                       lemote2f_defconfig
arm                          pxa3xx_defconfig
sh                           se7751_defconfig
mips                            ar7_defconfig
ia64                          tiger_defconfig
powerpc                  mpc866_ads_defconfig
arm                            lart_defconfig
powerpc                    gamecube_defconfig
arm                            dove_defconfig
arm                        trizeps4_defconfig
arm                       cns3420vb_defconfig
m68k                          sun3x_defconfig
arc                          axs101_defconfig
sh                      rts7751r2d1_defconfig
sh                   secureedge5410_defconfig
powerpc                 mpc837x_mds_defconfig
ia64                             allyesconfig
mips                  cavium_octeon_defconfig
ia64                             alldefconfig
powerpc                    klondike_defconfig
mips                          rm200_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                              ul2_defconfig
powerpc                      pmac32_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                          g5_defconfig
arm                      footbridge_defconfig
arm                       multi_v4t_defconfig
sh                        sh7757lcr_defconfig
mips                        nlm_xlp_defconfig
nios2                               defconfig
arm                         cm_x300_defconfig
arm                       imx_v6_v7_defconfig
sh                          rsk7269_defconfig
powerpc                     skiroot_defconfig
mips                         cobalt_defconfig
arc                          axs103_defconfig
h8300                            allyesconfig
mips                     loongson2k_defconfig
sh                   sh7724_generic_defconfig
arm                            hisi_defconfig
mips                         tb0226_defconfig
riscv                    nommu_k210_defconfig
arm                         bcm2835_defconfig
powerpc                       ebony_defconfig
sh                          r7785rp_defconfig
riscv                    nommu_virt_defconfig
arm                       versatile_defconfig
powerpc                 mpc834x_mds_defconfig
sh                               j2_defconfig
powerpc                   currituck_defconfig
mips                            gpr_defconfig
arm                          ixp4xx_defconfig
arm                            mmp2_defconfig
m68k                         amcore_defconfig
powerpc                 canyonlands_defconfig
mips                 decstation_r4k_defconfig
sh                          rsk7201_defconfig
riscv                            alldefconfig
powerpc                     rainier_defconfig
xtensa                       common_defconfig
m68k                        stmark2_defconfig
powerpc                    socrates_defconfig
powerpc                     pseries_defconfig
m68k                       m5275evb_defconfig
powerpc                     tqm8540_defconfig
powerpc                 mpc836x_mds_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
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
x86_64               randconfig-a003-20210510
x86_64               randconfig-a004-20210510
x86_64               randconfig-a001-20210510
x86_64               randconfig-a005-20210510
x86_64               randconfig-a002-20210510
x86_64               randconfig-a006-20210510
i386                 randconfig-a003-20210510
i386                 randconfig-a001-20210510
i386                 randconfig-a005-20210510
i386                 randconfig-a004-20210510
i386                 randconfig-a002-20210510
i386                 randconfig-a006-20210510
i386                 randconfig-a016-20210510
i386                 randconfig-a014-20210510
i386                 randconfig-a011-20210510
i386                 randconfig-a015-20210510
i386                 randconfig-a012-20210510
i386                 randconfig-a013-20210510
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210510
x86_64               randconfig-a012-20210510
x86_64               randconfig-a011-20210510
x86_64               randconfig-a013-20210510
x86_64               randconfig-a016-20210510
x86_64               randconfig-a014-20210510

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
