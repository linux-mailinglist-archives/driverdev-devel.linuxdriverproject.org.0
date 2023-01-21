Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048706762B8
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Jan 2023 02:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C63340490;
	Sat, 21 Jan 2023 01:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C63340490
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKqkR91XZYeB; Sat, 21 Jan 2023 01:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00D734014E;
	Sat, 21 Jan 2023 01:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00D734014E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 403371BF681
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 01:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13D70612BF
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 01:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13D70612BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gmBb3FuwQMvS for <devel@linuxdriverproject.org>;
 Sat, 21 Jan 2023 01:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D7A3612A4
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D7A3612A4
 for <devel@driverdev.osuosl.org>; Sat, 21 Jan 2023 01:36:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="305414644"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="305414644"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 17:36:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="834607366"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="834607366"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2023 17:36:38 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJ2oA-0003Du-0W;
 Sat, 21 Jan 2023 01:36:38 +0000
Date: Sat, 21 Jan 2023 09:35:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 7c09f4281cb6ec0fc202f53924ed6c389c61bf0e
Message-ID: <63cb4172.mhZuKv/zC3NU+G4h%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674265001; x=1705801001;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wOb4Vw/subNJ5vNxHc3okSSf0qG/RUPxcsjTf5bKj20=;
 b=Z8zXtZSBaIJC0Cm5UJzSJan1EhCJSRpKij4GoOtqJBov4o+Lam31Eo7T
 hqfZpVOgfjxAkuBp1t4+UypNTWCmKg+rcOgXUyEW9dCzAEhGAamqA5+eI
 8zQQrf9dpko5AD7Idq8XpGbxDsQ8bYPlAuB5zDXG2TVOzg++cAN9xFXDn
 lO4FQCelkGQB5L06ELR5YLYLBOLrPtsFBgfchtjM36lFMnQul5H4YRcYC
 c5yDGaXkL84YKtVSF5ipQlo9/12SSPON/KMRba7BlTtFPoU77mYk6MLC+
 C8Ot76NJxdhbw7IkVEj6yPJB6aUyzaSTe38Nnxhn3Z5VbeXrHIWqe99bB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z8zXtZSB
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: 7c09f4281cb6ec0fc202f53924ed6c389c61bf0e  drivers/base/memory: Fix comments for phys_index_show()

elapsed time: 729m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
sh                               allmodconfig
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                               rhel-8.3
x86_64                           rhel-8.3-bpf
x86_64                        randconfig-a011
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                        randconfig-a015
i386                          randconfig-a005
i386                                defconfig
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm64                            allyesconfig
i386                             allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                           se7724_defconfig
powerpc                      ppc6xx_defconfig
loongarch                        alldefconfig
sh                   sh7770_generic_defconfig
nios2                               defconfig
powerpc                   currituck_defconfig
sparc                       sparc32_defconfig
arm                           stm32_defconfig
arm64                            alldefconfig
arm                          exynos_defconfig
sh                        sh7757lcr_defconfig
m68k                        m5407c3_defconfig
arc                              alldefconfig
powerpc                       eiger_defconfig
sh                             espt_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64                        randconfig-a001
hexagon              randconfig-r045-20230119
x86_64                        randconfig-a003
hexagon              randconfig-r041-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-a005
riscv                randconfig-r042-20230119
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
x86_64                        randconfig-a016
x86_64                          rhel-8.3-rust
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
mips                       lemote2f_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     ksi8560_defconfig
powerpc                     tqm8540_defconfig
powerpc                    ge_imp3a_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
