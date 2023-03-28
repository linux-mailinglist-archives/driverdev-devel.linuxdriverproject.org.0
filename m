Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 459F66CB321
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 03:26:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9FD1610F2;
	Tue, 28 Mar 2023 01:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9FD1610F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9SDgRvUb7js; Tue, 28 Mar 2023 01:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FF6C610F1;
	Tue, 28 Mar 2023 01:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF6C610F1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A42B21BF2F0
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 01:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86B88610F2
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 01:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86B88610F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Umh-l1EQHnsq for <devel@linuxdriverproject.org>;
 Tue, 28 Mar 2023 01:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 508D0610F1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 508D0610F1
 for <devel@driverdev.osuosl.org>; Tue, 28 Mar 2023 01:26:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="324325980"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="324325980"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 18:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="748211287"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="748211287"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 18:26:40 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgy6i-000I95-0M;
 Tue, 28 Mar 2023 01:26:40 +0000
Date: Tue, 28 Mar 2023 09:26:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 64806eea947c5f6f49456e6e288d76716e848302
Message-ID: <6422422a.+PRA218x1xaV4Br/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679966803; x=1711502803;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kRZM6RQkdlfbS6i6OxNKHDlhmvGAYupbmNohytHX4wU=;
 b=iFWH/7uGmIkmFR/O0QdxL4i95Xw3ex8uPX2LLsp35ht74Jl/JOQ7l582
 7GfPnpFzUkyRg/izirRibg+lOYKfIUXyTU2/NXuAbBm9k3T+PNIyatfBA
 KSWtt8Td9TeECWTLfZR38Qnb4hcP2GVHiitLLClqRyat3yAvWao9iVrLM
 sIGkNPZtyfyV0hu2HZn4zIsAx70hAK/XBal4jn61zqbY7Qcu2j63FWsMY
 UneKhAVKexPWvng9kzOMytPBUCMSAybAWLpSPkFKnvYJUBizjRSjVyu4n
 4/SKVdo2ep7adJ4uVynam/gMklaPxhjVUzM4BCY+XQ6v2YlhDqSoATrHq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iFWH/7uG
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
branch HEAD: 64806eea947c5f6f49456e6e288d76716e848302  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 734m

configs tested: 127
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230327   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230327   gcc  
alpha                randconfig-r033-20230327   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230326   clang
arm                  randconfig-r034-20230327   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230327   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230327   gcc  
csky                 randconfig-r015-20230327   gcc  
csky                 randconfig-r022-20230326   gcc  
hexagon      buildonly-randconfig-r003-20230322   clang
hexagon              randconfig-r023-20230326   clang
hexagon              randconfig-r026-20230326   clang
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
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230327   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230327   gcc  
ia64                 randconfig-r021-20230326   gcc  
ia64                 randconfig-r025-20230327   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230322   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230327   gcc  
loongarch            randconfig-r023-20230327   gcc  
loongarch            randconfig-r024-20230326   gcc  
loongarch            randconfig-r032-20230327   gcc  
loongarch            randconfig-r033-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230326   gcc  
microblaze   buildonly-randconfig-r006-20230322   gcc  
microblaze           randconfig-r001-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230327   clang
mips                 randconfig-r026-20230327   gcc  
mips                 randconfig-r031-20230327   clang
nios2        buildonly-randconfig-r004-20230322   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r024-20230327   gcc  
openrisc     buildonly-randconfig-r002-20230327   gcc  
openrisc             randconfig-r034-20230326   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230327   clang
riscv                randconfig-r036-20230327   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230326   clang
s390                 randconfig-r013-20230327   clang
s390                 randconfig-r035-20230326   clang
s390                 randconfig-r036-20230326   clang
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r014-20230327   gcc  
sh                   randconfig-r021-20230327   gcc  
sh                   randconfig-r035-20230327   gcc  
sparc        buildonly-randconfig-r003-20230327   gcc  
sparc        buildonly-randconfig-r005-20230327   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
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
x86_64               randconfig-r005-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230327   gcc  
xtensa               randconfig-r003-20230326   gcc  
xtensa               randconfig-r004-20230326   gcc  
xtensa               randconfig-r022-20230327   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
