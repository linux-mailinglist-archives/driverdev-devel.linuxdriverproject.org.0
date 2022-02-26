Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F10C84C5327
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Feb 2022 02:56:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F14E60B98;
	Sat, 26 Feb 2022 01:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1dtgZz4UJLDb; Sat, 26 Feb 2022 01:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C7B960B65;
	Sat, 26 Feb 2022 01:56:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C85E1BF589
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 01:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98C1383FEC
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 01:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ooEGNmvcZx_A for <devel@linuxdriverproject.org>;
 Sat, 26 Feb 2022 01:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0F2583F1B
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 01:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645840594; x=1677376594;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kVpseM/EOOrdLd6p0rWRBggEoUpwvFIqzlAVuWlDkPU=;
 b=TMCPx+b85K/ZCimNchoM9ZRWvArgfI5wyvzGmM1d2rkMgknkRpVnzHiL
 6yjUFYAqV24vnr6x5y1QkFU0ouj/AThU9L2F2pmGyrJja8x7Z7R/9p8qb
 3XkO3ZBUjAWun3/T4stgM5FhC4+Lh5KnImjn2+/fCtfD4YYAvgszFvOFM
 hRtj4SBkJ0HT2IYbQt4cj+SRyyVND7aTDV34BXj09pYZhCK6MtovDmLIO
 YuPgBbpWgKjvw2gouZ2POXYSuSGIfASo7f/8CGXa8iAt3xwvyUJ4BBDfb
 4HpkAQLv/hTuwB6iqDslJky5i0Gjx0a4Z8Fz7JVjJxcCrtL7jHNpGidSd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="277258371"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="277258371"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 17:56:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="492156901"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 25 Feb 2022 17:56:32 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nNmJz-0004vZ-Md; Sat, 26 Feb 2022 01:56:31 +0000
Date: Sat, 26 Feb 2022 09:55:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 83ba9a33b56673263981d5633fd6a96d83dabc21
Message-ID: <621988a7.VfJ6JPM0+rK7D9vn%lkp@intel.com>
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
branch HEAD: 83ba9a33b56673263981d5633fd6a96d83dabc21  staging: r8188eu: remove ETH_ALEN from ieee80211.h

elapsed time: 722m

configs tested: 146
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220225
mips                 randconfig-c004-20220225
s390                          debug_defconfig
arm                        shmobile_defconfig
sh                         microdev_defconfig
sh                          kfr2r09_defconfig
sparc                       sparc64_defconfig
ia64                         bigsur_defconfig
mips                      loongson3_defconfig
xtensa                           allyesconfig
sh                          sdk7780_defconfig
powerpc                     asp8347_defconfig
arm                          exynos_defconfig
nios2                         3c120_defconfig
sh                        edosk7705_defconfig
arm                           h5000_defconfig
arc                      axs103_smp_defconfig
mips                         tb0226_defconfig
arm                       imx_v6_v7_defconfig
arm                         assabet_defconfig
mips                  decstation_64_defconfig
sh                        dreamcast_defconfig
xtensa                         virt_defconfig
s390                             allyesconfig
arm                           tegra_defconfig
powerpc                     pq2fads_defconfig
csky                                defconfig
powerpc                        warp_defconfig
m68k                        mvme147_defconfig
microblaze                      mmu_defconfig
m68k                       m5208evb_defconfig
mips                     decstation_defconfig
powerpc                     stx_gp3_defconfig
powerpc                    klondike_defconfig
m68k                       m5475evb_defconfig
powerpc                     tqm8548_defconfig
s390                       zfcpdump_defconfig
powerpc                      tqm8xx_defconfig
mips                        vocore2_defconfig
arm                        trizeps4_defconfig
openrisc                         alldefconfig
powerpc                     redwood_defconfig
i386                             alldefconfig
powerpc                         wii_defconfig
arm                          pxa910_defconfig
arm                           sunxi_defconfig
arm                           sama5_defconfig
sh                        sh7785lcr_defconfig
mips                     loongson1b_defconfig
arm                        mvebu_v7_defconfig
powerpc                       maple_defconfig
powerpc                     ep8248e_defconfig
sh                          lboxre2_defconfig
m68k                          hp300_defconfig
parisc                generic-32bit_defconfig
powerpc                      ppc40x_defconfig
arm                            zeus_defconfig
arc                            hsdk_defconfig
arm                        keystone_defconfig
powerpc                     tqm8555_defconfig
h8300                               defconfig
arc                          axs103_defconfig
um                               alldefconfig
arm                      integrator_defconfig
arm                  randconfig-c002-20220225
arm                  randconfig-c002-20220226
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
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc64                            defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
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
powerpc              randconfig-c003-20220225
x86_64                        randconfig-c007
arm                  randconfig-c002-20220225
mips                 randconfig-c004-20220225
i386                          randconfig-c001
riscv                randconfig-c006-20220225
mips                          ath25_defconfig
powerpc                     kilauea_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                     ppa8548_defconfig
arm                     am200epdkit_defconfig
i386                          randconfig-a004
i386                          randconfig-a002
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220225
hexagon              randconfig-r041-20220225
riscv                randconfig-r042-20220225
hexagon              randconfig-r045-20220226
hexagon              randconfig-r041-20220226

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
