Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5177E37253D
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 May 2021 06:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D80060826;
	Tue,  4 May 2021 04:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjnaAUqrPypP; Tue,  4 May 2021 04:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 826C660612;
	Tue,  4 May 2021 04:58:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E12E1BF2A6
 for <devel@linuxdriverproject.org>; Tue,  4 May 2021 04:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 59B10402FD
 for <devel@linuxdriverproject.org>; Tue,  4 May 2021 04:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AGMhbvxnRWrB for <devel@linuxdriverproject.org>;
 Tue,  4 May 2021 04:58:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15769402F9
 for <devel@driverdev.osuosl.org>; Tue,  4 May 2021 04:58:00 +0000 (UTC)
IronPort-SDR: zmztonocMg++1LM6WXRdUJ15x5pYg+MiZ69FVU0ygwB2FwIcwis93u36g+jo1P4udMte9xqJYH
 StTE8kTrkROA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="177441052"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="177441052"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 21:58:00 -0700
IronPort-SDR: 7JccWCG1ZogogF9GkQ1W2Hu0E7bWsKaO7BcPXpuS03e4UM9lW433jJgskzNOtZYEYuuBM5T3V9
 aqIwSaMr/cMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="428701565"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 03 May 2021 21:57:59 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ldn8A-0009TY-PG; Tue, 04 May 2021 04:57:58 +0000
Date: Tue, 04 May 2021 12:57:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 2e63d3da3a0d0cf7c730fe2d921c495884df5d72
Message-ID: <6090d43f.PQrQmKGIR/tXvdvf%lkp@intel.com>
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
branch HEAD: 2e63d3da3a0d0cf7c730fe2d921c495884df5d72  staging: rtl8723bs: remove odm_debug.h header file

Error/Warning in current branch:

drivers/comedi/drivers/comedi_isadma.c:25:10: error: implicit declaration of function 'claim_dma_lock' [-Werror=implicit-function-declaration]
drivers/comedi/drivers/comedi_isadma.c:31:2: error: implicit declaration of function 'release_dma_lock'; did you mean 'release_task'? [-Werror=implicit-function-declaration]
drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- arm-randconfig-r024-20210503
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- i386-randconfig-c021-20210503
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- m68k-randconfig-r001-20210503
|   |-- drivers-comedi-drivers-comedi_isadma.c:error:implicit-declaration-of-function-claim_dma_lock
|   `-- drivers-comedi-drivers-comedi_isadma.c:error:implicit-declaration-of-function-release_dma_lock
|-- microblaze-randconfig-r005-20210503
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- mips-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- mips-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- parisc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- s390-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- sparc-allyesconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
`-- x86_64-allyesconfig
    `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used

elapsed time: 722m

configs tested: 111
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                           ip27_defconfig
sh                        apsh4ad0a_defconfig
arm                        neponset_defconfig
powerpc                     akebono_defconfig
mips                        workpad_defconfig
powerpc                     pseries_defconfig
arm                          exynos_defconfig
arm                  colibri_pxa270_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                     cu1830-neo_defconfig
sh                             sh03_defconfig
xtensa                    smp_lx200_defconfig
sh                        dreamcast_defconfig
arc                        nsimosci_defconfig
sh                      rts7751r2d1_defconfig
xtensa                         virt_defconfig
powerpc                 xes_mpc85xx_defconfig
m68k                       bvme6000_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     powernv_defconfig
sh                          r7785rp_defconfig
sh                             espt_defconfig
powerpc                     mpc5200_defconfig
powerpc                 mpc8313_rdb_defconfig
sparc64                             defconfig
sh                  sh7785lcr_32bit_defconfig
arm                    vt8500_v6_v7_defconfig
mips                         tb0219_defconfig
parisc                           alldefconfig
nios2                         10m50_defconfig
arm                        spear3xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210503
x86_64               randconfig-a005-20210503
x86_64               randconfig-a003-20210503
x86_64               randconfig-a002-20210503
x86_64               randconfig-a006-20210503
x86_64               randconfig-a004-20210503
i386                 randconfig-a003-20210503
i386                 randconfig-a006-20210503
i386                 randconfig-a001-20210503
i386                 randconfig-a005-20210503
i386                 randconfig-a004-20210503
i386                 randconfig-a002-20210503
i386                 randconfig-a013-20210503
i386                 randconfig-a015-20210503
i386                 randconfig-a016-20210503
i386                 randconfig-a014-20210503
i386                 randconfig-a011-20210503
i386                 randconfig-a012-20210503
riscv                    nommu_k210_defconfig
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
x86_64               randconfig-a014-20210503
x86_64               randconfig-a015-20210503
x86_64               randconfig-a012-20210503
x86_64               randconfig-a011-20210503
x86_64               randconfig-a013-20210503
x86_64               randconfig-a016-20210503

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
