Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB71265892
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Sep 2020 07:06:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3EC1871F6;
	Fri, 11 Sep 2020 05:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TxyRGYP3nAuV; Fri, 11 Sep 2020 05:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F5D186E77;
	Fri, 11 Sep 2020 05:06:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 247471BF859
 for <devel@linuxdriverproject.org>; Fri, 11 Sep 2020 05:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F9428778E
 for <devel@linuxdriverproject.org>; Fri, 11 Sep 2020 05:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZBheLXYHb8lm for <devel@linuxdriverproject.org>;
 Fri, 11 Sep 2020 05:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3BD0287789
 for <devel@driverdev.osuosl.org>; Fri, 11 Sep 2020 05:05:58 +0000 (UTC)
IronPort-SDR: GXk7IcPvQn7A3oFpU5QLy5k23VhJyk/gEYeHUJjB/Jhp3sDT/69eJASY7mK9Ufk/J2Vk/6xMyT
 fGJkz0TpTmaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="159638045"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="159638045"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 22:05:57 -0700
IronPort-SDR: ewte2Q4orCVH7CSuQe6dVV2bJ0e7t1j7JFPyd/FknlQ/zbca3i6Kb74ndB5xZ0me2z29L08MFm
 ARECvRtc30XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="337383961"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2020 22:05:56 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kGbFz-000037-FJ; Fri, 11 Sep 2020 05:05:55 +0000
Date: Fri, 11 Sep 2020 13:05:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 baaabecfc80fad255f866563b53b8c7a3eec176e
Message-ID: <5f5b058a.OS+yLw04Gy851d8Z%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: baaabecfc80fad255f866563b53b8c7a3eec176e  test_firmware: Test platform fw loading on non-EFI systems

elapsed time: 725m

