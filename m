Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C21263964
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 01:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7BD5D2E1A5;
	Wed,  9 Sep 2020 23:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuG9UuDdV1Lh; Wed,  9 Sep 2020 23:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 19056204D4;
	Wed,  9 Sep 2020 23:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4B411BF32E
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 23:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8D3C204B1
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 23:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2+5auV-3a0F1 for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 23:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 82833204B0
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 23:42:31 +0000 (UTC)
IronPort-SDR: jAm3yhkUeTd1h4KyFQdgYpvwmRaL+mUqUFeCwgOiRFfSZLRnz7xE9ZwjCYcQcr+KGfCwXuY3yl
 OX73u7uayImg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="159392230"
X-IronPort-AV: E=Sophos;i="5.76,410,1592895600"; d="scan'208";a="159392230"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 16:42:28 -0700
IronPort-SDR: JVLa9BWoXfnQX+qL3L8wLezXyKSFYbpJenB80HVx1nwg4IRFU2dchFQheo08zaJXp4w395v0nm
 YpdU5vmJX4Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,410,1592895600"; d="scan'208";a="329106137"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 09 Sep 2020 16:42:26 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kG9jN-0000dA-Lp; Wed, 09 Sep 2020 23:42:25 +0000
Date: Thu, 10 Sep 2020 07:42:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f601e8f37c2c1c52f2923fffc48204a7f7dc023d
Message-ID: <5f59684b.YywGtUcj2gT+dpj/%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: f601e8f37c2c1c52f2923fffc48204a7f7dc023d  Revert "driver core: Annotate dev_err_probe() with __must_check"

elapsed time: 720m

configs tested: 156
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                             mxs_defconfig
arm                            zeus_defconfig
powerpc                 linkstation_defconfig
sparc64                             defconfig
mips                         db1xxx_defconfig
mips                          rm200_defconfig
mips                         tb0226_defconfig
mips                      maltasmvp_defconfig
h8300                       h8s-sim_defconfig
mips                      fuloong2e_defconfig
sh                         apsh4a3a_defconfig
arm                      footbridge_defconfig
sh                         ecovec24_defconfig
mips                malta_kvm_guest_defconfig
sh                            shmin_defconfig
powerpc                        cell_defconfig
powerpc                     powernv_defconfig
powerpc                      mgcoge_defconfig
arm                        neponset_defconfig
m68k                        stmark2_defconfig
arm                       mainstone_defconfig
mips                           mtx1_defconfig
sh                          r7785rp_defconfig
arc                           tb10x_defconfig
arm                        spear3xx_defconfig
i386                             allyesconfig
arm                           sama5_defconfig
arm                       netwinder_defconfig
microblaze                      mmu_defconfig
sh                           se7721_defconfig
m68k                            q40_defconfig
x86_64                           alldefconfig
powerpc                     mpc83xx_defconfig
arm                  colibri_pxa270_defconfig
mips                        nlm_xlp_defconfig
sh                          rsk7269_defconfig
powerpc                      pasemi_defconfig
sh                             espt_defconfig
arc                          axs101_defconfig
mips                       bmips_be_defconfig
m68k                           sun3_defconfig
powerpc                     mpc512x_defconfig
sh                        sh7757lcr_defconfig
arm                       omap2plus_defconfig
powerpc                      ep88xc_defconfig
mips                            ar7_defconfig
sh                           sh2007_defconfig
s390                             allyesconfig
arm                        cerfcube_defconfig
sh                             shx3_defconfig
arm                         cm_x300_defconfig
sh                ecovec24-romimage_defconfig
csky                                defconfig
i386                                defconfig
arm                    vt8500_v6_v7_defconfig
arm                  colibri_pxa300_defconfig
xtensa                generic_kc705_defconfig
arm                         s3c2410_defconfig
um                            kunit_defconfig
sh                          polaris_defconfig
m68k                        mvme16x_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
arm                        shmobile_defconfig
arm64                            alldefconfig
mips                           rs90_defconfig
mips                          ath25_defconfig
arm                        clps711x_defconfig
arc                        vdk_hs38_defconfig
openrisc                         alldefconfig
sh                         ap325rxa_defconfig
arm                        mvebu_v7_defconfig
arm                       spear13xx_defconfig
arm                          collie_defconfig
sh                           se7750_defconfig
arm                         hackkit_defconfig
arm                          gemini_defconfig
sh                         microdev_defconfig
arm                          ixp4xx_defconfig
arm                          pxa3xx_defconfig
powerpc                    amigaone_defconfig
powerpc                             defconfig
arm                            xcep_defconfig
arc                          axs103_defconfig
sh                          landisk_defconfig
arc                     haps_hs_smp_defconfig
arm                           tegra_defconfig
sh                           se7206_defconfig
xtensa                    xip_kc705_defconfig
mips                          rb532_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20200909
x86_64               randconfig-a006-20200909
x86_64               randconfig-a003-20200909
x86_64               randconfig-a001-20200909
x86_64               randconfig-a005-20200909
x86_64               randconfig-a002-20200909
i386                 randconfig-a004-20200909
i386                 randconfig-a005-20200909
i386                 randconfig-a006-20200909
i386                 randconfig-a002-20200909
i386                 randconfig-a001-20200909
i386                 randconfig-a003-20200909
i386                 randconfig-a016-20200909
i386                 randconfig-a015-20200909
i386                 randconfig-a011-20200909
i386                 randconfig-a013-20200909
i386                 randconfig-a014-20200909
i386                 randconfig-a012-20200909
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3

clang tested configs:
x86_64               randconfig-a013-20200909
x86_64               randconfig-a016-20200909
x86_64               randconfig-a011-20200909
x86_64               randconfig-a012-20200909
x86_64               randconfig-a015-20200909
x86_64               randconfig-a014-20200909

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
