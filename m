Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61786BF1B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Mar 2023 20:33:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10CA8424BF;
	Fri, 17 Mar 2023 19:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10CA8424BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xv-Rjdf2UPt; Fri, 17 Mar 2023 19:33:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E198424CF;
	Fri, 17 Mar 2023 19:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E198424CF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B7BD1BF421
 for <devel@linuxdriverproject.org>; Fri, 17 Mar 2023 19:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4488A61B10
 for <devel@linuxdriverproject.org>; Fri, 17 Mar 2023 19:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4488A61B10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkylyHSiIEJH for <devel@linuxdriverproject.org>;
 Fri, 17 Mar 2023 19:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D52960AF4
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D52960AF4
 for <devel@driverdev.osuosl.org>; Fri, 17 Mar 2023 19:33:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="340703264"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="340703264"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 12:33:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="926251843"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="926251843"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 17 Mar 2023 12:33:17 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdFpF-0009Xg-0Q;
 Fri, 17 Mar 2023 19:33:17 +0000
Date: Sat, 18 Mar 2023 03:33:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 f4a8e711a66bd03681d61949181223c3437d5a87
Message-ID: <6414c07b.ZthPcIKRvIiEeQZr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679081600; x=1710617600;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=q5lCXD2SKmTfWaocTdcAuJXcjcJ9bHM60an6nUJFoto=;
 b=UNnxLnljPyj6thsC3C8iHk/ZgXdYeIY/eBYpDu54Y9tdcg7BVo8/W4G2
 xnQLlUeCbAsQUYkZIEwlfsXQIb2oKfBE3pMYB519cf7XlD/hDfh4d7Zv/
 Q+gUGOgMsLMzc1ATpE21IsKK9ccbl5/LXinGXsh5vclG6UZlqBYuFmfGE
 9OjSf0zmXro3VOlHoIveLIiGLdlH3dqr0o9D+0s1K2pz6da7o8ZYTTvXH
 WhX6W9OAzWIGh/TfYa3lVq3a6fPR2qIE662066fpddd5Nd/EErMOwiNc3
 ZIEGBLXd78YmzCiBJu4pTN/gZzqoMuDI9htkXjUqC3jgDMYRdThWBGN+f
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UNnxLnlj
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: f4a8e711a66bd03681d61949181223c3437d5a87  Staging: octeon: Fix line ending with '('

elapsed time: 720m

configs tested: 158
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230313   gcc  
alpha                randconfig-r016-20230312   gcc  
alpha                randconfig-r034-20230313   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230312   gcc  
arc                  randconfig-r013-20230313   gcc  
arc                  randconfig-r022-20230313   gcc  
arc                  randconfig-r026-20230312   gcc  
arc                  randconfig-r026-20230315   gcc  
arc                  randconfig-r031-20230312   gcc  
arc                  randconfig-r031-20230313   gcc  
arc                  randconfig-r034-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230312   gcc  
arm                  randconfig-r021-20230315   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230313   gcc  
arm64                randconfig-r011-20230312   gcc  
arm64                randconfig-r032-20230313   gcc  
arm64                randconfig-r034-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230312   gcc  
csky                 randconfig-r035-20230312   gcc  
hexagon              randconfig-r004-20230312   clang
hexagon              randconfig-r033-20230313   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r012-20230312   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230313   gcc  
loongarch            randconfig-r022-20230312   gcc  
loongarch            randconfig-r036-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230313   gcc  
m68k                 randconfig-r016-20230313   gcc  
m68k                 randconfig-r023-20230315   gcc  
m68k                 randconfig-r031-20230313   gcc  
microblaze           randconfig-r003-20230312   gcc  
microblaze           randconfig-r005-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2        buildonly-randconfig-r001-20230313   gcc  
nios2        buildonly-randconfig-r006-20230313   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230313   gcc  
nios2                randconfig-r012-20230313   gcc  
nios2                randconfig-r036-20230313   gcc  
openrisc             randconfig-r022-20230315   gcc  
openrisc             randconfig-r032-20230312   gcc  
openrisc             randconfig-r036-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230312   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r026-20230313   gcc  
parisc               randconfig-r033-20230313   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230313   gcc  
riscv                randconfig-r014-20230312   gcc  
riscv                randconfig-r024-20230312   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230312   gcc  
s390         buildonly-randconfig-r002-20230312   gcc  
s390         buildonly-randconfig-r003-20230312   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230313   gcc  
s390                 randconfig-r021-20230312   gcc  
s390                 randconfig-r024-20230315   clang
s390                 randconfig-r025-20230312   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230313   gcc  
sh           buildonly-randconfig-r003-20230313   gcc  
sh           buildonly-randconfig-r005-20230313   gcc  
sh                            migor_defconfig   gcc  
sh                   randconfig-r023-20230313   gcc  
sh                           se7712_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230315   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64              randconfig-r001-20230313   gcc  
sparc64              randconfig-r004-20230313   gcc  
sparc64              randconfig-r025-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r004-20230313   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64               randconfig-k001-20230313   clang
x86_64               randconfig-r033-20230313   gcc  
x86_64               randconfig-r035-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230312   gcc  
xtensa               randconfig-r015-20230312   gcc  
xtensa               randconfig-r023-20230312   gcc  
xtensa               randconfig-r032-20230313   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
