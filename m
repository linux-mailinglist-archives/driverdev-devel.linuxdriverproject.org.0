Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8561428489
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 03:20:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 304C04029A;
	Mon, 11 Oct 2021 01:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kZOCGweqbJuM; Mon, 11 Oct 2021 01:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A762940141;
	Mon, 11 Oct 2021 01:20:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCC6E1BF97F
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 01:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7D8240178
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 01:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KfjH91wfHhE4 for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 01:20:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA9E640141
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 01:19:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10133"; a="206894593"
X-IronPort-AV: E=Sophos;i="5.85,363,1624345200"; d="scan'208";a="206894593"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2021 18:19:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,363,1624345200"; d="scan'208";a="479648963"
Received: from lkp-server02.sh.intel.com (HELO 08b2c502c3de) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 10 Oct 2021 18:19:57 -0700
Received: from kbuild by 08b2c502c3de with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mZjyu-0001j6-RE; Mon, 11 Oct 2021 01:19:56 +0000
Date: Mon, 11 Oct 2021 09:19:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 98f668b30e8e65324b06332e9a3e2ea340bfd7f1
Message-ID: <61639122.iCNDyaUYDtpxD41C%lkp@intel.com>
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
branch HEAD: 98f668b30e8e65324b06332e9a3e2ea340bfd7f1  staging: rtl8723bs: hal: remove duplicate check

elapsed time: 724m

configs tested: 189
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211010
powerpc                    ge_imp3a_defconfig
m68k                       m5249evb_defconfig
arm                           viper_defconfig
openrisc                 simple_smp_defconfig
arm                       omap2plus_defconfig
m68k                       m5475evb_defconfig
sh                               allmodconfig
powerpc                   lite5200b_defconfig
arm                          imote2_defconfig
arm                           h3600_defconfig
m68k                          atari_defconfig
m68k                       bvme6000_defconfig
sh                           sh2007_defconfig
powerpc                   motionpro_defconfig
mips                         tb0219_defconfig
ia64                          tiger_defconfig
arm                   milbeaut_m10v_defconfig
mips                          rb532_defconfig
s390                       zfcpdump_defconfig
mips                     loongson2k_defconfig
mips                        maltaup_defconfig
sh                        apsh4ad0a_defconfig
powerpc                      ppc40x_defconfig
arm                       aspeed_g4_defconfig
arm                        clps711x_defconfig
sh                          landisk_defconfig
mips                      bmips_stb_defconfig
m68k                          multi_defconfig
arm                            xcep_defconfig
arm                          badge4_defconfig
mips                      maltasmvp_defconfig
mips                         cobalt_defconfig
sh                           se7780_defconfig
mips                           ip28_defconfig
arm                         bcm2835_defconfig
powerpc                     rainier_defconfig
arm                          exynos_defconfig
arm                          simpad_defconfig
powerpc               mpc834x_itxgp_defconfig
csky                             alldefconfig
arc                        nsim_700_defconfig
microblaze                      mmu_defconfig
arm                       imx_v4_v5_defconfig
powerpc                     redwood_defconfig
sparc64                             defconfig
powerpc                         wii_defconfig
ia64                         bigsur_defconfig
mips                        bcm63xx_defconfig
arm                         cm_x300_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                 mpc836x_mds_defconfig
nios2                            alldefconfig
powerpc                    adder875_defconfig
sh                           se7343_defconfig
h8300                               defconfig
sh                          lboxre2_defconfig
powerpc                         ps3_defconfig
powerpc                    socrates_defconfig
mips                     decstation_defconfig
mips                         db1xxx_defconfig
arm                          pcm027_defconfig
powerpc                    sam440ep_defconfig
powerpc                    amigaone_defconfig
sh                         apsh4a3a_defconfig
sh                               j2_defconfig
powerpc                       eiger_defconfig
arm                         axm55xx_defconfig
arm                           sama7_defconfig
arm                          iop32x_defconfig
powerpc                     ksi8560_defconfig
sh                          rsk7203_defconfig
mips                         bigsur_defconfig
arc                            hsdk_defconfig
arm                            dove_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
nds32                               defconfig
h8300                            alldefconfig
powerpc                  iss476-smp_defconfig
mips                         rt305x_defconfig
arm                         lpc18xx_defconfig
powerpc                          g5_defconfig
m68k                         amcore_defconfig
ia64                      gensparse_defconfig
arm                        realview_defconfig
powerpc                     sequoia_defconfig
sparc                       sparc32_defconfig
arm                         orion5x_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      acadia_defconfig
xtensa                          iss_defconfig
arm                          pxa910_defconfig
powerpc                      mgcoge_defconfig
mips                          malta_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                        cell_defconfig
arc                          axs103_defconfig
m68k                        mvme16x_defconfig
powerpc                     ep8248e_defconfig
arm                       cns3420vb_defconfig
arm                            hisi_defconfig
arc                           tb10x_defconfig
arm                         vf610m4_defconfig
arm                  randconfig-c002-20211010
x86_64               randconfig-c001-20211010
arm                  randconfig-c002-20211011
i386                 randconfig-c001-20211011
x86_64               randconfig-c001-20211011
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20211010
x86_64               randconfig-a006-20211010
x86_64               randconfig-a001-20211010
x86_64               randconfig-a005-20211010
x86_64               randconfig-a002-20211010
x86_64               randconfig-a003-20211010
i386                 randconfig-a001-20211010
i386                 randconfig-a003-20211010
i386                 randconfig-a004-20211010
i386                 randconfig-a005-20211010
i386                 randconfig-a002-20211010
i386                 randconfig-a006-20211010
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
arm                  randconfig-c002-20211010
mips                 randconfig-c004-20211010
i386                 randconfig-c001-20211010
s390                 randconfig-c005-20211010
x86_64               randconfig-c007-20211010
powerpc              randconfig-c003-20211010
riscv                randconfig-c006-20211010
x86_64               randconfig-a015-20211010
x86_64               randconfig-a012-20211010
x86_64               randconfig-a016-20211010
x86_64               randconfig-a014-20211010
x86_64               randconfig-a013-20211010
x86_64               randconfig-a011-20211010
i386                 randconfig-a016-20211010
i386                 randconfig-a014-20211010
i386                 randconfig-a011-20211010
i386                 randconfig-a015-20211010
i386                 randconfig-a012-20211010
i386                 randconfig-a013-20211010
hexagon              randconfig-r041-20211010
s390                 randconfig-r044-20211010
riscv                randconfig-r042-20211010
hexagon              randconfig-r045-20211010

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
