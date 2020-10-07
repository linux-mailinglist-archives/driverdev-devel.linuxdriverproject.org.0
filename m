Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FC5286B92
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 01:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D640873BA;
	Wed,  7 Oct 2020 23:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIg+K0vXgzGa; Wed,  7 Oct 2020 23:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F41D6873AA;
	Wed,  7 Oct 2020 23:42:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0F921BF870
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 23:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD7F3872F1
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 23:42:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jp3CQCN4wfoB for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 23:42:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BCB54871BA
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 23:42:47 +0000 (UTC)
IronPort-SDR: IJW7DU2uXBhBC2AcKnVRXjb0LxzsLBgLgrr2q9NYrnzLRXYVapmHDX9W35R6edO8BbkqnyOg1C
 utw9FeyM5izw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165295168"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="165295168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:42:46 -0700
IronPort-SDR: 5vnoH++e3n9px34SOVggj/yRNVKHpolmrh/4g5cLCgSz1a0gc8tlFL/yBkOf1JFn0gqPmy0TVZ
 gUFSpgUv282w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="388593731"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 07 Oct 2020 16:42:45 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kQJ52-0001sQ-KQ; Wed, 07 Oct 2020 23:42:44 +0000
Date: Thu, 08 Oct 2020 07:41:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 76c3bdd67d27289b9e407113821eab2a70bbcca6
Message-ID: <5f7e5237.oXV1nWHe3N1y9KiM%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: 76c3bdd67d27289b9e407113821eab2a70bbcca6  dt-bindings: staging: wfx: silabs,wfx yaml conversion

elapsed time: 720m

