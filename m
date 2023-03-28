Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3F66CCA48
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 20:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82E7941BC0;
	Tue, 28 Mar 2023 18:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82E7941BC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wV6bplZwudwh; Tue, 28 Mar 2023 18:52:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE1A341BCD;
	Tue, 28 Mar 2023 18:52:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE1A341BCD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2A151BF3DD
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 18:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8980C4036A
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 18:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8980C4036A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YaVKeNDi-vWa for <devel@linuxdriverproject.org>;
 Tue, 28 Mar 2023 18:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B46A140147
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B46A140147
 for <devel@driverdev.osuosl.org>; Tue, 28 Mar 2023 18:52:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="343071528"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="343071528"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 11:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="794926875"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="794926875"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Mar 2023 11:52:22 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phEQb-000Ipl-0b;
 Tue, 28 Mar 2023 18:52:17 +0000
Date: Wed, 29 Mar 2023 02:51:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 517d4927aabe488144863e72b52bb3e506fecd34
Message-ID: <64233738.nUk3qBEQ9JuAFhES%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680029545; x=1711565545;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3bxqGJmCED/TtXOQpgwb87RbKix+sYRmNmwecHOI8nA=;
 b=Z+AauWFmyBYA8A67TzRWWdjD6eEl16Cy1bBZ1WgTff138Eejq1RrsAOv
 DQm4cTBfZ2DRoVLjNPllUaDSKqlJPsLRM06NWIX9RUNGFlmgmueCmLkKF
 zs7bCzp7MwNu9ldWvfz09rlAZFclmN1tv0cqOs25nHX5RynGDHYQ9DN3v
 aLEopkBEABs+uzGG4S2XDrdfzabsBKgsWU5xGdqmUrK8wYAasHpWkDJIA
 noHVSxaAx+/7ofV2Gtzb7oWi2YUZwJQGtpNzOUVCvi2uGg1Dec1Gz9Mma
 T7WX2ZsnIV0uQ8VCH+dMr1FXS7p1WibrczCVCxWxE8WU8slbkGUmBYZIg
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z+AauWFm
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: 517d4927aabe488144863e72b52bb3e506fecd34  driver core: bus: constify class_unregister/destroy()

elapsed time: 726m

configs tested: 177
configs skipped: 18

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230326   gcc  
alpha        buildonly-randconfig-r004-20230327   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230328   gcc  
alpha                randconfig-r006-20230327   gcc  
alpha                randconfig-r033-20230327   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230327   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230328   gcc  
arc                  randconfig-r031-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230326   gcc  
arm                  randconfig-r016-20230326   clang
arm                  randconfig-r016-20230327   gcc  
arm                  randconfig-r025-20230326   clang
arm                  randconfig-r034-20230327   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230326   clang
arm64                randconfig-r005-20230327   gcc  
csky         buildonly-randconfig-r001-20230327   gcc  
csky         buildonly-randconfig-r003-20230326   gcc  
csky         buildonly-randconfig-r004-20230327   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230326   gcc  
csky                 randconfig-r012-20230326   gcc  
csky                 randconfig-r015-20230326   gcc  
hexagon      buildonly-randconfig-r002-20230327   clang
hexagon      buildonly-randconfig-r004-20230326   clang
hexagon              randconfig-r013-20230326   clang
hexagon              randconfig-r036-20230326   clang
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
i386                 randconfig-r022-20230327   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r033-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230326   gcc  
loongarch    buildonly-randconfig-r006-20230326   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r024-20230326   gcc  
loongarch            randconfig-r032-20230327   gcc  
loongarch            randconfig-r033-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230326   gcc  
m68k                 randconfig-r036-20230327   gcc  
microblaze   buildonly-randconfig-r004-20230326   gcc  
microblaze           randconfig-r002-20230328   gcc  
microblaze           randconfig-r004-20230327   gcc  
microblaze           randconfig-r026-20230326   gcc  
microblaze           randconfig-r034-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230326   gcc  
mips                 randconfig-r002-20230327   clang
mips                 randconfig-r014-20230327   gcc  
mips                 randconfig-r015-20230326   clang
mips                 randconfig-r016-20230326   clang
mips                 randconfig-r031-20230327   clang
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230326   gcc  
nios2                randconfig-r023-20230327   gcc  
openrisc             randconfig-r006-20230328   gcc  
openrisc             randconfig-r014-20230326   gcc  
openrisc             randconfig-r034-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230327   gcc  
parisc               randconfig-r003-20230327   gcc  
parisc               randconfig-r011-20230327   gcc  
parisc               randconfig-r012-20230327   gcc  
parisc               randconfig-r013-20230326   gcc  
parisc               randconfig-r016-20230327   gcc  
parisc               randconfig-r021-20230326   gcc  
parisc               randconfig-r022-20230327   gcc  
parisc               randconfig-r025-20230326   gcc  
parisc               randconfig-r026-20230326   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r014-20230327   clang
powerpc              randconfig-r024-20230326   gcc  
powerpc              randconfig-r031-20230327   gcc  
powerpc              randconfig-r032-20230327   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r024-20230327   clang
riscv                randconfig-r036-20230327   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230326   gcc  
s390         buildonly-randconfig-r006-20230327   clang
s390                                defconfig   gcc  
s390                 randconfig-r003-20230326   clang
s390                 randconfig-r013-20230327   clang
s390                 randconfig-r015-20230327   clang
s390                 randconfig-r022-20230326   gcc  
s390                 randconfig-r024-20230327   clang
s390                 randconfig-r035-20230326   clang
s390                 randconfig-r036-20230326   clang
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230326   gcc  
sh                   randconfig-r023-20230326   gcc  
sh                   randconfig-r035-20230326   gcc  
sh                   randconfig-r035-20230327   gcc  
sparc        buildonly-randconfig-r003-20230327   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230326   gcc  
sparc                randconfig-r021-20230326   gcc  
sparc                randconfig-r021-20230327   gcc  
sparc                randconfig-r025-20230327   gcc  
sparc                randconfig-r026-20230327   gcc  
sparc64      buildonly-randconfig-r002-20230327   gcc  
sparc64      buildonly-randconfig-r005-20230327   gcc  
sparc64              randconfig-r001-20230328   gcc  
sparc64              randconfig-r004-20230328   gcc  
sparc64              randconfig-r026-20230327   gcc  
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
x86_64               randconfig-r013-20230327   clang
x86_64               randconfig-r021-20230327   clang
x86_64               randconfig-r033-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230326   gcc  
xtensa               randconfig-r011-20230326   gcc  
xtensa               randconfig-r015-20230327   gcc  
xtensa               randconfig-r035-20230327   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
