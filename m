Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3382782C090
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jan 2024 14:11:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83BDD42138;
	Fri, 12 Jan 2024 13:11:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83BDD42138
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kobgy5hQ6YQg; Fri, 12 Jan 2024 13:11:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FA4F41798;
	Fri, 12 Jan 2024 13:11:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FA4F41798
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D15811BF395
 for <devel@linuxdriverproject.org>; Fri, 12 Jan 2024 13:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B577F405B3
 for <devel@linuxdriverproject.org>; Fri, 12 Jan 2024 13:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B577F405B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2jYMAv2nMWN5 for <devel@linuxdriverproject.org>;
 Fri, 12 Jan 2024 13:11:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33A1D40147
 for <devel@driverdev.osuosl.org>; Fri, 12 Jan 2024 13:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33A1D40147
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="6537959"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="6537959"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 05:11:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="17394039"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2024 05:11:27 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rOHJl-0009UW-2B;
 Fri, 12 Jan 2024 13:11:25 +0000
Date: Fri, 12 Jan 2024 21:10:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 e3977e0609a07d86406029fceea0fd40d7849368
Message-ID: <202401122136.4D9Jfhel-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705065091; x=1736601091;
 h=date:from:to:cc:subject:message-id;
 bh=w7wBWGF1U123yP/mbBLTtRq5TtUn+u5jTo9D4HehZNA=;
 b=hPX4wJgvZe+YN7KktvyjBLeszrcz697cuyE0YUsv5vXLC6YWC9ZzwxIW
 63A/wEQp01J1/LEqBcISH1R4zA+5mONymcvvVfh6C4m9eQPOu55O0HeJQ
 6CFQIC/IkrsQn0ueoSV2wOLhOY8eLuk01/7YoTyLiqS8Fa0rSdqkkwB5X
 u2zV35E51DepSw7PrD56jPAc9OhU6qO3hqkg1fju3tkY+sDk3NpTHy/XO
 UAtv5jC+WYgGxzJjkvfLm89KP4uo2PT47yhhTf170kjuhIEa0AgoUEj+/
 4v8RnPT+rXhGTnWEE4wflHwPY6iw0ZKZFvORnCq5jx/kD4gpz2MXnLpjF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hPX4wJgv
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: e3977e0609a07d86406029fceea0fd40d7849368  Revert "kernfs: convert kernfs_idr_lock to an irq safe raw spinlock"

elapsed time: 1555m

configs tested: 73
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                   randconfig-001-20240112   gcc  
arc                   randconfig-002-20240112   gcc  
arm                   randconfig-001-20240112   clang
arm                   randconfig-002-20240112   clang
arm                   randconfig-003-20240112   clang
arm                   randconfig-004-20240112   clang
arm64                 randconfig-001-20240112   clang
arm64                 randconfig-002-20240112   clang
arm64                 randconfig-003-20240112   clang
arm64                 randconfig-004-20240112   clang
csky                  randconfig-001-20240112   gcc  
csky                  randconfig-002-20240112   gcc  
hexagon               randconfig-001-20240112   clang
hexagon               randconfig-002-20240112   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240112   clang
i386         buildonly-randconfig-002-20240112   clang
i386         buildonly-randconfig-003-20240112   clang
i386         buildonly-randconfig-004-20240112   clang
i386         buildonly-randconfig-005-20240112   clang
i386         buildonly-randconfig-006-20240112   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240112   clang
i386                  randconfig-002-20240112   clang
i386                  randconfig-003-20240112   clang
i386                  randconfig-004-20240112   clang
i386                  randconfig-005-20240112   clang
i386                  randconfig-006-20240112   clang
i386                  randconfig-011-20240112   gcc  
i386                  randconfig-012-20240112   gcc  
i386                  randconfig-013-20240112   gcc  
i386                  randconfig-014-20240112   gcc  
i386                  randconfig-015-20240112   gcc  
i386                  randconfig-016-20240112   gcc  
loongarch             randconfig-001-20240112   gcc  
loongarch             randconfig-002-20240112   gcc  
nios2                 randconfig-001-20240112   gcc  
nios2                 randconfig-002-20240112   gcc  
parisc                randconfig-001-20240112   gcc  
parisc                randconfig-002-20240112   gcc  
powerpc               randconfig-001-20240112   clang
powerpc               randconfig-002-20240112   clang
powerpc               randconfig-003-20240112   clang
powerpc64             randconfig-001-20240112   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240112   clang
x86_64       buildonly-randconfig-002-20240112   clang
x86_64       buildonly-randconfig-003-20240112   clang
x86_64       buildonly-randconfig-004-20240112   clang
x86_64       buildonly-randconfig-005-20240112   clang
x86_64       buildonly-randconfig-006-20240112   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240112   gcc  
x86_64                randconfig-002-20240112   gcc  
x86_64                randconfig-003-20240112   gcc  
x86_64                randconfig-004-20240112   gcc  
x86_64                randconfig-005-20240112   gcc  
x86_64                randconfig-006-20240112   gcc  
x86_64                randconfig-011-20240112   clang
x86_64                randconfig-012-20240112   clang
x86_64                randconfig-013-20240112   clang
x86_64                randconfig-014-20240112   clang
x86_64                randconfig-015-20240112   clang
x86_64                randconfig-016-20240112   clang
x86_64                randconfig-071-20240112   clang
x86_64                randconfig-072-20240112   clang
x86_64                randconfig-073-20240112   clang
x86_64                randconfig-074-20240112   clang
x86_64                randconfig-075-20240112   clang
x86_64                          rhel-8.3-rust   clang

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
