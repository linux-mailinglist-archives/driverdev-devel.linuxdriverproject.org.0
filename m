Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F27301E5E
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Jan 2021 20:11:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 76121204CC;
	Sun, 24 Jan 2021 19:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SVTCp4nGt8I; Sun, 24 Jan 2021 19:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BFF202045A;
	Sun, 24 Jan 2021 19:11:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0C01BF310
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5938B870B7
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id McOTRbM5GzgN for <devel@linuxdriverproject.org>;
 Sun, 24 Jan 2021 19:11:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84334870B2
 for <devel@driverdev.osuosl.org>; Sun, 24 Jan 2021 19:11:46 +0000 (UTC)
IronPort-SDR: pPEztnfKZl/VYqk4BJDXd1D8atDD3D/BxwLFN/MESxSJ7/TLR9pGTGtOYjfI7j4d+p/Jp8kGzi
 GA1O3/qkf6Og==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="176120508"
X-IronPort-AV: E=Sophos;i="5.79,371,1602572400"; d="scan'208";a="176120508"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2021 11:11:45 -0800
IronPort-SDR: z7p3OnHDarY1YOx6ThsgmUHXrhaNe1YHqBlYpr7BfRaMfaqJ5d4NhomnIsI2uvvLBrPtSlpP1c
 euye0a9dcYew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,371,1602572400"; d="scan'208";a="401870862"
Received: from lkp-server01.sh.intel.com (HELO 27c4e0a4b6d9) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2021 11:11:44 -0800
Received: from kbuild by 27c4e0a4b6d9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l3knY-0000QE-77; Sun, 24 Jan 2021 19:11:44 +0000
Date: Mon, 25 Jan 2021 03:11:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 8598bb4c876dbd8ded9f08c91e4c2ae62c9557d9
Message-ID: <600dc663.N2ycYOC5PlxhB42X%lkp@intel.com>
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
branch HEAD: 8598bb4c876dbd8ded9f08c91e4c2ae62c9557d9  Merge tag 'iio-for-5.12a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-next

elapsed time: 736m

configs tested: 143
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
xtensa                    xip_kc705_defconfig
c6x                                 defconfig
ia64                         bigsur_defconfig
arm                        oxnas_v6_defconfig
xtensa                  cadence_csp_defconfig
arm                        mvebu_v5_defconfig
mips                    maltaup_xpa_defconfig
powerpc                      ppc40x_defconfig
sh                              ul2_defconfig
mips                       lemote2f_defconfig
sh                          rsk7264_defconfig
powerpc                 linkstation_defconfig
arm                      pxa255-idp_defconfig
arm                     am200epdkit_defconfig
mips                      pistachio_defconfig
arm                            lart_defconfig
mips                        omega2p_defconfig
powerpc                    gamecube_defconfig
sh                            migor_defconfig
powerpc                      ppc44x_defconfig
mips                         tb0219_defconfig
powerpc                      pcm030_defconfig
powerpc                       ebony_defconfig
sh                             espt_defconfig
sparc64                             defconfig
arc                              allyesconfig
powerpc                       maple_defconfig
arm                            pleb_defconfig
powerpc                      bamboo_defconfig
powerpc                  mpc885_ads_defconfig
s390                          debug_defconfig
arm                          iop32x_defconfig
arm                          tango4_defconfig
mips                        nlm_xlr_defconfig
sh                         apsh4a3a_defconfig
powerpc                      cm5200_defconfig
sparc                       sparc32_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                    vt8500_v6_v7_defconfig
sh                                  defconfig
sh                           se7712_defconfig
arm                        neponset_defconfig
arm                             pxa_defconfig
openrisc                         alldefconfig
mips                            ar7_defconfig
mips                        qi_lb60_defconfig
arm                   milbeaut_m10v_defconfig
mips                        workpad_defconfig
powerpc                      walnut_defconfig
arm                           sama5_defconfig
mips                          ath79_defconfig
mips                         db1xxx_defconfig
arm                             mxs_defconfig
powerpc                  storcenter_defconfig
arm                          lpd270_defconfig
nios2                            alldefconfig
arm                          pcm027_defconfig
mips                       capcella_defconfig
mips                          ath25_defconfig
sh                   rts7751r2dplus_defconfig
arm                          simpad_defconfig
arm                         shannon_defconfig
powerpc                        fsp2_defconfig
arm                         s5pv210_defconfig
arc                           tb10x_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                   lite5200b_defconfig
arm                           stm32_defconfig
arm                        realview_defconfig
powerpc                     sbc8548_defconfig
alpha                               defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        vexpress_defconfig
mips                           ci20_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
i386                 randconfig-a001-20210124
i386                 randconfig-a002-20210124
i386                 randconfig-a003-20210124
x86_64               randconfig-a012-20210124
x86_64               randconfig-a016-20210124
x86_64               randconfig-a015-20210124
x86_64               randconfig-a011-20210124
x86_64               randconfig-a013-20210124
x86_64               randconfig-a014-20210124
i386                 randconfig-a013-20210124
i386                 randconfig-a012-20210124
i386                 randconfig-a014-20210124
i386                 randconfig-a016-20210124
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
x86_64               randconfig-a003-20210124
x86_64               randconfig-a002-20210124
x86_64               randconfig-a001-20210124
x86_64               randconfig-a005-20210124
x86_64               randconfig-a006-20210124
x86_64               randconfig-a004-20210124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
