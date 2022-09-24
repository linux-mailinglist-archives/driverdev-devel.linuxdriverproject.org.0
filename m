Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B75C55E906F
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Sep 2022 01:29:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2991E607BC;
	Sat, 24 Sep 2022 23:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2991E607BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOQ1Km-S-cIo; Sat, 24 Sep 2022 23:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5CFD605E8;
	Sat, 24 Sep 2022 23:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5CFD605E8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B72A61BF3A7
 for <devel@linuxdriverproject.org>; Sat, 24 Sep 2022 23:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9297082B9F
 for <devel@linuxdriverproject.org>; Sat, 24 Sep 2022 23:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9297082B9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j07Ac_1VU_pb for <devel@linuxdriverproject.org>;
 Sat, 24 Sep 2022 23:29:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984B382B1B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 984B382B1B
 for <devel@driverdev.osuosl.org>; Sat, 24 Sep 2022 23:29:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="280541730"
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200"; d="scan'208";a="280541730"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 16:29:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200"; d="scan'208";a="683076661"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Sep 2022 16:29:05 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ocEa1-00077C-0W;
 Sat, 24 Sep 2022 23:29:05 +0000
Date: Sun, 25 Sep 2022 07:28:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 f6633de18d95545abf285c1d5c8cc8deeda5341b
Message-ID: <632f92a0.yATAEakEHFP2TKVT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664062147; x=1695598147;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eJ1z1sDZAHYm62Wcwprr19l0pFQkgKBLcYlYXPInf+4=;
 b=IyxaSiSa4J7wHOzLDSaqCfX7/ZOWvf0phqs/1Xf67XKkgilmNlw3EYMb
 7BM8CzUuwPf2VMx8FREmB83qZ4ZNDwjrSTN7I1sb+0kqt953LUzqtDkFQ
 I7bxd507AIY0O4FVUnNJ4p81HKa/uHDARLWTunGMxqUrFlWWRRILxaUg/
 3Wlu0rGihqK57uGZdRGPYfimKZ+ix7kO4hKATiI+obvdBoXV6T0PkutFn
 AOZBMMCeJ/swKrcveAE2DAo7dt6XwNGikOwNLHjFFL6wkAyXyDyOWlTRF
 AFbR2kE+ZQ9pKunuB95MTGQSjoxh/3sVTS/gmPn76chL/MGHFJznlJ198
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IyxaSiSa
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: f6633de18d95545abf285c1d5c8cc8deeda5341b  staging: r8188eu: remove two unused enum entries

elapsed time: 722m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                        randconfig-a013
x86_64                        randconfig-a011
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a015
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                          allmodconfig
mips                             allyesconfig
s390                                defconfig
powerpc                           allnoconfig
m68k                             allmodconfig
x86_64                        randconfig-a004
arc                              allyesconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
i386                          randconfig-a001
i386                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a002
m68k                             allyesconfig
arm                                 defconfig
s390                             allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a003
x86_64                              defconfig
sh                               allmodconfig
i386                          randconfig-a014
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220923
x86_64                               rhel-8.3
s390                 randconfig-r044-20220923
arm                              allyesconfig
i386                             allyesconfig
riscv                randconfig-r042-20220923
arm64                            allyesconfig
x86_64                           allyesconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a013
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r045-20220923
i386                          randconfig-a015
hexagon              randconfig-r041-20220923

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
