Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D54D6FB42A
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 17:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C27AB84406;
	Mon,  8 May 2023 15:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C27AB84406
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eKmjy5ImCe39; Mon,  8 May 2023 15:47:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E53843FE;
	Mon,  8 May 2023 15:47:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71E53843FE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C94941BF360
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 15:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A149F41E09
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 15:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A149F41E09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8cZTJmVbibR for <devel@linuxdriverproject.org>;
 Mon,  8 May 2023 15:47:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65BD441D7D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65BD441D7D
 for <devel@driverdev.osuosl.org>; Mon,  8 May 2023 15:47:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="347148751"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="347148751"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 08:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="872846022"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="872846022"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 08 May 2023 08:46:41 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pw34M-0001I6-3C;
 Mon, 08 May 2023 15:46:34 +0000
Date: Mon, 08 May 2023 23:46:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 5b3fd3b02b92fe5edaa3a3a955ffad6ec2b12fc5
Message-ID: <20230508154601.rIhzK%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683560839; x=1715096839;
 h=date:from:to:cc:subject:message-id;
 bh=BwCzxYE7jea19g9zJsX6z+Nu5x1aN3rYXCfeqQO4zVw=;
 b=HNZkvMPlwvQ3OlNuUJsFtnB4EpwLxUPVL6qJn7fC3h1DCgUNGNtEWgOY
 IuzqKJrzHjEDCQsEhB+IwX41P2s+56DBCqI1yNuK5vuCqZk3os3H0dgAF
 yJ5VGz8AwzQWj7Q0oyggens9Q4TMi9sxDzBTSNgIYN4D81SeT8BvQaKzk
 cp0G/SmoPdLCQMCeLlNg+1pWZ2XLRMYLROZuhXj/F0AZ644QsMdgDvCq/
 XB5jdPZJmcJBhVwp0fAdqONgk+0Fm8mCOHniVp7KWatkQ6/GvM44bSpWZ
 lMzIj/+WzTloeW+kJeoQEhGmRNCpXHYV48oudVPYAiNxNuH9/+xC70n9G
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HNZkvMPl
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 5b3fd3b02b92fe5edaa3a3a955ffad6ec2b12fc5  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 727m

configs tested: 126
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230508   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230507   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230508   gcc  
arc                  randconfig-r025-20230507   gcc  
arc                  randconfig-r043-20230507   gcc  
arc                  randconfig-r043-20230508   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230507   clang
arm                  randconfig-r011-20230508   clang
arm                  randconfig-r036-20230508   gcc  
arm                  randconfig-r046-20230507   gcc  
arm                  randconfig-r046-20230508   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230507   gcc  
arm64                randconfig-r003-20230508   clang
arm64                randconfig-r033-20230508   clang
csky         buildonly-randconfig-r001-20230507   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r026-20230507   gcc  
csky                 randconfig-r031-20230507   gcc  
hexagon      buildonly-randconfig-r003-20230507   clang
hexagon      buildonly-randconfig-r005-20230507   clang
hexagon              randconfig-r012-20230508   clang
hexagon              randconfig-r032-20230508   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r041-20230508   clang
hexagon              randconfig-r045-20230507   clang
hexagon              randconfig-r045-20230508   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
i386                 randconfig-r001-20230508   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230508   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r022-20230507   gcc  
loongarch            randconfig-r033-20230507   gcc  
loongarch            randconfig-r034-20230508   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r003-20230508   gcc  
microblaze           randconfig-r006-20230507   gcc  
microblaze           randconfig-r014-20230508   gcc  
microblaze           randconfig-r022-20230508   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r006-20230508   gcc  
nios2        buildonly-randconfig-r004-20230507   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230507   gcc  
nios2                randconfig-r025-20230508   gcc  
nios2                randconfig-r034-20230507   gcc  
openrisc     buildonly-randconfig-r005-20230508   gcc  
openrisc             randconfig-r002-20230507   gcc  
openrisc             randconfig-r036-20230507   gcc  
parisc       buildonly-randconfig-r001-20230508   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230508   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230507   clang
riscv                randconfig-r042-20230508   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230507   clang
s390                                defconfig   gcc  
s390                 randconfig-r031-20230508   clang
s390                 randconfig-r044-20230507   clang
s390                 randconfig-r044-20230508   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r024-20230508   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230508   gcc  
sparc                randconfig-r035-20230508   gcc  
sparc64              randconfig-r002-20230508   gcc  
sparc64              randconfig-r004-20230508   gcc  
sparc64              randconfig-r013-20230508   gcc  
sparc64              randconfig-r024-20230507   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230508   clang
x86_64               randconfig-a002-20230508   clang
x86_64               randconfig-a003-20230508   clang
x86_64               randconfig-a004-20230508   clang
x86_64               randconfig-a005-20230508   clang
x86_64               randconfig-a006-20230508   clang
x86_64               randconfig-a011-20230508   gcc  
x86_64               randconfig-a012-20230508   gcc  
x86_64               randconfig-a013-20230508   gcc  
x86_64               randconfig-a014-20230508   gcc  
x86_64               randconfig-a015-20230508   gcc  
x86_64               randconfig-a016-20230508   gcc  
x86_64               randconfig-r021-20230508   gcc  
x86_64               randconfig-r023-20230508   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
