Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 935E44FE7C5
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Apr 2022 20:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 174DC82AF5;
	Tue, 12 Apr 2022 18:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xfeHEYKVxxwV; Tue, 12 Apr 2022 18:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CA0D82A53;
	Tue, 12 Apr 2022 18:19:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC03E1BF82D
 for <devel@linuxdriverproject.org>; Tue, 12 Apr 2022 18:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA3B5610B6
 for <devel@linuxdriverproject.org>; Tue, 12 Apr 2022 18:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8YnCcPGorFd for <devel@linuxdriverproject.org>;
 Tue, 12 Apr 2022 18:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9569260FAA
 for <devel@driverdev.osuosl.org>; Tue, 12 Apr 2022 18:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649787558; x=1681323558;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vySl7Ym5o/xrxY+kAHynXzbHVuWl1KK6ryWr6NNNZUo=;
 b=RzZIZWJFZS+49Fu4410eEXprD2CPbXpxrfaZfAbwtun4X41/6JzYcttT
 enkttqAFRWRm3TIgB3HYHs3hX4ahCeqkS8NO7z6FqVe+a7bNTzStIIdq8
 mSJzB0UVn9T89qlgDObPa+UyPzpL4gm/nkxCx9FUfEd/VW+7eYwGMS3ej
 HngPREQTcCYyP7onWYsDpwAgTR3LjsTbDk28ZzGXVSjc6yI/WIRlHX3wu
 xhij7dpKtGnG7WkGyBXi8rNkYfEI9aVtLVGYE+rcuIAyvWF1s/zTiyqok
 RvyTbN/Mu5FtpUgrsU+3XlPe2Z9aypcLVggoMOYuJIy9b7GqPgARHAACI Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="348906862"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="348906862"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 11:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="590445264"
Received: from lkp-server02.sh.intel.com (HELO d3fc50ef50de) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 12 Apr 2022 11:19:16 -0700
Received: from kbuild by d3fc50ef50de with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1neL6h-00033G-QI;
 Tue, 12 Apr 2022 18:19:15 +0000
Date: Wed, 13 Apr 2022 02:18:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 908662dc823e5b19eb1efd8c3f2059499e8c8403
Message-ID: <6255c27a.NPI4eKp93y7PJgLU%lkp@intel.com>
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
branch HEAD: 908662dc823e5b19eb1efd8c3f2059499e8c8403  Merge 5.18-rc2 into staging-next

elapsed time: 2053m

configs tested: 163
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220411
powerpc                     ep8248e_defconfig
microblaze                          defconfig
arm                            lart_defconfig
arc                           tb10x_defconfig
arm                          gemini_defconfig
sh                               alldefconfig
arm                       omap2plus_defconfig
arc                          axs101_defconfig
arm                      footbridge_defconfig
powerpc                     tqm8548_defconfig
sh                          rsk7269_defconfig
mips                        vocore2_defconfig
arm                     eseries_pxa_defconfig
powerpc                      mgcoge_defconfig
mips                  decstation_64_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                      ppc40x_defconfig
arm                       imx_v6_v7_defconfig
arm                          pxa3xx_defconfig
m68k                       m5475evb_defconfig
sh                 kfr2r09-romimage_defconfig
xtensa                          iss_defconfig
arm                         s3c6400_defconfig
m68k                       bvme6000_defconfig
sh                          r7780mp_defconfig
arm                        realview_defconfig
sh                          sdk7780_defconfig
parisc64                         alldefconfig
arm                      jornada720_defconfig
arc                          axs103_defconfig
powerpc                     stx_gp3_defconfig
powerpc                      makalu_defconfig
i386                                defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      bamboo_defconfig
powerpc                     mpc83xx_defconfig
m68k                         apollo_defconfig
m68k                          sun3x_defconfig
powerpc                   currituck_defconfig
sparc                       sparc64_defconfig
nios2                         3c120_defconfig
arm                           viper_defconfig
xtensa                  cadence_csp_defconfig
sh                          rsk7203_defconfig
mips                         cobalt_defconfig
nios2                            alldefconfig
m68k                            mac_defconfig
m68k                        mvme16x_defconfig
sh                          landisk_defconfig
h8300                               defconfig
mips                    maltaup_xpa_defconfig
sh                               j2_defconfig
m68k                       m5249evb_defconfig
arm                           u8500_defconfig
mips                         rt305x_defconfig
sh                         apsh4a3a_defconfig
openrisc                         alldefconfig
arm                  randconfig-c002-20220411
x86_64               randconfig-c001-20220411
arm                  randconfig-c002-20220410
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                              defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                              debian-10.3
i386                             allyesconfig
i386                   debian-10.3-kselftests
sparc                               defconfig
sparc                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64               randconfig-a016-20220411
x86_64               randconfig-a012-20220411
x86_64               randconfig-a013-20220411
x86_64               randconfig-a014-20220411
x86_64               randconfig-a015-20220411
x86_64               randconfig-a011-20220411
i386                 randconfig-a011-20220411
i386                 randconfig-a014-20220411
i386                 randconfig-a012-20220411
i386                 randconfig-a013-20220411
i386                 randconfig-a015-20220411
i386                 randconfig-a016-20220411
arc                  randconfig-r043-20220411
riscv                randconfig-r042-20220411
s390                 randconfig-r044-20220411
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
powerpc              randconfig-c003-20220411
arm                  randconfig-c002-20220411
riscv                randconfig-c006-20220411
x86_64               randconfig-c007-20220411
mips                 randconfig-c004-20220411
i386                 randconfig-c001-20220411
powerpc                       ebony_defconfig
powerpc                      pmac32_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                     akebono_defconfig
hexagon                             defconfig
powerpc                     ppa8548_defconfig
x86_64                           allyesconfig
arm                       netwinder_defconfig
powerpc                     powernv_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                        workpad_defconfig
powerpc                   lite5200b_defconfig
arm                         s3c2410_defconfig
arm                          collie_defconfig
arm                           sama7_defconfig
arm                          pxa168_defconfig
i386                 randconfig-a004-20220411
i386                 randconfig-a001-20220411
i386                 randconfig-a003-20220411
i386                 randconfig-a005-20220411
i386                 randconfig-a006-20220411
i386                 randconfig-a002-20220411
x86_64               randconfig-a003-20220411
x86_64               randconfig-a004-20220411
x86_64               randconfig-a006-20220411
x86_64               randconfig-a001-20220411
x86_64               randconfig-a002-20220411
x86_64               randconfig-a005-20220411
hexagon              randconfig-r041-20220411
hexagon              randconfig-r045-20220411

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
