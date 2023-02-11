Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D496692C86
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Feb 2023 02:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC7B882365;
	Sat, 11 Feb 2023 01:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC7B882365
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-88beVwQSUk; Sat, 11 Feb 2023 01:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DC4382340;
	Sat, 11 Feb 2023 01:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC4382340
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF4B91BF33B
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 01:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95AC96118C
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 01:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95AC96118C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cP6zfysbijqu for <devel@linuxdriverproject.org>;
 Sat, 11 Feb 2023 01:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D63C61045
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D63C61045
 for <devel@driverdev.osuosl.org>; Sat, 11 Feb 2023 01:25:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="330578009"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="330578009"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 17:25:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="756970734"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="756970734"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2023 17:25:52 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQeeF-00069y-2z;
 Sat, 11 Feb 2023 01:25:51 +0000
Date: Sat, 11 Feb 2023 09:24:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD REGRESSION
 ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
Message-ID: <63e6ee6b.zRuFicE2l9mNat+q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676078754; x=1707614754;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=bYVrzRoPRq0uQ/LqEOczyY7753zJ9oRkxi5M7BKcsZ4=;
 b=bEgrQPey8DHNldxLRh00+muKo0/bEPKCcf3NigI78xRXLtrfUT6+Qgpe
 b9P+2vK+HcSMRn82KCB9oy2ZfhvNGLguHtVvzIwdrsx3m/quC2eZQiMhE
 gBmfF11LC1lvJ/5PumCNHlNnnCfHLkNueZ3GKAbyZeAsa3cU5nhBtLDcI
 JJGPxBgW75GIqF4a2wIZYxZTuGgbgAssgxbS2vHh7w9MDoLb8ASwgNp4t
 De4S/k87CdHK2NxqWfIppf8cto0W9QQP9QdLc8UW/TwhyrjxkAbMIr1b4
 SaVHDuPqwesA3y/Kp37OFWPoNTasAk8tkD9nQx2UACsXfbgto6VDAZKcB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bEgrQPey
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: ecfd9f08fe2ef7616477c089dce1b0f05dcee13c  devtmpfs: remove return value of devtmpfs_delete_node()

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302102345.UQfDskhW-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/base/base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
drivers/base/firmware_loader/../base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
drivers/base/power/../base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- arm-randconfig-r006-20230210
    |-- drivers-base-base.h:error:void-function-devtmpfs_delete_node-should-not-return-a-value
    |-- drivers-base-firmware_loader-..-base.h:error:void-function-devtmpfs_delete_node-should-not-return-a-value
    `-- drivers-base-power-..-base.h:error:void-function-devtmpfs_delete_node-should-not-return-a-value

elapsed time: 894m

configs tested: 73
configs skipped: 3

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230210
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230210
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
hexagon              randconfig-r041-20230210
hexagon              randconfig-r045-20230210
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20230210
s390                 randconfig-r044-20230210
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
