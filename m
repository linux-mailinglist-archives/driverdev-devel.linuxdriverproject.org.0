Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 096644F0D73
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Apr 2022 03:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 714E760EFE;
	Mon,  4 Apr 2022 01:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykbnG1O3CrX4; Mon,  4 Apr 2022 01:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1874260ED0;
	Mon,  4 Apr 2022 01:45:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 553641BF343
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 01:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52407405FC
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 01:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aKf_0tKYqqZq for <devel@linuxdriverproject.org>;
 Mon,  4 Apr 2022 01:45:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45F054011A
 for <devel@driverdev.osuosl.org>; Mon,  4 Apr 2022 01:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649036754; x=1680572754;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qJ+hhyHSxY3AIvBLI8xijWtjSQlYzwRPgVy0tLEuCd8=;
 b=ca+gEw2j6QK+RAezYNp5xbezju5nTCIQWSJ67QJPuMZZukS/I4kZy2zj
 qEGaAao0YIuX07ZJYMG/dyihipkROlJee7CRPt6QSw72dZk/CxKGTl1Nu
 bb076ny4HNDeirzSnXGHS2WvvKpmaKmH5uyujuFESp7GWYa1dqhJgHVmF
 uKR5ZJbXn2SdAQrOYGQnTSTHOXWp88SF+eRLvxB2q6nDQ8/0i9xcXptAn
 47hKzSesus30BrDSMyWdfysJjfWlNyPLbr58PcM65nZEFsPMmAveGrb+r
 wmVKVOTvpi5t96N7/3l+Kzect022+uN15X0f7/x9HrDFAYGo2cF5d3eEz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="241009812"
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="241009812"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2022 18:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="721479383"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 03 Apr 2022 18:45:52 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbBmx-0001MV-EL;
 Mon, 04 Apr 2022 01:45:51 +0000
Date: Mon, 04 Apr 2022 09:45:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 6d298c8748968d1644ac43a5f32606ee52003d9e
Message-ID: <624a4db6.XK02+t+KjgZR7RgB%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 6d298c8748968d1644ac43a5f32606ee52003d9e  staging: r8188eu: clean up comment for rtw_pwr_wakeup()

elapsed time: 723m

configs tested: 180
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm64                            alldefconfig
m68k                       m5475evb_defconfig
ia64                      gensparse_defconfig
arm                        mvebu_v7_defconfig
sh                        dreamcast_defconfig
arm                        keystone_defconfig
sh                          rsk7269_defconfig
sh                 kfr2r09-romimage_defconfig
parisc64                         alldefconfig
m68k                          atari_defconfig
powerpc                      arches_defconfig
powerpc                 mpc837x_mds_defconfig
openrisc                            defconfig
openrisc                  or1klitex_defconfig
sh                          rsk7264_defconfig
arm                           sama5_defconfig
powerpc                    klondike_defconfig
sh                        edosk7705_defconfig
sh                             sh03_defconfig
powerpc                     taishan_defconfig
ia64                        generic_defconfig
arc                            hsdk_defconfig
sh                     sh7710voipgw_defconfig
arm                        oxnas_v6_defconfig
arm                        cerfcube_defconfig
ia64                             alldefconfig
sh                        sh7757lcr_defconfig
arc                      axs103_smp_defconfig
sh                        sh7763rdp_defconfig
arc                              alldefconfig
powerpc                      ppc6xx_defconfig
powerpc                 mpc834x_itx_defconfig
arm                             pxa_defconfig
powerpc                         ps3_defconfig
sh                        apsh4ad0a_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                           se7705_defconfig
m68k                        stmark2_defconfig
powerpc                         wii_defconfig
sh                           se7619_defconfig
arm                          badge4_defconfig
sh                              ul2_defconfig
powerpc                     stx_gp3_defconfig
arc                              allyesconfig
riscv                    nommu_k210_defconfig
m68k                             alldefconfig
h8300                       h8s-sim_defconfig
m68k                       m5208evb_defconfig
arm                        shmobile_defconfig
arm                        clps711x_defconfig
arc                          axs101_defconfig
sh                           se7722_defconfig
sh                            migor_defconfig
mips                           ip32_defconfig
sh                            hp6xx_defconfig
powerpc                     tqm8548_defconfig
sparc                            allyesconfig
m68k                        mvme147_defconfig
powerpc                        cell_defconfig
sh                          rsk7201_defconfig
sh                      rts7751r2d1_defconfig
arm                          pxa910_defconfig
sh                   secureedge5410_defconfig
sh                               j2_defconfig
m68k                         apollo_defconfig
mips                         bigsur_defconfig
mips                        vocore2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220403
i386                 randconfig-c001-20220404
x86_64               randconfig-c001-20220404
arm                  randconfig-c002-20220404
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220403
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220403
riscv                randconfig-c006-20220403
mips                 randconfig-c004-20220403
arm                  randconfig-c002-20220403
s390                 randconfig-c005-20220403
powerpc                     mpc5200_defconfig
mips                       rbtx49xx_defconfig
powerpc                        fsp2_defconfig
powerpc                      katmai_defconfig
powerpc                          g5_defconfig
powerpc                     ppa8548_defconfig
powerpc                  mpc866_ads_defconfig
mips                      maltaaprp_defconfig
powerpc                     tqm8560_defconfig
powerpc                  mpc885_ads_defconfig
mips                          ath25_defconfig
powerpc                    ge_imp3a_defconfig
x86_64                           allyesconfig
powerpc                     tqm5200_defconfig
mips                        qi_lb60_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64               randconfig-a006-20220404
x86_64               randconfig-a002-20220404
x86_64               randconfig-a001-20220404
x86_64               randconfig-a005-20220404
x86_64               randconfig-a003-20220404
x86_64               randconfig-a004-20220404
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220403
riscv                randconfig-r042-20220403
hexagon              randconfig-r041-20220403
s390                 randconfig-r044-20220403
hexagon              randconfig-r045-20220404
hexagon              randconfig-r041-20220404

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
