Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CF163E642
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Dec 2022 01:15:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D7F8417A4;
	Thu,  1 Dec 2022 00:15:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D7F8417A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OG77UW00194O; Thu,  1 Dec 2022 00:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB97417A1;
	Thu,  1 Dec 2022 00:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFB97417A1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE871BF359
 for <devel@linuxdriverproject.org>; Thu,  1 Dec 2022 00:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2960D60BE9
 for <devel@linuxdriverproject.org>; Thu,  1 Dec 2022 00:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2960D60BE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdYcc4I2qABn for <devel@linuxdriverproject.org>;
 Thu,  1 Dec 2022 00:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0700660AB9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0700660AB9
 for <devel@driverdev.osuosl.org>; Thu,  1 Dec 2022 00:14:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295908785"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295908785"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:14:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675223730"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="675223730"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 30 Nov 2022 16:14:54 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0XE5-000Bwi-0y;
 Thu, 01 Dec 2022 00:14:53 +0000
Date: Thu, 01 Dec 2022 08:14:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD REGRESSION
 ac53d9aa9bec7f09f8cc3f4af04254df0b95a3cf
Message-ID: <6387f1f2.atB0qAzmUDyPCv4Z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669853699; x=1701389699;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=m8tPalYjCN2aDOEoma2/8/ubgMS15qPl0He35y/UH74=;
 b=dVGUQkrjPvZzhj3ptedOqko7mq3vDd9CacXTL2R1f+GOdFe980ZPizAD
 HMa/dLbDGK0nkBNMkYGzC6Ibqb63rTO2n2onGaE2AHTw2HeSXVmjgO3NS
 kBrZkXbHWWNUFaZ5XPs8cpYZdH+IxeoHDDacipfYgwZd13VWecGBp+WHI
 D4LclhuWtTpYjoDsul0xa+hqdu41Ye4TBZ7n44mkEqv2wJWl2tQg+5T01
 y+Utc9mLECbZCOUkOlUGcPZMlFS98ZXnpfv9L02NKxBOw1jQA/oXlzfPg
 WnXqE5uurivYr2J9IeAUpu7EVLg6gp40prLNm9wIH9CYVMIc/H++/DLsa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dVGUQkrj
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: ac53d9aa9bec7f09f8cc3f4af04254df0b95a3cf  driver core: device_get_devnode() should take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202211240329.4Vy3QrMn-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202212010125.AUg8hMV4-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/macintosh/macio_asic.c:136:18: error: incompatible function pointer types initializing 'int (*)(struct device *, struct kobj_uevent_env *)' with an expression of type 'int (const struct device *, struct kobj_uevent_env *)' [-Wincompatible-function-pointer-types]
drivers/macintosh/macio_asic.c:136:18: error: initialization of 'int (*)(struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(const struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc-allmodconfig
    `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(const-struct-device-struct-kobj_uevent_env-)
clang_recent_errors
`-- powerpc-randconfig-r024-20221128
    `-- drivers-macintosh-macio_asic.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(const-struct-device-struct-kobj_uev

elapsed time: 727m

configs tested: 96
configs skipped: 3

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allyesconfig
powerpc                           allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                                 defconfig
x86_64                          rhel-8.3-func
alpha                               defconfig
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221128
sh                               allmodconfig
s390                             allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64               randconfig-a001-20221128
i386                                defconfig
x86_64               randconfig-a003-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a002-20221128
x86_64               randconfig-a005-20221128
x86_64               randconfig-a006-20221128
i386                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-a001-20221128
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
i386                 randconfig-a004-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a002-20221128
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                            allnoconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
arm                           u8500_defconfig
sh                           se7780_defconfig
openrisc                       virt_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
arm                     eseries_pxa_defconfig
arm                           sunxi_defconfig
powerpc                         ps3_defconfig
mips                    maltaup_xpa_defconfig

clang tested configs:
hexagon              randconfig-r045-20221128
riscv                randconfig-r042-20221128
s390                 randconfig-r044-20221128
hexagon              randconfig-r041-20221128
i386                          randconfig-a002
x86_64                        randconfig-a014
i386                          randconfig-a004
x86_64                        randconfig-a012
i386                          randconfig-a006
x86_64                        randconfig-a016
i386                 randconfig-a012-20221128
i386                 randconfig-a015-20221128
i386                 randconfig-a011-20221128
i386                 randconfig-a013-20221128
i386                 randconfig-a014-20221128
i386                 randconfig-a016-20221128
hexagon              randconfig-r041-20221130
hexagon              randconfig-r045-20221130
x86_64               randconfig-k001-20221128

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
