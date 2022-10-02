Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 809995F225B
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Oct 2022 11:38:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8696F408AC;
	Sun,  2 Oct 2022 09:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8696F408AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3d3Qq4sSjBX; Sun,  2 Oct 2022 09:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 563D1408D1;
	Sun,  2 Oct 2022 09:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 563D1408D1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 989C41BF27E
 for <devel@linuxdriverproject.org>; Sun,  2 Oct 2022 09:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EEC7408AC
 for <devel@linuxdriverproject.org>; Sun,  2 Oct 2022 09:38:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EEC7408AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqW9SD_Iiqvr for <devel@linuxdriverproject.org>;
 Sun,  2 Oct 2022 09:38:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0CA740894
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0CA740894
 for <devel@driverdev.osuosl.org>; Sun,  2 Oct 2022 09:38:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="289622059"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="289622059"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 02:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="656429035"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="656429035"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 02 Oct 2022 02:38:23 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oevQU-0003QL-32;
 Sun, 02 Oct 2022 09:38:22 +0000
Date: Sun, 02 Oct 2022 17:38:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD REGRESSION
 987a03146b7c09014c6878256fac24d4392ce68f
Message-ID: <63395bf8.5qkPKEEesrzUkzIS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664703505; x=1696239505;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ekpVXIRwzgawxRMMzNdQk6FWk1WyVDyFyh5wDbM7Ay8=;
 b=BA+SkVyFvknfh1Udbf5rwM64JPmRB6+cSFSXJuYY3jkaCABv3yiHfRG/
 NfuDd5MpFuZTyrwkH1IN2bc0xMdqQkdbAQSAjchyX68handF+nyBVbbSs
 oaBWbCQfBOUc2K1NeJ0h3hB9hb0InrGXJHgauqbgd1QN5fhsyoT3BDpDS
 sfaKMWeBE2lRVu0XkaLuYkmLRsUSRddcUJhZymKckiUkB7IZhzvmbTLGj
 cPVNKrM1T3Wyh0NzJrKcx2tHuUKxY8hQbzRArgT4Zh6jaFReYCa8udkD2
 nU0FUpfFwIgkx7fFxzC+VsAb712keClaFZ5onnPTP9r/HMV8d9opyeBlv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BA+SkVyF
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
branch HEAD: 987a03146b7c09014c6878256fac24d4392ce68f  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning reports:

https://lore.kernel.org/lkml/202209292354.1kpF6NCQ-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/parisc/kernel/drivers.c:623:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/amba/bus.c:447:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/bus/mhi/ep/main.c:1580:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/firmware/arm_ffa/bus.c:97:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/gpu/host1x/bus.c:388:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/s390/cio/scm.c:49:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/s390/crypto/ap_bus.c:1575:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/zorro/zorro-driver.c:158:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
sound/aoa/soundbus/core.c:131:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arc-allyesconfig
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arc-randconfig-r043-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm-allyesconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   |-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm-buildonly-randconfig-r002-20220926
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm-defconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm-randconfig-r016-20220926
|   `-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm64-allyesconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   |-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   |-- drivers-firmware-arm_ffa-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- csky-buildonly-randconfig-r004-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- csky-randconfig-r011-20220925
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- i386-allyesconfig
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- i386-randconfig-r001-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- ia64-allmodconfig
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- ia64-randconfig-r006-20220925
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- m68k-allmodconfig
|   |-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-zorro-zorro-driver.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- m68k-allyesconfig
|   |-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-zorro-zorro-driver.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- m68k-randconfig-r024-20220925
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- microblaze-randconfig-r003-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- mips-allyesconfig
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- mips-buildonly-randconfig-r003-20220925
|   `-- drivers-bus-mhi-ep-main.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- nios2-buildonly-randconfig-r002-20220925
clang_recent_errors
|-- arm-randconfig-r032-20220926
|   `-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_env-)
|-- arm64-randconfig-r013-20220926
|   |-- drivers-amba-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_en
|-- hexagon-buildonly-randconfig-r005-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- hexagon-randconfig-r031-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- hexagon-randconfig-r041-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- hexagon-randconfig-r045-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- i386-randconfig-a012-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- i386-randconfig-a013-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- i386-randconfig-a014-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- i386-randconfig-a015-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- i386-randconfig-a016-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- riscv-buildonly-randconfig-r001-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- s390-randconfig-r011-20220926
|   `-- drivers-s390-cio-scm.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_env-
|-- s390-randconfig-r044-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- x86_64-randconfig-a011-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- x86_64-randconfig-a013-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
|-- x86_64-randconfig-a014-20220926
|   `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e
`-- x86_64-randconfig-a015-20220926
    `-- drivers-bus-mhi-ep-main.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_e

elapsed time: 1469m

configs tested: 69
configs skipped: 2

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
mips                             allyesconfig
x86_64                         rhel-8.3-kunit
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
i386                             allyesconfig
i386                          randconfig-a003
arm                                 defconfig
x86_64                           allyesconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20220926
x86_64                    rhel-8.3-kselftests
arm                              allyesconfig
i386                          randconfig-a005
alpha                            allyesconfig
arm64                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
i386                 randconfig-a003-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a002-20220926
x86_64               randconfig-a003-20220926
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
riscv                randconfig-r042-20220926
hexagon              randconfig-r041-20220926
x86_64               randconfig-a011-20220926
i386                          randconfig-a002
s390                 randconfig-r044-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a012-20220926
i386                          randconfig-a006
x86_64               randconfig-a016-20220926
i386                          randconfig-a004
i386                 randconfig-a014-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a011-20220926
hexagon              randconfig-r041-20220925
hexagon              randconfig-r045-20220925
i386                 randconfig-a016-20220926
i386                 randconfig-a015-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
