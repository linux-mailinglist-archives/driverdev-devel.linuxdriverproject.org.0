Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 706B9527730
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 May 2022 13:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E711382444;
	Sun, 15 May 2022 11:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uGy_zZM2L9Ih; Sun, 15 May 2022 11:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CF2082404;
	Sun, 15 May 2022 11:01:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88D801BF573
 for <devel@linuxdriverproject.org>; Sun, 15 May 2022 11:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 767D441517
 for <devel@linuxdriverproject.org>; Sun, 15 May 2022 11:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJGs-L_JVqZc for <devel@linuxdriverproject.org>;
 Sun, 15 May 2022 11:01:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0498A410E8
 for <devel@driverdev.osuosl.org>; Sun, 15 May 2022 11:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652612476; x=1684148476;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JnmnHt784SXZE/k7ySfr0J/m1C4vgCtlug623+YKMwg=;
 b=M0P9RndVyI+E1LoqHXnaUyp1ehNe5bwK+PlAIO5ZBEGdp42G8XlzTiDW
 vylrK6LjTiV/83911kSEJDb2EQ8cIVr/F0RFPZAUiKgLIsO+LRFG+oi+p
 F6IlR1nYL/m+pvW8KW4x+DZtYQENklDjNpu1sKxBHm/HcDhrnoQNkTLFH
 4HPyu5w6XLCHKRdevPIHrxa+xq7FOSndz+9NTSXsa8bomzbBJtEQ8VD4r
 pLio8jCgI8MYieGFXy3KH35GZpz0Ul1cn6dKkRERTP23lClGGZ9zG9OF0
 hUqC0G56TdQJVJKC9c+riUvHMb8K0akQ/8vn7lTGGhOmnCNaagjOYCWZW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10347"; a="333679755"
X-IronPort-AV: E=Sophos;i="5.91,228,1647327600"; d="scan'208";a="333679755"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2022 04:01:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,228,1647327600"; d="scan'208";a="712999580"
Received: from lkp-server01.sh.intel.com (HELO d1462bc4b09b) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2022 04:01:13 -0700
Received: from kbuild by d1462bc4b09b with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nqBzs-0001Yd-HO;
 Sun, 15 May 2022 11:01:12 +0000
Date: Sun, 15 May 2022 19:00:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 575f00edea0a7117e6a4337800ebf62e2a1d09d6
Message-ID: <6280dd5c.xkQUN/IFd0Ticv8G%lkp@intel.com>
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
branch HEAD: 575f00edea0a7117e6a4337800ebf62e2a1d09d6  Documentation/process: Update ARM contact for embargoed hardware issues

elapsed time: 6780m

