Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D5E480FDB
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Dec 2021 06:16:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1E06405D6;
	Wed, 29 Dec 2021 05:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7tsmJWAA-xB; Wed, 29 Dec 2021 05:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C97954018E;
	Wed, 29 Dec 2021 05:15:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3408C1BF2E4
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 05:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E8444087D
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 05:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0hTbAqDJu1M for <devel@linuxdriverproject.org>;
 Wed, 29 Dec 2021 05:15:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0C6E4087C
 for <devel@driverdev.osuosl.org>; Wed, 29 Dec 2021 05:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640754948; x=1672290948;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2Ewnpj05b0mii3woz4rKh+aEODuJZsIFQ5cCmTMcFNM=;
 b=brRE8qp6cPh+MGZCuaWdEYe0baoHAiKZuTxlu5ncoohvzjTmlZlqYiwm
 nSNn4kSkQixlyJqls1jtwDOJAPQVfSxoNRaJApIU06O+8f457S0NloouY
 Dov1UFtBkeHDWFjkm7hUsBwOfsv3DHHnC+LDU/fbzhfy6/jLm6O8ZQL+0
 Ye7Fmo7fNllO3Q4xWEc9MGuttI8nn3tGtwj7o8I4rLdqT+yt495DRQNZo
 oCsc93V1cSKt56J+NgCGBzohzfaBNIbCcMAMqh33Hk/vEyI6mG/8ncEDv
 hYlU67cu9hNW0iw9WyjCSmg9LIpUf0/XdQeEnB/XjEX02G21B0KdlJWnf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="241677024"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="241677024"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 21:15:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="468375885"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 28 Dec 2021 21:15:45 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2RJQ-0008Yi-Nm; Wed, 29 Dec 2021 05:15:44 +0000
Date: Wed, 29 Dec 2021 13:15:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 20a77667bbd7c28ec4f76c3c811dc22c65b4bee6
Message-ID: <61cbeede.hd9exsinmyPnG25R%lkp@intel.com>
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
branch HEAD: 20a77667bbd7c28ec4f76c3c811dc22c65b4bee6  staging: r8188eu: merge _ReadLEDSetting() into ReadAdapterInfo8188EU()

elapsed time: 723m

configs tested: 183
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211228
powerpc              randconfig-c003-20211229
i386                 randconfig-c001-20211229
arc                     haps_hs_smp_defconfig
mips                         db1xxx_defconfig
arm                             mxs_defconfig
parisc                generic-32bit_defconfig
arm                          simpad_defconfig
powerpc                     mpc5200_defconfig
arc                                 defconfig
m68k                        mvme16x_defconfig
riscv                    nommu_virt_defconfig
mips                         tb0226_defconfig
um                             i386_defconfig
mips                        workpad_defconfig
mips                           gcw0_defconfig
arm                        clps711x_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                           ip32_defconfig
mips                       lemote2f_defconfig
mips                     decstation_defconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
parisc                generic-64bit_defconfig
arm                       versatile_defconfig
sh                           se7724_defconfig
arm                          exynos_defconfig
xtensa                       common_defconfig
powerpc                     mpc512x_defconfig
arm                          pxa168_defconfig
mips                     loongson2k_defconfig
powerpc                     taishan_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                 mpc834x_mds_defconfig
mips                  cavium_octeon_defconfig
h8300                     edosk2674_defconfig
powerpc                    ge_imp3a_defconfig
arm                             rpc_defconfig
ia64                            zx1_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         axm55xx_defconfig
mips                         bigsur_defconfig
mips                          rm200_defconfig
riscv                            allyesconfig
powerpc                         wii_defconfig
arm                         hackkit_defconfig
powerpc                      arches_defconfig
sh                           se7619_defconfig
i386                                defconfig
mips                         cobalt_defconfig
openrisc                            defconfig
sh                         ecovec24_defconfig
sh                        edosk7705_defconfig
powerpc                         ps3_defconfig
powerpc                       maple_defconfig
mips                        maltaup_defconfig
arm                            xcep_defconfig
mips                          ath79_defconfig
powerpc                  mpc885_ads_defconfig
arm                         lpc18xx_defconfig
powerpc                     pq2fads_defconfig
arm                           sama5_defconfig
arm                       imx_v6_v7_defconfig
arm                          pxa910_defconfig
s390                       zfcpdump_defconfig
sparc64                             defconfig
arm                         lpc32xx_defconfig
ia64                         bigsur_defconfig
arc                        nsimosci_defconfig
arm                              alldefconfig
h8300                       h8s-sim_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
m68k                          sun3x_defconfig
arm                             ezx_defconfig
powerpc                     tqm5200_defconfig
powerpc                     sequoia_defconfig
arm                            hisi_defconfig
riscv                            allmodconfig
arm                        shmobile_defconfig
arc                    vdk_hs38_smp_defconfig
csky                             alldefconfig
riscv             nommu_k210_sdcard_defconfig
arm                     davinci_all_defconfig
powerpc                    amigaone_defconfig
powerpc                          g5_defconfig
m68k                        m5272c3_defconfig
sh                   sh7770_generic_defconfig
mips                          rb532_defconfig
mips                       rbtx49xx_defconfig
powerpc                      ppc44x_defconfig
arm                  randconfig-c002-20211228
arm                  randconfig-c002-20211229
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a004-20211228
x86_64               randconfig-a002-20211228
i386                 randconfig-a006-20211228
i386                 randconfig-a004-20211228
i386                 randconfig-a002-20211228
i386                 randconfig-a003-20211228
i386                 randconfig-a001-20211228
i386                 randconfig-a005-20211228
x86_64               randconfig-a011-20211229
x86_64               randconfig-a012-20211229
x86_64               randconfig-a016-20211229
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20211229
x86_64               randconfig-a004-20211229
i386                 randconfig-a002-20211229
i386                 randconfig-a003-20211229
i386                 randconfig-a001-20211229
i386                 randconfig-a006-20211229
i386                 randconfig-a004-20211229
i386                 randconfig-a005-20211229
x86_64               randconfig-a015-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
x86_64               randconfig-a014-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a016-20211228
i386                 randconfig-a013-20211228
i386                 randconfig-a015-20211228
x86_64               randconfig-a001-20211229
x86_64               randconfig-a003-20211229
x86_64               randconfig-a006-20211229
x86_64               randconfig-a002-20211229
hexagon              randconfig-r045-20211228
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
