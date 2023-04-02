Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15A26D3A6A
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Apr 2023 23:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96C0E4033F;
	Sun,  2 Apr 2023 21:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96C0E4033F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qpb481i3VuSS; Sun,  2 Apr 2023 21:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43C31400D9;
	Sun,  2 Apr 2023 21:31:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43C31400D9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 861C21BF3AE
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 21:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F5164033F
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 21:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F5164033F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EIhNgIXZAMaZ for <devel@linuxdriverproject.org>;
 Sun,  2 Apr 2023 21:31:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16464400D9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16464400D9
 for <devel@driverdev.osuosl.org>; Sun,  2 Apr 2023 21:31:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="343458194"
X-IronPort-AV: E=Sophos;i="5.98,313,1673942400"; d="scan'208";a="343458194"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 14:31:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="679236732"
X-IronPort-AV: E=Sophos;i="5.98,313,1673942400"; d="scan'208";a="679236732"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 02 Apr 2023 14:31:19 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pj5IE-000NhU-2h;
 Sun, 02 Apr 2023 21:31:18 +0000
Date: Mon, 03 Apr 2023 05:30:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 43ba3d4af7a73ae958207caada6af0612d67f08e
Message-ID: <6429f3ef.lLyn/fHGlbds1sYz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680471082; x=1712007082;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=d7G3MFpHX/lCsznpvBzKMyYEX0k0NF3JiVscWkNPM4k=;
 b=ftngQxGt1qVJI36AK32KykvyeqMR6rVMp7LRn7Ls4ZkkfF5RmcNSPZ4B
 k6cdNyGGDn4FigukM1+YnSV1dBeiwiIuJPUn7gAdQrVrkCXBuUORppWzd
 /upS7dvt9wirldtRXiknTDHHaRUoGlmEglXBq1V4ZVJj0iwYUGigrXvry
 b3rH8FSx7f4ETw+RKMpHP6StyAOaEAxTIFP405vISpnOocsxmxzbnQpd8
 ZaevVQqvUz0MS+ZfiH7IRzrHaTkIXlB5VtIJgSyAiLauYz7ydNL7xcrjP
 yUvPfl0HCCMCOmo7CUeaaJv7edxliXS2Nz6YwXY0vljanSaQ5V7LH/Xy0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ftngQxGt
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
branch HEAD: 43ba3d4af7a73ae958207caada6af0612d67f08e  pktcdvd: simplify the class_pktcdvd logic

Unverified Warning (likely false positive, please contact us if interested):

drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1246 inno_hdmi_phy_probe() warn: 'inno->refpclk' from clk_prepare_enable() not released on lines: 1211.
drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1246 inno_hdmi_phy_probe() warn: 'inno->sysclk' from clk_prepare_enable() not released on lines: 1211.

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- parisc-randconfig-m041-20230402
    |-- drivers-phy-rockchip-phy-rockchip-inno-hdmi.c-inno_hdmi_phy_probe()-warn:inno-refpclk-from-clk_prepare_enable()-not-released-on-lines:.
    `-- drivers-phy-rockchip-phy-rockchip-inno-hdmi.c-inno_hdmi_phy_probe()-warn:inno-sysclk-from-clk_prepare_enable()-not-released-on-lines:.

elapsed time: 726m

configs tested: 131
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230402   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230402   gcc  
alpha                randconfig-r015-20230402   gcc  
alpha                randconfig-r021-20230402   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230402   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r036-20230402   gcc  
arc                  randconfig-r043-20230402   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230402   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230402   clang
arm                  randconfig-r026-20230402   gcc  
arm                  randconfig-r034-20230402   clang
arm                  randconfig-r046-20230402   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230402   gcc  
arm64                randconfig-r015-20230402   clang
csky                                defconfig   gcc  
csky                 randconfig-r012-20230402   gcc  
hexagon              randconfig-r005-20230402   clang
hexagon              randconfig-r041-20230402   clang
hexagon              randconfig-r045-20230402   clang
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
ia64         buildonly-randconfig-r004-20230402   gcc  
ia64         buildonly-randconfig-r006-20230402   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r035-20230402   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230402   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230402   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r005-20230402   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230402   clang
mips                     loongson2k_defconfig   clang
mips                 randconfig-r014-20230402   gcc  
mips                 randconfig-r032-20230402   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230402   gcc  
nios2                randconfig-r003-20230402   gcc  
nios2                randconfig-r004-20230402   gcc  
nios2                randconfig-r024-20230402   gcc  
nios2                randconfig-r033-20230402   gcc  
nios2                randconfig-r036-20230402   gcc  
openrisc             randconfig-r011-20230402   gcc  
openrisc             randconfig-r035-20230402   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc               randconfig-r011-20230402   gcc  
parisc               randconfig-r023-20230402   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230402   gcc  
powerpc              randconfig-r012-20230402   clang
powerpc              randconfig-r016-20230402   clang
powerpc              randconfig-r021-20230402   clang
powerpc              randconfig-r026-20230402   clang
powerpc              randconfig-r034-20230402   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230402   clang
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230402   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230402   gcc  
s390                 randconfig-r013-20230402   clang
s390                 randconfig-r044-20230402   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r023-20230402   gcc  
sh                           se7724_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc        buildonly-randconfig-r002-20230402   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r032-20230402   gcc  
sparc                randconfig-r033-20230402   gcc  
sparc64      buildonly-randconfig-r003-20230402   gcc  
sparc64              randconfig-r014-20230402   gcc  
sparc64              randconfig-r016-20230402   gcc  
sparc64              randconfig-r025-20230402   gcc  
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
xtensa       buildonly-randconfig-r004-20230402   gcc  
xtensa               randconfig-r003-20230402   gcc  
xtensa               randconfig-r022-20230402   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
