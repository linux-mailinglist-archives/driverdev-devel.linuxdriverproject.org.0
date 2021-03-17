Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E79C33E5B6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 02:08:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C12186F598;
	Wed, 17 Mar 2021 01:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gWWJDl5ilpJn; Wed, 17 Mar 2021 01:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BD556F5A1;
	Wed, 17 Mar 2021 01:08:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0311BF31C
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 01:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EDB78385D
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 01:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rq0EFs1zKlkc for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 01:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FC6E83857
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 01:08:13 +0000 (UTC)
IronPort-SDR: StvGARUiSNZ6iZqO9mAkjSVO5XOMmr/4BAE3TxFUj8HXbyWwXVobreGxlG0Mba3bXlkXgJQFZn
 jWf1qjU7XZgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="188722750"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="188722750"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 18:08:13 -0700
IronPort-SDR: j9XHnqdhcmFUAmmoH0N+BOIVUjh8V57zkHNMAPGXU+PZXT/74tVgThmTn2Tdn7rkoXvFdIeAMf
 Hh04vA8f2M3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="602036679"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2021 18:08:11 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lMKfT-0000QL-1W; Wed, 17 Mar 2021 01:08:11 +0000
Date: Wed, 17 Mar 2021 09:07:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 918ce05bbe52df43849a803010b4d2bcd31ea69c
Message-ID: <60515655.sQz9YtD3qfxoAwN3%lkp@intel.com>
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
branch HEAD: 918ce05bbe52df43849a803010b4d2bcd31ea69c  staging: gasket: remove it from the kernel

elapsed time: 721m

configs tested: 160
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
arm                         socfpga_defconfig
m68k                        mvme16x_defconfig
sparc                            alldefconfig
powerpc                   currituck_defconfig
arm                        multi_v5_defconfig
sh                           se7780_defconfig
powerpc                     tqm8541_defconfig
arm                     eseries_pxa_defconfig
m68k                            q40_defconfig
m68k                        m5407c3_defconfig
mips                             allmodconfig
arm                    vt8500_v6_v7_defconfig
sh                           se7722_defconfig
m68k                         apollo_defconfig
sh                             espt_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
arm                         hackkit_defconfig
arc                              allyesconfig
arm                          gemini_defconfig
sh                               j2_defconfig
arm                         vf610m4_defconfig
powerpc                      pmac32_defconfig
powerpc                     akebono_defconfig
mips                     loongson1b_defconfig
arc                         haps_hs_defconfig
arm                           u8500_defconfig
sh                           se7705_defconfig
h8300                       h8s-sim_defconfig
mips                        bcm47xx_defconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
parisc                generic-32bit_defconfig
powerpc                      ppc6xx_defconfig
microblaze                      mmu_defconfig
mips                           gcw0_defconfig
mips                     decstation_defconfig
arm                           omap1_defconfig
powerpc                       ppc64_defconfig
powerpc                 mpc834x_mds_defconfig
arm                            mps2_defconfig
csky                             alldefconfig
powerpc                  storcenter_defconfig
powerpc                      pcm030_defconfig
arm                         bcm2835_defconfig
mips                          rm200_defconfig
ia64                          tiger_defconfig
arm                        keystone_defconfig
sh                          rsk7201_defconfig
mips                           ip27_defconfig
sh                          r7785rp_defconfig
arm                         lubbock_defconfig
mips                    maltaup_xpa_defconfig
arm                       spear13xx_defconfig
sh                          sdk7786_defconfig
sh                           se7712_defconfig
powerpc                 mpc8315_rdb_defconfig
xtensa                generic_kc705_defconfig
sh                        edosk7760_defconfig
openrisc                            defconfig
powerpc                      bamboo_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                   bluestone_defconfig
mips                         tb0219_defconfig
arm                         assabet_defconfig
mips                      pistachio_defconfig
mips                  decstation_64_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                mpc7448_hpc2_defconfig
riscv                          rv32_defconfig
arm                       aspeed_g4_defconfig
i386                             alldefconfig
powerpc                 mpc8540_ads_defconfig
um                             i386_defconfig
mips                         bigsur_defconfig
powerpc                     ep8248e_defconfig
powerpc                      cm5200_defconfig
mips                     loongson1c_defconfig
sparc64                             defconfig
s390                       zfcpdump_defconfig
arc                      axs103_smp_defconfig
powerpc                          g5_defconfig
mips                 decstation_r4k_defconfig
powerpc                      makalu_defconfig
powerpc                     pseries_defconfig
arm                        neponset_defconfig
arm                        trizeps4_defconfig
sh                        edosk7705_defconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210316
i386                 randconfig-a005-20210316
i386                 randconfig-a002-20210316
i386                 randconfig-a003-20210316
i386                 randconfig-a004-20210316
i386                 randconfig-a006-20210316
x86_64               randconfig-a011-20210316
x86_64               randconfig-a016-20210316
x86_64               randconfig-a013-20210316
x86_64               randconfig-a014-20210316
x86_64               randconfig-a015-20210316
x86_64               randconfig-a012-20210316
i386                 randconfig-a013-20210316
i386                 randconfig-a016-20210316
i386                 randconfig-a011-20210316
i386                 randconfig-a012-20210316
i386                 randconfig-a015-20210316
i386                 randconfig-a014-20210316
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210316
x86_64               randconfig-a001-20210316
x86_64               randconfig-a005-20210316
x86_64               randconfig-a004-20210316
x86_64               randconfig-a003-20210316
x86_64               randconfig-a002-20210316

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
