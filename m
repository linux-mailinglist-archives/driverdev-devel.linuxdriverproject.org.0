Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5A969DB66
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Feb 2023 08:46:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A918B61145;
	Tue, 21 Feb 2023 07:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A918B61145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20QmezbLTFwq; Tue, 21 Feb 2023 07:46:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2485961186;
	Tue, 21 Feb 2023 07:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2485961186
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01ED71BF2EF
 for <devel@linuxdriverproject.org>; Tue, 21 Feb 2023 07:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD6C961145
 for <devel@linuxdriverproject.org>; Tue, 21 Feb 2023 07:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD6C961145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MC6bmcEKR9tx for <devel@linuxdriverproject.org>;
 Tue, 21 Feb 2023 07:45:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4190860BE4
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4190860BE4
 for <devel@driverdev.osuosl.org>; Tue, 21 Feb 2023 07:45:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="320698084"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="320698084"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 23:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664875431"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="664875431"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 20 Feb 2023 23:45:51 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUNLS-000EYn-1w;
 Tue, 21 Feb 2023 07:45:50 +0000
Date: Tue, 21 Feb 2023 15:45:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD REGRESSION
 de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
Message-ID: <63f4767f.cZr2/UVNiWIhxs4e%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676965555; x=1708501555;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KMdDMVjJLRgw0sD5arWF9jRD35Na/zwamAuTsGCHgn8=;
 b=MfqhqYc4jJ+XRlMjtHO/UaHyDbORxj7hdy992PZain0KzNVTUByqHWXJ
 QCsTihr4if8P5oHEoC//PU2R3uxsajTTjMPBiAkgXUVDmctsdJhGVlr/o
 6yEqQyr8UU3R9sMdZv+rKSmyZa26FD7PrftFsL9q6cdTCUdgKFfw9IfF5
 nPUygej5pOpsi8a/ba8TI9GxPCQ4A2gwMqEWupE04plzCEgWARuXLNdQO
 rj/P2iqDrTpdWxM7bzO8HRIvewTFVln5pkatMQ3sX+vKbmUhIyu7AqgzB
 gnMqOvNXYE90I+ubULJpcFmKlh39MJrOv93MxU7hpfyk7kHTEHFYdkASy
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MfqhqYc4
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
branch HEAD: de9d11ba9a2261b62a065a1b6539eecf8a6d81f5  driver core: platform: make platform_bus_type constant

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302210633.1nZkZMlc-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202302210708.PQqZ8mR4-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202302211325.mGuXnfJV-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/iommu/iommu.c:118:2: error: initializing 'struct bus_type *const' with an expression of type 'const struct bus_type *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
drivers/iommu/iommu.c:118:9: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
drivers/sh/pm_runtime.c:37:29: warning: passing argument 1 of 'pm_clk_add_notifier' discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- alpha-randconfig-s033-20230219
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arc-allyesconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arc-randconfig-r031-20230219
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arc-randconfig-r043-20230219
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arm-allmodconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arm-allyesconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arm-defconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arm-randconfig-r046-20230220
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arm64-allyesconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- arm64-defconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- csky-randconfig-c024-20230219
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- csky-randconfig-r002-20230220
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- i386-allyesconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- i386-debian-10.3
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- i386-defconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- i386-randconfig-c001
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- i386-randconfig-m021
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- i386-randconfig-r033-20230220
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- ia64-alldefconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- ia64-allmodconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- ia64-defconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- ia64-randconfig-r001-20230220
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- loongarch-allmodconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- loongarch-defconfig
|   `-- drivers-iommu-iommu.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
clang_recent_errors
|-- arm-randconfig-r046-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- arm64-randconfig-r015-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- arm64-randconfig-r033-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- hexagon-buildonly-randconfig-r003-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- hexagon-randconfig-r022-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- hexagon-randconfig-r041-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- hexagon-randconfig-r041-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- hexagon-randconfig-r045-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- hexagon-randconfig-r045-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- i386-randconfig-a011-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- powerpc-randconfig-r006-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- riscv-randconfig-r026-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- riscv-randconfig-r042-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- s390-randconfig-r002-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- s390-randconfig-r003-20230219
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- s390-randconfig-r024-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- s390-randconfig-r044-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- x86_64-randconfig-a011-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- x86_64-randconfig-a012-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- x86_64-randconfig-a013-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- x86_64-randconfig-a014-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
|-- x86_64-randconfig-a015-20230220
|   `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers
`-- x86_64-randconfig-a016-20230220
    `-- drivers-iommu-iommu.c:error:initializing-struct-bus_type-const-with-an-expression-of-type-const-struct-bus_type-discards-qualifiers-Werror-Wincompatible-pointer-types-discards-qualifiers

elapsed time: 724m

configs tested: 101
configs skipped: 3

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                               allnoconfig
arc                              allyesconfig
arc                      axs103_smp_defconfig
arc                                 defconfig
arc                  randconfig-r043-20230219
arc                  randconfig-r043-20230220
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                     eseries_pxa_defconfig
arm                         nhk8815_defconfig
arm                  randconfig-r046-20230220
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a001-20230220
i386                 randconfig-a002-20230220
i386                 randconfig-a003-20230220
i386                 randconfig-a004-20230220
i386                 randconfig-a005-20230220
i386                 randconfig-a006-20230220
i386                          randconfig-c001
ia64                             alldefconfig
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                       m5249evb_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                     loongson1b_defconfig
mips                      loongson3_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                     ep8248e_defconfig
powerpc                      ppc6xx_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                randconfig-r042-20230219
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230219
sh                               allmodconfig
sh                               j2_defconfig
sh                          landisk_defconfig
sh                          rsk7269_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           alldefconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a001-20230220
x86_64               randconfig-a002-20230220
x86_64               randconfig-a003-20230220
x86_64               randconfig-a004-20230220
x86_64               randconfig-a005-20230220
x86_64               randconfig-a006-20230220
x86_64                               rhel-8.3
xtensa                    xip_kc705_defconfig

clang tested configs:
arm                         bcm2835_defconfig
arm                            mmp2_defconfig
arm                      pxa255-idp_defconfig
arm                  randconfig-r046-20230219
arm                         s5pv210_defconfig
hexagon              randconfig-r041-20230219
hexagon              randconfig-r041-20230220
hexagon              randconfig-r045-20230219
hexagon              randconfig-r045-20230220
i386                 randconfig-a011-20230220
i386                 randconfig-a012-20230220
i386                 randconfig-a013-20230220
i386                 randconfig-a014-20230220
i386                 randconfig-a015-20230220
i386                 randconfig-a016-20230220
powerpc                     skiroot_defconfig
powerpc                      walnut_defconfig
riscv                randconfig-r042-20230220
s390                 randconfig-r044-20230220
x86_64               randconfig-a011-20230220
x86_64               randconfig-a012-20230220
x86_64               randconfig-a013-20230220
x86_64               randconfig-a014-20230220
x86_64               randconfig-a015-20230220
x86_64               randconfig-a016-20230220

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
