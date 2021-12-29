Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09007480F75
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Dec 2021 04:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75EC060B23;
	Wed, 29 Dec 2021 03:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEF8CBNodpkp; Wed, 29 Dec 2021 03:58:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A745460A8A;
	Wed, 29 Dec 2021 03:58:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC8201BF34B
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 03:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0F81402CE
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 03:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YhN7dEgedVzr for <devel@linuxdriverproject.org>;
 Wed, 29 Dec 2021 03:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2958402BC
 for <devel@driverdev.osuosl.org>; Wed, 29 Dec 2021 03:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640750318; x=1672286318;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=bEpUiTGGxyUp3WyIImrD7MOCbuK64TRwd9J9MtLXdgg=;
 b=lHBzLnGqgjHMMucAJ9wb975GSkHdCSs8I1wkasIW+gSSfuKXCesGSLiJ
 EshAdvSIpzKw9q4TAfGGpZadj3mK4UbXbkQflBAe3s9P6Gm8c+K5UUFxq
 prYlzCHyhJLg9J3OqO6s/hJsGBhCuWixBlyNnFdCcm6SNMlxzXd5d8JXi
 rdqoRzY9GScO6lbMl75tDHopVZuAX0K6Bm8AbwAaOixtsmQkpEMHaTkAN
 /DxIEbCq/Fw/45BnuZoInJiH8qPrzF7C93mV787AeLAxNzzfnSz9kS86d
 TA2XTu7/kZ0YvdySQZ/cG0E0S8lHR92H1cMFg5xOfN2E99jA/E7pmLJ/l g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="239001558"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="239001558"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 19:58:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="609487301"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Dec 2021 19:58:36 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2Q6l-0008NF-P8; Wed, 29 Dec 2021 03:58:35 +0000
Date: Wed, 29 Dec 2021 11:58:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 8d673488b467ac46161ab657d1feaccb8a29d21e
Message-ID: <61cbdcdd.ntoB3P1q6TA9c8D3%lkp@intel.com>
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
branch HEAD: 8d673488b467ac46161ab657d1feaccb8a29d21e  SUNRPC: use default_groups in kobj_type

elapsed time: 720m

configs tested: 128
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
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
um                             i386_defconfig
parisc                generic-64bit_defconfig
arm                       versatile_defconfig
sh                           se7724_defconfig
arm                          exynos_defconfig
xtensa                       common_defconfig
powerpc                     mpc512x_defconfig
arm                          pxa168_defconfig
mips                  cavium_octeon_defconfig
h8300                     edosk2674_defconfig
powerpc                    ge_imp3a_defconfig
arm                             rpc_defconfig
ia64                            zx1_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         hackkit_defconfig
powerpc                      arches_defconfig
sh                           se7712_defconfig
sh                           se7619_defconfig
powerpc                         ps3_defconfig
powerpc                       maple_defconfig
mips                     loongson2k_defconfig
mips                        maltaup_defconfig
arm                            xcep_defconfig
mips                          ath79_defconfig
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
arm                  randconfig-c002-20211228
arm                  randconfig-c002-20211229
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
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
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20211228
x86_64               randconfig-a005-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a004-20211228
i386                 randconfig-a006-20211228
i386                 randconfig-a004-20211228
i386                 randconfig-a002-20211228
i386                 randconfig-a003-20211228
i386                 randconfig-a001-20211228
i386                 randconfig-a005-20211228
arc                  randconfig-r043-20211228
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20211229
x86_64               randconfig-a004-20211229
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a016-20211228
i386                 randconfig-a013-20211228
i386                 randconfig-a015-20211228
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
