Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765849D776
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jan 2022 02:26:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D378984E91;
	Thu, 27 Jan 2022 01:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRTKNVpeuahe; Thu, 27 Jan 2022 01:26:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A1BE84DEF;
	Thu, 27 Jan 2022 01:26:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6651BF44C
 for <devel@linuxdriverproject.org>; Thu, 27 Jan 2022 01:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4825961056
 for <devel@linuxdriverproject.org>; Thu, 27 Jan 2022 01:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quN_9TYxmhmZ for <devel@linuxdriverproject.org>;
 Thu, 27 Jan 2022 01:26:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49C166103F
 for <devel@driverdev.osuosl.org>; Thu, 27 Jan 2022 01:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643246791; x=1674782791;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=F4GiVV7RqNIYXQbfttn1beGkq+4Y8BN55Uho1fFj9ig=;
 b=cIIKKPyCSdtjyMSDBquDTNAlT8CRrL4vOpZM7LsNI8K33oPXOq4FG972
 Tp6aZFgvk62POpop2ONQMxBls2bnivp/k78qKKGJLEHi5yna23ggyrjR1
 w/KQRAVN2tONF0olou/AidrDQjLEKlZG09TqQp4DZmmtdzu/YlwvZq89A
 FN8RkdijWDUB1QSeSE2IwkZQn4G42AzzqFwu/XKBDsreTo0qq2LjlRJcT
 xMzcQVzPgpmMx7PDWBdzPMTUEu2M+oT2Qjl1u0DqTQrRR+Ia5haze3iLQ
 Huo1nswh+8B4X8MtjxHJL/RL4peX+kCmOE8KMoeT3egR7B8DmT+dphSgc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="307427664"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="307427664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 17:26:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="696448015"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2022 17:26:29 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nCtYS-000LvM-C1; Thu, 27 Jan 2022 01:26:28 +0000
Date: Thu, 27 Jan 2022 09:26:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 64b2d6ffff862c0e7278198b4229e42e1abb3bb1
Message-ID: <61f1f4bc.pE2+pm2wqAWI8GWG%lkp@intel.com>
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
branch HEAD: 64b2d6ffff862c0e7278198b4229e42e1abb3bb1  staging: mt7621-dts: align resets with binding documentation

elapsed time: 734m

configs tested: 183
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
m68k                         apollo_defconfig
arc                    vdk_hs38_smp_defconfig
mips                  decstation_64_defconfig
sh                         ecovec24_defconfig
sh                          kfr2r09_defconfig
powerpc                mpc7448_hpc2_defconfig
um                               alldefconfig
arc                     nsimosci_hs_defconfig
sparc64                          alldefconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
powerpc                       ppc64_defconfig
m68k                        stmark2_defconfig
xtensa                  nommu_kc705_defconfig
sparc                            allyesconfig
mips                         rt305x_defconfig
arm                            zeus_defconfig
nios2                         10m50_defconfig
xtensa                              defconfig
arc                        vdk_hs38_defconfig
ia64                        generic_defconfig
sh                           sh2007_defconfig
sh                          rsk7269_defconfig
um                                  defconfig
m68k                          hp300_defconfig
nds32                               defconfig
sh                ecovec24-romimage_defconfig
m68k                       m5249evb_defconfig
arm                             rpc_defconfig
mips                        bcm47xx_defconfig
xtensa                  audio_kc705_defconfig
mips                         cobalt_defconfig
powerpc                      makalu_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      mgcoge_defconfig
arm                        keystone_defconfig
mips                           ip32_defconfig
sh                           se7722_defconfig
m68k                          amiga_defconfig
powerpc                      ppc6xx_defconfig
arm                             ezx_defconfig
powerpc                     ep8248e_defconfig
sh                             espt_defconfig
powerpc                        warp_defconfig
sh                           se7724_defconfig
s390                          debug_defconfig
m68k                        mvme16x_defconfig
xtensa                       common_defconfig
powerpc                      tqm8xx_defconfig
h8300                            alldefconfig
arm                           corgi_defconfig
arm                          pxa910_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220124
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220124
riscv                randconfig-r042-20220125
arc                  randconfig-r043-20220125
s390                 randconfig-r044-20220125
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
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
arm                          imote2_defconfig
powerpc                  mpc866_ads_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                malta_qemu_32r6_defconfig
mips                         tb0219_defconfig
mips                          malta_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                    socrates_defconfig
powerpc                      obs600_defconfig
arm                            mmp2_defconfig
mips                   sb1250_swarm_defconfig
powerpc                   microwatt_defconfig
arm                           omap1_defconfig
powerpc                     skiroot_defconfig
i386                             allyesconfig
powerpc                      walnut_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                     powernv_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220124
hexagon              randconfig-r041-20220124
riscv                randconfig-r042-20220124
s390                 randconfig-r044-20220124
hexagon              randconfig-r045-20220125
hexagon              randconfig-r041-20220125
riscv                randconfig-r042-20220126
hexagon              randconfig-r045-20220126
hexagon              randconfig-r041-20220126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
