Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3046A502B
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 01:33:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 512C8610CB;
	Tue, 28 Feb 2023 00:33:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 512C8610CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZAD0_53pnGtB; Tue, 28 Feb 2023 00:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD92060E2E;
	Tue, 28 Feb 2023 00:33:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD92060E2E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1C9B1BF95D
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 00:33:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C544405C5
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 00:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C544405C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GqaP_dUIILNE for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 00:33:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7811940BCE
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7811940BCE
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 00:33:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="335498988"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="335498988"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 16:33:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="673939320"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="673939320"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 27 Feb 2023 16:33:08 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWnvX-0004vH-29;
 Tue, 28 Feb 2023 00:33:07 +0000
Date: Tue, 28 Feb 2023 08:32:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 4afc9ba6223c2c5882f08b10d0fa1da6f590e9bc
Message-ID: <63fd4bb3.orTgOgaTvUdV7EcX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677544391; x=1709080391;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hZZGY+Eco4DbtUxcdhj53blt+0Lb1XK7xwWdAKVLbvY=;
 b=ajQ0CK3y2RoZvATvcTDT8PipDbkrAe2LKsqMDlqVtWA+JmM8l9zusNNe
 C0DL3a8PIglEB3mKL1XSfKgWzcQzmVV2RXFHUGelnhUC/S4M/0flWuqIz
 Xp5LheXIBCIzSq4+YKIu4sIiamkUrmJbpAXgQH+etLdWv7dNo+Gia3Vru
 RxSd1l0MM3BI3MK7eMKCftm4cTbvXfb1HYz/B/qZ5OXU350zkYYRVaqHx
 RCnxoINX5w8woOw9yO0c9PShwx9eIPwsQk5CcKJv64qwHXkyFYnkogc0h
 h0gAvP0klEUgAJ5Pa2/zyY2V4FI0jJMDJGfiIo4zsVVUlUaGXiuDPzOhj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ajQ0CK3y
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
branch HEAD: 4afc9ba6223c2c5882f08b10d0fa1da6f590e9bc  driver core: device: make device_create*() take a const struct class *

elapsed time: 721m

configs tested: 131
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r035-20230226   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230227   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230226   gcc  
arc                  randconfig-r015-20230226   gcc  
arc                  randconfig-r023-20230227   gcc  
arc                  randconfig-r036-20230227   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r006-20230227   clang
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230226   gcc  
arm                  randconfig-r025-20230226   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230226   gcc  
arm64                randconfig-r005-20230226   gcc  
arm64                randconfig-r021-20230227   gcc  
arm64                randconfig-r034-20230227   clang
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r004-20230227   clang
hexagon              randconfig-r022-20230226   clang
hexagon              randconfig-r035-20230227   clang
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
i386                 randconfig-r024-20230227   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230226   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230226   gcc  
ia64                 randconfig-r036-20230226   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230227   gcc  
loongarch            randconfig-r011-20230227   gcc  
loongarch            randconfig-r034-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230227   gcc  
m68k                 randconfig-r025-20230227   gcc  
microblaze   buildonly-randconfig-r001-20230226   gcc  
microblaze           randconfig-r011-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230227   gcc  
mips                 randconfig-r012-20230227   clang
mips                 randconfig-r033-20230226   clang
nios2        buildonly-randconfig-r004-20230226   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r003-20230226   gcc  
openrisc             randconfig-r014-20230226   gcc  
openrisc             randconfig-r016-20230226   gcc  
openrisc             randconfig-r021-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r033-20230227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230226   clang
powerpc              randconfig-r022-20230227   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230227   clang
riscv                randconfig-r005-20230227   clang
riscv                randconfig-r026-20230226   clang
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230227   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230227   clang
s390                 randconfig-r013-20230226   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230227   gcc  
sparc                randconfig-r004-20230226   gcc  
sparc                randconfig-r013-20230227   gcc  
sparc                randconfig-r015-20230227   gcc  
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
x86_64               randconfig-r026-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230226   gcc  
xtensa               randconfig-r032-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
