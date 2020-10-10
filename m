Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA47A289CF3
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 03:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43EA486E4F;
	Sat, 10 Oct 2020 01:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YXc8aReCI2DS; Sat, 10 Oct 2020 01:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1F0886DD7;
	Sat, 10 Oct 2020 01:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57BB51BF34A
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 01:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5328887624
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 01:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GgxTdNkIjDYr for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 01:16:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 520F787621
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 01:16:46 +0000 (UTC)
IronPort-SDR: 9ZVDS0ajNf8ODWRP85Q64i9kAJl3/lb9w96h7dLMky1hgzueQVPQUmojE8b+/xeJBakStiXeAr
 rbVIJUfGy2Eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165614383"
X-IronPort-AV: E=Sophos;i="5.77,357,1596524400"; d="scan'208";a="165614383"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 18:16:41 -0700
IronPort-SDR: f1NR8NKSrj2OypQWHTJuZ91WrHmzX+6DlIiaYkj/A8MzEL15odZfgCBpNXka/ceUqcTrMlm2n0
 N5RzJSN3g/XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,357,1596524400"; d="scan'208";a="355059739"
Received: from lkp-server02.sh.intel.com (HELO 80eb06af76cf) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2020 18:16:40 -0700
Received: from kbuild by 80eb06af76cf with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kR3V2-0000oc-2m; Sat, 10 Oct 2020 01:16:40 +0000
Date: Sat, 10 Oct 2020 09:16:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 41f0666f0f60997dea10e716df728f330525052e
Message-ID: <5f810b54.tEoJrHSVgCNhhTBy%lkp@intel.com>
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
branch HEAD: 41f0666f0f60997dea10e716df728f330525052e  staging: rtl8188eu: Fix long lines

elapsed time: 723m

configs tested: 171
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
c6x                                 defconfig
sparc64                          alldefconfig
arm                          iop32x_defconfig
m68k                       m5249evb_defconfig
powerpc                     rainier_defconfig
powerpc                     tqm8548_defconfig
arm                          imote2_defconfig
powerpc                       maple_defconfig
arm                           sama5_defconfig
arm                       multi_v4t_defconfig
powerpc                     ksi8560_defconfig
ia64                             alldefconfig
sh                     magicpanelr2_defconfig
arm                            lart_defconfig
m68k                          atari_defconfig
powerpc                     pseries_defconfig
mips                       rbtx49xx_defconfig
arc                     nsimosci_hs_defconfig
sh                        sh7757lcr_defconfig
arm                             pxa_defconfig
powerpc                      cm5200_defconfig
powerpc                         wii_defconfig
sh                            shmin_defconfig
powerpc                     kmeter1_defconfig
arm                           corgi_defconfig
arc                      axs103_smp_defconfig
arm                         s3c6400_defconfig
um                             i386_defconfig
mips                       bmips_be_defconfig
arm                           tegra_defconfig
m68k                             alldefconfig
arc                        vdk_hs38_defconfig
powerpc                    klondike_defconfig
powerpc                      makalu_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                   motionpro_defconfig
sparc64                             defconfig
arc                        nsim_700_defconfig
arm                        multi_v7_defconfig
mips                          rm200_defconfig
sh                               j2_defconfig
arm                           spitz_defconfig
h8300                    h8300h-sim_defconfig
mips                      maltasmvp_defconfig
openrisc                    or1ksim_defconfig
sh                          sdk7780_defconfig
arm                          prima2_defconfig
powerpc                    gamecube_defconfig
c6x                        evmc6472_defconfig
mips                      loongson3_defconfig
mips                           gcw0_defconfig
nios2                         3c120_defconfig
sh                          rsk7203_defconfig
powerpc                 mpc832x_mds_defconfig
sh                        dreamcast_defconfig
xtensa                              defconfig
arm                       mainstone_defconfig
powerpc                     tqm5200_defconfig
openrisc                 simple_smp_defconfig
sh                        edosk7705_defconfig
sh                         microdev_defconfig
arm                        mvebu_v5_defconfig
arm                            xcep_defconfig
parisc                generic-32bit_defconfig
microblaze                    nommu_defconfig
sh                   secureedge5410_defconfig
arm                        trizeps4_defconfig
arm                         nhk8815_defconfig
xtensa                  audio_kc705_defconfig
microblaze                      mmu_defconfig
sh                        sh7785lcr_defconfig
powerpc                 mpc834x_mds_defconfig
sh                          rsk7264_defconfig
m68k                             allmodconfig
powerpc                     tqm8540_defconfig
microblaze                          defconfig
sh                           se7721_defconfig
sh                          rsk7269_defconfig
powerpc                      katmai_defconfig
arm                     am200epdkit_defconfig
powerpc                        cell_defconfig
sh                           se7705_defconfig
arm                     davinci_all_defconfig
riscv                    nommu_k210_defconfig
powerpc                      bamboo_defconfig
m68k                         amcore_defconfig
arm                             ezx_defconfig
arm                         shannon_defconfig
powerpc                   bluestone_defconfig
sh                          landisk_defconfig
mips                     loongson1c_defconfig
mips                   sb1250_swarm_defconfig
powerpc                     mpc5200_defconfig
mips                     cu1830-neo_defconfig
openrisc                         alldefconfig
mips                         db1xxx_defconfig
powerpc                  mpc866_ads_defconfig
i386                             alldefconfig
arm                       spear13xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201009
i386                 randconfig-a005-20201009
i386                 randconfig-a001-20201009
i386                 randconfig-a004-20201009
i386                 randconfig-a002-20201009
i386                 randconfig-a003-20201009
x86_64               randconfig-a012-20201009
x86_64               randconfig-a015-20201009
x86_64               randconfig-a013-20201009
x86_64               randconfig-a014-20201009
x86_64               randconfig-a011-20201009
x86_64               randconfig-a016-20201009
i386                 randconfig-a015-20201009
i386                 randconfig-a013-20201009
i386                 randconfig-a014-20201009
i386                 randconfig-a016-20201009
i386                 randconfig-a011-20201009
i386                 randconfig-a012-20201009
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201009
x86_64               randconfig-a003-20201009
x86_64               randconfig-a005-20201009
x86_64               randconfig-a001-20201009
x86_64               randconfig-a002-20201009
x86_64               randconfig-a006-20201009

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
