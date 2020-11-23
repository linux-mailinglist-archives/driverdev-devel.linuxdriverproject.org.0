Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7609A2C14D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 20:56:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE1C085AD6;
	Mon, 23 Nov 2020 19:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zOChIxSO6P_i; Mon, 23 Nov 2020 19:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64CFB851C2;
	Mon, 23 Nov 2020 19:56:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C3EF51BF3F3
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 19:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C0F838522E
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 19:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8xD6fH43uHi4 for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 19:56:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 97603851C2
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 19:56:44 +0000 (UTC)
IronPort-SDR: W8miTEeD8RNkIXdj5owCZnv9A6XytXAbqYJkTJ5MqlUv9/H0ob7D0OB5NkJ9za8WyUWn8CsQN/
 O8j5HtYVj2ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="151093101"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="151093101"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 11:56:44 -0800
IronPort-SDR: /r/4MEWryNS8tcBAJPpBuQWG/NvEoEFQ3c1kh5iQ0jvkv4iCSaij1vDr6k1/xpWezDCV2MbD5b
 jRWyMP7cUhyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="432388363"
Received: from lkp-server01.sh.intel.com (HELO 1138cb5768e3) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2020 11:56:43 -0800
Received: from kbuild by 1138cb5768e3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1khHx4-0000B3-8C; Mon, 23 Nov 2020 19:56:42 +0000
Date: Tue, 24 Nov 2020 03:56:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 652db3de96a630e8051ffa921286000bb9ee2727
Message-ID: <5fbc13e9.VZwkanwiYuYaupKS%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  readfile
branch HEAD: 652db3de96a630e8051ffa921286000bb9ee2727  readfile.2: new page describing readfile(2)

elapsed time: 725m

configs tested: 141
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                          hp300_defconfig
arm                         bcm2835_defconfig
sh                               alldefconfig
m68k                         apollo_defconfig
sh                ecovec24-romimage_defconfig
powerpc                 mpc832x_mds_defconfig
xtensa                         virt_defconfig
sh                          r7780mp_defconfig
arm                       netwinder_defconfig
xtensa                              defconfig
arm                            u300_defconfig
arm                         nhk8815_defconfig
sh                               allmodconfig
powerpc                      cm5200_defconfig
arm                          badge4_defconfig
powerpc                     tqm8540_defconfig
microblaze                      mmu_defconfig
arm                          simpad_defconfig
x86_64                           allyesconfig
sh                        apsh4ad0a_defconfig
xtensa                          iss_defconfig
powerpc                     skiroot_defconfig
powerpc                      makalu_defconfig
powerpc                        icon_defconfig
powerpc                     akebono_defconfig
arm                         s3c6400_defconfig
sparc                            alldefconfig
mips                           ip32_defconfig
sh                           se7721_defconfig
powerpc                      ep88xc_defconfig
mips                         bigsur_defconfig
powerpc                     pseries_defconfig
arm                           tegra_defconfig
powerpc                     kmeter1_defconfig
mips                 decstation_r4k_defconfig
mips                           ip27_defconfig
nds32                             allnoconfig
powerpc                    mvme5100_defconfig
arm                  colibri_pxa270_defconfig
m68k                           sun3_defconfig
powerpc                           allnoconfig
c6x                         dsk6455_defconfig
mips                        qi_lb60_defconfig
mips                         tb0226_defconfig
arc                     nsimosci_hs_defconfig
riscv                            allmodconfig
mips                           gcw0_defconfig
powerpc                   bluestone_defconfig
mips                      fuloong2e_defconfig
powerpc                   lite5200b_defconfig
mips                          ath79_defconfig
arm                         hackkit_defconfig
mips                            ar7_defconfig
arm                        realview_defconfig
arm                      footbridge_defconfig
arm                       mainstone_defconfig
sparc64                          alldefconfig
arm                         assabet_defconfig
powerpc                   motionpro_defconfig
powerpc                      chrp32_defconfig
sh                          rsk7269_defconfig
mips                malta_qemu_32r6_defconfig
arm                             rpc_defconfig
powerpc                      arches_defconfig
powerpc                   currituck_defconfig
arm                          pxa168_defconfig
mips                        vocore2_defconfig
xtensa                  audio_kc705_defconfig
mips                       rbtx49xx_defconfig
arm                            mps2_defconfig
c6x                        evmc6474_defconfig
arm                        spear3xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a004-20201123
i386                 randconfig-a003-20201123
i386                 randconfig-a002-20201123
i386                 randconfig-a005-20201123
i386                 randconfig-a001-20201123
i386                 randconfig-a006-20201123
x86_64               randconfig-a015-20201123
x86_64               randconfig-a011-20201123
x86_64               randconfig-a014-20201123
x86_64               randconfig-a016-20201123
x86_64               randconfig-a012-20201123
x86_64               randconfig-a013-20201123
i386                 randconfig-a012-20201123
i386                 randconfig-a013-20201123
i386                 randconfig-a011-20201123
i386                 randconfig-a016-20201123
i386                 randconfig-a014-20201123
i386                 randconfig-a015-20201123
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20201123
x86_64               randconfig-a003-20201123
x86_64               randconfig-a004-20201123
x86_64               randconfig-a005-20201123
x86_64               randconfig-a002-20201123
x86_64               randconfig-a001-20201123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
