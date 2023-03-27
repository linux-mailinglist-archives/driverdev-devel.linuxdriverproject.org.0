Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F7A6C9968
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Mar 2023 03:50:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34601409F1;
	Mon, 27 Mar 2023 01:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34601409F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oqgrpcwb3Zsw; Mon, 27 Mar 2023 01:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A90B4409AA;
	Mon, 27 Mar 2023 01:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A90B4409AA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7A241BF3F4
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 01:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A634040242
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 01:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A634040242
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCdbCQCn8DSe for <devel@linuxdriverproject.org>;
 Mon, 27 Mar 2023 01:50:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4659D40101
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4659D40101
 for <devel@driverdev.osuosl.org>; Mon, 27 Mar 2023 01:50:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="426417326"
X-IronPort-AV: E=Sophos;i="5.98,293,1673942400"; d="scan'208";a="426417326"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 18:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747814845"
X-IronPort-AV: E=Sophos;i="5.98,293,1673942400"; d="scan'208";a="747814845"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 Mar 2023 18:49:59 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgbzi-000HSg-2C;
 Mon, 27 Mar 2023 01:49:58 +0000
Date: Mon, 27 Mar 2023 09:49:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 5daf1ac39a608d5b41616d5fbde47e3524b7f141
Message-ID: <6420f62d.1sw2t/Mc1nVQpp2B%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679881801; x=1711417801;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9obZJUCZfq/HUMPNUNdaRmwni39v94RZxOZEMsVzYjk=;
 b=INQS2aCCyZiJAwlwFfGNf524feaBE31f9MHCqiiWjtpvKsRHmwU2pIyq
 BndqoH+w257MGCSA39RvGX9rFn6gHBVST0ClvF9OREjTIsv2J0utEgG+1
 tVjISE6K6PMnPHSqsXs3dIPZe87eoa+36rc1ll21TXRNA0SzMK2Dsu4X6
 BAJXMODDhRA5yHQMptNhOAbZevGaGpg7glIZuGrNw2cO+Bz6nTLFr5GPP
 yaZBODDGGv20PqCiietwakj9JLJQSqHDq3exxqg4tOdH2FtZ0vT+xpXSf
 opj0KR5cq+G2nHU1C+oLHA7/w/YSfauSL6Sx2O+0Xjg5BBCL/F1XrBaZc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=INQS2aCC
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: 5daf1ac39a608d5b41616d5fbde47e3524b7f141  driver core: class: remove subsystem private pointer from struct class

elapsed time: 761m

configs tested: 96
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230326   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230326   clang
arm                  randconfig-r046-20230326   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230326   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230326   gcc  
csky                 randconfig-r031-20230326   gcc  
hexagon      buildonly-randconfig-r003-20230326   clang
hexagon              randconfig-r006-20230326   clang
hexagon              randconfig-r026-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r045-20230326   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230326   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r024-20230326   gcc  
loongarch            randconfig-r033-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r025-20230326   gcc  
microblaze           randconfig-r011-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r022-20230326   clang
nios2        buildonly-randconfig-r005-20230326   gcc  
nios2        buildonly-randconfig-r006-20230326   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r004-20230326   gcc  
openrisc             randconfig-r013-20230326   gcc  
openrisc             randconfig-r016-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230326   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230326   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r035-20230326   clang
s390                 randconfig-r044-20230326   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r001-20230326   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
