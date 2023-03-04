Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5F06AA881
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Mar 2023 08:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2252541D33;
	Sat,  4 Mar 2023 07:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2252541D33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D7yJ1yMGaOE1; Sat,  4 Mar 2023 07:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F6A341CF2;
	Sat,  4 Mar 2023 07:09:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F6A341CF2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 179511BF327
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 07:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E426341D05
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 07:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E426341D05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NuOievcENCA0 for <devel@linuxdriverproject.org>;
 Sat,  4 Mar 2023 07:09:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0078841CCF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0078841CCF
 for <devel@driverdev.osuosl.org>; Sat,  4 Mar 2023 07:09:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="421509296"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="421509296"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 23:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="785557730"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="785557730"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 03 Mar 2023 23:09:39 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYM1S-0001xA-2D;
 Sat, 04 Mar 2023 07:09:38 +0000
Date: Sat, 04 Mar 2023 15:09:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 72d19b771ab209f75b1e376c6fa9feb2f0c55365
Message-ID: <6402ee99.oqYPzUgxFQGG2QTX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677913782; x=1709449782;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9YeDouS9dxTqzMu0RchgORJ+Nd3mJUHORxGbo3z9h3Q=;
 b=DehSCeiloxO6qUNUv9oKBbvfrJTbKQocYskyBXhJKH2fCZHuOMTL6r6c
 TqoHG9QTsjVb77TdpbxGnUk++38MCY0xU6Upns/NOsxilTbkuKxkCmcM/
 H7ZXCRJPxEsegH9aE/NcoDDpD1z2p0nYqlg3FUsuW4rp5UGZkWJDuzvB3
 zGP3NWbCKtS3NAbW3wccr0ka1xXA/WDkVYQ/CVRvLcB/g5SXBkBfUAWgB
 f7n1/4RmbMqduuhByrmb0tZs231ztnYZQ8vc3WGlGT98HqXTlQhVtXxyS
 Z9R194rIHoMtY7y2/5RhSf3PJ8cLJs+yYC0Kw5gqj9DHm9gd7abQKgbOA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DehSCeil
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
branch HEAD: 72d19b771ab209f75b1e376c6fa9feb2f0c55365  driver core: device: make device_create*() take a const struct class *

elapsed time: 914m

configs tested: 102
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230302   gcc  
alpha                randconfig-r036-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230302   gcc  
arm                  randconfig-r034-20230303   gcc  
arm                  randconfig-r036-20230303   gcc  
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230302   gcc  
csky                 randconfig-r012-20230302   gcc  
hexagon              randconfig-r002-20230302   clang
hexagon              randconfig-r026-20230302   clang
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
ia64         buildonly-randconfig-r001-20230302   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230302   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r033-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230302   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230302   clang
mips                 randconfig-r006-20230302   clang
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230302   gcc  
nios2                randconfig-r035-20230303   gcc  
openrisc             randconfig-r024-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r035-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r031-20230303   clang
powerpc              randconfig-r034-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230302   clang
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230302   clang
s390                 randconfig-r015-20230302   clang
s390                 randconfig-r031-20230302   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r023-20230302   gcc  
sparc64              randconfig-r025-20230302   gcc  
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
