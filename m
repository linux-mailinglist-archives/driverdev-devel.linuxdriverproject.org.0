Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEE05E90A4
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Sep 2022 03:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EB4D60774;
	Sun, 25 Sep 2022 01:23:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EB4D60774
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQx4dtKgFLlm; Sun, 25 Sep 2022 01:23:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34D7160709;
	Sun, 25 Sep 2022 01:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34D7160709
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55D6B1BF30D
 for <devel@linuxdriverproject.org>; Sun, 25 Sep 2022 01:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E11360709
 for <devel@linuxdriverproject.org>; Sun, 25 Sep 2022 01:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E11360709
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQU7c90yl_hC for <devel@linuxdriverproject.org>;
 Sun, 25 Sep 2022 01:23:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B4F960774
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B4F960774
 for <devel@driverdev.osuosl.org>; Sun, 25 Sep 2022 01:23:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="362646476"
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200"; d="scan'208";a="362646476"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 18:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200"; d="scan'208";a="651392372"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Sep 2022 18:23:20 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ocGMZ-0007Do-1x;
 Sun, 25 Sep 2022 01:23:19 +0000
Date: Sun, 25 Sep 2022 09:22:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 aade55c86033bee868a93e4bf3843c9c99e84526
Message-ID: <632fad61.Vg0yKupK4h5mdnMc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664069002; x=1695605002;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=r28H5WOpTU2i1/1o+GVq59Z5sf6BCIh1NTzHYIIzXzg=;
 b=M27GtbzihDgDGHcnnYrmuVha4+5ROcWA0KMCohl7Fqm2i26LC7ayvBBW
 wymXJbVM9h+lupWnG4gInjNwHfk+nNevwK+4Z6gmwwbKIajyLpiWtdMaS
 3WdAafwHBYRBBSDNXt5JtVVUS0dBpNKOQr07FSusu2wDbqFiRWsjybR5q
 QV6OWbmo5I5h3gFZQyqDbZnMiI425c8Ig0noTfsdnZrfLXY5Xu8JIqWRw
 zUCreTPhCbkkhJyraA/Oz1Qd1jengjxOUIcGMHxZkEntQm2Rjst6Le/ew
 1acguMksshzBoguzg7LYWPgY51aiHkXowJ03jwYp5AVtw6fZFXm1IFWct
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M27Gtbzi
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
branch HEAD: aade55c86033bee868a93e4bf3843c9c99e84526  device property: Add const qualifier to device_get_match_data() parameter

elapsed time: 725m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                              defconfig
arc                  randconfig-r043-20220923
s390                 randconfig-r044-20220923
arm                                 defconfig
i386                          randconfig-a001
x86_64                               rhel-8.3
i386                                defconfig
s390                             allmodconfig
riscv                randconfig-r042-20220923
i386                          randconfig-a014
m68k                             allyesconfig
m68k                             allmodconfig
s390                                defconfig
arm64                            allyesconfig
i386                          randconfig-a005
alpha                            allyesconfig
i386                          randconfig-a012
arc                              allyesconfig
i386                          randconfig-a016
x86_64                        randconfig-a013
arm                              allyesconfig
x86_64                        randconfig-a011
x86_64                           allyesconfig
i386                             allyesconfig
s390                             allyesconfig
x86_64                        randconfig-a004
i386                          randconfig-a003
x86_64                        randconfig-a002
x86_64                        randconfig-a015
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                          rhel-8.3-func
ia64                             allmodconfig
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
hexagon              randconfig-r045-20220923
hexagon              randconfig-r041-20220923
i386                          randconfig-a013
i386                          randconfig-a002
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a015
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
