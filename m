Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D466335F8
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Nov 2022 08:40:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DD78414CE;
	Tue, 22 Nov 2022 07:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DD78414CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7VALPMwB-Igs; Tue, 22 Nov 2022 07:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6288B414C4;
	Tue, 22 Nov 2022 07:40:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6288B414C4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1DC31BF31A
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 07:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9E37414CE
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 07:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9E37414CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CX1z6eY6M2D for <devel@linuxdriverproject.org>;
 Tue, 22 Nov 2022 07:40:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2348F414C4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2348F414C4
 for <devel@driverdev.osuosl.org>; Tue, 22 Nov 2022 07:40:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="311385724"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="311385724"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:40:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641324765"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641324765"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 21 Nov 2022 23:40:01 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxNsu-0001Cd-1s;
 Tue, 22 Nov 2022 07:40:00 +0000
Date: Tue, 22 Nov 2022 15:39:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD REGRESSION
 9eca930f9ae3335b499662c53416394b01cdb7e9
Message-ID: <637c7cc5.kNR2Vzvrk+RgbF9I%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669102806; x=1700638806;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qwiGGCXr30/xKbEpZUMKj3wYjxb3ps2oZfRJLsApabg=;
 b=fWGZ2YaBlMfCGusOuClRY4wYLlfAmTfLxatuRDXrNOTCEBs6T+lQ8nc1
 rWLmF3K5oMTphkgjo2iDvHfvgQmelYz6MhMj8lx0NgsZKhVCg201GpWL6
 DQ2Tqn2XZl/0wI8DDfX5C9LA8uRopI6NzNJsJ9WW2j9xbPAPYMBqY/6bb
 +akNXYukr1wMEQJwIXlFQStu+i5LHLb1qVnfY/B68nIY/HYDrx0SstJxh
 hgoiduASfmvYlq1LzZsFbSfUKeP+JV5KdH+3x69Do0qN9pRlnaJzozlQm
 GO8opAsAVoswI3GlwCIJe/cvZ+ZNiFqZTGa0B4AsuT1IDALaPH3jh9S20
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fWGZ2YaB
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
branch HEAD: 9eca930f9ae3335b499662c53416394b01cdb7e9  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/mips_cdmm.c:125:13: error: incompatible function pointer types initializing 'int (*)(const struct device *, struct kobj_uevent_env *)' with an expression of type 'int (struct device *, struct kobj_uevent_env *)' [-Wincompatible-function-pointer-types]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- mips-randconfig-r005-20221120
    `-- drivers-bus-mips_cdmm.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_env

elapsed time: 1291m

configs tested: 89
configs skipped: 3

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
sh                               allmodconfig
s390                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a014-20221121
i386                 randconfig-a015-20221121
i386                 randconfig-a016-20221121
arc                  randconfig-r043-20221120
riscv                randconfig-r042-20221121
i386                                defconfig
arc                  randconfig-r043-20221121
s390                 randconfig-r044-20221121
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64               randconfig-a012-20221121
x86_64               randconfig-a011-20221121
x86_64               randconfig-a013-20221121
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a016-20221121
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a015-20221121
x86_64               randconfig-a014-20221121
x86_64                            allnoconfig
arm                                 defconfig
mips                           jazz_defconfig
powerpc                      ep88xc_defconfig
m68k                       m5249evb_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                           sama5_defconfig
i386                             allyesconfig
arm                      footbridge_defconfig
powerpc                       eiger_defconfig
arc                           tb10x_defconfig
mips                          rb532_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                        m5272c3_defconfig
powerpc                    sam440ep_defconfig
arm                         nhk8815_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm64                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                              allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig

clang tested configs:
hexagon              randconfig-r041-20221120
hexagon              randconfig-r041-20221121
hexagon              randconfig-r045-20221120
hexagon              randconfig-r045-20221121
riscv                randconfig-r042-20221120
s390                 randconfig-r044-20221120
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001
powerpc                    mvme5100_defconfig
arm                         bcm2835_defconfig
arm                         lpc32xx_defconfig
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