configs tested: 217
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                            q40_defconfig
arm64                            alldefconfig
arm                        realview_defconfig
arm                      pxa255-idp_defconfig
microblaze                      mmu_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                            titan_defconfig
arm                         s5pv210_defconfig
sh                        apsh4ad0a_defconfig
openrisc                 simple_smp_defconfig
microblaze                    nommu_defconfig
mips                           ip28_defconfig
mips                        omega2p_defconfig
arc                             nps_defconfig
mips                      pistachio_defconfig
sh                           se7721_defconfig
arm                           stm32_defconfig
csky                             alldefconfig
arm                       versatile_defconfig
m68k                        mvme147_defconfig
arm                       aspeed_g4_defconfig
powerpc                      ep88xc_defconfig
xtensa                    xip_kc705_defconfig
powerpc                      arches_defconfig
arm                         palmz72_defconfig
mips                malta_qemu_32r6_defconfig
arm                        magician_defconfig
powerpc                     tqm8540_defconfig
powerpc                     mpc5200_defconfig
arm                            zeus_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      obs600_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                     sh7710voipgw_defconfig
sh                   sh7724_generic_defconfig
powerpc                          g5_defconfig
arm                           sunxi_defconfig
arm                         hackkit_defconfig
mips                 pnx8335_stb225_defconfig
arm                         s3c6400_defconfig
sh                           se7619_defconfig
mips                 decstation_r4k_defconfig
arm                             ezx_defconfig
powerpc                 mpc8560_ads_defconfig
arc                           tb10x_defconfig
powerpc                         wii_defconfig
h8300                            alldefconfig
riscv                             allnoconfig
mips                        workpad_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                           h3600_defconfig
arm                              zx_defconfig
powerpc                 canyonlands_defconfig
arc                          axs101_defconfig
arm                         lpc18xx_defconfig
alpha                            allyesconfig
arm                          exynos_defconfig
powerpc                     ppa8548_defconfig
h8300                     edosk2674_defconfig
parisc                generic-64bit_defconfig
sh                   secureedge5410_defconfig
mips                           ip32_defconfig
sh                           se7705_defconfig
sh                               alldefconfig
arm                      footbridge_defconfig
c6x                        evmc6472_defconfig
sh                         ecovec24_defconfig
s390                          debug_defconfig
s390                             alldefconfig
arm                      integrator_defconfig
c6x                        evmc6474_defconfig
powerpc                  mpc885_ads_defconfig
arm                            qcom_defconfig
arm                             rpc_defconfig
c6x                              alldefconfig
sh                        sh7757lcr_defconfig
mips                      pic32mzda_defconfig
mips                          rb532_defconfig
arm                         mv78xx0_defconfig
arm                         assabet_defconfig
powerpc                     tqm8548_defconfig
s390                       zfcpdump_defconfig
powerpc                       ebony_defconfig
mips                         bigsur_defconfig
arm                           h5000_defconfig
powerpc                    amigaone_defconfig
arm                            pleb_defconfig
mips                        bcm63xx_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                       aspeed_g5_defconfig
mips                     cu1000-neo_defconfig
arm                         nhk8815_defconfig
arm                        clps711x_defconfig
arm                          ep93xx_defconfig
h8300                               defconfig
sh                              ul2_defconfig
powerpc                      cm5200_defconfig
sh                   sh7770_generic_defconfig
arm                           spitz_defconfig
arm                          iop32x_defconfig
sh                          r7780mp_defconfig
microblaze                          defconfig
mips                           ip22_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
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
powerpc                           allnoconfig
x86_64               randconfig-a004-20201006
x86_64               randconfig-a002-20201006
x86_64               randconfig-a001-20201006
x86_64               randconfig-a005-20201006
x86_64               randconfig-a003-20201006
x86_64               randconfig-a006-20201006
i386                 randconfig-a006-20201005
i386                 randconfig-a005-20201005
i386                 randconfig-a001-20201005
i386                 randconfig-a004-20201005
i386                 randconfig-a003-20201005
i386                 randconfig-a002-20201005
i386                 randconfig-a006-20201008
i386                 randconfig-a005-20201008
i386                 randconfig-a001-20201008
i386                 randconfig-a004-20201008
i386                 randconfig-a002-20201008
i386                 randconfig-a003-20201008
i386                 randconfig-a006-20201007
i386                 randconfig-a005-20201007
i386                 randconfig-a001-20201007
i386                 randconfig-a004-20201007
i386                 randconfig-a003-20201007
i386                 randconfig-a002-20201007
x86_64               randconfig-a012-20201007
x86_64               randconfig-a015-20201007
x86_64               randconfig-a014-20201007
x86_64               randconfig-a013-20201007
x86_64               randconfig-a011-20201007
x86_64               randconfig-a016-20201007
x86_64               randconfig-a012-20201005
x86_64               randconfig-a015-20201005
x86_64               randconfig-a014-20201005
x86_64               randconfig-a013-20201005
x86_64               randconfig-a011-20201005
x86_64               randconfig-a016-20201005
i386                 randconfig-a015-20201008
i386                 randconfig-a013-20201008
i386                 randconfig-a014-20201008
i386                 randconfig-a016-20201008
i386                 randconfig-a011-20201008
i386                 randconfig-a012-20201008
i386                 randconfig-a014-20201005
i386                 randconfig-a015-20201005
i386                 randconfig-a013-20201005
i386                 randconfig-a016-20201005
i386                 randconfig-a011-20201005
i386                 randconfig-a012-20201005
x86_64               randconfig-a004-20201008
x86_64               randconfig-a003-20201008
x86_64               randconfig-a005-20201008
x86_64               randconfig-a001-20201008
x86_64               randconfig-a002-20201008
x86_64               randconfig-a006-20201008
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201007
x86_64               randconfig-a002-20201007
x86_64               randconfig-a001-20201007
x86_64               randconfig-a005-20201007
x86_64               randconfig-a003-20201007
x86_64               randconfig-a006-20201007
x86_64               randconfig-a012-20201008
x86_64               randconfig-a015-20201008
x86_64               randconfig-a013-20201008
x86_64               randconfig-a014-20201008
x86_64               randconfig-a011-20201008
x86_64               randconfig-a016-20201008

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
