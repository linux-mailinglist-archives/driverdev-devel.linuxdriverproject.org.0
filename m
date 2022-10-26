Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F397260DA7F
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Oct 2022 07:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 651AB60BC5;
	Wed, 26 Oct 2022 05:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 651AB60BC5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDSzcjvJ2JPI; Wed, 26 Oct 2022 05:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE1EC60BBA;
	Wed, 26 Oct 2022 05:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE1EC60BBA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A18AC1BF57B
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 05:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7982E40260
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 05:18:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7982E40260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNp_0t1vQkbU for <devel@linuxdriverproject.org>;
 Wed, 26 Oct 2022 05:18:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A7FB4014A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A7FB4014A
 for <devel@driverdev.osuosl.org>; Wed, 26 Oct 2022 05:18:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="295268940"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="295268940"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 22:18:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="583033452"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="583033452"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2022 22:18:40 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1onYoJ-00073A-2O;
 Wed, 26 Oct 2022 05:18:39 +0000
Date: Wed, 26 Oct 2022 13:18:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 1662cea4623f75d8251adf07370bbaa958f0355d
Message-ID: <6358c31c.bZSv7k55NEkGNDlH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666761522; x=1698297522;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dy2iLdzuBMsXIuPU7rt/ficxRdOitT4aMT7zbAJAr94=;
 b=dq/avz4kLrSiN8SUcdYQEn84EHnvgkdB2LPtRblyxbwCviVQUPKH7WIg
 e89rhuIJ21hqFuGUpGu0OQpI9ZiusD9PR6KzMCNq38CUIeb93ZaEiOqzK
 CpdGdFDV2ho+y3MxCB+Z8WsSo+O0QiPY4fgAtkwruZ/9+Qq9gUX+8q9o2
 Iu1r4AdzrxfqDbP2Zane6t1ZcxuRp640znVTuKfIhb1wGVauz65d51X3b
 5fCJa67q8SnMK2IagcxZPE+RdRuTCxUic0wooDfDRdAjCskm+o2wMnSu9
 beMKwxAmAEJzWz3HZVNsYIBYVLi9zBTbcZRlV3MeydklWpTqKJNt2uxc6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dq/avz4k
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
branch HEAD: 1662cea4623f75d8251adf07370bbaa958f0355d  kset: fix memory leak when kset_register() returns error

elapsed time: 726m

configs tested: 75
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
x86_64                              defconfig
um                           x86_64_defconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
i386                                defconfig
arc                                 defconfig
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a014
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a002
s390                             allyesconfig
i386                          randconfig-a012
mips                             allyesconfig
x86_64               randconfig-a013-20221024
alpha                            allyesconfig
i386                          randconfig-a016
i386                             allyesconfig
x86_64               randconfig-a012-20221024
powerpc                          allmodconfig
x86_64                        randconfig-a006
arc                              allyesconfig
arm                                 defconfig
x86_64               randconfig-a016-20221024
sh                               allmodconfig
x86_64                        randconfig-a004
arc                  randconfig-r043-20221024
x86_64               randconfig-a011-20221024
riscv                randconfig-r042-20221024
x86_64               randconfig-a015-20221024
arc                  randconfig-r043-20221023
x86_64               randconfig-a014-20221024
m68k                             allyesconfig
s390                 randconfig-r044-20221024
m68k                             allmodconfig
sh                          landisk_defconfig
arm64                            allyesconfig
powerpc                         wii_defconfig
sh                          polaris_defconfig
arm                              allyesconfig
arm64                               defconfig
i386                 randconfig-a011-20221024
i386                 randconfig-a014-20221024
i386                 randconfig-a015-20221024
i386                 randconfig-a016-20221024
i386                 randconfig-a012-20221024
i386                 randconfig-a013-20221024
arc                  randconfig-r043-20221025

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
hexagon              randconfig-r045-20221023
hexagon              randconfig-r041-20221024
x86_64                        randconfig-a001
i386                          randconfig-a015
x86_64                        randconfig-a003
riscv                randconfig-r042-20221023
x86_64                        randconfig-a005
hexagon              randconfig-r045-20221024
s390                 randconfig-r044-20221023
hexagon              randconfig-r041-20221023
arm                             mxs_defconfig
i386                 randconfig-a003-20221024
i386                 randconfig-a004-20221024
i386                 randconfig-a002-20221024
i386                 randconfig-a005-20221024
i386                 randconfig-a001-20221024
i386                 randconfig-a006-20221024

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
