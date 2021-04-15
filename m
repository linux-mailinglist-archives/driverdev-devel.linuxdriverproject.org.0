Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D76236144D
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Apr 2021 23:45:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C0F8608C5;
	Thu, 15 Apr 2021 21:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hajx2ACg50V5; Thu, 15 Apr 2021 21:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C0796077E;
	Thu, 15 Apr 2021 21:45:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA3B41C119D
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 21:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D96E66077E
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 21:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqMNnDEo6nmT for <devel@linuxdriverproject.org>;
 Thu, 15 Apr 2021 21:44:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF96960615
 for <devel@driverdev.osuosl.org>; Thu, 15 Apr 2021 21:44:00 +0000 (UTC)
IronPort-SDR: exhRb53GyW3zKS3JdC1vP4oD7UPthkjnkjQWazMm6/BsHou/ftmU4h0ftxA2h/6k48q7DkQqVr
 qV+QlXPAzaEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="192821203"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; d="scan'208";a="192821203"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 14:44:00 -0700
IronPort-SDR: HRULcvGN0iGdmFiQtsLPqbhabE0p+3eSo9qzwOqzRHRih6uAv2wIuLJ7tpY96uCVwjb+cZ8aHA
 FY0u2zAtTQZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; d="scan'208";a="601269343"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2021 14:43:58 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lX9mI-00017q-0a; Thu, 15 Apr 2021 21:43:58 +0000
Date: Fri, 16 Apr 2021 05:43:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 940ee39769474654d409e310fb43190221fa0b30
Message-ID: <6078b380.cVxg/QatBGXJmi3C%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: 940ee39769474654d409e310fb43190221fa0b30  serial: pch_uart: fix build error with !CONFIG_DEBUG_FS

elapsed time: 733m

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
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                    amigaone_defconfig
mips                        qi_lb60_defconfig
powerpc                 canyonlands_defconfig
arm                         socfpga_defconfig
powerpc                 mpc8272_ads_defconfig
arm                           sama5_defconfig
riscv                               defconfig
m68k                             alldefconfig
arc                         haps_hs_defconfig
powerpc                      ppc64e_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      makalu_defconfig
arm                       aspeed_g4_defconfig
sh                          rsk7269_defconfig
arm                        realview_defconfig
mips                      maltaaprp_defconfig
h8300                     edosk2674_defconfig
powerpc                     tqm5200_defconfig
powerpc                    klondike_defconfig
mips                     cu1000-neo_defconfig
powerpc                 mpc832x_mds_defconfig
sparc64                          alldefconfig
arm                         shannon_defconfig
arm                         lpc32xx_defconfig
m68k                           sun3_defconfig
powerpc                      ppc44x_defconfig
arm                           corgi_defconfig
powerpc                     ep8248e_defconfig
arm                       netwinder_defconfig
powerpc                      katmai_defconfig
arm                       multi_v4t_defconfig
nds32                             allnoconfig
powerpc                   lite5200b_defconfig
arm                         vf610m4_defconfig
sh                            shmin_defconfig
powerpc                     tqm8548_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                       ebony_defconfig
mips                            ar7_defconfig
m68k                        m5272c3_defconfig
powerpc                     tqm8560_defconfig
powerpc                     redwood_defconfig
powerpc                        fsp2_defconfig
arm                       versatile_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
arm                       mainstone_defconfig
sh                          sdk7786_defconfig
arm                        neponset_defconfig
arm                      integrator_defconfig
arm                        multi_v7_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                      arches_defconfig
powerpc                        icon_defconfig
arm                       omap2plus_defconfig
xtensa                generic_kc705_defconfig
alpha                            allyesconfig
powerpc                 mpc836x_mds_defconfig
m68k                          hp300_defconfig
powerpc                 mpc8540_ads_defconfig
mips                          ath25_defconfig
sh                           sh2007_defconfig
arc                     nsimosci_hs_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                        nlm_xlr_defconfig
arm                  colibri_pxa270_defconfig
arm                      jornada720_defconfig
arc                        vdk_hs38_defconfig
powerpc                    mvme5100_defconfig
mips                       capcella_defconfig
arm                          ixp4xx_defconfig
sh                        edosk7705_defconfig
powerpc                   motionpro_defconfig
powerpc                 mpc834x_itx_defconfig
mips                         db1xxx_defconfig
sh                   rts7751r2dplus_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
x86_64               randconfig-a003-20210415
x86_64               randconfig-a002-20210415
x86_64               randconfig-a005-20210415
x86_64               randconfig-a001-20210415
x86_64               randconfig-a006-20210415
x86_64               randconfig-a004-20210415
i386                 randconfig-a003-20210415
i386                 randconfig-a006-20210415
i386                 randconfig-a001-20210415
i386                 randconfig-a005-20210415
i386                 randconfig-a004-20210415
i386                 randconfig-a002-20210415
i386                 randconfig-a015-20210415
i386                 randconfig-a014-20210415
i386                 randconfig-a013-20210415
i386                 randconfig-a012-20210415
i386                 randconfig-a016-20210415
i386                 randconfig-a011-20210415
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
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
x86_64               randconfig-a014-20210415
x86_64               randconfig-a015-20210415
x86_64               randconfig-a011-20210415
x86_64               randconfig-a013-20210415
x86_64               randconfig-a012-20210415
x86_64               randconfig-a016-20210415

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
