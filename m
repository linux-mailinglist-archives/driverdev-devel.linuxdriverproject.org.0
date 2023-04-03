Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 602326D3B7E
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Apr 2023 03:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 127CF4158F;
	Mon,  3 Apr 2023 01:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 127CF4158F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bd_VL8mntXpN; Mon,  3 Apr 2023 01:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A82244155B;
	Mon,  3 Apr 2023 01:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A82244155B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5892C1BF36C
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 01:25:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29D79410CB
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 01:25:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29D79410CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HfqTbVInKMm for <devel@linuxdriverproject.org>;
 Mon,  3 Apr 2023 01:25:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDEE440980
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDEE440980
 for <devel@driverdev.osuosl.org>; Mon,  3 Apr 2023 01:25:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="325784983"
X-IronPort-AV: E=Sophos;i="5.98,313,1673942400"; d="scan'208";a="325784983"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 18:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="718355072"
X-IronPort-AV: E=Sophos;i="5.98,313,1673942400"; d="scan'208";a="718355072"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 02 Apr 2023 18:25:39 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pj8x0-000Nsd-1n;
 Mon, 03 Apr 2023 01:25:38 +0000
Date: Mon, 03 Apr 2023 09:24:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 1e76198bc357818f85964e07ebcffab8a6dacb57
Message-ID: <642a2ae0.R3gtDJ/eRTRSS4vs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680485141; x=1712021141;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O4J433yZeMEPvT8v6VImNIPVdU7RcG54VqjdjdTURnk=;
 b=YFY9qO/ni5UT2j4Ga6wF/OJWcQZMOWXbq7gn93BWRtyywREQxnyi8qBI
 LI63HQSy1Sv+tx10FhJXdctCOeWQ022BA2/BqXxmxqQchgHjBvj8j9l5L
 3BlVs+sUON/LDT15xU4NrUlVTI7rAiXfMwHIV4IDpx8Vun0KITepQ1ZFh
 joAyRnt1zriU4S0NjF1Z2HnLz6K3QWJogpTNkZoB2x1YPefW2zdNj7zOY
 xqwqKVnvfpL4X4QHmkbgkXWoLe7K5RlCSg+BVKODPjCdaMXSQcGj0STio
 5Z3ycp/gBgW9x//+x3uBNe/GkXbkGx0xd4/49LJMfni5Vo6LiIh3pvnKX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YFY9qO/n
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
branch HEAD: 1e76198bc357818f85964e07ebcffab8a6dacb57  MIPS: vpe-cmp: remove module owner pointer from struct class usage.

elapsed time: 961m

configs tested: 96
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230402   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r033-20230402   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230402   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r006-20230402   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r026-20230402   gcc  
arm                  randconfig-r046-20230402   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230402   clang
csky                                defconfig   gcc  
hexagon              randconfig-r022-20230402   clang
hexagon              randconfig-r035-20230402   clang
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
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230402   gcc  
m68k                 randconfig-r015-20230402   gcc  
microblaze           randconfig-r012-20230402   gcc  
microblaze           randconfig-r031-20230402   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230402   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230402   gcc  
nios2                randconfig-r011-20230402   gcc  
nios2                randconfig-r016-20230402   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230402   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230402   gcc  
s390                 randconfig-r044-20230402   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r032-20230402   gcc  
sparc        buildonly-randconfig-r001-20230402   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230402   gcc  
sparc                randconfig-r023-20230402   gcc  
sparc64      buildonly-randconfig-r004-20230402   gcc  
sparc64              randconfig-r005-20230402   gcc  
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
xtensa               randconfig-r036-20230402   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
