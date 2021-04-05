Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2F33548F6
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Apr 2021 00:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EA6C834FE;
	Mon,  5 Apr 2021 22:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QgoGuK7uaKxV; Mon,  5 Apr 2021 22:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7D4984963;
	Mon,  5 Apr 2021 22:49:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2971B1BF964
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 22:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 172BE84963
 for <devel@linuxdriverproject.org>; Mon,  5 Apr 2021 22:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0oAq0MRQe9EB for <devel@linuxdriverproject.org>;
 Mon,  5 Apr 2021 22:48:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 24C3B8495F
 for <devel@driverdev.osuosl.org>; Mon,  5 Apr 2021 22:48:49 +0000 (UTC)
IronPort-SDR: 3WG4HSRSFU/nviLrbjSW0rcPMs0RRmd182VEuT8AzCJaN6WCKdlUvEfC4ttJVIB13t0MXjBet0
 sOZoj38TRbrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="192978102"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="192978102"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 15:48:48 -0700
IronPort-SDR: AtxW8eyAgrlVji1Aw4PQgI+ORAsokV1vgnq1yATJ5emq0LUL7lomjwVMEkOKZ1gaLoDxuXA3xJ
 SCuYjkZ7bEcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="414480781"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 05 Apr 2021 15:48:46 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lTY1V-000ApQ-V9; Mon, 05 Apr 2021 22:48:45 +0000
Date: Tue, 06 Apr 2021 06:48:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 001c6bb6b62656e29e3b353242b5c955a1d94212
Message-ID: <606b93c1.XK+swbwf2eiCAOL9%lkp@intel.com>
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
branch HEAD: 001c6bb6b62656e29e3b353242b5c955a1d94212  staging: bcm2835-pcm: Allow up to 8 channels and 192kHz data rate

Warning in current branch:

