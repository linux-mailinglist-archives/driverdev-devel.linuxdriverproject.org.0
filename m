Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8058B5EB983
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Sep 2022 07:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCDAD400C6;
	Tue, 27 Sep 2022 05:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCDAD400C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZbLqEkyaCQr; Tue, 27 Sep 2022 05:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9689A405E3;
	Tue, 27 Sep 2022 05:21:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9689A405E3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26C9F1BF385
 for <devel@linuxdriverproject.org>; Tue, 27 Sep 2022 05:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EA1860B3D
 for <devel@linuxdriverproject.org>; Tue, 27 Sep 2022 05:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EA1860B3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5cEGKplHU31 for <devel@linuxdriverproject.org>;
 Tue, 27 Sep 2022 05:21:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1374160AC0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1374160AC0
 for <devel@driverdev.osuosl.org>; Tue, 27 Sep 2022 05:21:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="302135607"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="302135607"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 22:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="599048783"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="599048783"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 26 Sep 2022 22:20:25 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1od316-0000dG-12;
 Tue, 27 Sep 2022 05:20:24 +0000
Date: Tue, 27 Sep 2022 13:20:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 cdc7daa9e3e102fc650321c8c0d2d8cf0ced3910
Message-ID: <63328801./2n1VoNPqPs0TL35%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664256063; x=1695792063;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=R4DAx+XOz6Cx78y+uVOSXYmhc7FcreKuZjq2Q25R9WY=;
 b=lpl9Akef+CdjByHaZnsFHtfiIra/CfEQz9WLYWw5NeTpb3mSyHeNGOLz
 C85R6o7nqYUgJ+w49KQ19LWemri86vira77P1V2es2WaKSHRSOJHyx2+T
 8u0LqtOZ8svozRty1T7FfmYbbiLL4vSVO0mCIjlS155QPD5Bx5ZyWJJHv
 VjhLIyf8FOK9iF8iLMHBqtH/gEeU2qOJbgnSh8HKxUO6/xg9Tzr4SMU1Z
 GbqOQrdDvByua2v/ODuh8eFDgP+PHrA5Cw2rkEI1A+ejDdkaTIxD8JQEy
 yuTe5M3xNIjyGrUyABM2VaQcZdDNFwykLKhVNUPVVJWV6+GL4HPfvKzk2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lpl9Akef
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
branch HEAD: cdc7daa9e3e102fc650321c8c0d2d8cf0ced3910  a.out: restore CMAGIC

elapsed time: 725m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allmodconfig
s390                                defconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
m68k                             allmodconfig
m68k                             allyesconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           rhel-8.3-syz
i386                                defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
arm                                 defconfig
arc                  randconfig-r043-20220925
arm                              allyesconfig
arm64                            allyesconfig
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
riscv                randconfig-r042-20220925
x86_64                        randconfig-a013
i386                 randconfig-a001-20220926
x86_64                        randconfig-a011
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
x86_64                        randconfig-a015
x86_64               randconfig-a002-20220926
ia64                             allmodconfig
i386                 randconfig-a006-20220926
x86_64               randconfig-a004-20220926
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a006-20220926

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a014-20220926
x86_64                        randconfig-a016
i386                 randconfig-a013-20220926
x86_64                        randconfig-a012
i386                 randconfig-a012-20220926
x86_64                        randconfig-a014
i386                 randconfig-a016-20220926
i386                 randconfig-a015-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
