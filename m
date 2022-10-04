Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 596815F3B9E
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Oct 2022 05:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D4AF40E47;
	Tue,  4 Oct 2022 03:23:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D4AF40E47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thHNjvDdTyjz; Tue,  4 Oct 2022 03:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4B28409FC;
	Tue,  4 Oct 2022 03:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4B28409FC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A4CC1BF33C
 for <devel@linuxdriverproject.org>; Tue,  4 Oct 2022 03:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25E2660C31
 for <devel@linuxdriverproject.org>; Tue,  4 Oct 2022 03:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25E2660C31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHnfNIYpcHDl for <devel@linuxdriverproject.org>;
 Tue,  4 Oct 2022 03:23:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 913F160DED
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 913F160DED
 for <devel@driverdev.osuosl.org>; Tue,  4 Oct 2022 03:23:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="283184809"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="283184809"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 20:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="623789953"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="623789953"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 03 Oct 2022 20:23:18 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ofYWb-0005FJ-1k;
 Tue, 04 Oct 2022 03:23:17 +0000
Date: Tue, 04 Oct 2022 11:23:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD REGRESSION
 9f03f357aab62f25e828feb0be7423fff02b2764
Message-ID: <633ba723.iFmbEld+Jc+sF/vg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664853800; x=1696389800;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+ysPs9RVcNq796n5Ete0Ic6w2B+jcW2rc0or+QT4Z4c=;
 b=SgcHG5+xY5bCiZYGqpTAxqwbmFOZRbM9SqPaRFLNLHLu4d+k3o93dKsk
 9+MLfe5ztP5va/xv9Z7If+euBUxucxBqXqlfqLoeRDNmd4DA64ipFRv3/
 2LmZRn1ADNE2OFQUC1caQtM1XtU4WPexh47xttadC2XeS7MxeJZhC8qcd
 /BDt5YtioKtfVK2q1NSHnGhidWYrpk+p9fHWQQWVzcqB4ALTha6kVWN4B
 igQ1Z6gLdS6vKA+o7Fy6vGzZKfWfhnhXYYG2qRSstmsX16FBvg2tY5Thd
 i4s/r86dOdYZ9/Aek0KiNVqUyEyTvnRgukYn5VJNDEzfIbYk1vRxhXr31
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SgcHG5+x
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
branch HEAD: 9f03f357aab62f25e828feb0be7423fff02b2764  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning reports:

https://lore.kernel.org/lkml/202210040237.y3pAYlkD-lkp@intel.com
https://lore.kernel.org/lkml/202210040839.VI8zbjBA-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/parisc/kernel/drivers.c:580:23: warning: passing argument 1 of 'make_modalias' discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
drivers/firmware/arm_ffa/bus.c:97:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
sound/aoa/soundbus/core.c:131:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-allyesconfig
|   `-- drivers-firmware-arm_ffa-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm64-randconfig-r014-20221003
|   `-- drivers-firmware-arm_ffa-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm64-randconfig-r031-20221002
|   `-- drivers-firmware-arm_ffa-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- parisc-allyesconfig
|   `-- arch-parisc-kernel-drivers.c:warning:passing-argument-of-make_modalias-discards-const-qualifier-from-pointer-target-type
|-- parisc-buildonly-randconfig-r003-20221002
|   `-- arch-parisc-kernel-drivers.c:warning:passing-argument-of-make_modalias-discards-const-qualifier-from-pointer-target-type
|-- parisc-randconfig-c032-20221002
|   `-- arch-parisc-kernel-drivers.c:warning:passing-argument-of-make_modalias-discards-const-qualifier-from-pointer-target-type
|-- parisc-randconfig-r004-20221002
|   `-- arch-parisc-kernel-drivers.c:warning:passing-argument-of-make_modalias-discards-const-qualifier-from-pointer-target-type
|-- parisc-randconfig-r035-20221003
|   `-- arch-parisc-kernel-drivers.c:warning:passing-argument-of-make_modalias-discards-const-qualifier-from-pointer-target-type
`-- powerpc-allmodconfig
    `-- sound-aoa-soundbus-core.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)

elapsed time: 727m

configs tested: 79
configs skipped: 4

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
s390                                defconfig
um                             i386_defconfig
x86_64                         rhel-8.3-kunit
s390                             allmodconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                              defconfig
mips                             allyesconfig
x86_64                               rhel-8.3
i386                                defconfig
arm                                 defconfig
s390                             allyesconfig
x86_64               randconfig-a011-20221003
m68k                             allmodconfig
sh                               allmodconfig
alpha                            allyesconfig
x86_64               randconfig-a012-20221003
x86_64                           allyesconfig
arm64                            allyesconfig
x86_64               randconfig-a013-20221003
x86_64               randconfig-a016-20221003
arc                              allyesconfig
i386                 randconfig-a011-20221003
x86_64               randconfig-a015-20221003
arm                              allyesconfig
m68k                             allyesconfig
x86_64               randconfig-a014-20221003
riscv                randconfig-r042-20221003
i386                 randconfig-a012-20221003
arc                  randconfig-r043-20221003
i386                 randconfig-a013-20221003
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
i386                             allyesconfig
arc                  randconfig-r043-20221002
ia64                             allmodconfig
s390                 randconfig-r044-20221003
i386                 randconfig-a014-20221003
m68k                          sun3x_defconfig
powerpc                     tqm8548_defconfig
ia64                             alldefconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-c001
xtensa                  cadence_csp_defconfig
powerpc                 mpc8540_ads_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001

clang tested configs:
hexagon              randconfig-r041-20221003
i386                 randconfig-a004-20221003
riscv                randconfig-r042-20221002
i386                 randconfig-a005-20221003
i386                 randconfig-a003-20221003
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221003
x86_64               randconfig-a003-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
