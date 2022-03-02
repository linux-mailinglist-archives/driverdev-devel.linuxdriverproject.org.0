Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 071CF4CA96D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Mar 2022 16:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56B8360BA0;
	Wed,  2 Mar 2022 15:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B86EqsVgmijA; Wed,  2 Mar 2022 15:47:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04BBD60B78;
	Wed,  2 Mar 2022 15:47:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 767F61BF32A
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 15:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60ECC8142C
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 15:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VoR-hgXmEWdA for <devel@linuxdriverproject.org>;
 Wed,  2 Mar 2022 15:47:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F202813F5
 for <devel@driverdev.osuosl.org>; Wed,  2 Mar 2022 15:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646236034; x=1677772034;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O6o4N1HVJYS2L9Z9wuSwkHvcsYCfAb+MuuIa0zfJMYE=;
 b=O1TRzgZ2gT7NtbrbGBadyXnmvKpSy959HDqzGMLryipZX74lgW73Aj5P
 MOSOQ0xkVm4QuvcBFEb+ImDqwxncBhvxaL81sop0pSl/flnYaVbfRzWYJ
 dHHQ7XPHMvB/fj2FYXOAJSqwDXmt7wrWj0RyFmoHlXqmkXGLl0Vvh0Ftp
 k24FEgRtyVGwyyqE3P3/ROWbPc/UML79iM7idPYXZv64Frmj+YX3NEUYA
 zAdaDCtdjUx1GGhpSOi1dC+diH3ggqe7oHv8axz7JsMdCDdxDV0tqLUBA
 i7qd9GBIitwQ60nlOJWq7HjYgy727h8RAnDIBRhVJuS8C4vDaqy3kMugh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="233396326"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="233396326"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 07:47:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="641742038"
Received: from lkp-server02.sh.intel.com (HELO e9605edfa585) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2022 07:47:11 -0800
Received: from kbuild by e9605edfa585 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nPRC3-0001Wv-4x; Wed, 02 Mar 2022 15:47:11 +0000
Date: Wed, 02 Mar 2022 23:47:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b497e06d2714b22200e0bad76111229c960debd5
Message-ID: <621f9174.53/Mfa+EUD6ak+vQ%lkp@intel.com>
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
branch HEAD: b497e06d2714b22200e0bad76111229c960debd5  staging: pi433: prevent uninitialized data from being printed out

elapsed time: 720m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220302
arm                           corgi_defconfig
parisc                generic-64bit_defconfig
powerpc64                        alldefconfig
arm                        multi_v7_defconfig
sh                           se7705_defconfig
sh                          r7780mp_defconfig
sh                           sh2007_defconfig
arm                         vf610m4_defconfig
mips                         bigsur_defconfig
h8300                               defconfig
m68k                          atari_defconfig
sh                   secureedge5410_defconfig
arm                          iop32x_defconfig
arc                     nsimosci_hs_defconfig
xtensa                  nommu_kc705_defconfig
arm                      jornada720_defconfig
sh                        sh7785lcr_defconfig
arm                        trizeps4_defconfig
powerpc                      mgcoge_defconfig
powerpc                     taishan_defconfig
sparc64                          alldefconfig
arm                        shmobile_defconfig
sh                               j2_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     pq2fads_defconfig
sh                          sdk7786_defconfig
parisc64                         alldefconfig
arm                        oxnas_v6_defconfig
arm                            qcom_defconfig
m68k                        stmark2_defconfig
ia64                             alldefconfig
powerpc                   motionpro_defconfig
m68k                        m5307c3_defconfig
arc                      axs103_smp_defconfig
mips                     loongson1b_defconfig
arm                  randconfig-c002-20220302
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
sparc                               defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
riscv                randconfig-r042-20220302
arc                  randconfig-r043-20220302
s390                 randconfig-r044-20220302
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                   milbeaut_m10v_defconfig
powerpc                    socrates_defconfig
arm                     davinci_all_defconfig
arm                       netwinder_defconfig
arm                        neponset_defconfig
powerpc                       ebony_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
