Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B58D35A98D
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Apr 2021 02:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAF46401EF;
	Sat, 10 Apr 2021 00:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_XTvIUXbj-a; Sat, 10 Apr 2021 00:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5443401CC;
	Sat, 10 Apr 2021 00:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB581BF3DA
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 00:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11B914057C
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 00:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Ugh-FHGJPgX for <devel@linuxdriverproject.org>;
 Sat, 10 Apr 2021 00:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC18A4057A
 for <devel@driverdev.osuosl.org>; Sat, 10 Apr 2021 00:36:34 +0000 (UTC)
IronPort-SDR: lQsbSRq1ph2QSB69weGpOXsi2RHYJRCvQ+mmwylA4Rw1gE36BOP/Q0DiflSeUq2T4AanmKkzzn
 dYGCoDd8Y1uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9949"; a="173952586"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="173952586"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 17:36:33 -0700
IronPort-SDR: QYaiqRvyKn6+k1sw8WcwK4jqMDq163voEvPVtknvgZPu877Png6FPkSZZbddc7l+qpyOqEfiY8
 AeXbWqWEAzeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="416482758"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 09 Apr 2021 17:36:32 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lV1bz-000HZK-Ok; Sat, 10 Apr 2021 00:36:31 +0000
Date: Sat, 10 Apr 2021 08:36:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 e7442ffe1cc5d89d101a99ff78eb68edb1961e30
Message-ID: <6070f306.Urqerp29uecN3LoS%lkp@intel.com>
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
branch HEAD: e7442ffe1cc5d89d101a99ff78eb68edb1961e30  staging: comedi: Kconfig: Fix COMEDI_TESTS_NI_ROUTES selections

i386-tinyconfig vmlinux size:

+-------+-------------------------+------------------------------------------+
| DELTA |         SYMBOL          |                  COMMIT                  |
+-------+-------------------------+------------------------------------------+
|  +559 | TOTAL                   | a38fd8748464..e7442ffe1cc5 (ALL COMMITS) |
|  +547 | TEXT                    | a38fd8748464..e7442ffe1cc5 (ALL COMMITS) |
|   +80 | timekeeping_notify()    | a38fd8748464..e7442ffe1cc5 (ALL COMMITS) |
|   +70 | __perf_pmu_sched_task() | a38fd8748464..e7442ffe1cc5 (ALL COMMITS) |
|   +64 | perf_pmu_sched_task()   | a38fd8748464..e7442ffe1cc5 (ALL COMMITS) |
|   -92 | change_clocksource()    | a38fd8748464..e7442ffe1cc5 (ALL COMMITS) |
+-------+-------------------------+------------------------------------------+

elapsed time: 720m

configs tested: 167
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
arm64                            alldefconfig
powerpc                      bamboo_defconfig
m68k                       bvme6000_defconfig
mips                      pistachio_defconfig
openrisc                 simple_smp_defconfig
sh                           se7750_defconfig
powerpc                       ebony_defconfig
mips                           xway_defconfig
powerpc                     mpc83xx_defconfig
ia64                      gensparse_defconfig
arm                          simpad_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     pq2fads_defconfig
mips                    maltaup_xpa_defconfig
mips                          ath79_defconfig
m68k                                defconfig
sh                           se7722_defconfig
m68k                        m5307c3_defconfig
powerpc                       ppc64_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                    socrates_defconfig
sh                           se7751_defconfig
arm                         s3c6400_defconfig
sh                         apsh4a3a_defconfig
mips                        bcm63xx_defconfig
powerpc                      tqm8xx_defconfig
openrisc                         alldefconfig
arm                            mmp2_defconfig
um                             i386_defconfig
sh                          rsk7264_defconfig
ia64                        generic_defconfig
mips                        vocore2_defconfig
powerpc                           allnoconfig
powerpc64                           defconfig
sh                             espt_defconfig
arm                         vf610m4_defconfig
mips                          rb532_defconfig
mips                            gpr_defconfig
sh                           se7206_defconfig
mips                      fuloong2e_defconfig
arm                           sama5_defconfig
mips                      maltasmvp_defconfig
arm                             rpc_defconfig
powerpc                   currituck_defconfig
sh                        dreamcast_defconfig
powerpc                 mpc837x_mds_defconfig
microblaze                      mmu_defconfig
mips                        workpad_defconfig
mips                       bmips_be_defconfig
sh                            shmin_defconfig
arm                        multi_v7_defconfig
arm                       imx_v4_v5_defconfig
mips                           ip27_defconfig
mips                         mpc30x_defconfig
s390                                defconfig
riscv                    nommu_k210_defconfig
arc                            hsdk_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                        multi_v5_defconfig
h8300                               defconfig
mips                         tb0287_defconfig
mips                         tb0219_defconfig
sh                          urquell_defconfig
arm                        spear6xx_defconfig
sh                            titan_defconfig
powerpc                 mpc8315_rdb_defconfig
sh                           se7712_defconfig
mips                        qi_lb60_defconfig
powerpc                     pseries_defconfig
powerpc                   bluestone_defconfig
mips                      loongson3_defconfig
m68k                          multi_defconfig
arc                          axs101_defconfig
sh                          sdk7780_defconfig
arm                          badge4_defconfig
s390                             allyesconfig
arm                         shannon_defconfig
mips                malta_kvm_guest_defconfig
sh                           se7619_defconfig
xtensa                  audio_kc705_defconfig
arm                      jornada720_defconfig
sh                           se7780_defconfig
sh                          lboxre2_defconfig
sh                          r7785rp_defconfig
powerpc                     asp8347_defconfig
powerpc                     sbc8548_defconfig
powerpc                     tqm8540_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                           ip28_defconfig
powerpc                    adder875_defconfig
mips                     loongson1b_defconfig
arm                         mv78xx0_defconfig
arm                       multi_v4t_defconfig
xtensa                  cadence_csp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
arc                                 defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a006-20210409
i386                 randconfig-a003-20210409
i386                 randconfig-a001-20210409
i386                 randconfig-a004-20210409
i386                 randconfig-a002-20210409
i386                 randconfig-a005-20210409
x86_64               randconfig-a014-20210409
x86_64               randconfig-a015-20210409
x86_64               randconfig-a012-20210409
x86_64               randconfig-a011-20210409
x86_64               randconfig-a013-20210409
x86_64               randconfig-a016-20210409
i386                 randconfig-a014-20210409
i386                 randconfig-a011-20210409
i386                 randconfig-a016-20210409
i386                 randconfig-a012-20210409
i386                 randconfig-a013-20210409
i386                 randconfig-a015-20210409
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210409
x86_64               randconfig-a003-20210409
x86_64               randconfig-a006-20210409
x86_64               randconfig-a005-20210409
x86_64               randconfig-a001-20210409
x86_64               randconfig-a002-20210409

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
