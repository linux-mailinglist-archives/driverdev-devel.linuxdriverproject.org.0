Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF59356052
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Apr 2021 02:30:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D6C8406AC;
	Wed,  7 Apr 2021 00:30:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWuFq7xhaE1I; Wed,  7 Apr 2021 00:30:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB9CA4067E;
	Wed,  7 Apr 2021 00:30:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8DAD1C1148
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 00:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9A1C40172
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 00:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LMKHL1XPHCLh for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 00:30:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F337440113
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 00:30:40 +0000 (UTC)
IronPort-SDR: i0KTC87n6VvJlY30ot/y00i8n2y1Fys706uQF+I7rzy5PHZLVCDUO8I7OAz1AgccCaHkJaZdYN
 rdvnLmaNotbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="193229986"
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; d="scan'208";a="193229986"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 17:30:39 -0700
IronPort-SDR: OT9JgZNKnf3PFcd9oM/6lWvrdGY9/nrNN61G2n9Wk5HiU4Cd73vu22CJH2m6OUl2NCXgQmXhAi
 JY0ONsU3Kkgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; d="scan'208";a="530001908"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 06 Apr 2021 17:30:38 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lTw5d-000CXQ-Q4; Wed, 07 Apr 2021 00:30:37 +0000
Date: Wed, 07 Apr 2021 08:29:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 e91cafdf3c18b927e61eb4ee18e4865b8485f24f
Message-ID: <606cfd00.7kZOOz8OgOrmC8M7%lkp@intel.com>
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
branch HEAD: e91cafdf3c18b927e61eb4ee18e4865b8485f24f  staging: rtl8712: Remove extra blank lines

elapsed time: 727m

configs tested: 148
configs skipped: 3

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
riscv                            allyesconfig
i386                             allyesconfig
arm                        clps711x_defconfig
sh                         microdev_defconfig
powerpc                      bamboo_defconfig
mips                      pistachio_defconfig
sh                           se7619_defconfig
parisc                           allyesconfig
m68k                            q40_defconfig
powerpc                    mvme5100_defconfig
mips                          ath25_defconfig
powerpc                     tqm8540_defconfig
sh                        sh7785lcr_defconfig
riscv                    nommu_virt_defconfig
arm                     am200epdkit_defconfig
xtensa                  audio_kc705_defconfig
arm                      integrator_defconfig
arm                           sunxi_defconfig
powerpc                  mpc885_ads_defconfig
mips                           ip28_defconfig
sh                          sdk7780_defconfig
m68k                        m5272c3_defconfig
nds32                             allnoconfig
mips                           mtx1_defconfig
arc                     nsimosci_hs_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                     pq2fads_defconfig
powerpc                        fsp2_defconfig
arm                       versatile_defconfig
arm                        trizeps4_defconfig
m68k                       m5249evb_defconfig
mips                        omega2p_defconfig
arm                             rpc_defconfig
microblaze                      mmu_defconfig
powerpc                     kilauea_defconfig
arc                          axs101_defconfig
openrisc                  or1klitex_defconfig
arm                        spear6xx_defconfig
mips                    maltaup_xpa_defconfig
arm                      jornada720_defconfig
powerpc                     tqm8541_defconfig
sh                 kfr2r09-romimage_defconfig
sh                        edosk7760_defconfig
h8300                            alldefconfig
arc                     haps_hs_smp_defconfig
sh                           se7724_defconfig
m68k                        m5407c3_defconfig
arm                      pxa255-idp_defconfig
arm                        mvebu_v7_defconfig
ia64                             alldefconfig
m68k                          multi_defconfig
mips                   sb1250_swarm_defconfig
powerpc                   motionpro_defconfig
sh                   sh7770_generic_defconfig
arc                           tb10x_defconfig
mips                       bmips_be_defconfig
arm                         lpc18xx_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                mpc7448_hpc2_defconfig
s390                       zfcpdump_defconfig
xtensa                           allyesconfig
powerpc                     tqm8548_defconfig
powerpc                     akebono_defconfig
arc                 nsimosci_hs_smp_defconfig
parisc                generic-64bit_defconfig
powerpc                      tqm8xx_defconfig
arm                       aspeed_g4_defconfig
m68k                         apollo_defconfig
arm                          pcm027_defconfig
sparc                       sparc32_defconfig
arm                     davinci_all_defconfig
arc                        vdk_hs38_defconfig
sh                          rsk7203_defconfig
sh                          sdk7786_defconfig
sparc                       sparc64_defconfig
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
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210406
x86_64               randconfig-a003-20210406
x86_64               randconfig-a005-20210406
x86_64               randconfig-a001-20210406
x86_64               randconfig-a002-20210406
x86_64               randconfig-a006-20210406
i386                 randconfig-a006-20210406
i386                 randconfig-a003-20210406
i386                 randconfig-a001-20210406
i386                 randconfig-a004-20210406
i386                 randconfig-a005-20210406
i386                 randconfig-a002-20210406
i386                 randconfig-a014-20210406
i386                 randconfig-a016-20210406
i386                 randconfig-a011-20210406
i386                 randconfig-a012-20210406
i386                 randconfig-a015-20210406
i386                 randconfig-a013-20210406
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a014-20210406
x86_64               randconfig-a015-20210406
x86_64               randconfig-a013-20210406
x86_64               randconfig-a011-20210406
x86_64               randconfig-a012-20210406
x86_64               randconfig-a016-20210406

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
