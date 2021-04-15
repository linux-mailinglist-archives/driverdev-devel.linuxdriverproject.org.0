Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D4361451
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Apr 2021 23:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09A5C40633;
	Thu, 15 Apr 2021 21:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8XHrPqFDxps; Thu, 15 Apr 2021 21:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B0D0405F0;
	Thu, 15 Apr 2021 21:45:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CA5C1BF379
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 21:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67E506077E
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 21:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRkXgu-0-EJd for <devel@linuxdriverproject.org>;
 Thu, 15 Apr 2021 21:44:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5BDB16076E
 for <devel@driverdev.osuosl.org>; Thu, 15 Apr 2021 21:44:01 +0000 (UTC)
IronPort-SDR: Nw/raQHd4K1by0DV/tiacRUNB7o8tEmmvVZGPUSGEHJH+SmMe9offZUmkFeDiQgvoEpDFneFaE
 xyFWmhStAFNQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="195060335"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; d="scan'208";a="195060335"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 14:44:00 -0700
IronPort-SDR: JDRdQUsTR9OA3OFtGJjjpUPcTX2u52wIpWTuFtSc+a1PudaROktA7toBdV3wDCtRBsCry2qwSb
 kFHlADo1sseg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; d="scan'208";a="399712843"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 15 Apr 2021 14:43:58 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lX9mI-000181-2V; Thu, 15 Apr 2021 21:43:58 +0000
Date: Fri, 16 Apr 2021 05:43:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kbuild] BUILD SUCCESS
 8e3809e7ff0a623e5cbb7130cd0fdc3507b76442
Message-ID: <6078b38e.gxvbcyfB/BxU7dw5%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kbuild
branch HEAD: 8e3809e7ff0a623e5cbb7130cd0fdc3507b76442  kbuild: allow arches to have their own "bootloader.sh"

elapsed time: 733m

configs tested: 187
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
powerpc                    amigaone_defconfig
mips                        qi_lb60_defconfig
powerpc                 canyonlands_defconfig
arc                              allyesconfig
arm                       aspeed_g4_defconfig
xtensa                         virt_defconfig
arm                          gemini_defconfig
h8300                            alldefconfig
arm                         socfpga_defconfig
arm                           sama5_defconfig
m68k                             alldefconfig
arc                         haps_hs_defconfig
powerpc                      ppc64e_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      makalu_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     mpc5200_defconfig
sh                         apsh4a3a_defconfig
powerpc                     taishan_defconfig
s390                             alldefconfig
arm                          pxa168_defconfig
sh                          rsk7269_defconfig
arm                        realview_defconfig
mips                      maltaaprp_defconfig
arm                         shannon_defconfig
arm                         lpc32xx_defconfig
m68k                           sun3_defconfig
powerpc                      ppc44x_defconfig
um                                allnoconfig
sh                          polaris_defconfig
m68k                        m5307c3_defconfig
ia64                            zx1_defconfig
sh                           se7619_defconfig
arm                       spear13xx_defconfig
arm                           corgi_defconfig
powerpc                     ep8248e_defconfig
arm                       netwinder_defconfig
powerpc                      katmai_defconfig
arm                       multi_v4t_defconfig
powerpc                   lite5200b_defconfig
arm                         vf610m4_defconfig
sh                            shmin_defconfig
powerpc                     tqm8548_defconfig
mips                  cavium_octeon_defconfig
powerpc                     tqm8541_defconfig
xtensa                  audio_kc705_defconfig
sh                              ul2_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                     tqm8555_defconfig
arm                          iop32x_defconfig
sh                           sh2007_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7705_defconfig
mips                        maltaup_defconfig
ia64                         bigsur_defconfig
um                               alldefconfig
arm                         cm_x300_defconfig
sh                          rsk7203_defconfig
arm                          pxa910_defconfig
arm                           sunxi_defconfig
arm                          moxart_defconfig
powerpc                     redwood_defconfig
powerpc                      arches_defconfig
m68k                        m5272c3_defconfig
arm                       omap2plus_defconfig
xtensa                generic_kc705_defconfig
alpha                            allyesconfig
arm                      integrator_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                            titan_defconfig
arm                        magician_defconfig
powerpc                     skiroot_defconfig
sh                        sh7757lcr_defconfig
nios2                         3c120_defconfig
powerpc                        fsp2_defconfig
m68k                       m5275evb_defconfig
arm                         palmz72_defconfig
arm                            mps2_defconfig
powerpc                   bluestone_defconfig
arm                          lpd270_defconfig
mips                        nlm_xlp_defconfig
i386                                defconfig
powerpc                       ebony_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
powerpc                        cell_defconfig
sh                     sh7710voipgw_defconfig
sh                         ap325rxa_defconfig
sparc                               defconfig
powerpc                       ppc64_defconfig
arm                           h3600_defconfig
powerpc64                           defconfig
sh                        edosk7760_defconfig
arc                           tb10x_defconfig
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
powerpc                    sam440ep_defconfig
mips                        workpad_defconfig
arm                         s3c6400_defconfig
i386                             alldefconfig
sh                             shx3_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
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
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
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
