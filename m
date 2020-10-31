Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2F32A11E4
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Oct 2020 01:20:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22F8386FA5;
	Sat, 31 Oct 2020 00:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z03c_2QnOcjS; Sat, 31 Oct 2020 00:20:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6E6E85660;
	Sat, 31 Oct 2020 00:20:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2ECD1BF9C1
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 00:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF06786F9E
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 00:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vq+Yv0A84gy2 for <devel@linuxdriverproject.org>;
 Sat, 31 Oct 2020 00:20:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CFFC186F9B
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 00:20:42 +0000 (UTC)
IronPort-SDR: ScMKzzGfNj21PypnwjcPRoo0/aVmCEvMre9EPxo/+MqXSd4INnKNUEpgfjo0OgRqX4j4ZKu+fj
 3WUVUGBZIDsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="147967252"
X-IronPort-AV: E=Sophos;i="5.77,435,1596524400"; d="scan'208";a="147967252"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 17:20:42 -0700
IronPort-SDR: A432aum4EeTPX+mWirR1N23kyNxIvThPF1vF1qTnYYoiM+wM7YwzEwVRRdzE8Mxbx14zHAUsc1
 F9bWB4d428WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,435,1596524400"; d="scan'208";a="304906488"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 30 Oct 2020 17:20:41 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kYedM-0000Lc-RT; Sat, 31 Oct 2020 00:20:40 +0000
Date: Sat, 31 Oct 2020 08:20:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 2fcce37a3d2f2f3d7fa36aad2b71cbaca135ffd4
Message-ID: <5f9cadcb.2+xijU3WBGX6ApV5%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 2fcce37a3d2f2f3d7fa36aad2b71cbaca135ffd4  scripts: get_abi.pl: assume ReST format by default

elapsed time: 724m

configs tested: 138
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm                         shannon_defconfig
parisc                           alldefconfig
h8300                    h8300h-sim_defconfig
mips                      maltasmvp_defconfig
i386                             alldefconfig
sh                           se7722_defconfig
powerpc                 mpc834x_itx_defconfig
m68k                        mvme16x_defconfig
powerpc                      pasemi_defconfig
arc                         haps_hs_defconfig
arm                            pleb_defconfig
sh                        apsh4ad0a_defconfig
xtensa                  nommu_kc705_defconfig
mips                           mtx1_defconfig
sh                             shx3_defconfig
mips                      loongson3_defconfig
arc                     nsimosci_hs_defconfig
parisc                generic-64bit_defconfig
powerpc                     asp8347_defconfig
mips                        jmr3927_defconfig
sh                          rsk7201_defconfig
arm                         hackkit_defconfig
openrisc                            defconfig
arm                            hisi_defconfig
h8300                               defconfig
powerpc                     stx_gp3_defconfig
arm                              alldefconfig
sh                           se7712_defconfig
sparc                       sparc64_defconfig
sh                           se7780_defconfig
c6x                        evmc6457_defconfig
powerpc                      ep88xc_defconfig
mips                malta_qemu_32r6_defconfig
arm                     am200epdkit_defconfig
mips                       lemote2f_defconfig
arm                           efm32_defconfig
mips                malta_kvm_guest_defconfig
mips                           ip22_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                           corgi_defconfig
sh                          kfr2r09_defconfig
arm                      tct_hammer_defconfig
powerpc                     sequoia_defconfig
xtensa                  audio_kc705_defconfig
mips                      maltaaprp_defconfig
nios2                               defconfig
powerpc                       maple_defconfig
m68k                        m5307c3_defconfig
m68k                       m5208evb_defconfig
mips                        omega2p_defconfig
arc                          axs101_defconfig
powerpc                     tqm8540_defconfig
arm                        oxnas_v6_defconfig
arm                    vt8500_v6_v7_defconfig
arm                           spitz_defconfig
arm                            u300_defconfig
powerpc                     ppa8548_defconfig
openrisc                         alldefconfig
powerpc                      walnut_defconfig
arm                        mini2440_defconfig
powerpc                 mpc837x_mds_defconfig
arm                        clps711x_defconfig
powerpc                      cm5200_defconfig
mips                           rs90_defconfig
arm                        neponset_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
powerpc                           allnoconfig
x86_64               randconfig-a005-20201030
x86_64               randconfig-a001-20201030
x86_64               randconfig-a002-20201030
x86_64               randconfig-a003-20201030
x86_64               randconfig-a006-20201030
x86_64               randconfig-a004-20201030
i386                 randconfig-a005-20201030
i386                 randconfig-a003-20201030
i386                 randconfig-a002-20201030
i386                 randconfig-a001-20201030
i386                 randconfig-a006-20201030
i386                 randconfig-a004-20201030
i386                 randconfig-a011-20201030
i386                 randconfig-a014-20201030
i386                 randconfig-a015-20201030
i386                 randconfig-a012-20201030
i386                 randconfig-a013-20201030
i386                 randconfig-a016-20201030
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20201030
x86_64               randconfig-a014-20201030
x86_64               randconfig-a015-20201030
x86_64               randconfig-a016-20201030
x86_64               randconfig-a011-20201030
x86_64               randconfig-a012-20201030

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
