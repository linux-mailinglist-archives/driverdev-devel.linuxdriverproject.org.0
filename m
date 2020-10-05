Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A622842C7
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 01:00:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8154B85785;
	Mon,  5 Oct 2020 23:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2CSGeRNf0b4; Mon,  5 Oct 2020 23:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E20BC855F6;
	Mon,  5 Oct 2020 23:00:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE4941BF3A1
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 23:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9658203B0
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 23:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lu8d7Gk3IWyn for <devel@linuxdriverproject.org>;
 Mon,  5 Oct 2020 23:00:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 87C872040C
 for <devel@driverdev.osuosl.org>; Mon,  5 Oct 2020 23:00:06 +0000 (UTC)
IronPort-SDR: EHogu+klEjjW/DdvA9emg6FAkZxlH2lenJwB61trE2DAqNrjtjY3GLsR7NCEz38yFxL8VCGEEO
 P/WMWzAd4gGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="164409424"
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="164409424"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP; 05 Oct 2020 15:59:59 -0700
IronPort-SDR: EpeWifRNBb3WYcqrIbf0CzW696wsavgh9br3RVuXoj486ccknS8S6a+31j74MVrfMHZeftfQsy
 Z1KW9exQFEpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="296609325"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 05 Oct 2020 14:00:51 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kPXbD-0000wu-JZ; Mon, 05 Oct 2020 21:00:47 +0000
Date: Tue, 06 Oct 2020 05:00:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:ion_removal] BUILD SUCCESS
 f6ecd19b143570a06987d40b15d78f8ffcbe5d0c
Message-ID: <5f7b8957.ufDc2QnMcqwO44GG%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  ion_removal
branch HEAD: f6ecd19b143570a06987d40b15d78f8ffcbe5d0c  staging: ion: remove from the tree

elapsed time: 723m

configs tested: 173
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     pq2fads_defconfig
riscv                            alldefconfig
mips                           ip32_defconfig
arc                          axs103_defconfig
arm                  colibri_pxa300_defconfig
powerpc                          allmodconfig
riscv                          rv32_defconfig
arc                        nsimosci_defconfig
sh                          rsk7201_defconfig
powerpc                           allnoconfig
h8300                            allyesconfig
sh                        sh7763rdp_defconfig
powerpc                     sbc8548_defconfig
mips                      maltasmvp_defconfig
mips                           ci20_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      katmai_defconfig
mips                          ath79_defconfig
powerpc                     skiroot_defconfig
powerpc                     ksi8560_defconfig
mips                           ip28_defconfig
sh                   sh7724_generic_defconfig
m68k                          atari_defconfig
arc                            hsdk_defconfig
mips                        qi_lb60_defconfig
mips                      maltaaprp_defconfig
arm                        shmobile_defconfig
powerpc                    socrates_defconfig
mips                        jmr3927_defconfig
arm                         vf610m4_defconfig
arm                        neponset_defconfig
mips                           ip22_defconfig
powerpc                     tqm8541_defconfig
arm                         axm55xx_defconfig
arm                          moxart_defconfig
mips                           xway_defconfig
sh                              ul2_defconfig
m68k                       m5475evb_defconfig
sh                         apsh4a3a_defconfig
mips                            ar7_defconfig
powerpc                        warp_defconfig
arm                        multi_v7_defconfig
sh                        edosk7705_defconfig
i386                             alldefconfig
nds32                             allnoconfig
microblaze                          defconfig
powerpc                        icon_defconfig
nds32                               defconfig
m68k                          amiga_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     tqm8555_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
m68k                         apollo_defconfig
arm                        spear6xx_defconfig
mips                          malta_defconfig
arm                          ep93xx_defconfig
arm                          tango4_defconfig
arm                        clps711x_defconfig
sh                             espt_defconfig
powerpc                     tqm8548_defconfig
powerpc                      makalu_defconfig
arm                            zeus_defconfig
mips                         tb0219_defconfig
sh                             shx3_defconfig
arm                        multi_v5_defconfig
xtensa                           alldefconfig
arm                       omap2plus_defconfig
m68k                            q40_defconfig
mips                     decstation_defconfig
arm                           spitz_defconfig
arm                            hisi_defconfig
openrisc                    or1ksim_defconfig
powerpc                         ps3_defconfig
powerpc                  mpc885_ads_defconfig
sh                          rsk7269_defconfig
m68k                            mac_defconfig
powerpc                     tqm8540_defconfig
h8300                            alldefconfig
powerpc                      walnut_defconfig
sh                ecovec24-romimage_defconfig
sh                          r7785rp_defconfig
arm                      footbridge_defconfig
arm                          pxa168_defconfig
arm                           corgi_defconfig
powerpc                      ep88xc_defconfig
arm                            pleb_defconfig
c6x                              alldefconfig
powerpc64                           defconfig
powerpc                     mpc5200_defconfig
alpha                            alldefconfig
c6x                                 defconfig
mips                           rs90_defconfig
sh                          urquell_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                        apsh4ad0a_defconfig
mips                         mpc30x_defconfig
arm                        spear3xx_defconfig
riscv                    nommu_virt_defconfig
arm                            dove_defconfig
sh                           se7619_defconfig
mips                  maltasmvp_eva_defconfig
powerpc               mpc834x_itxgp_defconfig
s390                             alldefconfig
arm                           h5000_defconfig
arm                      integrator_defconfig
arm                         orion5x_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
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
i386                 randconfig-a006-20201005
i386                 randconfig-a005-20201005
i386                 randconfig-a001-20201005
i386                 randconfig-a004-20201005
i386                 randconfig-a003-20201005
i386                 randconfig-a002-20201005
x86_64               randconfig-a012-20201005
x86_64               randconfig-a015-20201005
x86_64               randconfig-a014-20201005
x86_64               randconfig-a013-20201005
x86_64               randconfig-a011-20201005
x86_64               randconfig-a016-20201005
i386                 randconfig-a014-20201005
i386                 randconfig-a015-20201005
i386                 randconfig-a013-20201005
i386                 randconfig-a016-20201005
i386                 randconfig-a011-20201005
i386                 randconfig-a012-20201005
riscv                    nommu_k210_defconfig
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
x86_64               randconfig-a004-20201005
x86_64               randconfig-a002-20201005
x86_64               randconfig-a001-20201005
x86_64               randconfig-a003-20201005
x86_64               randconfig-a005-20201005
x86_64               randconfig-a006-20201005

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
