Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 588D462E4E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Nov 2022 19:57:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D85C60ADA;
	Thu, 17 Nov 2022 18:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D85C60ADA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3JNOit8EObe; Thu, 17 Nov 2022 18:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBC0F60AE6;
	Thu, 17 Nov 2022 18:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBC0F60AE6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 506061BF20F
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3149760AE6
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3149760AE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cDJsJRoHnZCH for <devel@linuxdriverproject.org>;
 Thu, 17 Nov 2022 18:57:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D944260596
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D944260596
 for <devel@driverdev.osuosl.org>; Thu, 17 Nov 2022 18:57:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="314759353"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="314759353"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 10:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="728942004"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="728942004"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Nov 2022 10:57:09 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovk4S-0000Z2-36;
 Thu, 17 Nov 2022 18:57:08 +0000
Date: Fri, 18 Nov 2022 02:56:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 f02538f45aa371625a187d283fd3f57541ed5a3d
Message-ID: <637683e1./XKeFlzRad3qXmKR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668711433; x=1700247433;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HwQQaNjC/f08TVOq1xDsaKmvTJB/Hp2vL/n69uFW3yQ=;
 b=FvxK4QAq4vSg9jpQLbv9iy9PACtXi9of16GNsDwANxrGmmRz0GNldDtF
 MbhMbhK77qiP+RuxwtB3CLJqAXFU9ExpmzzIEKDF22boX5qSdKW60iRdt
 wlCzqXByQ+N4vwUpuGVjhTOhuEp+2zoWCK62njNZB3S0gqXGug/WUJyqH
 pEd5V8/FYR1rCkEFO0OOq7egVbLV2K/IUxBkGxqL6hromOfp51vC4s5SK
 +J1GRwc/PaJUdWfnypDeZWj4tcBcrjSEabpHEumsFbCVtEjsH5xD9Wqdd
 cje6/n9wGosBlr2F0cXqHoeDYg3MNjU2I2vCsrObEC3es8o35YvgClntF
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FvxK4QAq
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
branch HEAD: f02538f45aa371625a187d283fd3f57541ed5a3d  driver core: pass a const * into of_device_uevent()

elapsed time: 746m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20221117
arc                                 defconfig
s390                             allmodconfig
riscv                randconfig-r042-20221117
alpha                               defconfig
s390                 randconfig-r044-20221117
s390                                defconfig
i386                          randconfig-a001
x86_64                        randconfig-a002
s390                             allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
i386                                defconfig
x86_64                        randconfig-a013
m68k                             allyesconfig
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a003
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a011
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
i386                          randconfig-a005
arc                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
powerpc                           allnoconfig
x86_64                        randconfig-a006
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                        randconfig-a004
sh                               allmodconfig
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
m68k                       m5249evb_defconfig
sparc64                             defconfig
x86_64                           alldefconfig
arc                     nsimosci_hs_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                        shmobile_defconfig
powerpc                 linkstation_defconfig
sh                          sdk7780_defconfig

clang tested configs:
hexagon              randconfig-r041-20221117
hexagon              randconfig-r045-20221117
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a006
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
