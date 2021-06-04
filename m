Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F9D39B061
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Jun 2021 04:30:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A92A40608;
	Fri,  4 Jun 2021 02:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPQvOB3FK6jL; Fri,  4 Jun 2021 02:29:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20386405F3;
	Fri,  4 Jun 2021 02:29:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C07A01BF285
 for <devel@linuxdriverproject.org>; Fri,  4 Jun 2021 02:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACE5240698
 for <devel@linuxdriverproject.org>; Fri,  4 Jun 2021 02:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxt2x_VlcDRI for <devel@linuxdriverproject.org>;
 Fri,  4 Jun 2021 02:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F9CB40697
 for <devel@driverdev.osuosl.org>; Fri,  4 Jun 2021 02:29:45 +0000 (UTC)
IronPort-SDR: 6MBdzjQ041Xs8qgGgOBrpJv78kTGbYSQ2hoP9pEm3hDeGQH1RVJYUIT9GV8eH615THHvJERND4
 CiQEP758xfAg==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="204233718"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="204233718"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 19:29:43 -0700
IronPort-SDR: Zbe8DYP5SuSKNKfMqlOXp8i+giw6W2wxU4WQFiS6plNYcnC9M7Vom+rKV9KbPNC9/FRGT7VSq3
 l9w1Cb/9CDUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="417609720"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2021 19:29:41 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lozaf-0006as-5Y; Fri, 04 Jun 2021 02:29:41 +0000
Date: Fri, 04 Jun 2021 10:29:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 f6b7084a7c4ba38fd7ea2e59a23eee5cba61464e
Message-ID: <60b99013.+oM1fW7LOVEBZo2Y%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: f6b7084a7c4ba38fd7ea2e59a23eee5cba61464e  USB: gr_udc: remove dentry storage for debugfs file

elapsed time: 11042m

configs tested: 210
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          pcm027_defconfig
powerpc                          g5_defconfig
mips                       capcella_defconfig
powerpc                     tqm8555_defconfig
arm                             ezx_defconfig
mips                           ip32_defconfig
m68k                         amcore_defconfig
mips                        jmr3927_defconfig
powerpc                      ppc44x_defconfig
mips                        nlm_xlp_defconfig
powerpc                  iss476-smp_defconfig
arc                          axs101_defconfig
xtensa                generic_kc705_defconfig
arm                         s3c6400_defconfig
m68k                       m5249evb_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                              alldefconfig
powerpc                  mpc866_ads_defconfig
xtensa                         virt_defconfig
arm                          ep93xx_defconfig
powerpc                       ebony_defconfig
arm                           viper_defconfig
arm                            mps2_defconfig
arm                         orion5x_defconfig
powerpc                        icon_defconfig
mips                      maltaaprp_defconfig
sh                           se7705_defconfig
powerpc                       maple_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                     davinci_all_defconfig
mips                         bigsur_defconfig
mips                            ar7_defconfig
arm                         s5pv210_defconfig
m68k                            mac_defconfig
powerpc                     ppa8548_defconfig
powerpc                    sam440ep_defconfig
sh                        edosk7760_defconfig
arm                          iop32x_defconfig
arm                         lpc32xx_defconfig
arm                          ixp4xx_defconfig
sh                          lboxre2_defconfig
m68k                       m5475evb_defconfig
m68k                        m5307c3_defconfig
m68k                         apollo_defconfig
sh                           se7712_defconfig
arm                        keystone_defconfig
s390                          debug_defconfig
mips                     loongson1b_defconfig
mips                      pistachio_defconfig
sh                   rts7751r2dplus_defconfig
mips                  maltasmvp_eva_defconfig
arm                      footbridge_defconfig
mips                  decstation_64_defconfig
openrisc                 simple_smp_defconfig
arm                             pxa_defconfig
sh                            titan_defconfig
microblaze                          defconfig
powerpc                 mpc8313_rdb_defconfig
arc                     nsimosci_hs_defconfig
sh                            shmin_defconfig
arm                          collie_defconfig
ia64                             allmodconfig
mips                         tb0287_defconfig
arm64                            alldefconfig
mips                        bcm47xx_defconfig
h8300                               defconfig
sh                     sh7710voipgw_defconfig
mips                           ip22_defconfig
um                           x86_64_defconfig
mips                      malta_kvm_defconfig
um                             i386_defconfig
xtensa                       common_defconfig
powerpc                    amigaone_defconfig
mips                    maltaup_xpa_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                        vocore2_defconfig
openrisc                  or1klitex_defconfig
arm                        spear6xx_defconfig
powerpc                      arches_defconfig
powerpc                      bamboo_defconfig
arm                           u8500_defconfig
arm                         s3c2410_defconfig
parisc                           allyesconfig
arm                         shannon_defconfig
arc                     haps_hs_smp_defconfig
mips                        maltaup_defconfig
powerpc64                        alldefconfig
sh                          r7780mp_defconfig
m68k                          amiga_defconfig
powerpc                    mvme5100_defconfig
mips                          ath79_defconfig
arm                          lpd270_defconfig
sh                          rsk7269_defconfig
powerpc64                           defconfig
sh                          r7785rp_defconfig
mips                          ath25_defconfig
powerpc                     stx_gp3_defconfig
powerpc                    ge_imp3a_defconfig
sh                          polaris_defconfig
powerpc                      obs600_defconfig
powerpc                        fsp2_defconfig
arm                        multi_v7_defconfig
mips                     cu1830-neo_defconfig
nios2                         3c120_defconfig
powerpc                     powernv_defconfig
sh                          kfr2r09_defconfig
arc                      axs103_smp_defconfig
arm                        cerfcube_defconfig
mips                           ci20_defconfig
xtensa                  cadence_csp_defconfig
arm                       omap2plus_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                     mpc83xx_defconfig
powerpc                  mpc885_ads_defconfig
arm                            mmp2_defconfig
powerpc                   currituck_defconfig
sh                     magicpanelr2_defconfig
arm                            qcom_defconfig
arm                       cns3420vb_defconfig
arc                        nsim_700_defconfig
m68k                        mvme147_defconfig
mips                        nlm_xlr_defconfig
powerpc                   motionpro_defconfig
arm                     am200epdkit_defconfig
arm                          exynos_defconfig
arm                           corgi_defconfig
mips                     cu1000-neo_defconfig
parisc                generic-64bit_defconfig
mips                           xway_defconfig
m68k                          sun3x_defconfig
sparc                       sparc32_defconfig
arm                         hackkit_defconfig
mips                        qi_lb60_defconfig
sparc                       sparc64_defconfig
x86_64                            allnoconfig
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
x86_64               randconfig-a005-20210526
x86_64               randconfig-a001-20210526
x86_64               randconfig-a006-20210526
x86_64               randconfig-a003-20210526
x86_64               randconfig-a004-20210526
x86_64               randconfig-a002-20210526
i386                 randconfig-a001-20210526
i386                 randconfig-a002-20210526
i386                 randconfig-a005-20210526
i386                 randconfig-a004-20210526
i386                 randconfig-a003-20210526
i386                 randconfig-a006-20210526
i386                 randconfig-a011-20210526
i386                 randconfig-a016-20210526
i386                 randconfig-a015-20210526
i386                 randconfig-a012-20210526
i386                 randconfig-a014-20210526
i386                 randconfig-a013-20210526
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210527
x86_64               randconfig-b001-20210526
x86_64               randconfig-a013-20210526
x86_64               randconfig-a012-20210526
x86_64               randconfig-a014-20210526
x86_64               randconfig-a016-20210526
x86_64               randconfig-a015-20210526
x86_64               randconfig-a011-20210526

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
