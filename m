Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDA169292E
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Feb 2023 22:23:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 007D2415AA;
	Fri, 10 Feb 2023 21:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 007D2415AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCz9lb9V7O3o; Fri, 10 Feb 2023 21:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B551B4159D;
	Fri, 10 Feb 2023 21:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B551B4159D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50D061BF276
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 21:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2955A4198B
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 21:23:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2955A4198B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P1eUPDUbRWF5 for <devel@linuxdriverproject.org>;
 Fri, 10 Feb 2023 21:23:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7360E41714
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7360E41714
 for <devel@driverdev.osuosl.org>; Fri, 10 Feb 2023 21:23:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="318547510"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="318547510"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 13:23:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="670133692"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="670133692"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 10 Feb 2023 13:23:48 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQarz-000641-0s;
 Fri, 10 Feb 2023 21:23:47 +0000
Date: Sat, 11 Feb 2023 05:23:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2] BUILD REGRESSION
 edb07d61689645fa19378a7a18451f91c8414b5a
Message-ID: <63e6b5e0.5voADEZrDv0Rkcyh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676064230; x=1707600230;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KMmT4q4siPTHDvRRIXtXnQIDPwhVUozq2X9YaDY1zoo=;
 b=JPWsGxR7KD5UXigzJ1bRDoYMrq1uTuPAlOFLiIJn/ejejgYo1A3HbpUC
 udq8dri+dPiqmvLS10w6HViBqxS1MASOhdx4gJWzYr80wTGo4THxckrZl
 zNpuFZhnz0whRkpOvO7JTn0YLTGdHptocaX7HXS0x56uIf+BO53tmwztM
 6mId25sUp1hK9eklG/zNuaAazQVkyTCDDAorWAwc8qOt5UEbc/Yw7RB9t
 yz2bqPmtBr7RRkKqFNPx4uzFY+O7Zj0bkrYiZMJEGdpjriKldAG6c7ghM
 LmAd9FIz795kH/DGC1UlI88oBR03A5J1EF/wS3i0Nyae6N8DrSOZ/R4Yu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JPWsGxR7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const-2
branch HEAD: edb07d61689645fa19378a7a18451f91c8414b5a  driver core: mark struct device's bus_type as const.

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302110025.Hi1M9ULU-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202302110229.u91u71ws-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/irqchip/irq-mbigen.c:248:30: error: no member named 'dev_root' in 'struct bus_type'
drivers/irqchip/irq-mbigen.c:248:43: error: 'struct bus_type' has no member named 'dev_root'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-allyesconfig
|   `-- drivers-irqchip-irq-mbigen.c:error:struct-bus_type-has-no-member-named-dev_root
`-- arm64-defconfig
    `-- drivers-irqchip-irq-mbigen.c:error:struct-bus_type-has-no-member-named-dev_root
clang_recent_errors
|-- arm64-randconfig-r016-20230210
|   `-- drivers-irqchip-irq-mbigen.c:error:no-member-named-dev_root-in-struct-bus_type
`-- arm64-randconfig-r024-20230210
    `-- drivers-irqchip-irq-mbigen.c:error:no-member-named-dev_root-in-struct-bus_type

elapsed time: 753m

configs tested: 73
configs skipped: 3

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230210
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230210
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
hexagon              randconfig-r041-20230210
hexagon              randconfig-r045-20230210
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20230210
s390                 randconfig-r044-20230210
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
