Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0A5409CC0
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 21:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F085B80EA3;
	Mon, 13 Sep 2021 19:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1244-uOqGkq; Mon, 13 Sep 2021 19:15:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C615780E90;
	Mon, 13 Sep 2021 19:15:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A54A31BF325
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 19:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94DB980E90
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 19:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPEFlrmq2YCX for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 19:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE25F80E73
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 19:15:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="219898543"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="219898543"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 12:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="528232125"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 13 Sep 2021 12:15:39 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mPrQY-0007p5-Pl; Mon, 13 Sep 2021 19:15:38 +0000
Date: Tue, 14 Sep 2021 03:14:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 473082c5bbad92c5909ccf75fb28df699b94de82
Message-ID: <613fa31e.Oa/sG3PtghgjGuX7%lkp@intel.com>
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
branch HEAD: 473082c5bbad92c5909ccf75fb28df699b94de82  fs: make d_path-like functions all have unsigned size

elapsed time: 730m

configs tested: 157
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm64                               defconfig
arm                              allmodconfig
i386                 randconfig-c001-20210913
s390                          debug_defconfig
powerpc                   bluestone_defconfig
powerpc                 mpc8560_ads_defconfig
mips                           rs90_defconfig
arm                          pxa168_defconfig
powerpc                     skiroot_defconfig
arm                       omap2plus_defconfig
arm                          moxart_defconfig
arc                     haps_hs_smp_defconfig
arm                          pcm027_defconfig
arm                             ezx_defconfig
um                                  defconfig
arm                         lpc18xx_defconfig
powerpc                      obs600_defconfig
m68k                       m5249evb_defconfig
s390                             alldefconfig
sh                              ul2_defconfig
powerpc                       maple_defconfig
sh                         apsh4a3a_defconfig
arm                           omap1_defconfig
mips                       bmips_be_defconfig
xtensa                         virt_defconfig
arm                           u8500_defconfig
powerpc                         wii_defconfig
powerpc                     tqm8560_defconfig
arm                           corgi_defconfig
powerpc                      cm5200_defconfig
ia64                         bigsur_defconfig
xtensa                           alldefconfig
arm                  colibri_pxa300_defconfig
mips                           ip27_defconfig
sparc64                             defconfig
powerpc                   microwatt_defconfig
sh                          polaris_defconfig
arm                             rpc_defconfig
arm                     am200epdkit_defconfig
mips                        nlm_xlr_defconfig
xtensa                  nommu_kc705_defconfig
nds32                            alldefconfig
powerpc                      bamboo_defconfig
mips                        jmr3927_defconfig
mips                      loongson3_defconfig
powerpc                           allnoconfig
riscv                    nommu_k210_defconfig
mips                        maltaup_defconfig
powerpc                  storcenter_defconfig
arm                            qcom_defconfig
um                           x86_64_defconfig
csky                             alldefconfig
arc                        nsim_700_defconfig
arm                          simpad_defconfig
arm                            pleb_defconfig
m68k                          sun3x_defconfig
h8300                    h8300h-sim_defconfig
arm                            dove_defconfig
arm                        neponset_defconfig
sh                        sh7785lcr_defconfig
sh                      rts7751r2d1_defconfig
openrisc                         alldefconfig
m68k                        mvme16x_defconfig
powerpc                     ep8248e_defconfig
powerpc                      arches_defconfig
riscv                               defconfig
arm                         axm55xx_defconfig
mips                           mtx1_defconfig
sh                           se7712_defconfig
arm                       netwinder_defconfig
arc                           tb10x_defconfig
powerpc                     tqm8548_defconfig
h8300                       h8s-sim_defconfig
sh                          landisk_defconfig
m68k                        m5307c3_defconfig
powerpc                     akebono_defconfig
arm                        clps711x_defconfig
sh                          kfr2r09_defconfig
sh                          sdk7786_defconfig
mips                       rbtx49xx_defconfig
x86_64               randconfig-c001-20210913
arm                  randconfig-c002-20210913
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
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a002-20210913
x86_64               randconfig-a003-20210913
x86_64               randconfig-a006-20210913
x86_64               randconfig-a004-20210913
x86_64               randconfig-a005-20210913
x86_64               randconfig-a001-20210913
i386                 randconfig-a004-20210913
i386                 randconfig-a005-20210913
i386                 randconfig-a002-20210913
i386                 randconfig-a006-20210913
i386                 randconfig-a003-20210913
i386                 randconfig-a001-20210913
arc                  randconfig-r043-20210913
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20210913
x86_64               randconfig-c007-20210913
mips                 randconfig-c004-20210913
powerpc              randconfig-c003-20210913
i386                 randconfig-c001-20210913
arm                  randconfig-c002-20210913
s390                 randconfig-c005-20210913
x86_64               randconfig-a016-20210913
x86_64               randconfig-a013-20210913
x86_64               randconfig-a012-20210913
x86_64               randconfig-a011-20210913
x86_64               randconfig-a014-20210913
x86_64               randconfig-a015-20210913
i386                 randconfig-a016-20210913
i386                 randconfig-a011-20210913
i386                 randconfig-a015-20210913
i386                 randconfig-a012-20210913
i386                 randconfig-a013-20210913
i386                 randconfig-a014-20210913

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
