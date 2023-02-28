Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF176A600E
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 20:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9C4C61205;
	Tue, 28 Feb 2023 19:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9C4C61205
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iIDC5LTpUPO1; Tue, 28 Feb 2023 19:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B7F9611C7;
	Tue, 28 Feb 2023 19:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B7F9611C7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E49F1BF369
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D9AE4031F
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D9AE4031F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbK0KdrpnAP5 for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 19:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D867140400
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D867140400
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 19:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="399018975"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="399018975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="667569745"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="667569745"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2023 11:58:51 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pX67e-0005c7-0L;
 Tue, 28 Feb 2023 19:58:50 +0000
Date: Wed, 01 Mar 2023 03:58:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 5447398fb1728b20784bfde814b2d524b9cb051a
Message-ID: <63fe5cdc.gIoi1NLxhB8yH7fF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677614333; x=1709150333;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0d6Kh0I39JLM3OOJaBBpD+TFSFKM3vpL/9c6Jbyqwr4=;
 b=KG6jtV3BsYzxTdwklj7pnOzsAzB3QGtkR9AAHwCRWdYQDmGVDtC3Uq1X
 Rcnpe9kY3V4RKFR9I8wdJmFgh5nYYutE6ZuwD1XsOXMTRVEsq/qHhwB82
 bhAcXfK5sAuxz0sOgPnY521ifAcPHSGYvMQtDGWSa94WQCoq2FcqlbGR1
 qIf3E9JCLATX6Dfrv/CtiDuV5UNwGrcX5sex9BPL0oHC0O88QZ1Qpz8ay
 zyuSJRy9DFFXEEUo4M3aorZfJ2cPlsPcXDZF7EnLPblucliE7lTYhNlc9
 iF5rlyB/Q3+EXLDhXrCpKwaIP8c0d7eUnxMa2ieGYGEgcLBLmkjiLroYj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KG6jtV3B
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 5447398fb1728b20784bfde814b2d524b9cb051a  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 723m

configs tested: 143
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230227   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230227   gcc  
alpha                randconfig-r034-20230226   gcc  
alpha                randconfig-r035-20230227   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230226   gcc  
arc                  randconfig-r011-20230228   gcc  
arc                  randconfig-r021-20230226   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          ep93xx_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                           omap1_defconfig   clang
arm                        oxnas_v6_defconfig   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm                         socfpga_defconfig   clang
arm                          sp7021_defconfig   clang
arm                           tegra_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230226   gcc  
arm64                randconfig-r005-20230226   gcc  
arm64                randconfig-r031-20230227   clang
arm64                randconfig-r034-20230227   clang
csky         buildonly-randconfig-r002-20230227   gcc  
csky         buildonly-randconfig-r006-20230226   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230228   gcc  
csky                 randconfig-r023-20230227   gcc  
hexagon              randconfig-r024-20230227   clang
hexagon              randconfig-r035-20230226   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230227   clang
i386                 randconfig-a002-20230227   clang
i386                 randconfig-a003-20230227   clang
i386                 randconfig-a004-20230227   clang
i386                 randconfig-a005-20230227   clang
i386                 randconfig-a006-20230227   clang
i386                 randconfig-a011-20230227   gcc  
i386                 randconfig-a012-20230227   gcc  
i386                 randconfig-a013-20230227   gcc  
i386                 randconfig-a014-20230227   gcc  
i386                 randconfig-a015-20230227   gcc  
i386                 randconfig-a016-20230227   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230227   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230226   gcc  
ia64                 randconfig-r022-20230227   gcc  
ia64                 randconfig-r032-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230227   gcc  
loongarch            randconfig-r031-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r014-20230228   gcc  
m68k                 randconfig-r025-20230227   gcc  
m68k                 randconfig-r033-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230227   gcc  
mips                 randconfig-r036-20230227   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230226   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r026-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r025-20230226   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc              randconfig-r022-20230226   clang
powerpc              randconfig-r036-20230226   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230227   clang
riscv                randconfig-r005-20230227   clang
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230227   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh           buildonly-randconfig-r001-20230226   gcc  
sh           buildonly-randconfig-r003-20230226   gcc  
sh           buildonly-randconfig-r004-20230226   gcc  
sh           buildonly-randconfig-r006-20230227   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                   randconfig-r015-20230228   gcc  
sh                   randconfig-r033-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230227   gcc  
sparc                randconfig-r004-20230226   gcc  
sparc                randconfig-r032-20230226   gcc  
sparc64      buildonly-randconfig-r001-20230227   gcc  
sparc64      buildonly-randconfig-r005-20230226   gcc  
um                               alldefconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230227   clang
x86_64               randconfig-a002-20230227   clang
x86_64               randconfig-a003-20230227   clang
x86_64               randconfig-a004-20230227   clang
x86_64               randconfig-a005-20230227   clang
x86_64               randconfig-a006-20230227   clang
x86_64               randconfig-a011-20230227   gcc  
x86_64               randconfig-a012-20230227   gcc  
x86_64               randconfig-a013-20230227   gcc  
x86_64               randconfig-a014-20230227   gcc  
x86_64               randconfig-a015-20230227   gcc  
x86_64               randconfig-a016-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
