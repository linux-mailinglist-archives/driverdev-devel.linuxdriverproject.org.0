Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F20EA5ED17D
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Sep 2022 02:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 448E660AE6;
	Wed, 28 Sep 2022 00:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 448E660AE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZoIlqikbclRo; Wed, 28 Sep 2022 00:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEAE260AA0;
	Wed, 28 Sep 2022 00:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEAE260AA0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9C581BF85D
 for <devel@linuxdriverproject.org>; Wed, 28 Sep 2022 00:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1CF781749
 for <devel@linuxdriverproject.org>; Wed, 28 Sep 2022 00:16:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1CF781749
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-_uQtr7KK7F for <devel@linuxdriverproject.org>;
 Wed, 28 Sep 2022 00:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C71F581699
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C71F581699
 for <devel@driverdev.osuosl.org>; Wed, 28 Sep 2022 00:16:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="302375210"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="302375210"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:16:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="652473475"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="652473475"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 27 Sep 2022 17:15:58 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odKk2-0001jY-10;
 Wed, 28 Sep 2022 00:15:58 +0000
Date: Wed, 28 Sep 2022 08:15:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 c9855a55116d68ccd0a61155c97525ba4e2157ca
Message-ID: <63339228.y6uenNlyZMIe9T6f%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664324160; x=1695860160;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XYX9TPQA+fgwjw9aXKZD2vLVq4l3pt5TGwQ9ZNy02pw=;
 b=kWzeZg14KTCsYNRom27zhqGiuZNYL72I4MjdfGnKi7eSY5DEy111R2L3
 LorEGUeakS+9sQCQEJL033eaBKTQD1I13w9roNc2DXm/SQ/wsvvpE8Gk4
 ti6ZECuuLabo7G6hl665zsJdDiiv2POz6TBxmssuqE/9U5EBLgLaPAsBo
 doPVykuwThXYX/453bgcd93pqx92Clop58pOQ5kWm7v9voN2Y5eDSpsuF
 YVvNjtVK3eLj7ikt8Os9MU9ysj33ywpjS6D/9JGW/z5TTgTt3+86CFeYV
 KpG04QAQSG+kdEZyz7iDdph1Ps6us6OWl8v5ITXGnuuPQesmgwSIKkla1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kWzeZg14
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: c9855a55116d68ccd0a61155c97525ba4e2157ca  net: mvpp2: debugfs: fix problem with previous memory leak fix

elapsed time: 741m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                                 defconfig
sh                               allmodconfig
um                             i386_defconfig
alpha                               defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
s390                                defconfig
s390                             allmodconfig
i386                 randconfig-a001-20220926
x86_64               randconfig-a002-20220926
x86_64                           allyesconfig
x86_64               randconfig-a004-20220926
i386                 randconfig-a002-20220926
x86_64               randconfig-a001-20220926
i386                 randconfig-a003-20220926
x86_64               randconfig-a003-20220926
arc                  randconfig-r043-20220925
x86_64               randconfig-a005-20220926
i386                 randconfig-a004-20220926
x86_64               randconfig-a006-20220926
x86_64                           rhel-8.3-syz
i386                 randconfig-a005-20220926
arc                              allyesconfig
riscv                randconfig-r042-20220925
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
m68k                             allmodconfig
i386                 randconfig-a006-20220926
m68k                             allyesconfig
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
i386                                defconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a016-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
