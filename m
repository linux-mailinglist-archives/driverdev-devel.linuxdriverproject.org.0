Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2FF4B8031
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Feb 2022 06:28:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 165A3605BA;
	Wed, 16 Feb 2022 05:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGfZ63YBUBiy; Wed, 16 Feb 2022 05:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A75FB600B9;
	Wed, 16 Feb 2022 05:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D2511BF94D
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 05:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9EF583276
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 05:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NfrMSSeCiYB5 for <devel@linuxdriverproject.org>;
 Wed, 16 Feb 2022 05:28:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F20183224
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 05:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644989308; x=1676525308;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qQQJF23YXu24kCapzCkJlrtvSH1kWBhThMtrq8/ZDDQ=;
 b=Z/bpyBDGGpOwXqOWD8SSEh1zFTQ/J2hP+WNBBk7NvCqKn8n1KOm5I903
 yBFlksK1RSoS1GwtjfKw+Vi/r6SbMDBPuu9yJikhu5rc1Rgtl2r16BVBg
 2gAJCR+eg+slKzgCHvpP2DkUj8woygKxHdNkVDcPqzRiWT/bnMe66TvOT
 EIRKZNybXXmlikGmzeJ+iIZXTO/4qg9GhtVUIWwOsQyoILdFld9ZVirsO
 4QwiNHPMdRcp47Pi3+z1xNnQe8eGS7rSEP1+1Gj6/ZeuyZ1yAkVbs41rm
 VFPQatipc2eCZQarH/q5SIYaEIn+vrenflR7ar2pqc8Octbp3aNx2afRt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="336959789"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="336959789"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 21:28:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498234047"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 15 Feb 2022 21:28:25 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nKCrZ-000ASZ-67; Wed, 16 Feb 2022 05:28:25 +0000
Date: Wed, 16 Feb 2022 13:27:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 e9685834b1db754cbd07e31ad1a091f5d366dacf
Message-ID: <620c8b4e.dqJigjq43p5sX5lY%lkp@intel.com>
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
branch HEAD: e9685834b1db754cbd07e31ad1a091f5d366dacf  staging: r8188eu: remove unconditional if statement

elapsed time: 733m

configs tested: 171
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220214
i386                          randconfig-c001
mips                 randconfig-c004-20220216
sh                           se7751_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                      fuloong2e_defconfig
sh                        sh7763rdp_defconfig
arm                        realview_defconfig
arm                          iop32x_defconfig
arm                          simpad_defconfig
csky                                defconfig
powerpc                     taishan_defconfig
arm                         assabet_defconfig
arc                     nsimosci_hs_defconfig
m68k                       m5208evb_defconfig
arm                            hisi_defconfig
sh                        edosk7705_defconfig
sh                          lboxre2_defconfig
arm                       omap2plus_defconfig
arm                        shmobile_defconfig
sh                             espt_defconfig
sh                             sh03_defconfig
arm                            lart_defconfig
mips                          rb532_defconfig
arm                          badge4_defconfig
sh                           se7750_defconfig
arm                           stm32_defconfig
arm                      integrator_defconfig
arm                           sunxi_defconfig
mips                  decstation_64_defconfig
powerpc                 mpc834x_mds_defconfig
m68k                       m5475evb_defconfig
powerpc                      arches_defconfig
arm                          pxa910_defconfig
arm                           u8500_defconfig
arm                        oxnas_v6_defconfig
openrisc                 simple_smp_defconfig
sh                                  defconfig
m68k                             alldefconfig
arm                       aspeed_g5_defconfig
xtensa                  nommu_kc705_defconfig
arm                           viper_defconfig
arm                            mps2_defconfig
arm                      jornada720_defconfig
m68k                          atari_defconfig
arm64                            alldefconfig
sh                            shmin_defconfig
sh                        sh7757lcr_defconfig
openrisc                  or1klitex_defconfig
powerpc                        warp_defconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
i386                             alldefconfig
sh                           se7724_defconfig
sh                        edosk7760_defconfig
mips                       capcella_defconfig
arm                        cerfcube_defconfig
mips                      loongson3_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220214
arm                  randconfig-c002-20220216
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a013-20220214
x86_64               randconfig-a014-20220214
x86_64               randconfig-a012-20220214
x86_64               randconfig-a015-20220214
x86_64               randconfig-a011-20220214
x86_64               randconfig-a016-20220214
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                 randconfig-a013-20220214
i386                 randconfig-a016-20220214
i386                 randconfig-a012-20220214
i386                 randconfig-a015-20220214
i386                 randconfig-a011-20220214
i386                 randconfig-a014-20220214
riscv                randconfig-r042-20220214
arc                  randconfig-r043-20220214
s390                 randconfig-r044-20220214
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220216
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220216
arm                  randconfig-c002-20220216
i386                          randconfig-c001
mips                 randconfig-c004-20220216
arm                        neponset_defconfig
powerpc                      ppc44x_defconfig
powerpc                      obs600_defconfig
powerpc                     tqm8560_defconfig
powerpc                  mpc885_ads_defconfig
mips                         tb0287_defconfig
powerpc                      walnut_defconfig
x86_64               randconfig-a002-20220214
x86_64               randconfig-a006-20220214
x86_64               randconfig-a005-20220214
x86_64               randconfig-a004-20220214
x86_64               randconfig-a003-20220214
x86_64               randconfig-a001-20220214
i386                 randconfig-a004-20220214
i386                 randconfig-a005-20220214
i386                 randconfig-a006-20220214
i386                 randconfig-a002-20220214
i386                 randconfig-a003-20220214
i386                 randconfig-a001-20220214
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220214
hexagon              randconfig-r041-20220214
hexagon              randconfig-r045-20220216
hexagon              randconfig-r041-20220216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
