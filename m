Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9480264AEB7
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Dec 2022 05:45:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEB4860C05;
	Tue, 13 Dec 2022 04:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEB4860C05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gno6kLs0K2RI; Tue, 13 Dec 2022 04:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88E9360B29;
	Tue, 13 Dec 2022 04:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88E9360B29
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0D561BF310
 for <devel@linuxdriverproject.org>; Tue, 13 Dec 2022 04:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82EA68144B
 for <devel@linuxdriverproject.org>; Tue, 13 Dec 2022 04:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82EA68144B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5rylb8TuokGf for <devel@linuxdriverproject.org>;
 Tue, 13 Dec 2022 04:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76F0A813DA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76F0A813DA
 for <devel@driverdev.osuosl.org>; Tue, 13 Dec 2022 04:44:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="301454302"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="301454302"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 20:44:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="648428409"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="648428409"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 12 Dec 2022 20:44:56 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p4x9z-00045O-3B;
 Tue, 13 Dec 2022 04:44:55 +0000
Date: Tue, 13 Dec 2022 12:44:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD REGRESSION
 f5c1b58c44dca790d2a1aadaddd35e5a866ef3b3
Message-ID: <63980330.vUdq4+8S5XvVCCrX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670906698; x=1702442698;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZmaCRwkY3K2dg2ebw+wy2H2AOqG9tavQay/SL9ndQuI=;
 b=aADOoyXXN3UUrp/pcCrxoaK6Lhjne9w+tpFyCl5CuCRNNAToGGldmCP5
 s14V/otePUsizE0JHimFAsGO24SQLnHXrRDvJ7qsU1RLnyDDlfYxPmJvh
 C/wtpeO8QvUH93oP9wi0CPZjFPTfw6n21x5L6H3pni6YYb24HwawXEIel
 xYLBtMVC9XIvfKTDfIVPUY+7PL0ApLA6OQbOXpFxUPUyMKMhx+GYxaznO
 Rv+eUJ1PT/bHTDj1dvGNqg6tBYGt0OSh8KwaRxUnnsDvpEP75vJ9PJ4Td
 Id+fz0Vut0wS8dHgH/AhBXnvt1v1//BXf/Y8AjJidQMUDMEYh3OOQfdmh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aADOoyXX
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
branch HEAD: f5c1b58c44dca790d2a1aadaddd35e5a866ef3b3  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202212130716.4jBI25fe-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202212130813.yWQXmNgB-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202212130854.9Drrdk7g-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/macintosh/macio_asic.c:141:18: error: incompatible function pointer types initializing 'int (*)(const struct device *, struct kobj_uevent_env *)' with an expression of type 'int (struct device *, struct kobj_uevent_env *)' [-Wincompatible-function-pointer-types]
drivers/macintosh/macio_asic.c:141:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc-randconfig-r024-20221212
    `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
clang_recent_errors
|-- powerpc-randconfig-r002-20221212
|   `-- drivers-macintosh-macio_asic.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uev
`-- powerpc-randconfig-r016-20221211
    `-- drivers-macintosh-macio_asic.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uev

elapsed time: 728m

configs tested: 67
configs skipped: 2

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-rust
i386                                defconfig
x86_64                          rhel-8.3-func
arm                                 defconfig
arc                                 defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
s390                             allmodconfig
alpha                               defconfig
i386                             allyesconfig
x86_64                           rhel-8.3-bpf
s390                                defconfig
x86_64                           rhel-8.3-syz
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
arc                              allyesconfig
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
s390                             allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                 randconfig-a013-20221212
arm                              allyesconfig
i386                 randconfig-a014-20221212
arm64                            allyesconfig
i386                 randconfig-a012-20221212
i386                 randconfig-a011-20221212
x86_64                               rhel-8.3
i386                 randconfig-a015-20221212
x86_64               randconfig-a013-20221212
i386                 randconfig-a016-20221212
x86_64               randconfig-a011-20221212
x86_64               randconfig-a012-20221212
x86_64               randconfig-a014-20221212
x86_64               randconfig-a015-20221212
x86_64               randconfig-a016-20221212
x86_64                           allyesconfig
arc                  randconfig-r043-20221211
arc                  randconfig-r043-20221212
arm                  randconfig-r046-20221211
s390                 randconfig-r044-20221212
riscv                randconfig-r042-20221212
ia64                             allmodconfig

clang tested configs:
i386                 randconfig-a002-20221212
i386                 randconfig-a003-20221212
i386                 randconfig-a001-20221212
i386                 randconfig-a004-20221212
i386                 randconfig-a006-20221212
i386                 randconfig-a005-20221212
x86_64               randconfig-a002-20221212
x86_64               randconfig-a001-20221212
x86_64               randconfig-a004-20221212
x86_64               randconfig-a003-20221212
x86_64               randconfig-a005-20221212
x86_64               randconfig-a006-20221212
arm                  randconfig-r046-20221212
hexagon              randconfig-r045-20221211
hexagon              randconfig-r041-20221211
hexagon              randconfig-r045-20221212
s390                 randconfig-r044-20221211
hexagon              randconfig-r041-20221212
riscv                randconfig-r042-20221211

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
