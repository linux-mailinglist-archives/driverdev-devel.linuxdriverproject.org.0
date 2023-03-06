Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2246ACF91
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Mar 2023 21:52:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAF2460071;
	Mon,  6 Mar 2023 20:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAF2460071
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Sh0U5CTuZyU; Mon,  6 Mar 2023 20:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F2D961017;
	Mon,  6 Mar 2023 20:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F2D961017
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8810F1BF311
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 20:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F476416CD
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 20:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F476416CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YUZK_g45Y-Tz for <devel@linuxdriverproject.org>;
 Mon,  6 Mar 2023 20:52:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13D96416C7
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13D96416C7
 for <devel@driverdev.osuosl.org>; Mon,  6 Mar 2023 20:52:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="421946867"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="421946867"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 12:52:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="676309738"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="676309738"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 06 Mar 2023 12:52:34 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZHow-0000cq-0d;
 Mon, 06 Mar 2023 20:52:34 +0000
Date: Tue, 07 Mar 2023 04:51:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 7cc583a595c9347df8278873b839bcf8316ddadf
Message-ID: <6406525a.blS7rYFmJR8AtgS0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678135957; x=1709671957;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JpbPi6ktwk76ggNoBVL+MhtTC35QqXLMMaPHrDUzp+w=;
 b=GiPtApIuey+oF+bdQvcKLIgPWNSeW4EoepCi2EvyfEru4RhH/73Tbsqf
 4Nzv8Jn4NuN7zQJmxy1TYIwxIuo2OYGbzAhds72rkQfUpfny76YXb5Xke
 80Ydn3yuicxWFfM7K8M5BTExyH3Pk3/wfLifekx3YQ/ef/1D4lm2aAgIF
 FeVA8/c5ZGSphrnyGq+ZOZboBfAzVhVP9VVkvNKcow9EEyfU7Ev/0TeIu
 Mb8O+soykiXRuRx/oKClXn/eDw2Y2Q1SWqg+bklALW+nx/+JF0aEAeoJ3
 wG+QuNzpaOiRlaF7BvG6NqoKX2kwl6JyLsCCk5VL9857BHZMevUYRIt/2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GiPtApIu
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 7cc583a595c9347df8278873b839bcf8316ddadf  readfile.2: new page describing readfile(2)

elapsed time: 838m

configs tested: 119
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230306   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230306   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230306   gcc  
arc                  randconfig-r012-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230305   gcc  
arm                  randconfig-r021-20230306   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230305   clang
arm64        buildonly-randconfig-r006-20230305   clang
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230306   gcc  
arm64                randconfig-r004-20230305   clang
arm64                randconfig-r024-20230305   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r003-20230305   clang
hexagon              randconfig-r022-20230306   clang
hexagon              randconfig-r023-20230306   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230305   gcc  
ia64                 randconfig-r005-20230306   gcc  
ia64                 randconfig-r013-20230306   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230305   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230305   gcc  
loongarch            randconfig-r036-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r004-20230305   gcc  
microblaze           randconfig-r032-20230306   gcc  
microblaze           randconfig-r033-20230306   gcc  
microblaze           randconfig-r034-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r002-20230306   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230306   clang
powerpc              randconfig-r023-20230305   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230305   clang
riscv                randconfig-r024-20230306   clang
riscv                randconfig-r025-20230306   clang
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230305   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230306   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r006-20230306   gcc  
sh                   randconfig-r026-20230305   gcc  
sh                   randconfig-r031-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230306   gcc  
sparc64              randconfig-r022-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r003-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230306   gcc  
xtensa               randconfig-r002-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
