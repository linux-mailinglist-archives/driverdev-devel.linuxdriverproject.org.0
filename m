Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA66490032
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jan 2022 03:26:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A23B540306;
	Mon, 17 Jan 2022 02:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ya3JxU5PTDtP; Mon, 17 Jan 2022 02:26:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7B5D402E5;
	Mon, 17 Jan 2022 02:26:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6B681BF361
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 02:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3652400F8
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 02:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HinOe_9Fm4is for <devel@linuxdriverproject.org>;
 Mon, 17 Jan 2022 02:26:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62027400CB
 for <devel@driverdev.osuosl.org>; Mon, 17 Jan 2022 02:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642386383; x=1673922383;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sDcPPzXKaJiGs419SxEHpVT5FneJ9soKOQKJICaNvvA=;
 b=IsNkBUJhtkDZ/h5A/RP20guf9ov2VywVxp0MSkr4VSb/NmTQou1imtlO
 fOUDFaEEjr2A8zN8/TW+0DWPIuox4uXvuRWn74d4/Hs9RrFpJCD1tSQ9b
 IMFQlBOdI5ESv68rm1ZZjyZJzya/pBAI5isQ86ClMGhMlZt1s/jKmn6te
 8+3faX7qSlh14mG8T9BaTokMXL+IllLom4jyEs0b9lndZgnhtLlTaitNU
 BgIqSOFmbqLchVCkvsLTaqmcONmBp6eePWPCTOeud5AZRXHunbcR95zuN
 rUQcNIioYtBnfXk45cj49Ik6ihO59+3mBud4slVGg19PSNZlc5ZmDR2oX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10229"; a="244495476"
X-IronPort-AV: E=Sophos;i="5.88,294,1635231600"; d="scan'208";a="244495476"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2022 18:26:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,294,1635231600"; d="scan'208";a="517241225"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2022 18:26:21 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9Hiu-000BB6-Q9; Mon, 17 Jan 2022 02:26:20 +0000
Date: Mon, 17 Jan 2022 10:26:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:module_ns] BUILD SUCCESS
 382c6c331abea0a9b1eff5176543fdf2ff97fcb9
Message-ID: <61e4d3c3.5S+f3f0L0gVQ24TI%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git module_ns
branch HEAD: 382c6c331abea0a9b1eff5176543fdf2ff97fcb9  module.h: allow #define strings to work with MODULE_IMPORT_NS

elapsed time: 727m

configs tested: 160
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
m68k                          hp300_defconfig
powerpc                     sequoia_defconfig
mips                    maltaup_xpa_defconfig
arm                           viper_defconfig
sh                           se7712_defconfig
csky                             alldefconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                           allyesconfig
arm                         assabet_defconfig
mips                       bmips_be_defconfig
mips                           ip32_defconfig
openrisc                 simple_smp_defconfig
mips                     decstation_defconfig
powerpc                     tqm8548_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                   currituck_defconfig
arm                           tegra_defconfig
mips                 decstation_r4k_defconfig
powerpc                  iss476-smp_defconfig
arc                         haps_hs_defconfig
sh                          sdk7786_defconfig
arc                                 defconfig
sh                             sh03_defconfig
powerpc                      ppc40x_defconfig
xtensa                           alldefconfig
sh                  sh7785lcr_32bit_defconfig
mips                         bigsur_defconfig
parisc                generic-32bit_defconfig
xtensa                  audio_kc705_defconfig
powerpc                     stx_gp3_defconfig
m68k                        stmark2_defconfig
m68k                          multi_defconfig
sh                      rts7751r2d1_defconfig
arm                            qcom_defconfig
arm                         at91_dt_defconfig
m68k                         apollo_defconfig
m68k                          sun3x_defconfig
s390                          debug_defconfig
sh                          polaris_defconfig
sh                         ap325rxa_defconfig
sh                             shx3_defconfig
arm                           corgi_defconfig
powerpc                     redwood_defconfig
sh                   rts7751r2dplus_defconfig
mips                         cobalt_defconfig
arm                             pxa_defconfig
sh                                  defconfig
mips                       capcella_defconfig
xtensa                       common_defconfig
arm                  randconfig-c002-20220116
ia64                             allmodconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64               randconfig-a016-20220117
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220116
x86_64                        randconfig-c007
riscv                randconfig-c006-20220116
powerpc              randconfig-c003-20220116
i386                          randconfig-c001
mips                 randconfig-c004-20220116
s390                 randconfig-c005-20220116
mips                          rm200_defconfig
arm                             mxs_defconfig
arm                         mv78xx0_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                        omega2p_defconfig
powerpc                    gamecube_defconfig
powerpc                 mpc8313_rdb_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220116
riscv                randconfig-r042-20220116
hexagon              randconfig-r041-20220116

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
