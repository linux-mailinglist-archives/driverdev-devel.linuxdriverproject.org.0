Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B61D6CB457
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 04:50:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E8DC8208A;
	Tue, 28 Mar 2023 02:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E8DC8208A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89bknyPveHib; Tue, 28 Mar 2023 02:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5F4682074;
	Tue, 28 Mar 2023 02:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5F4682074
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 672FA1BF390
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 02:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D8D760F1D
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 02:50:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D8D760F1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ckb50WblwA_R for <devel@linuxdriverproject.org>;
 Tue, 28 Mar 2023 02:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BE2160C05
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BE2160C05
 for <devel@driverdev.osuosl.org>; Tue, 28 Mar 2023 02:50:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="337955492"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="337955492"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 19:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="748230297"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="748230297"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 19:50:44 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgzQ3-000IDO-3A;
 Tue, 28 Mar 2023 02:50:43 +0000
Date: Tue, 28 Mar 2023 10:50:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 55dfb460182e300676ae236da915d39b3cf31567
Message-ID: <64225602.7nqU4CfIifePcmNd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679971846; x=1711507846;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LdxAUC155+6dN3LX6xrr4pxpqNINFSjffgtImuOB2Hk=;
 b=DsOmjlGEeXTR2hFz2NXcAwAYGYmGwZzrib6OA2+LdwE4ybzL17Vwgk4v
 4QNEKSEdEZ6Ro8Czur06YX0o7pX7fIb2Sear0t1JTl8hEcvJ9g+lXqmdO
 hpexbD14EpzPTBvqAvCuI7RFLb9geWbCo94FVBhna62qV1EY4qLFgjNNg
 SWj7Vc6mBpsrIXo9DB9lFED1xABZQcKBiVsSpA16FoTp7aMCASulWG19S
 DE/QSagrWxJkmAlDNzCS3nmXWBIEDp92u1izkgKUN4TxpQHoGxyu6exqJ
 9c8vg+hzJVmuGkrFs3ws2jA+TwfeZzY+zqGZdFn4w5RprP3oJ+gUL3H56
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DsOmjlGE
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 55dfb460182e300676ae236da915d39b3cf31567  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 849m

configs tested: 121
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230327   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230326   gcc  
alpha                randconfig-r036-20230326   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r034-20230327   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230327   clang
arm                  randconfig-r031-20230327   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230327   gcc  
arm64                randconfig-r002-20230327   gcc  
arm64                randconfig-r013-20230326   gcc  
arm64                randconfig-r026-20230327   clang
csky         buildonly-randconfig-r001-20230327   gcc  
csky         buildonly-randconfig-r003-20230326   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230327   gcc  
hexagon      buildonly-randconfig-r002-20230327   clang
hexagon      buildonly-randconfig-r004-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                 randconfig-r004-20230327   gcc  
i386                 randconfig-r014-20230327   clang
i386                 randconfig-r032-20230327   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230327   gcc  
mips                 randconfig-r033-20230327   clang
nios2                               defconfig   gcc  
nios2                randconfig-r024-20230327   gcc  
openrisc             randconfig-r033-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230326   gcc  
parisc               randconfig-r036-20230327   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r021-20230327   clang
powerpc              randconfig-r031-20230326   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230326   gcc  
riscv                randconfig-r016-20230327   clang
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230326   gcc  
s390         buildonly-randconfig-r006-20230327   clang
s390                                defconfig   gcc  
s390                 randconfig-r015-20230327   clang
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230326   gcc  
sh                   randconfig-r035-20230326   gcc  
sparc        buildonly-randconfig-r003-20230327   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230327   gcc  
sparc                randconfig-r012-20230327   gcc  
sparc                randconfig-r014-20230326   gcc  
sparc                randconfig-r022-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230327   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64               randconfig-r003-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230327   gcc  
xtensa               randconfig-r032-20230326   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
