Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 138224EBD11
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 11:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1578C41BE0;
	Wed, 30 Mar 2022 09:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1p8ngYby5xF1; Wed, 30 Mar 2022 09:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F3A941B9D;
	Wed, 30 Mar 2022 09:00:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781531BF5AA
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 09:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 741AB61028
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 09:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AcGGu1U-WKvu for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 09:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1DE860B6C
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 09:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648630818; x=1680166818;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=flveJNdOVaydPvav3mXFepnA2b+3WPRwGwrDaYG+0nI=;
 b=PRj9wlReFR+QjtklAEx099OoMcoONYC5eRKPdekEkDwnhkAuSqNQxkn1
 IRqCroY1G+HCeAwC4l8U3rEl8rofK72MXwPwRIS/a3skzguAaLRWG8HKk
 +74TjRjwQ7zdFUoJDKA+2v9+v1jnqy0t6nK9mWMg43dYpX7IIHXWYuF02
 EHGdye2t4TjfHOW1D6wYRUJxegVtsMnkzCWltDfDNLo5NQh7XXp8jq6Cz
 GRMU2tm8g51LMQkJ7v6Bl/obm7uxo9/HCVeg9jtP6uLgE79FCdaSVg/JB
 GISUltrOwHlv0wz9jYAlk0yG18qlgpJwldeq4ylc+nX6Tu5mvt8a1w4h3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345926485"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="345926485"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="649791531"
Received: from lkp-server02.sh.intel.com (HELO 7a008980c4ea) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2022 02:00:17 -0700
Received: from kbuild by 7a008980c4ea with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nZUBc-0000BU-DJ; Wed, 30 Mar 2022 09:00:16 +0000
Date: Wed, 30 Mar 2022 16:59:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 50dfafdd5926d0d85c1922452b641f1d075cc8fe
Message-ID: <62441bff.dL1j1D/zscN/e/Fs%lkp@intel.com>
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
branch HEAD: 50dfafdd5926d0d85c1922452b641f1d075cc8fe  kobject: kobj_type: remove default_attrs

elapsed time: 1014m

configs tested: 139
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc              randconfig-c003-20220330
i386                          randconfig-c001
sh                      rts7751r2d1_defconfig
arm                        realview_defconfig
arm                         assabet_defconfig
xtensa                           allyesconfig
sh                           se7619_defconfig
sh                          lboxre2_defconfig
powerpc                      pasemi_defconfig
arm                       imx_v6_v7_defconfig
parisc64                         alldefconfig
mips                         tb0226_defconfig
h8300                       h8s-sim_defconfig
sh                           se7751_defconfig
sh                            migor_defconfig
arm                      integrator_defconfig
arm                             pxa_defconfig
ia64                             allmodconfig
arc                                 defconfig
i386                                defconfig
m68k                            q40_defconfig
parisc                           alldefconfig
sh                         ecovec24_defconfig
sh                     magicpanelr2_defconfig
arm                        cerfcube_defconfig
openrisc                    or1ksim_defconfig
m68k                       m5249evb_defconfig
powerpc                      ppc40x_defconfig
arm                            qcom_defconfig
mips                         db1xxx_defconfig
sh                          sdk7786_defconfig
powerpc                         wii_defconfig
powerpc                 mpc85xx_cds_defconfig
m68k                          amiga_defconfig
sh                           se7712_defconfig
csky                             alldefconfig
sh                        sh7757lcr_defconfig
arm                  randconfig-c002-20220327
arm                  randconfig-c002-20220329
arm                  randconfig-c002-20220330
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
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
x86_64               randconfig-a001-20220328
x86_64               randconfig-a003-20220328
x86_64               randconfig-a004-20220328
x86_64               randconfig-a002-20220328
x86_64               randconfig-a005-20220328
x86_64               randconfig-a006-20220328
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
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
mips                 randconfig-c004-20220329
x86_64                        randconfig-c007
mips                 randconfig-c004-20220327
arm                  randconfig-c002-20220327
arm                  randconfig-c002-20220329
riscv                randconfig-c006-20220327
powerpc              randconfig-c003-20220327
powerpc              randconfig-c003-20220329
riscv                randconfig-c006-20220329
i386                          randconfig-c001
mips                 randconfig-c004-20220330
powerpc              randconfig-c003-20220330
riscv                randconfig-c006-20220330
arm                  randconfig-c002-20220330
mips                        workpad_defconfig
powerpc                    socrates_defconfig
mips                           rs90_defconfig
riscv                            alldefconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a016-20220328
x86_64               randconfig-a012-20220328
x86_64               randconfig-a011-20220328
x86_64               randconfig-a014-20220328
x86_64               randconfig-a013-20220328
x86_64               randconfig-a015-20220328
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
i386                 randconfig-a015-20220328
i386                 randconfig-a016-20220328
i386                 randconfig-a011-20220328
i386                 randconfig-a012-20220328
i386                 randconfig-a014-20220328
i386                 randconfig-a013-20220328
riscv                randconfig-r042-20220328
hexagon              randconfig-r045-20220329
hexagon              randconfig-r045-20220328
hexagon              randconfig-r045-20220327
hexagon              randconfig-r041-20220327
hexagon              randconfig-r045-20220330
hexagon              randconfig-r041-20220329
hexagon              randconfig-r041-20220328
hexagon              randconfig-r041-20220330

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
