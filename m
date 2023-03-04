Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBC26AA7EB
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Mar 2023 05:02:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A886C416B4;
	Sat,  4 Mar 2023 04:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A886C416B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUidanfwyMer; Sat,  4 Mar 2023 04:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67611400A6;
	Sat,  4 Mar 2023 04:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67611400A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B441C1BF852
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 04:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A03541D48
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 04:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A03541D48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cn9IdxuQInvT for <devel@linuxdriverproject.org>;
 Sat,  4 Mar 2023 04:02:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F126E41D4E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F126E41D4E
 for <devel@driverdev.osuosl.org>; Sat,  4 Mar 2023 04:02:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="333940361"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="333940361"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 20:02:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="675585088"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="675585088"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 03 Mar 2023 20:02:33 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYJ6P-0001qQ-0T;
 Sat, 04 Mar 2023 04:02:33 +0000
Date: Sat, 04 Mar 2023 12:01:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 bf0dbb0f81cb96cbbcbdc0a470394392b5af193f
Message-ID: <6402c2b0.WNddRdlXP6gsacdL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677902556; x=1709438556;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KKgnyeaBTYNJJUYopYItd0uwqc1Sw/mcq/lIuQ+Lvt0=;
 b=JuwWZMFgZwVN4STxfJZmhyT3vaNGtJC4/hMOfn0CN54nXszf6eVxaauk
 OWZ7WJZ+cHTPB2yFuMngDk+/JEG7j5hAQgWMrTbS8Urn63EutXZjGU6Uo
 QFjZbundL2oR1tKp96AyEfcNyhdTYKl57rHDuoRgyL3hU9+G7WxWnIa00
 W547ascCD14s6i26GauIATHV4J4bWVKgqP7eLDnXag+H47dnOElPfmCIQ
 nFR/KHryPaqUflt+C509WwA+nLSIQNO1/o7J5vGbrb2VhnrKUJqEqvWbW
 FkEo3wosjBgLYFAij8tKCjtMwJuMkPnsCYAca6Qv2SByTQQbnD3e1HTj4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JuwWZMFg
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: bf0dbb0f81cb96cbbcbdc0a470394392b5af193f  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 726m

configs tested: 105
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230302   gcc  
alpha                randconfig-r025-20230302   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230302   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230302   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230302   clang
arm                  randconfig-r022-20230302   gcc  
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230302   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r026-20230302   clang
csky                                defconfig   gcc  
csky                 randconfig-r014-20230302   gcc  
csky                 randconfig-r023-20230302   gcc  
csky                 randconfig-r034-20230302   gcc  
csky                 randconfig-r035-20230302   gcc  
hexagon              randconfig-r006-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
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
ia64                 randconfig-r016-20230303   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230302   gcc  
m68k                 randconfig-r003-20230302   gcc  
microblaze           randconfig-r021-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r015-20230302   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230302   gcc  
openrisc     buildonly-randconfig-r006-20230302   gcc  
openrisc             randconfig-r011-20230302   gcc  
openrisc             randconfig-r012-20230303   gcc  
openrisc             randconfig-r014-20230303   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230302   gcc  
parisc               randconfig-r031-20230302   gcc  
parisc               randconfig-r033-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230303   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230302   clang
s390                 randconfig-r015-20230303   gcc  
s390                 randconfig-r024-20230302   clang
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r002-20230302   gcc  
sparc        buildonly-randconfig-r003-20230302   gcc  
sparc                               defconfig   gcc  
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
