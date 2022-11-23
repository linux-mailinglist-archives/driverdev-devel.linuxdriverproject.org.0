Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E68E5636125
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Nov 2022 15:09:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 041B960B1A;
	Wed, 23 Nov 2022 14:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 041B960B1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfW3fYVcEvQS; Wed, 23 Nov 2022 14:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DD7660A75;
	Wed, 23 Nov 2022 14:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DD7660A75
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A2F81BF3E9
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 14:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55DBB8193E
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 14:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55DBB8193E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pbu9TCxxX8ke for <devel@linuxdriverproject.org>;
 Wed, 23 Nov 2022 14:09:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6245D817B1
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6245D817B1
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 14:09:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="301630836"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="301630836"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 06:09:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="886965093"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="886965093"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 23 Nov 2022 06:09:18 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxqRB-0002nX-1P;
 Wed, 23 Nov 2022 14:09:17 +0000
Date: Wed, 23 Nov 2022 22:08:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 9dadff066244543780e5d9ee406b3ec7af19e22c
Message-ID: <637e2974.dkh+gJbeQbhEq/aX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669212560; x=1700748560;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cpyErkWITsN6Kh/RCJobfRCVCS/mVpIWIUelC0TYkG4=;
 b=KbZWDTiIaxSHdN1LlWmplzi8TN0WUEmSwpf0T70saRxnYezipeBAVRKn
 Srl4vmvYOL84jWy4TGbbjbIXtuJtUhTGsL+Qpb0AzuuBI2r/rGZjiGHxl
 zQDEwZqTU79z/BjzN9tPaoIfSXUAWHw1+PvM9IY9/USjqOEsRNl9RzEse
 sZ12aRLt6XYgsyd06Om9HKfW4dfWfIJrk47WDfz+/X6HvtO4vcLwdMySJ
 ASCdDxlNRLyBUnSFIKTGqiIdP5eh5wXQLYRcqy0XVkwxou/JxV/IUa1uJ
 VCsIRf6ZHX4zWq9M1M/N+96R5IqIKnKcI4VFRJsmcNgy2PFzXZLjyci5u
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KbZWDTiI
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
branch HEAD: 9dadff066244543780e5d9ee406b3ec7af19e22c  staging: iio: ade7854: Convert to i2c's .probe_new()

elapsed time: 1527m

configs tested: 78
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
alpha                               defconfig
x86_64                           rhel-8.3-kvm
s390                                defconfig
s390                             allyesconfig
i386                 randconfig-a011-20221121
i386                 randconfig-a015-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a014-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a012-20221121
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
x86_64                              defconfig
x86_64               randconfig-a012-20221121
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a016-20221121
x86_64                           allyesconfig
x86_64               randconfig-a013-20221121
x86_64               randconfig-a015-20221121
i386                                defconfig
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221121
s390                 randconfig-r044-20221121
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                             allyesconfig
ia64                             allmodconfig
arc                  randconfig-r043-20221120
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221121
hexagon              randconfig-r045-20221121
i386                          randconfig-a002
i386                          randconfig-a004
x86_64               randconfig-a004-20221121
x86_64               randconfig-a003-20221121
x86_64               randconfig-a001-20221121
i386                          randconfig-a006
x86_64               randconfig-a002-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a006-20221121
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
s390                 randconfig-r044-20221122
hexagon              randconfig-r041-20221122
riscv                randconfig-r042-20221122
hexagon              randconfig-r045-20221122

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
