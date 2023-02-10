Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C416917FC
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Feb 2023 06:32:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79EC1418A3;
	Fri, 10 Feb 2023 05:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79EC1418A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3rWR95NqzuQn; Fri, 10 Feb 2023 05:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEEEF418AE;
	Fri, 10 Feb 2023 05:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEEEF418AE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1328F1BF20B
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 05:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B1BB418A1
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 05:32:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B1BB418A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tt7oREn8edrK for <devel@linuxdriverproject.org>;
 Fri, 10 Feb 2023 05:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAF0C418AE
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAF0C418AE
 for <devel@driverdev.osuosl.org>; Fri, 10 Feb 2023 05:32:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="330349725"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="330349725"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 21:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645518380"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="645518380"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Feb 2023 21:32:24 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQM1I-0005Zu-0l;
 Fri, 10 Feb 2023 05:32:24 +0000
Date: Fri, 10 Feb 2023 13:32:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2] BUILD REGRESSION
 0be8abebbd476395ee73f4a83d4988dc9958f83c
Message-ID: <63e5d6e0.PMMj5gqqluoF/tey%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676007147; x=1707543147;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HPnKf6ayYWRCK7vPm0nHEEawV69DvZFYpJwxFNEQ0cE=;
 b=EUhyCX9O4fapNknGIW8T04zrv/rVahZbr3KurV5BDdEEEywmVdCKA1wV
 HT0N1wNWj+LGCZogFmJm8pxar1SejKgsq4EDBaczn8/WIqF/Z952xD1Hc
 ZovMZvurN5Cqw97y7SKxWqC6prBnZaH3MPrV3nBAonLNUzcGvplltthdS
 RPpTGUpEbqDrHldU8e5iWtaVOktCK9eHxZfGpIFPqvrXK/d+nBAlZZwH0
 skuzpFLqhqS0XZ9EE2fU/HIIo2gCicjI0kRhG0P27YZcIK/HZwkyMEt7A
 4hnVROjuzlXsZ7YzYL2+eoHsyYIid1JEBXNE0rgdAlR7MGgt0o+mWmL2w
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EUhyCX9O
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const-2
branch HEAD: 0be8abebbd476395ee73f4a83d4988dc9958f83c  driver core: mark struct device's bus_type as const.

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302100601.wZtQDBrU-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202302100648.6stAb27m-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/arm/mm/dma-mapping.c:1713:47: warning: passing argument 1 of 'arm_iommu_create_mapping' discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
drivers/sh/intc/userimask.c:67:46: error: 'struct bus_type' has no member named 'dev_root'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allyesconfig
|   `-- arch-arm-mm-dma-mapping.c:warning:passing-argument-of-arm_iommu_create_mapping-discards-const-qualifier-from-pointer-target-type
|-- arm-defconfig
|   `-- arch-arm-mm-dma-mapping.c:warning:passing-argument-of-arm_iommu_create_mapping-discards-const-qualifier-from-pointer-target-type
|-- arm-randconfig-r046-20230209
|   `-- arch-arm-mm-dma-mapping.c:warning:passing-argument-of-arm_iommu_create_mapping-discards-const-qualifier-from-pointer-target-type
`-- sh-allmodconfig
    `-- drivers-sh-intc-userimask.c:error:struct-bus_type-has-no-member-named-dev_root

elapsed time: 726m

configs tested: 61
configs skipped: 2

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
s390                             allyesconfig
um                           x86_64_defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                              defconfig
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                               rhel-8.3
i386                          randconfig-a016
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
x86_64                           allyesconfig
i386                          randconfig-a001
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
i386                          randconfig-a003
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
hexagon              randconfig-r045-20230209
hexagon              randconfig-r041-20230209
i386                          randconfig-a015
s390                 randconfig-r044-20230209
riscv                randconfig-r042-20230209
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
