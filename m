Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C41480DDB
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Dec 2021 00:10:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 481C460B9C;
	Tue, 28 Dec 2021 23:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mYbsNjmk7h0R; Tue, 28 Dec 2021 23:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E0E260806;
	Tue, 28 Dec 2021 23:10:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A96B41BF414
 for <devel@linuxdriverproject.org>; Tue, 28 Dec 2021 23:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 947A381B23
 for <devel@linuxdriverproject.org>; Tue, 28 Dec 2021 23:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjFlv9HWT70Q for <devel@linuxdriverproject.org>;
 Tue, 28 Dec 2021 23:10:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1EE781AF6
 for <devel@driverdev.osuosl.org>; Tue, 28 Dec 2021 23:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640733030; x=1672269030;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zQlmaNlhKifPsurHrb9JMxOfyqLtITTXs/pC1iV4LtI=;
 b=ZpGlBQIsdDPWZaLcFbs7+Sm6nvYGjgXNhbIX1dNKoen5WD4bxHWeViFD
 fA+3hEtIc7KYuQzMAgbTzlk3ltsIXxYIaSeRgflBAyn1iY/TIe4TRomjq
 zpNaJrMziDv1Z+Yb3zrjh3ZVFDXe5B4OytGNmP8eCCg6z7P2f6COK0D14
 sEHkHb9zvEYB5b56StN2qgQuLip8MNmsc2NJ3ZhbX2phv8ngWe+t68CMM
 g18vybOCGZ6fZIObRb2lkqa2KvhyXxbB1y8JMF8C+yty9bjnSBpGvHQT7
 dIt0t6hDaewWWOxmVWlwNafFGzbh3mwKNRIrhTt2qOKLi025nBKY1+GtN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="302186507"
X-IronPort-AV: E=Sophos;i="5.88,243,1635231600"; d="scan'208";a="302186507"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 15:10:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,243,1635231600"; d="scan'208";a="486415124"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 28 Dec 2021 15:10:28 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2Lbv-00087r-KS; Tue, 28 Dec 2021 23:10:27 +0000
Date: Wed, 29 Dec 2021 07:09:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 cf6299b6101903c31bddb0065804b2121ed510c7
Message-ID: <61cb9932.WFjsKT2aCcyQBEN8%lkp@intel.com>
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
branch HEAD: cf6299b6101903c31bddb0065804b2121ed510c7  kobject: remove kset from struct kset_uevent_ops callbacks

elapsed time: 728m

configs tested: 158
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
i386                 randconfig-c001-20211228
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
mips                     decstation_defconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
parisc                generic-64bit_defconfig
arm                       versatile_defconfig
sparc                               defconfig
mips                      bmips_stb_defconfig
sh                           se7343_defconfig
mips                       lemote2f_defconfig
sh                           se7724_defconfig
arm                          exynos_defconfig
xtensa                       common_defconfig
powerpc                     mpc512x_defconfig
arm                          pxa168_defconfig
arc                          axs101_defconfig
arm                          ep93xx_defconfig
arm                      integrator_defconfig
arm                        trizeps4_defconfig
sh                     magicpanelr2_defconfig
mips                  cavium_octeon_defconfig
h8300                     edosk2674_defconfig
powerpc                    ge_imp3a_defconfig
arm                             rpc_defconfig
ia64                            zx1_defconfig
powerpc                 mpc836x_mds_defconfig
xtensa                    xip_kc705_defconfig
m68k                       m5475evb_defconfig
arm                      pxa255-idp_defconfig
arc                          axs103_defconfig
arm                        magician_defconfig
arm                         s3c2410_defconfig
sh                           se7619_defconfig
powerpc                     ksi8560_defconfig
um                                  defconfig
sh                          landisk_defconfig
m68k                          atari_defconfig
mips                            gpr_defconfig
powerpc                         ps3_defconfig
powerpc                       maple_defconfig
mips                     loongson2k_defconfig
mips                        maltaup_defconfig
arm                            xcep_defconfig
mips                          ath79_defconfig
powerpc                  mpc885_ads_defconfig
arm                         lpc18xx_defconfig
powerpc                     pq2fads_defconfig
arm                           sama5_defconfig
arm                       imx_v6_v7_defconfig
arm                          pxa910_defconfig
m68k                           sun3_defconfig
sh                           se7780_defconfig
arm                        spear3xx_defconfig
mips                            ar7_defconfig
s390                       zfcpdump_defconfig
sparc64                             defconfig
arm                         lpc32xx_defconfig
ia64                         bigsur_defconfig
arc                        nsimosci_defconfig
arm                              alldefconfig
powerpc                     tqm5200_defconfig
powerpc                     sequoia_defconfig
arm                            hisi_defconfig
riscv                            allmodconfig
arm                           u8500_defconfig
powerpc                        icon_defconfig
powerpc                     powernv_defconfig
mips                      fuloong2e_defconfig
arm                  randconfig-c002-20211228
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20211228
i386                 randconfig-a002-20211228
i386                 randconfig-a003-20211228
i386                 randconfig-a001-20211228
i386                 randconfig-a005-20211228
i386                 randconfig-a004-20211228
x86_64               randconfig-a005-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a004-20211228
x86_64               randconfig-a002-20211228
arc                  randconfig-r043-20211228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
i386                 randconfig-a016-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a015-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a013-20211228
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228
hexagon              randconfig-r045-20211228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
