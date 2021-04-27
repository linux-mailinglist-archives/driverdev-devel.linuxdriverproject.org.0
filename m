Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BBB36CFB3
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 01:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EDDE404F5;
	Tue, 27 Apr 2021 23:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6c9MlQz-MsV; Tue, 27 Apr 2021 23:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B3A0404E1;
	Tue, 27 Apr 2021 23:47:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75F271C11A1
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 23:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6544B83DBA
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 23:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W5iNDsJlf0pO for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 23:47:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65F3D83DC0
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 23:47:26 +0000 (UTC)
IronPort-SDR: 1xlxq9oRN4Qe53Vt1u4RccI3WkLHoR4sV0pX0mJa4/W6lwcwe/1cJfVa91qndO3vsBUCdwK+9o
 l4QYM+S5ysPw==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="176734026"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="176734026"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:47:25 -0700
IronPort-SDR: VMClZwibh1Ndb81hz5kBshoylGkgjy9rNmINzzZ/xe9Bs6ILoA6WVT9tBtrDXtsDEsAVQ5IHzU
 0abWVXcDT8wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="387499740"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 27 Apr 2021 16:47:24 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lbXQJ-0006lu-Ct; Tue, 27 Apr 2021 23:47:23 +0000
Date: Wed, 28 Apr 2021 07:47:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kbuild] BUILD SUCCESS
 1f809413390511cce07dc3b09dace0b717dd8c2f
Message-ID: <6088a286.gB2PD0BduWQy5pIn%lkp@intel.com>
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
branch HEAD: 1f809413390511cce07dc3b09dace0b717dd8c2f  kbuild: allow arches to have their own "bootloader.sh"

elapsed time: 723m

configs tested: 152
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
i386                             allyesconfig
riscv                            allyesconfig
mips                         tb0287_defconfig
sh                          rsk7264_defconfig
mips                     decstation_defconfig
powerpc                   currituck_defconfig
powerpc                     tqm8548_defconfig
arm                         axm55xx_defconfig
arm                        keystone_defconfig
arc                              alldefconfig
arm                  colibri_pxa270_defconfig
sh                     magicpanelr2_defconfig
mips                        maltaup_defconfig
mips                           rs90_defconfig
powerpc                     mpc83xx_defconfig
microblaze                          defconfig
openrisc                 simple_smp_defconfig
sh                   sh7724_generic_defconfig
powerpc                          allyesconfig
arm                         at91_dt_defconfig
i386                                defconfig
arm                      jornada720_defconfig
arm                  colibri_pxa300_defconfig
xtensa                    xip_kc705_defconfig
sh                         apsh4a3a_defconfig
arm                           stm32_defconfig
s390                             alldefconfig
mips                      maltaaprp_defconfig
ia64                             allmodconfig
arm                           sama5_defconfig
arm                             mxs_defconfig
arc                     nsimosci_hs_defconfig
openrisc                  or1klitex_defconfig
sh                          urquell_defconfig
m68k                          atari_defconfig
powerpc                     asp8347_defconfig
m68k                          multi_defconfig
arm                      tct_hammer_defconfig
arm                      pxa255-idp_defconfig
sh                           sh2007_defconfig
powerpc                      makalu_defconfig
powerpc                    amigaone_defconfig
ia64                          tiger_defconfig
mips                        jmr3927_defconfig
arm                            xcep_defconfig
arm                          moxart_defconfig
arm                          pcm027_defconfig
arm                           tegra_defconfig
xtensa                       common_defconfig
sh                           se7721_defconfig
powerpc                   bluestone_defconfig
arm                       mainstone_defconfig
arm                   milbeaut_m10v_defconfig
mips                      malta_kvm_defconfig
sh                             espt_defconfig
powerpc                      bamboo_defconfig
mips                     loongson1b_defconfig
sh                          r7785rp_defconfig
arm                          ep93xx_defconfig
sh                          rsk7201_defconfig
sh                               alldefconfig
m68k                       m5475evb_defconfig
mips                      fuloong2e_defconfig
sh                          sdk7780_defconfig
h8300                     edosk2674_defconfig
xtensa                         virt_defconfig
sh                          rsk7203_defconfig
mips                        bcm47xx_defconfig
microblaze                      mmu_defconfig
riscv                            alldefconfig
m68k                         amcore_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                          axs103_defconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210426
i386                 randconfig-a002-20210426
i386                 randconfig-a001-20210426
i386                 randconfig-a006-20210426
i386                 randconfig-a004-20210426
i386                 randconfig-a003-20210426
x86_64               randconfig-a015-20210426
x86_64               randconfig-a016-20210426
x86_64               randconfig-a011-20210426
x86_64               randconfig-a014-20210426
x86_64               randconfig-a012-20210426
x86_64               randconfig-a013-20210426
i386                 randconfig-a014-20210426
i386                 randconfig-a012-20210426
i386                 randconfig-a011-20210426
i386                 randconfig-a013-20210426
i386                 randconfig-a015-20210426
i386                 randconfig-a016-20210426
x86_64               randconfig-a002-20210427
x86_64               randconfig-a004-20210427
x86_64               randconfig-a001-20210427
x86_64               randconfig-a006-20210427
x86_64               randconfig-a005-20210427
x86_64               randconfig-a003-20210427
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
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
x86_64               randconfig-a002-20210426
x86_64               randconfig-a004-20210426
x86_64               randconfig-a001-20210426
x86_64               randconfig-a006-20210426
x86_64               randconfig-a005-20210426
x86_64               randconfig-a003-20210426

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
