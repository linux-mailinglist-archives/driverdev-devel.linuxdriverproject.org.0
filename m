Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4576D359B
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Apr 2023 07:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4C5C4148A;
	Sun,  2 Apr 2023 05:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4C5C4148A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zuZFNUbS98Ch; Sun,  2 Apr 2023 05:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57A8A414C3;
	Sun,  2 Apr 2023 05:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57A8A414C3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0633E1BF59B
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 05:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF3404148A
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 05:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF3404148A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUekecpPHgpU for <devel@linuxdriverproject.org>;
 Sun,  2 Apr 2023 05:28:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 098FD413D3
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 098FD413D3
 for <devel@driverdev.osuosl.org>; Sun,  2 Apr 2023 05:28:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="325700664"
X-IronPort-AV: E=Sophos;i="5.98,312,1673942400"; d="scan'208";a="325700664"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 22:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="829178330"
X-IronPort-AV: E=Sophos;i="5.98,312,1673942400"; d="scan'208";a="829178330"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2023 22:28:50 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piqGn-000NFe-2x;
 Sun, 02 Apr 2023 05:28:49 +0000
Date: Sun, 02 Apr 2023 13:28:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD REGRESSION
 e4156fe7129aa2716f4370f5ba049416d7c3e8c6
Message-ID: <64291268.QP/GCRJrU7pMtK0O%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680413333; x=1711949333;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=r1QHt4wOERVFoyMK40fj8mvNnpYMAzhd6Di9ae22sDA=;
 b=MijsB9qT0Z49eA3AGGN6+IfdWvLDwh9leo+gx/pVhBEA4YQyWf8lzeNW
 9GYMxv7tsb/ejXerrPnadkSU9cRi7SAaUlEfwXAUatgM9g5tLkM4fFM0H
 aptPCV+M4yRDX0XvYEwNCzL2I7iV8jXJfYtJNp2kbRd1QESRy9yCtS73r
 Tfqv4Sf0Z9S4EFDTUUvxjxbilbIzImfS361aZfAymlw/MZyIDgn2xbJxF
 dDst6uXRBMGbxHD0XFU1gGZzC16Vo2cuDzoMurdVaPP21HZHWk6XKDiia
 wgplM/XgL2peXTwlgHx3s344pyyNYP3pg1YaD2gDKk/8g7bqI+mAiFuwT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MijsB9qT
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
branch HEAD: e4156fe7129aa2716f4370f5ba049416d7c3e8c6  driver core: remove incorrect comment for device_create*

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202304020802.xbRTJKjW-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/mips/kernel/vpe-cmp.c:82:10: error: 'struct class' has no member named 'owner'
include/linux/export.h:29:21: error: initialization of 'const struct attribute_group **' from incompatible pointer type 'struct module *' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- mips-randconfig-c003-20230402
    |-- arch-mips-kernel-vpe-cmp.c:error:struct-class-has-no-member-named-owner
    `-- include-linux-export.h:error:initialization-of-const-struct-attribute_group-from-incompatible-pointer-type-struct-module

elapsed time: 727m

configs tested: 98
configs skipped: 8

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230402   gcc  
alpha                randconfig-r025-20230402   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230402   gcc  
arc                  randconfig-r043-20230402   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r033-20230402   clang
arm                  randconfig-r046-20230402   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230402   clang
csky         buildonly-randconfig-r001-20230402   gcc  
csky         buildonly-randconfig-r003-20230402   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r031-20230402   gcc  
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
ia64                 randconfig-r022-20230402   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230402   gcc  
loongarch            randconfig-r015-20230402   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230402   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230402   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230402   gcc  
nios2                randconfig-r003-20230402   gcc  
nios2                randconfig-r004-20230402   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r035-20230402   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230402   gcc  
powerpc              randconfig-r021-20230402   clang
powerpc              randconfig-r023-20230402   clang
powerpc              randconfig-r034-20230402   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230402   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r024-20230402   clang
s390                 randconfig-r044-20230402   clang
sh                               allmodconfig   gcc  
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
xtensa       buildonly-randconfig-r004-20230402   gcc  
xtensa               randconfig-r016-20230402   gcc  
xtensa               randconfig-r026-20230402   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
