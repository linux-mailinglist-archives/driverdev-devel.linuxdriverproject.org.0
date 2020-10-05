Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A39F9284335
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 02:16:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9780850E1;
	Tue,  6 Oct 2020 00:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQtfabLAhojm; Tue,  6 Oct 2020 00:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AC1F850D6;
	Tue,  6 Oct 2020 00:16:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 564251BF23C
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 00:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 532A7850D6
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 00:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mhLcywrZ0lLV for <devel@linuxdriverproject.org>;
 Tue,  6 Oct 2020 00:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD8F685081
 for <devel@driverdev.osuosl.org>; Tue,  6 Oct 2020 00:15:57 +0000 (UTC)
IronPort-SDR: ysaaHEV0BgHKKQLbhLizu/2rWv1pc1/ViovPE/dfGRhGLt0yiPC3XojIDqWU1vBEIN80g0n1CR
 laWBd3lrJJ1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="164427784"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="164427784"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP; 05 Oct 2020 17:08:40 -0700
IronPort-SDR: JZTeY0dGqaHCGW/iMg/zGN/eiq4P0Plbx2ApDpUI2/mRoUYoaBcONcn932W6werOq9S6ePkbpq
 s2Niyjxvl1rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="417616010"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 05 Oct 2020 14:00:53 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kPXbD-0000ww-Ju; Mon, 05 Oct 2020 21:00:47 +0000
Date: Tue, 06 Oct 2020 05:00:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 a944a1fb9a8286fb9e4bbd0180ebd53353c7f412
Message-ID: <5f7b8955.MTD4nABLjk9MPHwV%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: a944a1fb9a8286fb9e4bbd0180ebd53353c7f412  Merge 5.9-rc8 into staging-next

elapsed time: 723m

configs tested: 143
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
sh                        sh7763rdp_defconfig
powerpc                     sbc8548_defconfig
mips                      maltasmvp_defconfig
mips                           ci20_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      katmai_defconfig
mips                          ath79_defconfig
powerpc                     skiroot_defconfig
powerpc                     ksi8560_defconfig
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
i386                             alldefconfig
nds32                             allnoconfig
microblaze                          defconfig
powerpc                        icon_defconfig
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
arm                       omap2plus_defconfig
m68k                            q40_defconfig
mips                     decstation_defconfig
arm                           spitz_defconfig
arm                            hisi_defconfig
openrisc                    or1ksim_defconfig
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
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
