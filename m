Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBA281D1EA
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Dec 2023 04:35:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE26760AEC;
	Sat, 23 Dec 2023 03:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE26760AEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gmIONv8nqqE; Sat, 23 Dec 2023 03:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8890260ACC;
	Sat, 23 Dec 2023 03:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8890260ACC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BC751BF293
 for <devel@linuxdriverproject.org>; Sat, 23 Dec 2023 03:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DB5160AE7
 for <devel@linuxdriverproject.org>; Sat, 23 Dec 2023 03:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DB5160AE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tNLaqqisDYtv for <devel@linuxdriverproject.org>;
 Sat, 23 Dec 2023 03:35:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A391E60ACC
 for <devel@driverdev.osuosl.org>; Sat, 23 Dec 2023 03:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A391E60ACC
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="3022150"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; 
   d="scan'208";a="3022150"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 19:35:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="753480692"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="753480692"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 22 Dec 2023 19:34:59 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rGsmv-000ADI-0J;
 Sat, 23 Dec 2023 03:34:57 +0000
Date: Sat, 23 Dec 2023 11:32:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 580fc9c750fde7404f2d726637135fb785c67e86
Message-ID: <202312231112.l50llYU6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703302502; x=1734838502;
 h=date:from:to:cc:subject:message-id;
 bh=cEkrwjIDBUhJifkVGobr6L9+56C9PuBEk0gIjHkA270=;
 b=L0wC12ZB6dlBLpMZ/qEdEhbYlL6NAhQhSC/s+hogYEkI3JA1t4A2JrP3
 bBN3VdK2yrIfkJHZ1ioROI1LUFQ8C7OBmJs48vdzIFG4rF9bVX1LX7PbB
 ucUeWhWpVOw3YAyP1d2jfJ6VEn0gA0J/2XGHgl5HWGFcXB5FRD8vvW4vN
 et2/dOzEmz/fzCH9/pmBj3IjWwyq2EKl8Fzaksz5XC9EjCA3/9oEH5xUX
 DeaZjwct1wlO0h+59NcvLHEcMZPVrgaJ/GfWuC6nYfqCaNwnGO+FxTzfj
 1YtyZ0M+HUv5uNliKjA1VzvpUqhyBEZR4IwdeWh6Ph6GyWFnMLBeXh9ES
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L0wC12ZB
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
branch HEAD: 580fc9c750fde7404f2d726637135fb785c67e86  driver core: mark remaining local bus_type variables as const

elapsed time: 2294m

configs tested: 64
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                   randconfig-001-20231223   gcc  
arc                   randconfig-002-20231223   gcc  
arm                   randconfig-001-20231223   clang
arm                   randconfig-002-20231223   clang
arm                   randconfig-003-20231223   clang
arm                   randconfig-004-20231223   clang
arm64                 randconfig-001-20231223   clang
arm64                 randconfig-002-20231223   clang
arm64                 randconfig-003-20231223   clang
arm64                 randconfig-004-20231223   clang
csky                  randconfig-001-20231223   gcc  
csky                  randconfig-002-20231223   gcc  
hexagon               randconfig-001-20231223   clang
hexagon               randconfig-002-20231223   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231223   clang
i386         buildonly-randconfig-002-20231223   clang
i386         buildonly-randconfig-003-20231223   clang
i386         buildonly-randconfig-004-20231223   clang
i386         buildonly-randconfig-005-20231223   clang
i386         buildonly-randconfig-006-20231223   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231223   clang
i386                  randconfig-002-20231223   clang
i386                  randconfig-003-20231223   clang
i386                  randconfig-004-20231223   clang
i386                  randconfig-005-20231223   clang
i386                  randconfig-006-20231223   clang
i386                  randconfig-011-20231223   gcc  
i386                  randconfig-012-20231223   gcc  
i386                  randconfig-013-20231223   gcc  
i386                  randconfig-014-20231223   gcc  
i386                  randconfig-015-20231223   gcc  
i386                  randconfig-016-20231223   gcc  
loongarch             randconfig-001-20231223   gcc  
loongarch             randconfig-002-20231223   gcc  
nios2                 randconfig-001-20231223   gcc  
nios2                 randconfig-002-20231223   gcc  
parisc                randconfig-001-20231223   gcc  
parisc                randconfig-002-20231223   gcc  
powerpc               randconfig-001-20231223   clang
powerpc               randconfig-002-20231223   clang
powerpc               randconfig-003-20231223   clang
powerpc64             randconfig-001-20231223   clang
powerpc64             randconfig-002-20231223   clang
powerpc64             randconfig-003-20231223   clang
riscv                 randconfig-001-20231223   clang
riscv                 randconfig-002-20231223   clang
s390                  randconfig-001-20231223   gcc  
s390                  randconfig-002-20231223   gcc  
sh                    randconfig-001-20231223   gcc  
sh                    randconfig-002-20231223   gcc  
sparc64               randconfig-001-20231223   gcc  
sparc64               randconfig-002-20231223   gcc  
um                    randconfig-001-20231223   clang
um                    randconfig-002-20231223   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20231223   gcc  
xtensa                randconfig-002-20231223   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
