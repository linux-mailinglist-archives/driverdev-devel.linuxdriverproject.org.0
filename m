Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB9B6CAF0F
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Mar 2023 21:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9759610BB;
	Mon, 27 Mar 2023 19:45:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9759610BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGXkJkAQVGZl; Mon, 27 Mar 2023 19:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AD81610A2;
	Mon, 27 Mar 2023 19:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AD81610A2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2521BF409
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 19:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16D9D400E1
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 19:45:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16D9D400E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXBE1QrkYhkB for <devel@linuxdriverproject.org>;
 Mon, 27 Mar 2023 19:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90EE340946
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90EE340946
 for <devel@driverdev.osuosl.org>; Mon, 27 Mar 2023 19:45:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="341947549"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="341947549"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 12:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="929573545"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="929573545"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 27 Mar 2023 12:45:30 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgsmS-000HxZ-2Q;
 Mon, 27 Mar 2023 19:45:24 +0000
Date: Tue, 28 Mar 2023 03:44:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 91de7cdc784f28655eb97de3e66ede0ada94b6eb
Message-ID: <6421f223.xNViyWzsX5TAMIAi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679946332; x=1711482332;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=SRIvPeRXlEXeBsYZ+FIogH5RO1ZwNPyF0LtxWO2qqQY=;
 b=ZIcgA9VPfIIjiHhBhfv0FmP2dlyzFWN0iJ9fMXc2ZdE1PCl7/1n9u6Jr
 dOAXE2DoJqbCR9c8FZi7U0Tds2tkF5aSvkGoMp80qCjUUyueZL6YxCff4
 vNTsTuzil5n0+A9XDyWCu0l5LRXzEVR2hNAguSy2GANmUgBbTJvto7jCu
 XhWg+Gt4eN1nAUpJmcfA3dab4ZmMw0saTT2bssQzrOaMAy8ewMWXr6Mz1
 +vTvXNGfgoSTpVQsa4W8v+GC5AMthBVuQi16YHI55eLfew3cOklmuTzj9
 WwLkhtq4yOgnR/WjLpjIwrV87+oAlbGmx0ANWtBClMLlVzyElzxQ9LnDr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZIcgA9VP
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 91de7cdc784f28655eb97de3e66ede0ada94b6eb  staging: rtl8192e: remove rf_type from struct r8192_priv

elapsed time: 2888m

configs tested: 203
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230326   gcc  
alpha                randconfig-r012-20230326   gcc  
alpha                randconfig-r021-20230326   gcc  
alpha                randconfig-r032-20230327   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230326   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230326   gcc  
arc                  randconfig-r021-20230327   gcc  
arc                  randconfig-r032-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230326   gcc  
arm                  randconfig-r033-20230326   gcc  
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230327   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230326   gcc  
arm64                randconfig-r011-20230327   clang
arm64                randconfig-r026-20230327   clang
arm64                randconfig-r031-20230327   gcc  
arm64                randconfig-r033-20230327   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230327   gcc  
csky                 randconfig-r003-20230327   gcc  
csky                 randconfig-r015-20230327   gcc  
csky                 randconfig-r022-20230326   gcc  
csky                 randconfig-r025-20230327   gcc  
csky                 randconfig-r031-20230326   gcc  
csky                 randconfig-r036-20230327   gcc  
hexagon              randconfig-r031-20230326   clang
hexagon              randconfig-r034-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230327   gcc  
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230327   gcc  
i386                          randconfig-a005   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230327   clang
i386                          randconfig-a011   clang
i386                 randconfig-a012-20230327   clang
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230327   clang
i386                          randconfig-a013   clang
i386                 randconfig-a014-20230327   clang
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230327   clang
i386                          randconfig-a015   clang
i386                 randconfig-a016-20230327   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230327   gcc  
ia64                 randconfig-r031-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230326   gcc  
loongarch    buildonly-randconfig-r003-20230326   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230327   gcc  
loongarch            randconfig-r024-20230326   gcc  
loongarch            randconfig-r031-20230327   gcc  
loongarch            randconfig-r033-20230326   gcc  
loongarch            randconfig-r035-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                 randconfig-r006-20230326   gcc  
m68k                 randconfig-r022-20230327   gcc  
m68k                 randconfig-r035-20230326   gcc  
m68k                 randconfig-r035-20230327   gcc  
microblaze   buildonly-randconfig-r003-20230326   gcc  
microblaze           randconfig-r014-20230326   gcc  
microblaze           randconfig-r026-20230326   gcc  
microblaze           randconfig-r034-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230327   clang
mips                 randconfig-r004-20230327   clang
mips                 randconfig-r023-20230327   gcc  
mips                 randconfig-r024-20230327   gcc  
mips                 randconfig-r034-20230326   gcc  
mips                         rt305x_defconfig   gcc  
nios2        buildonly-randconfig-r006-20230326   gcc  
nios2        buildonly-randconfig-r006-20230327   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230326   gcc  
nios2                randconfig-r024-20230327   gcc  
openrisc     buildonly-randconfig-r001-20230326   gcc  
openrisc     buildonly-randconfig-r004-20230326   gcc  
openrisc             randconfig-r032-20230327   gcc  
openrisc             randconfig-r036-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230326   gcc  
parisc               randconfig-r005-20230326   gcc  
parisc               randconfig-r016-20230326   gcc  
parisc               randconfig-r021-20230326   gcc  
parisc               randconfig-r025-20230326   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc              randconfig-r002-20230327   gcc  
powerpc              randconfig-r003-20230326   clang
powerpc              randconfig-r004-20230327   gcc  
powerpc              randconfig-r021-20230327   clang
powerpc              randconfig-r032-20230326   clang
powerpc              randconfig-r034-20230327   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230327   clang
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230327   clang
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r004-20230326   gcc  
s390         buildonly-randconfig-r004-20230327   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230326   clang
s390                 randconfig-r006-20230327   gcc  
s390                 randconfig-r013-20230327   clang
s390                 randconfig-r023-20230326   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230326   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r014-20230327   gcc  
sh                   randconfig-r023-20230326   gcc  
sh                   randconfig-r026-20230326   gcc  
sh                   randconfig-r032-20230326   gcc  
sh                           se7724_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230326   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230326   gcc  
sparc                randconfig-r022-20230327   gcc  
sparc                randconfig-r035-20230326   gcc  
sparc                randconfig-r036-20230327   gcc  
sparc64      buildonly-randconfig-r006-20230326   gcc  
sparc64              randconfig-r003-20230327   gcc  
sparc64              randconfig-r004-20230326   gcc  
sparc64              randconfig-r005-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230327   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230327   gcc  
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230327   gcc  
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230327   gcc  
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230327   clang
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230327   clang
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230327   clang
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230327   clang
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230327   clang
x86_64                        randconfig-a016   clang
x86_64               randconfig-r033-20230327   gcc  
x86_64               randconfig-r035-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230326   gcc  
xtensa               randconfig-r001-20230327   gcc  
xtensa               randconfig-r033-20230326   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
