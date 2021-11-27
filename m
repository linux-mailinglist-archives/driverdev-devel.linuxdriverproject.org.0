Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC74545FCB0
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Nov 2021 06:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A633C409C7;
	Sat, 27 Nov 2021 05:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfJcTzFTysrq; Sat, 27 Nov 2021 05:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 703624097E;
	Sat, 27 Nov 2021 05:23:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85F451BF5DE
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 05:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70CF2401CA
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 05:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dEIUElfh9YD for <devel@linuxdriverproject.org>;
 Sat, 27 Nov 2021 05:23:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F95540104
 for <devel@driverdev.osuosl.org>; Sat, 27 Nov 2021 05:23:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10180"; a="234473449"
X-IronPort-AV: E=Sophos;i="5.87,268,1631602800"; d="scan'208";a="234473449"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 21:23:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,268,1631602800"; d="scan'208";a="675727894"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 26 Nov 2021 21:23:38 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mqqBV-00096O-4L; Sat, 27 Nov 2021 05:23:37 +0000
Date: Sat, 27 Nov 2021 13:23:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD REGRESSION
 7f67ea9c19735222f7999754f3fee922cd8f4781
Message-ID: <61a1c0b9.SM6rulOFA9+smvJG%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 7f67ea9c19735222f7999754f3fee922cd8f4781  driver core: platform: Make use of the helper function dev_err_probe()

Error/Warning reports:

https://lore.kernel.org/lkml/202111271140.XMh9IcBt-lkp@intel.com

Error/Warning in current branch:

drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin.gen.S:5: Error: file not found: drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- alpha-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- arm-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- arm-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- arm64-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- h8300-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- i386-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- ia64-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- ia64-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- nds32-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- nios2-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- openrisc-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- powerpc-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- powerpc-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- riscv-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- riscv-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- s390-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- s390-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- sh-allmodconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- sparc-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
|-- x86_64-allyesconfig
|   `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin
`-- xtensa-allyesconfig
    `-- drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin.gen.S:Error:file-not-found:drivers-base-firmware_loader-test-builtin-test-builtin-firmware.bin

elapsed time: 722m

configs tested: 156
configs skipped: 4

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211126
powerpc              randconfig-c003-20211126
mips                 randconfig-c004-20211126
arm                            zeus_defconfig
arm                  colibri_pxa300_defconfig
arm                         lpc32xx_defconfig
ia64                             allyesconfig
powerpc                   bluestone_defconfig
powerpc                     pq2fads_defconfig
xtensa                    xip_kc705_defconfig
powerpc                 canyonlands_defconfig
sh                              ul2_defconfig
s390                       zfcpdump_defconfig
arm                       omap2plus_defconfig
powerpc                    adder875_defconfig
arm                            dove_defconfig
m68k                        m5272c3_defconfig
arm                        spear3xx_defconfig
i386                             alldefconfig
powerpc                 mpc8272_ads_defconfig
parisc                generic-32bit_defconfig
powerpc                     akebono_defconfig
powerpc                     mpc83xx_defconfig
sh                        edosk7760_defconfig
powerpc                 mpc8560_ads_defconfig
m68k                          sun3x_defconfig
arm                          ep93xx_defconfig
arm                          simpad_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                     tqm8540_defconfig
sh                           se7705_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                          g5_defconfig
arm                        mvebu_v5_defconfig
arm                            hisi_defconfig
sh                           se7750_defconfig
arm                         hackkit_defconfig
sh                             sh03_defconfig
powerpc                     ep8248e_defconfig
sh                            titan_defconfig
arm                            xcep_defconfig
powerpc                    sam440ep_defconfig
sh                           se7724_defconfig
powerpc                       eiger_defconfig
xtensa                              defconfig
arm                        neponset_defconfig
sh                               j2_defconfig
arm64                            alldefconfig
powerpc                     rainier_defconfig
xtensa                  audio_kc705_defconfig
powerpc                     mpc5200_defconfig
sh                           se7722_defconfig
sh                          sdk7780_defconfig
arm                          pcm027_defconfig
powerpc                    gamecube_defconfig
arm                          moxart_defconfig
powerpc                 mpc832x_rdb_defconfig
sparc                       sparc64_defconfig
powerpc                  iss476-smp_defconfig
sh                          kfr2r09_defconfig
m68k                         apollo_defconfig
m68k                        m5407c3_defconfig
arm                            pleb_defconfig
xtensa                    smp_lx200_defconfig
sh                         microdev_defconfig
sh                        apsh4ad0a_defconfig
sh                 kfr2r09-romimage_defconfig
arm                     eseries_pxa_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                           sh2007_defconfig
arm                  randconfig-c002-20211126
ia64                             allmodconfig
ia64                                defconfig
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
x86_64               randconfig-a014-20211126
x86_64               randconfig-a011-20211126
x86_64               randconfig-a012-20211126
x86_64               randconfig-a016-20211126
x86_64               randconfig-a013-20211126
x86_64               randconfig-a015-20211126
i386                 randconfig-a016-20211126
i386                 randconfig-a015-20211126
i386                 randconfig-a012-20211126
i386                 randconfig-a013-20211126
i386                 randconfig-a014-20211126
i386                 randconfig-a011-20211126
arc                  randconfig-r043-20211126
s390                 randconfig-r044-20211126
riscv                randconfig-r042-20211126
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
s390                 randconfig-c005-20211126
i386                 randconfig-c001-20211126
powerpc              randconfig-c003-20211126
riscv                randconfig-c006-20211126
arm                  randconfig-c002-20211126
x86_64               randconfig-c007-20211126
mips                 randconfig-c004-20211126
x86_64               randconfig-a001-20211126
x86_64               randconfig-a003-20211126
x86_64               randconfig-a006-20211126
x86_64               randconfig-a004-20211126
x86_64               randconfig-a005-20211126
x86_64               randconfig-a002-20211126
i386                 randconfig-a002-20211126
i386                 randconfig-a001-20211126
i386                 randconfig-a005-20211126
i386                 randconfig-a006-20211126
i386                 randconfig-a004-20211126
i386                 randconfig-a003-20211126
hexagon              randconfig-r045-20211126
hexagon              randconfig-r041-20211126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
