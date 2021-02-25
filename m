Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB92325874
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Feb 2021 22:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27AE54EF74;
	Thu, 25 Feb 2021 21:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64kcxhSl3efy; Thu, 25 Feb 2021 21:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEB184EF68;
	Thu, 25 Feb 2021 21:15:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D05A51BF414
 for <devel@linuxdriverproject.org>; Thu, 25 Feb 2021 21:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF8796F88C
 for <devel@linuxdriverproject.org>; Thu, 25 Feb 2021 21:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKCIhtL3uK3S for <devel@linuxdriverproject.org>;
 Thu, 25 Feb 2021 21:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD75E6F77A
 for <devel@driverdev.osuosl.org>; Thu, 25 Feb 2021 21:15:26 +0000 (UTC)
IronPort-SDR: FVxleXrWP+1OvWk/GvZ6qieDs/exGM/iY+ETQaomlMWZPaP7LuHIVwlkQ1wuiBsSYxhxSZEbum
 q2xUM1/GVjtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="173329146"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="173329146"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 13:15:13 -0800
IronPort-SDR: 1ZtXiJxWVi0EbXCKVcBwIbvGVHbhikjX6t7MzUVbSfTy6w7LmcpbvCiA2C6a2QNodBCwLC958T
 uSSbtDo1YNvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="392573071"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 25 Feb 2021 13:15:12 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lFNyZ-0002sS-IB; Thu, 25 Feb 2021 21:15:11 +0000
Date: Fri, 26 Feb 2021 05:14:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 09f800c562683848511c8a7750d73d50cfd506ef
Message-ID: <6038133f.FurpVhPh2U/1Lqho%lkp@intel.com>
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
branch HEAD: 09f800c562683848511c8a7750d73d50cfd506ef  staging: clocking-wizard: Remove the hardcoding of the clock outputs

elapsed time: 725m

configs tested: 117
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     tqm8541_defconfig
arm                          gemini_defconfig
powerpc                 xes_mpc85xx_defconfig
m68k                            q40_defconfig
arm                            mmp2_defconfig
m68k                       m5275evb_defconfig
nios2                               defconfig
riscv                    nommu_k210_defconfig
m68k                          amiga_defconfig
arm                          ep93xx_defconfig
sh                           se7619_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                      pcm030_defconfig
arm                          iop32x_defconfig
mips                        bcm47xx_defconfig
powerpc                 mpc837x_mds_defconfig
microblaze                      mmu_defconfig
powerpc                     stx_gp3_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    ge_imp3a_defconfig
mips                           ip27_defconfig
mips                        omega2p_defconfig
arc                        nsim_700_defconfig
s390                             allmodconfig
riscv                            allyesconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 canyonlands_defconfig
sh                     sh7710voipgw_defconfig
arm                         lpc18xx_defconfig
mips                         tb0219_defconfig
powerpc                     ep8248e_defconfig
arm                   milbeaut_m10v_defconfig
riscv                             allnoconfig
arm                            zeus_defconfig
powerpc                      ep88xc_defconfig
mips                          rm200_defconfig
sh                      rts7751r2d1_defconfig
mips                           gcw0_defconfig
arm                         vf610m4_defconfig
arm                             ezx_defconfig
arm                        oxnas_v6_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc832x_mds_defconfig
arm                       cns3420vb_defconfig
sh                   secureedge5410_defconfig
riscv                    nommu_virt_defconfig
arm                          simpad_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                 randconfig-a005-20210225
i386                 randconfig-a006-20210225
i386                 randconfig-a004-20210225
i386                 randconfig-a001-20210225
i386                 randconfig-a003-20210225
i386                 randconfig-a002-20210225
x86_64               randconfig-a015-20210225
x86_64               randconfig-a011-20210225
x86_64               randconfig-a012-20210225
x86_64               randconfig-a016-20210225
x86_64               randconfig-a013-20210225
x86_64               randconfig-a014-20210225
i386                 randconfig-a013-20210225
i386                 randconfig-a012-20210225
i386                 randconfig-a011-20210225
i386                 randconfig-a014-20210225
i386                 randconfig-a016-20210225
i386                 randconfig-a015-20210225
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210225
x86_64               randconfig-a002-20210225
x86_64               randconfig-a003-20210225
x86_64               randconfig-a005-20210225
x86_64               randconfig-a004-20210225
x86_64               randconfig-a006-20210225

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