configs tested: 243
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220512
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
ia64                             allmodconfig
ia64                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
mips                             allyesconfig
riscv                            allmodconfig
mips                             allmodconfig
riscv                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
s390                             allyesconfig
i386                 randconfig-c001-20220509
sparc                            allyesconfig
parisc                           allyesconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
nios2                            allyesconfig
powerpc                  storcenter_defconfig
arm                         nhk8815_defconfig
arm                          simpad_defconfig
arm                        cerfcube_defconfig
sh                          r7785rp_defconfig
sh                          urquell_defconfig
ia64                         bigsur_defconfig
arm                            pleb_defconfig
xtensa                          iss_defconfig
xtensa                  audio_kc705_defconfig
xtensa                           alldefconfig
m68k                       m5275evb_defconfig
ia64                      gensparse_defconfig
xtensa                    xip_kc705_defconfig
powerpc                       eiger_defconfig
arm                           h3600_defconfig
arm                          iop32x_defconfig
arm                         cm_x300_defconfig
sparc                       sparc64_defconfig
arm                       aspeed_g5_defconfig
ia64                        generic_defconfig
xtensa                  nommu_kc705_defconfig
mips                           ci20_defconfig
sh                           se7721_defconfig
h8300                       h8s-sim_defconfig
sparc                            alldefconfig
powerpc                       maple_defconfig
arm                           viper_defconfig
sh                          polaris_defconfig
sh                            hp6xx_defconfig
arc                         haps_hs_defconfig
arm                         at91_dt_defconfig
arm                       imx_v6_v7_defconfig
sh                          rsk7203_defconfig
i386                                defconfig
ia64                          tiger_defconfig
m68k                           sun3_defconfig
openrisc                            defconfig
m68k                          multi_defconfig
sh                          sdk7780_defconfig
powerpc                     stx_gp3_defconfig
arm64                            alldefconfig
m68k                          sun3x_defconfig
arc                     haps_hs_smp_defconfig
m68k                        mvme16x_defconfig
arm                        keystone_defconfig
sh                           se7751_defconfig
parisc                           alldefconfig
arc                      axs103_smp_defconfig
m68k                       m5208evb_defconfig
powerpc                      pcm030_defconfig
mips                       capcella_defconfig
nios2                         10m50_defconfig
sh                        apsh4ad0a_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                      bamboo_defconfig
arc                        nsim_700_defconfig
arm                     eseries_pxa_defconfig
sh                 kfr2r09-romimage_defconfig
m68k                        m5272c3_defconfig
powerpc                 mpc837x_mds_defconfig
mips                           ip32_defconfig
powerpc                     rainier_defconfig
nios2                         3c120_defconfig
sh                           se7712_defconfig
powerpc                     taishan_defconfig
sparc                       sparc32_defconfig
arm                             ezx_defconfig
sh                          lboxre2_defconfig
sh                           se7206_defconfig
sh                             shx3_defconfig
arm                        spear6xx_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                            mps2_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                          rsk7201_defconfig
powerpc                      pasemi_defconfig
powerpc                      cm5200_defconfig
m68k                        mvme147_defconfig
powerpc                        cell_defconfig
ia64                                defconfig
m68k                        m5407c3_defconfig
powerpc                   currituck_defconfig
sh                     sh7710voipgw_defconfig
xtensa                  cadence_csp_defconfig
arm                        oxnas_v6_defconfig
arm                        trizeps4_defconfig
sh                         apsh4a3a_defconfig
sh                                  defconfig
arm                           corgi_defconfig
sh                        sh7785lcr_defconfig
m68k                       m5249evb_defconfig
arc                           tb10x_defconfig
arc                            hsdk_defconfig
mips                            gpr_defconfig
microblaze                      mmu_defconfig
powerpc                       holly_defconfig
powerpc                  iss476-smp_defconfig
sh                          sdk7786_defconfig
powerpc                 mpc834x_itx_defconfig
openrisc                         alldefconfig
sh                          r7780mp_defconfig
powerpc                     sequoia_defconfig
mips                       bmips_be_defconfig
x86_64               randconfig-c001-20220509
arm                  randconfig-c002-20220509
x86_64                        randconfig-c001
arm                  randconfig-c002-20220512
m68k                                defconfig
nios2                               defconfig
csky                                defconfig
alpha                               defconfig
arc                                 defconfig
s390                                defconfig
parisc                              defconfig
parisc64                            defconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a015-20220509
x86_64               randconfig-a012-20220509
x86_64               randconfig-a016-20220509
x86_64               randconfig-a014-20220509
x86_64               randconfig-a013-20220509
x86_64               randconfig-a011-20220509
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                 randconfig-a011-20220509
i386                 randconfig-a013-20220509
i386                 randconfig-a016-20220509
i386                 randconfig-a015-20220509
i386                 randconfig-a014-20220509
i386                 randconfig-a012-20220509
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220509
s390                 randconfig-r044-20220509
riscv                randconfig-r042-20220509
s390                 randconfig-r044-20220512
riscv                randconfig-r042-20220512
arc                  randconfig-r043-20220512
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                                  kexec
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
s390                 randconfig-c005-20220512
powerpc              randconfig-c003-20220512
x86_64                        randconfig-c007
riscv                randconfig-c006-20220512
mips                 randconfig-c004-20220512
i386                          randconfig-c001
arm                  randconfig-c002-20220512
x86_64               randconfig-c007-20220509
i386                 randconfig-c001-20220509
powerpc              randconfig-c003-20220509
riscv                randconfig-c006-20220509
mips                 randconfig-c004-20220509
arm                  randconfig-c002-20220509
powerpc                     tqm5200_defconfig
powerpc                          allyesconfig
arm                  colibri_pxa300_defconfig
arm                          pcm027_defconfig
mips                          malta_defconfig
powerpc                      katmai_defconfig
powerpc                     tqm8540_defconfig
powerpc                     akebono_defconfig
powerpc                     powernv_defconfig
powerpc                          allmodconfig
mips                       rbtx49xx_defconfig
mips                        maltaup_defconfig
mips                      maltaaprp_defconfig
mips                        omega2p_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                     pseries_defconfig
powerpc                   bluestone_defconfig
arm                                 defconfig
powerpc                 mpc832x_rdb_defconfig
arm                         socfpga_defconfig
powerpc                     tqm8560_defconfig
powerpc                 mpc8272_ads_defconfig
x86_64               randconfig-a006-20220509
x86_64               randconfig-a002-20220509
x86_64               randconfig-a001-20220509
x86_64               randconfig-a004-20220509
x86_64               randconfig-a005-20220509
x86_64               randconfig-a003-20220509
i386                 randconfig-a004-20220509
i386                 randconfig-a006-20220509
i386                 randconfig-a002-20220509
i386                 randconfig-a003-20220509
i386                 randconfig-a001-20220509
i386                 randconfig-a005-20220509
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220512
hexagon              randconfig-r041-20220512
hexagon              randconfig-r045-20220509
hexagon              randconfig-r041-20220509

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