configs tested: 204
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                        qi_lb60_defconfig
mips                           rs90_defconfig
mips                       lemote2f_defconfig
riscv                          rv32_defconfig
arm                           efm32_defconfig
ia64                             allmodconfig
mips                 pnx8335_stb225_defconfig
arm                         palmz72_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                            lart_defconfig
powerpc                      ppc64e_defconfig
arm                           omap1_defconfig
powerpc                      acadia_defconfig
arm                        trizeps4_defconfig
arm                     davinci_all_defconfig
sh                         apsh4a3a_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
sparc64                             defconfig
arm                             pxa_defconfig
mips                           ip28_defconfig
openrisc                         alldefconfig
arc                     haps_hs_smp_defconfig
arm                          prima2_defconfig
mips                      pistachio_defconfig
arm                       aspeed_g4_defconfig
mips                         tb0226_defconfig
mips                          ath79_defconfig
arm                      integrator_defconfig
mips                           ip22_defconfig
mips                            e55_defconfig
powerpc                     ksi8560_defconfig
ia64                             alldefconfig
sh                          lboxre2_defconfig
mips                        workpad_defconfig
mips                           gcw0_defconfig
sh                          sdk7780_defconfig
openrisc                    or1ksim_defconfig
arm                          imote2_defconfig
mips                      pic32mzda_defconfig
riscv                            alldefconfig
arm                           h5000_defconfig
xtensa                           allyesconfig
arm                       omap2plus_defconfig
h8300                    h8300h-sim_defconfig
mips                            gpr_defconfig
mips                         bigsur_defconfig
mips                          malta_defconfig
arm                            xcep_defconfig
sh                        sh7785lcr_defconfig
sh                        sh7757lcr_defconfig
arm                         axm55xx_defconfig
sh                        edosk7760_defconfig
arc                         haps_hs_defconfig
arm                          simpad_defconfig
arm                         ebsa110_defconfig
powerpc                    adder875_defconfig
powerpc                     asp8347_defconfig
arm                         s3c2410_defconfig
mips                     cu1830-neo_defconfig
arm                         lubbock_defconfig
s390                             alldefconfig
mips                          ath25_defconfig
h8300                     edosk2674_defconfig
powerpc                   bluestone_defconfig
powerpc                 mpc837x_mds_defconfig
arm                            u300_defconfig
xtensa                           alldefconfig
c6x                        evmc6457_defconfig
m68k                            q40_defconfig
arm                           u8500_defconfig
arc                          axs101_defconfig
nios2                         3c120_defconfig
powerpc                     powernv_defconfig
sh                ecovec24-romimage_defconfig
ia64                            zx1_defconfig
powerpc                 mpc8272_ads_defconfig
sparc                               defconfig
sh                               allmodconfig
powerpc                mpc7448_hpc2_defconfig
m68k                                defconfig
powerpc                     pseries_defconfig
arm                      pxa255-idp_defconfig
arm                         mv78xx0_defconfig
arm                          ixp4xx_defconfig
c6x                        evmc6472_defconfig
arm                          lpd270_defconfig
powerpc                     ep8248e_defconfig
powerpc                     taishan_defconfig
mips                      loongson3_defconfig
microblaze                    nommu_defconfig
arc                          axs103_defconfig
xtensa                generic_kc705_defconfig
arm                         s5pv210_defconfig
arm                              alldefconfig
s390                       zfcpdump_defconfig
powerpc                  storcenter_defconfig
powerpc64                        alldefconfig
mips                         cobalt_defconfig
mips                         rt305x_defconfig
sh                          kfr2r09_defconfig
arc                        nsim_700_defconfig
arm                        mvebu_v7_defconfig
arm                           h3600_defconfig
powerpc                     rainier_defconfig
sh                        apsh4ad0a_defconfig
arm                        multi_v5_defconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
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
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
x86_64               randconfig-a004-20200910
x86_64               randconfig-a006-20200910
x86_64               randconfig-a003-20200910
x86_64               randconfig-a002-20200910
x86_64               randconfig-a005-20200910
x86_64               randconfig-a001-20200910
i386                 randconfig-a004-20200909
i386                 randconfig-a005-20200909
i386                 randconfig-a006-20200909
i386                 randconfig-a002-20200909
i386                 randconfig-a001-20200909
i386                 randconfig-a003-20200909
i386                 randconfig-a004-20200911
i386                 randconfig-a006-20200911
i386                 randconfig-a001-20200911
i386                 randconfig-a003-20200911
i386                 randconfig-a002-20200911
i386                 randconfig-a005-20200911
i386                 randconfig-a004-20200910
i386                 randconfig-a006-20200910
i386                 randconfig-a001-20200910
i386                 randconfig-a003-20200910
i386                 randconfig-a002-20200910
i386                 randconfig-a005-20200910
x86_64               randconfig-a014-20200911
x86_64               randconfig-a011-20200911
x86_64               randconfig-a012-20200911
x86_64               randconfig-a016-20200911
x86_64               randconfig-a015-20200911
x86_64               randconfig-a013-20200911
i386                 randconfig-a016-20200909
i386                 randconfig-a015-20200909
i386                 randconfig-a011-20200909
i386                 randconfig-a013-20200909
i386                 randconfig-a014-20200909
i386                 randconfig-a012-20200909
i386                 randconfig-a015-20200911
i386                 randconfig-a014-20200911
i386                 randconfig-a011-20200911
i386                 randconfig-a013-20200911
i386                 randconfig-a016-20200911
i386                 randconfig-a012-20200911
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20200911
x86_64               randconfig-a006-20200911
x86_64               randconfig-a003-20200911
x86_64               randconfig-a002-20200911
x86_64               randconfig-a005-20200911
x86_64               randconfig-a001-20200911
x86_64               randconfig-a013-20200909
x86_64               randconfig-a016-20200909
x86_64               randconfig-a011-20200909
x86_64               randconfig-a012-20200909
x86_64               randconfig-a015-20200909
x86_64               randconfig-a014-20200909

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