drivers/staging/rtl8723bs/os_dep/recv_linux.c:101:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- arm-allmodconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- arm-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- arm64-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- i386-allmodconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- m68k-randconfig-r024-20210406
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- nds32-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- nios2-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- riscv-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
|-- sh-allmodconfig
|   `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used
`-- x86_64-allyesconfig
    `-- drivers-staging-rtl8723bs-os_dep-recv_linux.c:warning:variable-ret-set-but-not-used


i386-tinyconfig vmlinux size:

+-------+-------------------------+------------------------------------------+
| DELTA |         SYMBOL          |                  COMMIT                  |
+-------+-------------------------+------------------------------------------+
|  +523 | TOTAL                   | a38fd8748464..001c6bb6b626 (ALL COMMITS) |
|  +511 | TEXT                    | a38fd8748464..001c6bb6b626 (ALL COMMITS) |
|   +80 | timekeeping_notify()    | a38fd8748464..001c6bb6b626 (ALL COMMITS) |
|   +70 | __perf_pmu_sched_task() | a38fd8748464..001c6bb6b626 (ALL COMMITS) |
|   +64 | perf_pmu_sched_task()   | a38fd8748464..001c6bb6b626 (ALL COMMITS) |
|   -92 | change_clocksource()    | a38fd8748464..001c6bb6b626 (ALL COMMITS) |
+-------+-------------------------+------------------------------------------+

elapsed time: 720m

configs tested: 190
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
mips                        workpad_defconfig
xtensa                generic_kc705_defconfig
sh                         microdev_defconfig
arm                            mmp2_defconfig
sparc64                             defconfig
sh                           se7343_defconfig
arm                         cm_x300_defconfig
powerpc                      chrp32_defconfig
arm                           sama5_defconfig
powerpc                          g5_defconfig
m68k                         amcore_defconfig
powerpc                     akebono_defconfig
powerpc                    ge_imp3a_defconfig
arm                       mainstone_defconfig
mips                         mpc30x_defconfig
powerpc                      mgcoge_defconfig
arm                             rpc_defconfig
arm                           spitz_defconfig
arm                          imote2_defconfig
sh                           se7705_defconfig
arm                     davinci_all_defconfig
sh                           se7751_defconfig
sh                           sh2007_defconfig
powerpc                     tqm8540_defconfig
riscv                          rv32_defconfig
mips                         tb0219_defconfig
mips                           mtx1_defconfig
arm                         s5pv210_defconfig
ia64                             allyesconfig
mips                           gcw0_defconfig
sh                         ap325rxa_defconfig
arm                         at91_dt_defconfig
mips                             allyesconfig
mips                           rs90_defconfig
powerpc                   lite5200b_defconfig
parisc                generic-64bit_defconfig
mips                          malta_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                 mpc85xx_cds_defconfig
m68k                          hp300_defconfig
arm                         lubbock_defconfig
powerpc                        cell_defconfig
mips                       lemote2f_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                        spear3xx_defconfig
xtensa                  audio_kc705_defconfig
arm                        magician_defconfig
powerpc                     kilauea_defconfig
mips                        nlm_xlp_defconfig
arc                                 defconfig
arm                        spear6xx_defconfig
sh                         apsh4a3a_defconfig
openrisc                            defconfig
sh                             shx3_defconfig
s390                             allyesconfig
openrisc                 simple_smp_defconfig
mips                 decstation_r4k_defconfig
m68k                        stmark2_defconfig
nios2                               defconfig
arm                      tct_hammer_defconfig
mips                      malta_kvm_defconfig
powerpc                     skiroot_defconfig
mips                           ci20_defconfig
sh                               allmodconfig
mips                  cavium_octeon_defconfig
arc                     haps_hs_smp_defconfig
m68k                         apollo_defconfig
sh                   sh7770_generic_defconfig
powerpc                 mpc837x_mds_defconfig
arm                      integrator_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      ep88xc_defconfig
arm                         palmz72_defconfig
arm                       cns3420vb_defconfig
um                             i386_defconfig
arm                            hisi_defconfig
arm                             pxa_defconfig
sh                        edosk7760_defconfig
powerpc                      ppc40x_defconfig
arm                          ixp4xx_defconfig
sh                           se7721_defconfig
powerpc                 mpc8313_rdb_defconfig
openrisc                         alldefconfig
arm                       aspeed_g5_defconfig
powerpc                     sbc8548_defconfig
mips                      loongson3_defconfig
i386                                defconfig
powerpc                    socrates_defconfig
arm                        realview_defconfig
arm                        cerfcube_defconfig
m68k                           sun3_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                          rsk7203_defconfig
sh                          landisk_defconfig
mips                       rbtx49xx_defconfig
mips                      maltasmvp_defconfig
xtensa                  nommu_kc705_defconfig
arm                       omap2plus_defconfig
mips                     loongson1c_defconfig
riscv                    nommu_k210_defconfig
mips                        qi_lb60_defconfig
powerpc                      pmac32_defconfig
m68k                             alldefconfig
sh                           se7712_defconfig
powerpc                        fsp2_defconfig
powerpc                       ppc64_defconfig
arm                       versatile_defconfig
arc                          axs101_defconfig
um                               alldefconfig
mips                            gpr_defconfig
sh                         ecovec24_defconfig
arm                          simpad_defconfig
s390                       zfcpdump_defconfig
sh                 kfr2r09-romimage_defconfig
mips                           ip27_defconfig
mips                     cu1000-neo_defconfig
powerpc                     mpc83xx_defconfig
h8300                     edosk2674_defconfig
powerpc                    klondike_defconfig
mips                          rm200_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210405
i386                 randconfig-a003-20210405
i386                 randconfig-a001-20210405
i386                 randconfig-a004-20210405
i386                 randconfig-a002-20210405
i386                 randconfig-a005-20210405
x86_64               randconfig-a014-20210405
x86_64               randconfig-a015-20210405
x86_64               randconfig-a013-20210405
x86_64               randconfig-a011-20210405
x86_64               randconfig-a012-20210405
x86_64               randconfig-a016-20210405
i386                 randconfig-a014-20210405
i386                 randconfig-a011-20210405
i386                 randconfig-a016-20210405
i386                 randconfig-a012-20210405
i386                 randconfig-a015-20210405
i386                 randconfig-a013-20210405
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a004-20210405
x86_64               randconfig-a003-20210405
x86_64               randconfig-a005-20210405
x86_64               randconfig-a001-20210405
x86_64               randconfig-a002-20210405
x86_64               randconfig-a006-20210405

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
