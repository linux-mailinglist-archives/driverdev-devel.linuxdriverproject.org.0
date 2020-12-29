Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE152E6D44
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Dec 2020 03:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C859386E1D;
	Tue, 29 Dec 2020 02:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jjz+ugK-PH4J; Tue, 29 Dec 2020 02:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1271386E18;
	Tue, 29 Dec 2020 02:26:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20F261BF311
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 02:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DBF48722D
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 02:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUr+wY6k5e5H for <devel@linuxdriverproject.org>;
 Tue, 29 Dec 2020 02:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 531DC8722C
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 02:26:10 +0000 (UTC)
IronPort-SDR: nXU2Y/UIzf+ijcZlILbOZav6VHgsfNqmLr1YDCNdXHhMIzl2ceBvkcKuOpfjpGvbbfOHptf2lP
 p2/CTdIMAhsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="175672609"
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400"; d="scan'208";a="175672609"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 18:26:09 -0800
IronPort-SDR: pc42F2vH3goU4ayxhiKHdCNIPoOwQOxJ9U2pd6q7vS75YyoT+lBiZZtBqwC39cj0ysn2xSoyES
 N6GDO1op/Gjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400"; d="scan'208";a="375874618"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 28 Dec 2020 18:26:07 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ku4i6-0003GB-Dw; Tue, 29 Dec 2020 02:26:06 +0000
Date: Tue, 29 Dec 2020 10:25:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 d887d6104adeb94d1b926936ea21f07367f0ff9f
Message-ID: <5fea938b.jk2BsFfZJ7wNHT1m%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-linus
branch HEAD: d887d6104adeb94d1b926936ea21f07367f0ff9f  staging: mt7621-dma: Fix a resource leak in an error handling path

elapsed time: 726m

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
riscv                    nommu_k210_defconfig
powerpc                     rainier_defconfig
powerpc                        warp_defconfig
ia64                            zx1_defconfig
arm                            mps2_defconfig
m68k                          hp300_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                    klondike_defconfig
powerpc                     taishan_defconfig
powerpc                     tqm8541_defconfig
sh                           se7722_defconfig
sh                 kfr2r09-romimage_defconfig
sh                         ap325rxa_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     powernv_defconfig
arm                     am200epdkit_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
powerpc                  mpc866_ads_defconfig
arm                          pxa3xx_defconfig
arc                    vdk_hs38_smp_defconfig
arm                        mvebu_v5_defconfig
um                             i386_defconfig
mips                        workpad_defconfig
nios2                            alldefconfig
um                           x86_64_defconfig
sh                           se7724_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                         tb0226_defconfig
h8300                       h8s-sim_defconfig
sh                               j2_defconfig
csky                                defconfig
sparc                       sparc32_defconfig
powerpc                      pmac32_defconfig
arm                         at91_dt_defconfig
sh                           se7751_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
powerpc                      obs600_defconfig
powerpc                     asp8347_defconfig
csky                             alldefconfig
m68k                            mac_defconfig
arc                          axs103_defconfig
powerpc                    adder875_defconfig
arm                           tegra_defconfig
mips                            gpr_defconfig
arm                           sunxi_defconfig
arm                         socfpga_defconfig
sh                          kfr2r09_defconfig
powerpc                    socrates_defconfig
sh                     sh7710voipgw_defconfig
arm                           h5000_defconfig
sh                        dreamcast_defconfig
powerpc                      makalu_defconfig
powerpc64                           defconfig
m68k                        m5407c3_defconfig
mips                malta_qemu_32r6_defconfig
sparc                            alldefconfig
sh                      rts7751r2d1_defconfig
powerpc                       ebony_defconfig
mips                        jmr3927_defconfig
arm                   milbeaut_m10v_defconfig
mips                           ci20_defconfig
powerpc                     kilauea_defconfig
mips                malta_kvm_guest_defconfig
arc                     haps_hs_smp_defconfig
mips                      fuloong2e_defconfig
mips                  maltasmvp_eva_defconfig
arm                      jornada720_defconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201228
i386                 randconfig-a002-20201228
i386                 randconfig-a004-20201228
i386                 randconfig-a006-20201228
i386                 randconfig-a003-20201228
i386                 randconfig-a001-20201228
i386                 randconfig-a002-20201227
i386                 randconfig-a005-20201227
i386                 randconfig-a006-20201227
i386                 randconfig-a004-20201227
i386                 randconfig-a003-20201227
i386                 randconfig-a001-20201227
x86_64               randconfig-a014-20201228
x86_64               randconfig-a015-20201228
x86_64               randconfig-a016-20201228
x86_64               randconfig-a012-20201228
x86_64               randconfig-a011-20201228
x86_64               randconfig-a013-20201228
i386                 randconfig-a011-20201227
i386                 randconfig-a016-20201227
i386                 randconfig-a012-20201227
i386                 randconfig-a014-20201227
i386                 randconfig-a015-20201227
i386                 randconfig-a013-20201227
i386                 randconfig-a014-20201228
i386                 randconfig-a012-20201228
i386                 randconfig-a016-20201228
i386                 randconfig-a011-20201228
i386                 randconfig-a015-20201228
i386                 randconfig-a013-20201228
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20201228
x86_64               randconfig-a006-20201228
x86_64               randconfig-a002-20201228
x86_64               randconfig-a004-20201228
x86_64               randconfig-a003-20201228
x86_64               randconfig-a005-20201228
x86_64               randconfig-a015-20201227
x86_64               randconfig-a014-20201227
x86_64               randconfig-a016-20201227
x86_64               randconfig-a012-20201227
x86_64               randconfig-a013-20201227
x86_64               randconfig-a011-20201227

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
