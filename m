Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 798D56A600D
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 20:59:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 935E3611A9;
	Tue, 28 Feb 2023 19:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 935E3611A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NP9O-bZAj33Y; Tue, 28 Feb 2023 19:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A92A6119C;
	Tue, 28 Feb 2023 19:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A92A6119C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3068E1BF94D
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09C4D60AA5
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C4D60AA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vz7sRxnmIKzC for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 19:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6B67605E0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E6B67605E0
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 19:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="399018977"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="399018977"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="667569746"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="667569746"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2023 11:58:51 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pX67e-0005cB-0T;
 Tue, 28 Feb 2023 19:58:50 +0000
Date: Wed, 01 Mar 2023 03:58:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 42660ac1a45a7dc0f4e4254d742c3a66b7b41315
Message-ID: <63fe5cd5.otVB6y2HbF632Lh6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677614333; x=1709150333;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8P64CMhyfsWDhTEbYKhuL6QLX1Ltc8X5L+Ma/j+JTdY=;
 b=SvXRimvARo+LTVolxKt2A6PprGJN159cP9VTO6SzKqBPTfXvTGdddbpg
 s0Xy7kpqIOIHFdH0hg5BU3SntkiDLsUW8fuzgwIttGH09xhmNBFaYLgjI
 Bwtt7UcUl9d3NM+ZtmQ9An4I/NUpaYjiZLBocxpoTHr4ubh9Fr2Ax3mnL
 eHwDRGN2ihrSGqQ+dyyFxRnqDVGWgXBj6temCl89JAmCkHtaPJcl03csN
 HXcscs8GZE7u58VOV5SEeSzVoonVIy7wgLtXJbZ9JCGzBv4Q2HfJHFskx
 /fakeZc49i7xrTyjnebNHjNZN4YzgULt+2NAumRVTd5axqhFkaciT+S9t
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SvXRimvA
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
branch HEAD: 42660ac1a45a7dc0f4e4254d742c3a66b7b41315  readfile.2: new page describing readfile(2)

elapsed time: 721m

configs tested: 148
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230227   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r033-20230226   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                        mvebu_v5_defconfig   clang
arm                        oxnas_v6_defconfig   gcc  
arm                  randconfig-r022-20230227   clang
arm                  randconfig-r033-20230227   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230226   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230227   clang
arm64                randconfig-r015-20230226   clang
arm64                randconfig-r036-20230227   clang
csky         buildonly-randconfig-r002-20230226   gcc  
csky         buildonly-randconfig-r003-20230226   gcc  
csky         buildonly-randconfig-r004-20230227   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r002-20230226   clang
hexagon              randconfig-r015-20230227   clang
hexagon              randconfig-r031-20230226   clang
hexagon              randconfig-r041-20230226   clang
hexagon              randconfig-r041-20230227   clang
hexagon              randconfig-r045-20230226   clang
hexagon              randconfig-r045-20230227   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230227   clang
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
i386                 randconfig-r032-20230227   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230227   gcc  
ia64                 randconfig-r021-20230227   gcc  
ia64                 randconfig-r026-20230226   gcc  
ia64                 randconfig-r031-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230227   gcc  
m68k                 randconfig-r011-20230226   gcc  
m68k                 randconfig-r025-20230226   gcc  
m68k                 randconfig-r034-20230226   gcc  
microblaze   buildonly-randconfig-r005-20230227   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r024-20230227   clang
mips                 randconfig-r025-20230227   clang
mips                 randconfig-r034-20230227   gcc  
mips                 randconfig-r035-20230226   clang
mips                         rt305x_defconfig   gcc  
mips                           xway_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230226   gcc  
openrisc             randconfig-r012-20230227   gcc  
openrisc             randconfig-r016-20230226   gcc  
openrisc             randconfig-r036-20230226   gcc  
parisc       buildonly-randconfig-r002-20230227   gcc  
parisc       buildonly-randconfig-r006-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230227   gcc  
parisc               randconfig-r013-20230226   gcc  
parisc               randconfig-r032-20230226   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc              randconfig-r022-20230226   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230227   clang
riscv                randconfig-r006-20230226   gcc  
riscv                randconfig-r014-20230227   gcc  
riscv                randconfig-r024-20230226   clang
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230226   gcc  
s390                 randconfig-r023-20230226   clang
s390                 randconfig-r026-20230227   gcc  
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                               j2_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sparc        buildonly-randconfig-r001-20230226   gcc  
sparc        buildonly-randconfig-r001-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230227   gcc  
sparc64              randconfig-r003-20230226   gcc  
sparc64              randconfig-r005-20230226   gcc  
sparc64              randconfig-r021-20230226   gcc  
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
x86_64               randconfig-r023-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230226   gcc  
xtensa               randconfig-r004-20230227   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
