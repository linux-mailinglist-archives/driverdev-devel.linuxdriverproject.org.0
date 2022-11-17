Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C1762E4DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Nov 2022 19:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29D0260ADF;
	Thu, 17 Nov 2022 18:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29D0260ADF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDzg3IUNnjCL; Thu, 17 Nov 2022 18:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E052260AE6;
	Thu, 17 Nov 2022 18:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E052260AE6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B2AC1BF20F
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1EE0A402E0
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EE0A402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ie_iH2vXjYLs for <devel@linuxdriverproject.org>;
 Thu, 17 Nov 2022 18:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3042D400C4
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3042D400C4
 for <devel@driverdev.osuosl.org>; Thu, 17 Nov 2022 18:57:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300477700"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="300477700"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 10:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="672925196"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="672925196"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Nov 2022 10:57:09 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovk4S-0000Yu-2x;
 Thu, 17 Nov 2022 18:57:08 +0000
Date: Fri, 18 Nov 2022 02:56:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 22e01b166f1e01a9d847323f6cd63abe3ac4a450
Message-ID: <637683e6.CklArhFVd6OxobbM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668711432; x=1700247432;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O+bUVjxKkLeeB0gcKmhjryx94ZZSwsqmCRKbj5jd6ek=;
 b=bH51TVi+N+oxGPy6vPqY7XQwHkQrAts8Yjs19BkxY6ImSkUItjCx/7Op
 qq64d1HbtT8TdO2a/ZaRp6Dai/95Y9+wnhUNmOqEv5nkI7ofnqhHo6dBe
 kmATbrbc1NP5kuJ1859CyBuKsjiCHWbCz5rdOmBkLNcXmZHc4T79VZRZf
 5AM5Rpk/SZN9zPofw7mYgva7VLJ4n8qNBrgJ3KdV7IS/8hvU69fhw6LnN
 xiy5KRWEwa+Yhj6q2PovF5Scw6oBZ36ozlx0f0YUkaX1AGRnhn1cc/NVp
 1ZdxVfwuIFKfd6j+PH1WIKg/zCgDM9v8vhgaI9hxTaOhQEw2xBH1y8VH1
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bH51TVi+
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 22e01b166f1e01a9d847323f6cd63abe3ac4a450  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 747m

configs tested: 70
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
x86_64                        randconfig-a004
alpha                               defconfig
powerpc                          allmodconfig
ia64                             allmodconfig
um                             i386_defconfig
s390                                defconfig
x86_64                        randconfig-a002
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
s390                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                          rhel-8.3-func
um                           x86_64_defconfig
x86_64                        randconfig-a013
m68k                             allmodconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
s390                             allyesconfig
x86_64                        randconfig-a006
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
arc                              allyesconfig
x86_64                        randconfig-a015
arc                  randconfig-r043-20221117
alpha                            allyesconfig
x86_64                              defconfig
i386                                defconfig
m68k                             allyesconfig
riscv                randconfig-r042-20221117
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                               rhel-8.3
i386                          randconfig-a005
s390                 randconfig-r044-20221117
x86_64                           allyesconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
m68k                       m5249evb_defconfig
sparc64                             defconfig
x86_64                           alldefconfig
arc                     nsimosci_hs_defconfig
arm                        trizeps4_defconfig
sh                          rsk7264_defconfig
s390                          debug_defconfig
m68k                        stmark2_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                        shmobile_defconfig
powerpc                 linkstation_defconfig
sh                          sdk7780_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221117
i386                          randconfig-a002
hexagon              randconfig-r045-20221117
i386                          randconfig-a004
i386                          randconfig-a006
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
