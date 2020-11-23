Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 671FB2C1451
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 20:28:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15CF5858B5;
	Mon, 23 Nov 2020 19:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIaSzxc+6tq5; Mon, 23 Nov 2020 19:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D6FC84DFD;
	Mon, 23 Nov 2020 19:28:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2C931BF3F3
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 19:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CF5C1858FB
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 19:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O3eqQQ1i9vx5 for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 19:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9ED13858F7
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 19:28:41 +0000 (UTC)
IronPort-SDR: SbqwC9XJSZOi7HvjAKeEL8H1WCJI1T2Y7xyZAb/TX7epIa3tBolvzVx8DyFKdrorFBn+jJD9E9
 MA5kKDLQaesw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="151670248"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="151670248"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 11:28:40 -0800
IronPort-SDR: CMNCHWiWSGvtRXMuQlsHaocBrJZCPYwEpOzoQGEl3BaZLfUZhjtAIJln53EcIvWvGOBe1m5LFB
 CImoWUcmFe8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="364748464"
Received: from lkp-server01.sh.intel.com (HELO 1138cb5768e3) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2020 11:28:39 -0800
Received: from kbuild by 1138cb5768e3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1khHVv-0000A8-2a; Mon, 23 Nov 2020 19:28:39 +0000
Date: Tue, 24 Nov 2020 03:27:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 03c1136af504bbc2cabda76af6b27fd5f7cf8a7d
Message-ID: <5fbc0d34.ubu3ZhDZJt36aXvz%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: 03c1136af504bbc2cabda76af6b27fd5f7cf8a7d  Merge 5.10-rc5 into staging-testing

elapsed time: 723m

configs tested: 133
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
arm                         cm_x300_defconfig
arm64                            alldefconfig
mips                         tb0226_defconfig
powerpc                  iss476-smp_defconfig
powerpc                     akebono_defconfig
arm                         s3c6400_defconfig
sparc                            alldefconfig
mips                           ip32_defconfig
sh                           se7721_defconfig
powerpc                      ep88xc_defconfig
c6x                         dsk6455_defconfig
mips                        qi_lb60_defconfig
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
arm                  colibri_pxa270_defconfig
powerpc                   motionpro_defconfig
powerpc                      chrp32_defconfig
sh                          rsk7269_defconfig
mips                malta_qemu_32r6_defconfig
arm                             rpc_defconfig
powerpc                     pseries_defconfig
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
i386                 randconfig-a004-20201123
i386                 randconfig-a003-20201123
i386                 randconfig-a002-20201123
i386                 randconfig-a005-20201123
i386                 randconfig-a001-20201123
i386                 randconfig-a006-20201123
x86_64               randconfig-a015-20201123
x86_64               randconfig-a014-20201123
x86_64               randconfig-a016-20201123
x86_64               randconfig-a011-20201123
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
