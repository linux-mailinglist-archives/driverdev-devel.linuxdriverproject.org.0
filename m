Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 076725F27B3
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Oct 2022 04:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26567408B4;
	Mon,  3 Oct 2022 02:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26567408B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jg34HP6s9sTI; Mon,  3 Oct 2022 02:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F496408BB;
	Mon,  3 Oct 2022 02:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F496408BB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA7871BF314
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 02:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E42B81959
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 02:46:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E42B81959
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iz3EWMEx9Kqu for <devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 02:46:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0074881934
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0074881934
 for <devel@driverdev.osuosl.org>; Mon,  3 Oct 2022 02:46:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="303440906"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="303440906"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 19:46:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="868430202"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="868430202"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 02 Oct 2022 19:46:02 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ofBSz-0004GT-2v;
 Mon, 03 Oct 2022 02:46:01 +0000
Date: Mon, 03 Oct 2022 10:45:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD REGRESSION
 75b46b72e13aa3b904572a0a9511f14709eac779
Message-ID: <633a4cb3.B9AvBhj5QK+Scjbu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664765165; x=1696301165;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TtAiE19fwYJlKA4LZIFB3hpA4s84fjQIP5FDnJzlIvM=;
 b=lR1s9vQYwAReGBK9Y2B8+w2hZ6T3ewKqKTHBfXmxMz5ZbRf2+Htn5iwY
 N0MqjLGcoOZmL3cUlp/PpKvDSK6haGyas8JQGFSTsBjRCOgxsAhEGFYzt
 qmnhQUQlvw5wVCzTfyBgN4bADKEy++LZmIGFwa2wlYFy9sFy+a3L2PgzT
 N/3/14gN+9vWrM8S90nmzOVN8VXxWMvMzH2t3oW74EWejOB4qLGeL/OFL
 HtAtNRd2jXt0YeClFsLFjT48xmva2u4uv86/T+WfQ/30dwPLkA8wbxzGD
 v4uVt2xxUG2AG+t8nspjIW/Jcc5XQTUGB1SoQunbKEJJ3JYOzykHjOG4D
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lR1s9vQY
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
branch HEAD: 75b46b72e13aa3b904572a0a9511f14709eac779  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning reports:

https://lore.kernel.org/lkml/202209292354.1kpF6NCQ-lkp@intel.com
https://lore.kernel.org/lkml/202210030018.DEdqnYgJ-lkp@intel.com
https://lore.kernel.org/lkml/202210030044.NuUjYOG1-lkp@intel.com
https://lore.kernel.org/lkml/202210030136.6KGC27Mw-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/amba/bus.c:447:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/firmware/arm_ffa/bus.c:97:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/gpu/host1x/bus.c:388:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/s390/cio/scm.c:49:12: error: incompatible function pointer types initializing 'int (*)(const struct device *, struct kobj_uevent_env *)' with an expression of type 'int (struct device *, struct kobj_uevent_env *)' [-Wincompatible-function-pointer-types]
drivers/s390/cio/scm.c:49:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/s390/crypto/ap_bus.c:1575:19: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/zorro/zorro-driver.c:158:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
sound/aoa/soundbus/core.c:131:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allyesconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm-defconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- arm64-allyesconfig
|   |-- drivers-amba-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   |-- drivers-firmware-arm_ffa-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-gpu-host1x-bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- m68k-allmodconfig
|   `-- drivers-zorro-zorro-driver.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- m68k-allyesconfig
|   `-- drivers-zorro-zorro-driver.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- m68k-randconfig-r025-20221002
|   `-- drivers-zorro-zorro-driver.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- powerpc-allmodconfig
|   `-- sound-aoa-soundbus-core.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- s390-allmodconfig
|   |-- drivers-s390-cio-scm.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-s390-crypto-ap_bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|-- s390-allyesconfig
|   |-- drivers-s390-cio-scm.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
|   `-- drivers-s390-crypto-ap_bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
`-- s390-defconfig
    |-- drivers-s390-cio-scm.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
    `-- drivers-s390-crypto-ap_bus.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)
clang_recent_errors
`-- s390-randconfig-r021-20221002
    `-- drivers-s390-cio-scm.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_env-

elapsed time: 722m

configs tested: 58
configs skipped: 2

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
s390                                defconfig
arm                                 defconfig
s390                             allmodconfig
arm                              allyesconfig
x86_64                               rhel-8.3
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                  randconfig-r043-20221002
x86_64                        randconfig-a002
alpha                            allyesconfig
x86_64                           allyesconfig
m68k                             allyesconfig
i386                          randconfig-a001
arm64                            allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a005
i386                             allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a013
i386                          randconfig-a012
x86_64                        randconfig-a011
i386                          randconfig-a016
x86_64                        randconfig-a015
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
ia64                             allmodconfig
sh                               allmodconfig

clang tested configs:
hexagon              randconfig-r041-20221002
hexagon              randconfig-r045-20221002
riscv                randconfig-r042-20221002
x86_64                        randconfig-a005
s390                 randconfig-r044-20221002
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
