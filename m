Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F6544FC85
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 01:10:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E5D2606BB;
	Mon, 15 Nov 2021 00:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-DiEMAwud8A; Mon, 15 Nov 2021 00:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93761606AE;
	Mon, 15 Nov 2021 00:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E32391BF59D
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 00:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE8F440200
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 00:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Rjq_pFVsmL8 for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 00:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1526340001
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 00:10:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="214077483"
X-IronPort-AV: E=Sophos;i="5.87,235,1631602800"; d="scan'208";a="214077483"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2021 16:10:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,235,1631602800"; d="scan'208";a="493787546"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 14 Nov 2021 16:09:58 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mmPZN-000LuN-Hp; Mon, 15 Nov 2021 00:09:57 +0000
Date: Mon, 15 Nov 2021 08:09:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 8247270bcf99bc7bf661ae2a3f2ee6e64c7f957d
Message-ID: <6191a542.UoOwD8oPJj0aLifW%lkp@intel.com>
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
branch HEAD: 8247270bcf99bc7bf661ae2a3f2ee6e64c7f957d  fs: make d_path-like functions all have unsigned size

possible Warning in current branch (please contact us if interested):

fs/d_path.c:20:20: warning: Unsigned variable '.' can't be negative so it is unnecessary to test it. [unsignedPositive]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- ia64-randconfig-p001-20211114
    `-- fs-d_path.c:warning:Unsigned-variable-.-can-t-be-negative-so-it-is-unnecessary-to-test-it.-unsignedPositive

elapsed time: 720m

configs tested: 196
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
m68k                          amiga_defconfig
mips                           jazz_defconfig
powerpc                   lite5200b_defconfig
m68k                       bvme6000_defconfig
mips                            gpr_defconfig
arc                          axs101_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc64                           defconfig
csky                             alldefconfig
arm                             rpc_defconfig
arm                        mini2440_defconfig
arm                         palmz72_defconfig
sh                           se7721_defconfig
powerpc                    sam440ep_defconfig
powerpc                    klondike_defconfig
riscv             nommu_k210_sdcard_defconfig
m68k                        mvme147_defconfig
powerpc                          g5_defconfig
arm                          ixp4xx_defconfig
mips                       lemote2f_defconfig
h8300                            allyesconfig
riscv                    nommu_k210_defconfig
arm                         lpc18xx_defconfig
powerpc                      ppc44x_defconfig
arm                          imote2_defconfig
powerpc                 mpc837x_rdb_defconfig
arc                        vdk_hs38_defconfig
arm                          pcm027_defconfig
sparc64                             defconfig
arm                         assabet_defconfig
sparc                       sparc32_defconfig
powerpc                     rainier_defconfig
m68k                          sun3x_defconfig
powerpc                     tqm8555_defconfig
um                               alldefconfig
sh                            migor_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc6xx_defconfig
openrisc                            defconfig
arm                        vexpress_defconfig
sh                             shx3_defconfig
m68k                        stmark2_defconfig
arm                      jornada720_defconfig
arm                           h3600_defconfig
sh                            titan_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                           sh2007_defconfig
ia64                             alldefconfig
sh                           se7724_defconfig
mips                        omega2p_defconfig
arm                           u8500_defconfig
arm                           spitz_defconfig
sh                     magicpanelr2_defconfig
sh                                  defconfig
sh                           se7722_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc8272_ads_defconfig
mips                      pic32mzda_defconfig
mips                        bcm63xx_defconfig
arm                      pxa255-idp_defconfig
arm                            hisi_defconfig
arc                              alldefconfig
arm                          pxa3xx_defconfig
sh                           se7206_defconfig
powerpc                     pq2fads_defconfig
mips                     loongson1b_defconfig
arm                           sama7_defconfig
arm                          collie_defconfig
arc                      axs103_smp_defconfig
sh                           se7751_defconfig
sh                             sh03_defconfig
xtensa                              defconfig
powerpc64                        alldefconfig
powerpc                 mpc8315_rdb_defconfig
arm                       aspeed_g4_defconfig
mips                          malta_defconfig
arm                       mainstone_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     powernv_defconfig
mips                     decstation_defconfig
openrisc                 simple_smp_defconfig
arm                         socfpga_defconfig
arm                            pleb_defconfig
arm                          moxart_defconfig
arm                        magician_defconfig
arm                       multi_v4t_defconfig
arm                  randconfig-c002-20211114
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                              defconfig
s390                                defconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a006-20211115
i386                 randconfig-a003-20211115
i386                 randconfig-a005-20211115
i386                 randconfig-a001-20211115
i386                 randconfig-a004-20211115
i386                 randconfig-a002-20211115
x86_64               randconfig-a015-20211114
x86_64               randconfig-a013-20211114
x86_64               randconfig-a012-20211114
x86_64               randconfig-a011-20211114
x86_64               randconfig-a016-20211114
x86_64               randconfig-a014-20211114
i386                 randconfig-a014-20211114
i386                 randconfig-a016-20211114
i386                 randconfig-a012-20211114
i386                 randconfig-a013-20211114
i386                 randconfig-a011-20211114
i386                 randconfig-a015-20211114
arc                  randconfig-r043-20211114
s390                 randconfig-r044-20211114
riscv                randconfig-r042-20211114
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-c007-20211114
i386                 randconfig-c001-20211114
arm                  randconfig-c002-20211114
riscv                randconfig-c006-20211114
powerpc              randconfig-c003-20211114
s390                 randconfig-c005-20211114
mips                 randconfig-c004-20211114
x86_64               randconfig-a005-20211114
x86_64               randconfig-a003-20211114
x86_64               randconfig-a001-20211114
x86_64               randconfig-a002-20211114
x86_64               randconfig-a006-20211114
x86_64               randconfig-a004-20211114
i386                 randconfig-a006-20211114
i386                 randconfig-a003-20211114
i386                 randconfig-a005-20211114
i386                 randconfig-a001-20211114
i386                 randconfig-a004-20211114
i386                 randconfig-a002-20211114
x86_64               randconfig-a015-20211115
x86_64               randconfig-a013-20211115
x86_64               randconfig-a011-20211115
x86_64               randconfig-a012-20211115
x86_64               randconfig-a016-20211115
x86_64               randconfig-a014-20211115
i386                 randconfig-a014-20211115
i386                 randconfig-a016-20211115
i386                 randconfig-a012-20211115
i386                 randconfig-a013-20211115
i386                 randconfig-a011-20211115
i386                 randconfig-a015-20211115
hexagon              randconfig-r045-20211115
hexagon              randconfig-r041-20211115
s390                 randconfig-r044-20211115
riscv                randconfig-r042-20211115
hexagon              randconfig-r045-20211114
hexagon              randconfig-r041-20211114

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
