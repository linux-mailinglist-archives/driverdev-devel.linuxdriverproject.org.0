Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BFD38B933
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 May 2021 23:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 865FD405D6;
	Thu, 20 May 2021 21:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDdWY0uzmWCc; Thu, 20 May 2021 21:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B02C4405C8;
	Thu, 20 May 2021 21:51:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBF2E1BF3C0
 for <devel@linuxdriverproject.org>; Thu, 20 May 2021 21:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9D59844CC
 for <devel@linuxdriverproject.org>; Thu, 20 May 2021 21:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PVFdKp2wtpSW for <devel@linuxdriverproject.org>;
 Thu, 20 May 2021 21:51:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A2F5844BE
 for <devel@driverdev.osuosl.org>; Thu, 20 May 2021 21:51:22 +0000 (UTC)
IronPort-SDR: /kv6/8T4R9f8Lb+TPaIWX9GGMG3jRE9tTi+tEUKqu280sqbZA53Fmf3ftbRhsM4nSRt779GFRU
 VDz5kCQk15/Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="201051494"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="201051494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 14:51:21 -0700
IronPort-SDR: PoWh3lPZtL+NnxWyJWRlyt4QB93h4ZqEeLte8L7VA3cHe2YvyV+AzP2EZaotkGTFrbRdTRO+Ss
 UcvH7qjRHpVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="474222448"
Received: from lkp-server02.sh.intel.com (HELO 1b329be5b008) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 20 May 2021 14:51:20 -0700
Received: from kbuild by 1b329be5b008 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ljqZb-0000pA-KE; Thu, 20 May 2021 21:51:19 +0000
Date: Fri, 21 May 2021 05:50:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 1b4c0f3bbdbd5e5cc09b67b2977d52350967cdfd
Message-ID: <60a6d9bf.yVVVCXW9DEZWcRIf%lkp@intel.com>
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
branch HEAD: 1b4c0f3bbdbd5e5cc09b67b2977d52350967cdfd  staging: rtl8723bs: rename get_ra() due to global symbol collision

elapsed time: 723m

configs tested: 153
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     mpc5200_defconfig
openrisc                         alldefconfig
powerpc                      walnut_defconfig
mips                      malta_kvm_defconfig
mips                           mtx1_defconfig
sh                         microdev_defconfig
mips                         tb0219_defconfig
powerpc                       ebony_defconfig
mips                      pistachio_defconfig
microblaze                      mmu_defconfig
mips                      maltasmvp_defconfig
openrisc                    or1ksim_defconfig
arm                         shannon_defconfig
sh                      rts7751r2d1_defconfig
powerpc                      pasemi_defconfig
powerpc                     powernv_defconfig
mips                        qi_lb60_defconfig
arm                          badge4_defconfig
m68k                       m5208evb_defconfig
arm                          pcm027_defconfig
sh                         ap325rxa_defconfig
arm                         socfpga_defconfig
powerpc                 mpc8272_ads_defconfig
arm                           sama5_defconfig
m68k                       bvme6000_defconfig
xtensa                    xip_kc705_defconfig
mips                           jazz_defconfig
h8300                            alldefconfig
mips                   sb1250_swarm_defconfig
mips                         tb0287_defconfig
arm                         hackkit_defconfig
powerpc                     ep8248e_defconfig
arm                    vt8500_v6_v7_defconfig
arm                       aspeed_g4_defconfig
m68k                         amcore_defconfig
arc                          axs103_defconfig
arc                                 defconfig
m68k                        m5307c3_defconfig
m68k                         apollo_defconfig
mips                        bcm47xx_defconfig
xtensa                         virt_defconfig
m68k                       m5275evb_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                  mpc885_ads_defconfig
sh                            hp6xx_defconfig
sh                           se7721_defconfig
mips                  cavium_octeon_defconfig
arm                        mini2440_defconfig
arm                     am200epdkit_defconfig
powerpc                     tqm8548_defconfig
um                            kunit_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                           se7206_defconfig
powerpc                    mvme5100_defconfig
mips                        jmr3927_defconfig
arc                        nsim_700_defconfig
xtensa                  audio_kc705_defconfig
ia64                                defconfig
um                             i386_defconfig
x86_64                              defconfig
nios2                         3c120_defconfig
arc                     haps_hs_smp_defconfig
arm                         lubbock_defconfig
arm                          iop32x_defconfig
arm                         orion5x_defconfig
powerpc                      obs600_defconfig
arm                        keystone_defconfig
powerpc                     tqm5200_defconfig
arm                             ezx_defconfig
sh                          lboxre2_defconfig
arc                          axs101_defconfig
sh                          kfr2r09_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                        mvebu_v7_defconfig
powerpc                     stx_gp3_defconfig
arm                           sunxi_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210520
i386                 randconfig-a005-20210520
i386                 randconfig-a002-20210520
i386                 randconfig-a006-20210520
i386                 randconfig-a004-20210520
i386                 randconfig-a003-20210520
x86_64               randconfig-a001-20210520
x86_64               randconfig-a006-20210520
x86_64               randconfig-a005-20210520
x86_64               randconfig-a003-20210520
x86_64               randconfig-a004-20210520
x86_64               randconfig-a002-20210520
i386                 randconfig-a016-20210520
i386                 randconfig-a011-20210520
i386                 randconfig-a015-20210520
i386                 randconfig-a012-20210520
i386                 randconfig-a014-20210520
i386                 randconfig-a013-20210520
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210520
x86_64               randconfig-a013-20210520
x86_64               randconfig-a014-20210520
x86_64               randconfig-a012-20210520
x86_64               randconfig-a016-20210520
x86_64               randconfig-a015-20210520
x86_64               randconfig-a011-20210520

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
