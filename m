Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0562A50368B
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Apr 2022 14:16:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6763418AF;
	Sat, 16 Apr 2022 12:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZRfUFjCdvrN; Sat, 16 Apr 2022 12:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48C324187F;
	Sat, 16 Apr 2022 12:16:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 643DC1BF3E8
 for <devel@linuxdriverproject.org>; Sat, 16 Apr 2022 12:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5106F40002
 for <devel@linuxdriverproject.org>; Sat, 16 Apr 2022 12:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dedao6UcrjUX for <devel@linuxdriverproject.org>;
 Sat, 16 Apr 2022 12:16:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56CC5409A5
 for <devel@driverdev.osuosl.org>; Sat, 16 Apr 2022 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650111366; x=1681647366;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=e80w9gwf80CJUZxp1Ef69hOM3WD25QqYElxzPwmY554=;
 b=VoEfFYThCLZ8ipBiT4nVyY4KaUalXkzPTq/+twCZ+ce97ZwJsWiYEB9a
 aJy7WTFY6+ZmKBqiW136mk7l/rO2XMVqz81hnsFfR7TQ/G5Qxqh9baNmP
 j0Oy+J0w5DhSI0/LnClwsTtgdqx5HvPqlaO75GRugVdlQgErZ+OiBBHYB
 b0fYKUUp+1vPCa66DBr5meZ8UUh64xXXbnyG6PDao0SsNdAGN7y2Lhbd6
 zrTZSfa/Tnx6e8m4x2C+i0AS9ayClBdfj0w9XbsF14IgQOk3S4XMLLovA
 ul0Zk5EPeUDqb/D/CbHnj9x5mD8tz6U/8+ok0kpTvFPk7qnSobjSRGc5f Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="243870952"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="243870952"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2022 05:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="591901774"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 16 Apr 2022 05:16:02 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nfhLO-00036v-7y;
 Sat, 16 Apr 2022 12:16:02 +0000
Date: Sat, 16 Apr 2022 20:15:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 a848981be6e8cb762f2166cdc1daf58783c5c3d1
Message-ID: <625ab354.mMt5dOx0iiYu7s/n%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: a848981be6e8cb762f2166cdc1daf58783c5c3d1  staging: r8188eu: clean up long lines in block_write()

elapsed time: 4507m

configs tested: 166
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220415
powerpc              randconfig-c003-20220414
s390                          debug_defconfig
powerpc                      ep88xc_defconfig
um                           x86_64_defconfig
h8300                       h8s-sim_defconfig
um                             i386_defconfig
mips                     loongson1b_defconfig
arm                        spear6xx_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                      cm5200_defconfig
arm                       imx_v6_v7_defconfig
sh                               j2_defconfig
arm                         lubbock_defconfig
arm                           tegra_defconfig
arc                     haps_hs_smp_defconfig
arm                        trizeps4_defconfig
mips                         db1xxx_defconfig
mips                      fuloong2e_defconfig
powerpc                       eiger_defconfig
powerpc                 linkstation_defconfig
powerpc                    amigaone_defconfig
m68k                             allyesconfig
sh                        dreamcast_defconfig
m68k                          sun3x_defconfig
powerpc                        cell_defconfig
xtensa                    smp_lx200_defconfig
powerpc                 mpc834x_itx_defconfig
parisc64                         alldefconfig
arm                             pxa_defconfig
arm                         cm_x300_defconfig
sh                          rsk7269_defconfig
powerpc                        warp_defconfig
sparc                       sparc64_defconfig
arm                       multi_v4t_defconfig
powerpc                     mpc83xx_defconfig
sh                        sh7757lcr_defconfig
mips                      maltasmvp_defconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
arm                       aspeed_g5_defconfig
openrisc                            defconfig
powerpc                     taishan_defconfig
arm                        keystone_defconfig
arc                        vdk_hs38_defconfig
arm                          exynos_defconfig
sh                     magicpanelr2_defconfig
sh                          urquell_defconfig
m68k                        m5307c3_defconfig
sh                          rsk7264_defconfig
sh                            hp6xx_defconfig
arm                           corgi_defconfig
alpha                            alldefconfig
powerpc                   motionpro_defconfig
i386                             alldefconfig
arm                            mps2_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     ep8248e_defconfig
arc                        nsim_700_defconfig
xtensa                  cadence_csp_defconfig
xtensa                  nommu_kc705_defconfig
sh                         microdev_defconfig
mips                     decstation_defconfig
um                                  defconfig
x86_64                              defconfig
powerpc                     tqm8555_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220414
arm                  randconfig-c002-20220415
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220415
arc                  randconfig-r043-20220415
s390                 randconfig-r044-20220415
arc                  randconfig-r043-20220413
riscv                randconfig-r042-20220413
s390                 randconfig-r044-20220413
arc                  randconfig-r043-20220414
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
mips                         tb0287_defconfig
i386                             allyesconfig
powerpc                     kmeter1_defconfig
powerpc                 mpc8272_ads_defconfig
arm                       aspeed_g4_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                           mtx1_defconfig
arm                          ixp4xx_defconfig
arm                       netwinder_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220413
hexagon              randconfig-r041-20220413
riscv                randconfig-r042-20220414
hexagon              randconfig-r041-20220414
hexagon              randconfig-r045-20220414
s390                 randconfig-r044-20220414

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
