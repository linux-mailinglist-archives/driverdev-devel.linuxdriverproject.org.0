Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 060B24BF16F
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Feb 2022 06:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F46460E95;
	Tue, 22 Feb 2022 05:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6klnGvPtDH9e; Tue, 22 Feb 2022 05:32:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECDE960E94;
	Tue, 22 Feb 2022 05:32:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB471BF37F
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 05:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99EBA400E3
 for <devel@linuxdriverproject.org>; Tue, 22 Feb 2022 05:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_KFSUUVCBvr for <devel@linuxdriverproject.org>;
 Tue, 22 Feb 2022 05:32:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE170400BE
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 05:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645507974; x=1677043974;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5opDXx8YgOyjl5C3m0wmHMW1SrQHoEQXOv1Y1X4gs90=;
 b=H+Xzz5SiHzcxPaK39qfosD7QaX4qmupZ7OkzTjIg76T5fvLdwI/piyfY
 ualSOItelluDhAGYVE4khpNNTFRdMOuGj1xwSgHDJQ7xxiyv9MNvi0Frp
 RDg/KjIzMUHsRKRjcuHzRh93KV1na7Z0tNz1Eb5qjJFu/Om1ExrkXIiGm
 tW3oXEd5pEAnbIY1YZZU2KjGdZA7vMskcP4lPF5wm+ZjtqwqupQcr69yx
 VyLNGKOfeqffmKz/iTRVrfbNcDzNLAp4CqwdQ5U63yq8Dj0xVyv6JHPSb
 fBC+n/hUxCvVQKGCQ5TRh02wDjn1eOmw6UpN90ZXKBS0j96Ub93Pk/Raw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="232234797"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="232234797"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 21:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="778878947"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 21 Feb 2022 21:32:53 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nMNnA-0002Mv-GN; Tue, 22 Feb 2022 05:32:52 +0000
Date: Tue, 22 Feb 2022 13:32:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 b71d5a80840751cd4c3b4822ea9ad8a6f989c7e2
Message-ID: <62147565.NQ6Vu0xTgf4uu4Kc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: b71d5a80840751cd4c3b4822ea9ad8a6f989c7e2  kernfs: move struct kernfs_root out of the public view.

elapsed time: 739m

configs tested: 148
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220221
sh                 kfr2r09-romimage_defconfig
arm                           corgi_defconfig
ia64                             alldefconfig
sh                          kfr2r09_defconfig
powerpc                         wii_defconfig
sh                   rts7751r2dplus_defconfig
xtensa                         virt_defconfig
ia64                          tiger_defconfig
arm                          iop32x_defconfig
sh                             shx3_defconfig
m68k                          hp300_defconfig
arm                            xcep_defconfig
xtensa                       common_defconfig
sh                           se7721_defconfig
sh                           se7724_defconfig
alpha                            alldefconfig
mips                             allyesconfig
arm                      jornada720_defconfig
sh                               allmodconfig
powerpc                  storcenter_defconfig
mips                         tb0226_defconfig
mips                           ip32_defconfig
sh                            hp6xx_defconfig
m68k                       m5208evb_defconfig
s390                             allmodconfig
mips                       bmips_be_defconfig
m68k                        m5407c3_defconfig
s390                             allyesconfig
m68k                       m5475evb_defconfig
arm                         nhk8815_defconfig
arm                          pxa3xx_defconfig
powerpc                        warp_defconfig
sh                           sh2007_defconfig
m68k                          sun3x_defconfig
arm                          gemini_defconfig
mips                         cobalt_defconfig
powerpc                      pasemi_defconfig
powerpc                         ps3_defconfig
mips                        jmr3927_defconfig
sh                          rsk7269_defconfig
powerpc                     tqm8555_defconfig
sh                        apsh4ad0a_defconfig
mips                         mpc30x_defconfig
arm                           sunxi_defconfig
arm                  randconfig-c002-20220221
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20220221
x86_64               randconfig-a002-20220221
x86_64               randconfig-a005-20220221
x86_64               randconfig-a006-20220221
x86_64               randconfig-a001-20220221
x86_64               randconfig-a004-20220221
i386                 randconfig-a002-20220221
i386                 randconfig-a001-20220221
i386                 randconfig-a005-20220221
i386                 randconfig-a003-20220221
i386                 randconfig-a006-20220221
i386                 randconfig-a004-20220221
arc                  randconfig-r043-20220221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc              randconfig-c003-20220222
x86_64                        randconfig-c007
arm                  randconfig-c002-20220222
mips                 randconfig-c004-20220222
i386                          randconfig-c001
riscv                randconfig-c006-20220222
powerpc              randconfig-c003-20220221
x86_64               randconfig-c007-20220221
arm                  randconfig-c002-20220221
mips                 randconfig-c004-20220221
i386                 randconfig-c001-20220221
riscv                randconfig-c006-20220221
arm                          moxart_defconfig
powerpc                 mpc8272_ads_defconfig
arm                        vexpress_defconfig
arm                          collie_defconfig
powerpc                     kmeter1_defconfig
arm                        spear3xx_defconfig
mips                       lemote2f_defconfig
powerpc                      ppc64e_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      ppc44x_defconfig
x86_64               randconfig-a011-20220221
x86_64               randconfig-a012-20220221
x86_64               randconfig-a014-20220221
x86_64               randconfig-a013-20220221
x86_64               randconfig-a015-20220221
x86_64               randconfig-a016-20220221
i386                 randconfig-a012-20220221
i386                 randconfig-a011-20220221
i386                 randconfig-a013-20220221
i386                 randconfig-a015-20220221
i386                 randconfig-a014-20220221
i386                 randconfig-a016-20220221
hexagon              randconfig-r045-20220221
hexagon              randconfig-r041-20220221
riscv                randconfig-r042-20220221
hexagon              randconfig-r045-20220222
hexagon              randconfig-r041-20220222
s390                 randconfig-r044-20220221

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
