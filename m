Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F75535471C
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Apr 2021 21:26:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C255F41D34;
	Mon,  5 Apr 2021 19:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LU6m4HT3-u9G; Mon,  5 Apr 2021 19:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C76641C83;
	Mon,  5 Apr 2021 19:26:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46CEA1BF350
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 19:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 369934041E
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 19:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSZAaV0yi1r8 for <devel@linuxdriverproject.org>;
 Mon,  5 Apr 2021 19:25:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFCFF403FB
 for <devel@driverdev.osuosl.org>; Mon,  5 Apr 2021 19:25:36 +0000 (UTC)
IronPort-SDR: SZj1IXvb9xwgOsOXL8Tm2XpywhVCmmNpKBsthw4i4iWkub0HUzCdjomZVpiK0NNeBDNj8f/glW
 hOuscG/ahnQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="256895082"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="256895082"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 12:25:36 -0700
IronPort-SDR: onY3WAHRLlN4/nr9gQeH4y3upkCtid0relitrj6eamtfBHy7RzCvNz5AXA01/bqVmSjfnAtLod
 CNNGkWbTk/IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="379082411"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Apr 2021 12:25:34 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lTUqr-000Aaw-Tm; Mon, 05 Apr 2021 19:25:33 +0000
Date: Tue, 06 Apr 2021 03:24:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 b20e82939034a79e9af50853d63163fe21f205a9
Message-ID: <606b6404.x2lz7clI7/snsjQB%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: b20e82939034a79e9af50853d63163fe21f205a9  Merge 5.12-rc6 into driver-core-next

elapsed time: 727m

configs tested: 159
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
arm                             pxa_defconfig
mips                           gcw0_defconfig
sparc                       sparc32_defconfig
h8300                    h8300h-sim_defconfig
ia64                      gensparse_defconfig
arm                            mps2_defconfig
powerpc                     mpc5200_defconfig
powerpc                     tqm5200_defconfig
arm                      pxa255-idp_defconfig
sh                          lboxre2_defconfig
sh                           se7705_defconfig
arm                     davinci_all_defconfig
sh                           se7751_defconfig
sh                           sh2007_defconfig
powerpc                     tqm8540_defconfig
riscv                          rv32_defconfig
sh                         ap325rxa_defconfig
arm                         at91_dt_defconfig
mips                           jazz_defconfig
mips                             allyesconfig
mips                           rs90_defconfig
powerpc                    sam440ep_defconfig
arm                           h3600_defconfig
powerpc                     ep8248e_defconfig
arm                        cerfcube_defconfig
mips                      loongson3_defconfig
mips                   sb1250_swarm_defconfig
arc                                 defconfig
arm                        spear6xx_defconfig
sh                         apsh4a3a_defconfig
openrisc                            defconfig
arm                            mmp2_defconfig
sh                             shx3_defconfig
arm                      tct_hammer_defconfig
mips                      malta_kvm_defconfig
powerpc                     skiroot_defconfig
mips                           ci20_defconfig
arm                         cm_x300_defconfig
arm                      integrator_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      ep88xc_defconfig
arm                         palmz72_defconfig
openrisc                  or1klitex_defconfig
arm                       aspeed_g5_defconfig
arm                           spitz_defconfig
mips                       lemote2f_defconfig
sh                           se7780_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc40x_defconfig
arm                          ixp4xx_defconfig
sh                           se7721_defconfig
sh                   sh7724_generic_defconfig
m68k                          sun3x_defconfig
arm                     am200epdkit_defconfig
mips                      pistachio_defconfig
mips                          ath25_defconfig
powerpc                     akebono_defconfig
openrisc                         alldefconfig
powerpc                     sbc8548_defconfig
mips                        omega2p_defconfig
parisc                generic-64bit_defconfig
arm                        neponset_defconfig
arm                            hisi_defconfig
powerpc                     mpc512x_defconfig
arm                          simpad_defconfig
m68k                             alldefconfig
sh                           se7712_defconfig
powerpc                        fsp2_defconfig
powerpc                       ppc64_defconfig
arm                       versatile_defconfig
s390                       zfcpdump_defconfig
sh                 kfr2r09-romimage_defconfig
mips                           ip27_defconfig
mips                     cu1000-neo_defconfig
powerpc                     mpc83xx_defconfig
mips                malta_kvm_guest_defconfig
arc                        vdk_hs38_defconfig
arm                            qcom_defconfig
arm                       multi_v4t_defconfig
mips                        workpad_defconfig
h8300                     edosk2674_defconfig
powerpc                    klondike_defconfig
mips                          rm200_defconfig
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
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210405
i386                 randconfig-a003-20210405
i386                 randconfig-a001-20210405
i386                 randconfig-a004-20210405
i386                 randconfig-a002-20210405
i386                 randconfig-a005-20210405
x86_64               randconfig-a014-20210405
x86_64               randconfig-a015-20210405
x86_64               randconfig-a013-20210405
x86_64               randconfig-a011-20210405
x86_64               randconfig-a012-20210405
x86_64               randconfig-a016-20210405
i386                 randconfig-a014-20210405
i386                 randconfig-a011-20210405
i386                 randconfig-a016-20210405
i386                 randconfig-a012-20210405
i386                 randconfig-a015-20210405
i386                 randconfig-a013-20210405
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a004-20210405
x86_64               randconfig-a003-20210405
x86_64               randconfig-a005-20210405
x86_64               randconfig-a001-20210405
x86_64               randconfig-a002-20210405
x86_64               randconfig-a006-20210405

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
