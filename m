Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F6736CF94
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 01:31:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1E7E404E3;
	Tue, 27 Apr 2021 23:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRRANHKmXoUu; Tue, 27 Apr 2021 23:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E4C2404E1;
	Tue, 27 Apr 2021 23:31:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08C481C11A1
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 23:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 046BA405A4
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 23:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSTNtGp9gAw0 for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 23:31:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76448404EC
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 23:31:27 +0000 (UTC)
IronPort-SDR: xVjb0R6FR3QFn2+GnzBGuF3Ii4nehpnZJee1VdFm6k90FFuVb9+I0inKM4m5qe+QmX4K3oCRqK
 D3MzeEmZcajQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="176731673"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="176731673"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:31:26 -0700
IronPort-SDR: t4d2rzWR8BNJwBBvGKGivK6kxIJvL9EjlwrwMyOqRQHxRdTMED9zUObQF8/hF6pzW3FOg/gAyj
 oIq4QgeG59HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="454843280"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Apr 2021 16:31:24 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lbXAn-0006lW-Be; Tue, 27 Apr 2021 23:31:21 +0000
Date: Wed, 28 Apr 2021 07:31:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 22e1eae2e1278f7d037c7d764d9e507e3a02a84d
Message-ID: <60889ec4.B8aqlXt44YaF0aAP%lkp@intel.com>
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
branch HEAD: 22e1eae2e1278f7d037c7d764d9e507e3a02a84d  staging: rtl8723bs: macro DRIVER_PREFIX expands to lowercase driver name

Warning in current branch:

drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- alpha-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm64-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm64-randconfig-r014-20210426
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- mips-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- mips-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- parisc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- powerpc-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- powerpc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- riscv-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- riscv-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- riscv-randconfig-s032-20210427
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- s390-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- sparc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- x86_64-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- x86_64-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- x86_64-randconfig-a012-20210426
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
`-- xtensa-allyesconfig
    `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used

elapsed time: 727m

configs tested: 141
configs skipped: 3

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
mips                      fuloong2e_defconfig
arm                         mv78xx0_defconfig
sparc                       sparc32_defconfig
m68k                                defconfig
mips                        maltaup_defconfig
mips                           rs90_defconfig
powerpc                     mpc83xx_defconfig
microblaze                          defconfig
openrisc                 simple_smp_defconfig
sh                   sh7724_generic_defconfig
powerpc                          allyesconfig
arm                         at91_dt_defconfig
arm                      jornada720_defconfig
arm                  colibri_pxa300_defconfig
xtensa                    xip_kc705_defconfig
sh                         apsh4a3a_defconfig
arm                           stm32_defconfig
s390                             alldefconfig
mips                      maltaaprp_defconfig
sh                           se7206_defconfig
powerpc                    socrates_defconfig
sh                          r7780mp_defconfig
sh                           se7712_defconfig
arm                     am200epdkit_defconfig
powerpc                 mpc834x_mds_defconfig
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
arm                             mxs_defconfig
sh                          r7785rp_defconfig
arm                          ep93xx_defconfig
sh                          rsk7201_defconfig
sh                               alldefconfig
m68k                       m5475evb_defconfig
sh                          sdk7780_defconfig
arm                        keystone_defconfig
h8300                     edosk2674_defconfig
xtensa                         virt_defconfig
sh                          rsk7203_defconfig
mips                        bcm47xx_defconfig
microblaze                      mmu_defconfig
arm                      tct_hammer_defconfig
x86_64                              defconfig
powerpc                 mpc8315_rdb_defconfig
riscv                            alldefconfig
m68k                         amcore_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                          axs103_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
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
i386                                defconfig
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
