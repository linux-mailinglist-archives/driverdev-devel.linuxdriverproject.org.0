Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5806685DE9
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Feb 2023 04:25:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D489A813E6;
	Wed,  1 Feb 2023 03:25:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D489A813E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7sd-7mwlth6; Wed,  1 Feb 2023 03:25:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9885A81377;
	Wed,  1 Feb 2023 03:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9885A81377
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C68A51BF381
 for <devel@linuxdriverproject.org>; Wed,  1 Feb 2023 03:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99A8060E2E
 for <devel@linuxdriverproject.org>; Wed,  1 Feb 2023 03:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99A8060E2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVRFF95ppVgf for <devel@linuxdriverproject.org>;
 Wed,  1 Feb 2023 03:25:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46B5C60E25
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46B5C60E25
 for <devel@driverdev.osuosl.org>; Wed,  1 Feb 2023 03:25:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="307684210"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="307684210"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 19:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="838614257"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="838614257"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 31 Jan 2023 19:25:42 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pN3kj-00050K-0T;
 Wed, 01 Feb 2023 03:25:41 +0000
Date: Wed, 01 Feb 2023 11:25:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 921e672dee91af86f8f9e44a067c735ebac0744b
Message-ID: <63d9db8c.OElT42jaYZVbw2o+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675221944; x=1706757944;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sDBvXyAxBhbA/IjaYmma+jVvwEAo25H9pZTDNEQOREY=;
 b=NYXQnxilIi2Bt1hdTRq/bFhiVgsMe6binge3VqA8/wK7EtwDgLvc5Ba8
 PnSsn1z12wAV35OPyblTWlpqRWVLMXNqky/FoKKDNyQ7J8QzsLs/c+psl
 N6v/DgyjpyTotz3GOZbabeiMC3JXUmKZCKZxcA4rcpFseSyjXblf3QzkE
 2omuHa9R1JjtyYiTWoD29ClogzNv8gr2+UGPFZ+c/risj4KC8N+RIX44j
 ImO/0IqOp5xq3An442Okfj7sNlaKbv0Oa/BwNdYRZEZK6e/12wgdgCkNw
 euGPrRRkUm8irCoT5tWuI+ZLD18PmonNXxRWBjme2Yh0vW46Cgtvks2Am
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NYXQnxil
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
branch HEAD: 921e672dee91af86f8f9e44a067c735ebac0744b  cacheinfo: Remove unused check in init_cache_level()

elapsed time: 723m

configs tested: 84
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
x86_64               randconfig-a001-20230130
i386                 randconfig-a003-20230130
x86_64               randconfig-a003-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
x86_64               randconfig-a004-20230130
s390                                defconfig
i386                 randconfig-a006-20230130
x86_64               randconfig-a002-20230130
s390                             allmodconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
ia64                             allmodconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                             allyesconfig
sh                               allmodconfig
arm                                 defconfig
powerpc                          allmodconfig
mips                             allyesconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arm64                            allyesconfig
alpha                            allyesconfig
parisc                generic-32bit_defconfig
m68k                          amiga_defconfig
loongarch                           defconfig
arm                            pleb_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                       holly_defconfig
arm                            mps2_defconfig
arm                      jornada720_defconfig
i386                          randconfig-c001

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
x86_64                        randconfig-k001
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
