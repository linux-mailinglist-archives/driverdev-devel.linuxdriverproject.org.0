Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A59AF6A9063
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Mar 2023 06:00:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADA7B82173;
	Fri,  3 Mar 2023 04:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADA7B82173
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FQ9EeYfyFHNq; Fri,  3 Mar 2023 04:59:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80DD982168;
	Fri,  3 Mar 2023 04:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80DD982168
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C44641BF263
 for <devel@linuxdriverproject.org>; Fri,  3 Mar 2023 04:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 989CE41B7D
 for <devel@linuxdriverproject.org>; Fri,  3 Mar 2023 04:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989CE41B7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtQO-_mWhgT0 for <devel@linuxdriverproject.org>;
 Fri,  3 Mar 2023 04:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 129F041B73
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 129F041B73
 for <devel@driverdev.osuosl.org>; Fri,  3 Mar 2023 04:59:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="315357857"
X-IronPort-AV: E=Sophos;i="5.98,229,1673942400"; d="scan'208";a="315357857"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 20:59:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="849341544"
X-IronPort-AV: E=Sophos;i="5.98,229,1673942400"; d="scan'208";a="849341544"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 02 Mar 2023 20:59:50 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXxWH-0001DC-2f;
 Fri, 03 Mar 2023 04:59:49 +0000
Date: Fri, 03 Mar 2023 12:59:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:sysfs_deprecation_removal] BUILD SUCCESS
 4db0a9adfda73af2758b09002724ac00117b90c4
Message-ID: <64017eb3.afflR1C2iFRjKKmj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677819593; x=1709355593;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FN4uJHH8K0r2cCwTGbLoAMUrdO0X+WuPsUMnEhQarz4=;
 b=e6x/fK1/LAUYywKXomAl7u1c+zdIIe471OKk0pvu+26Lf+p+7Cor9JEe
 M1sJHypIOUvcbxUhWc4irULbgAhZRCoCeQNfxq4yUTEbqFb/+RM9iYQiF
 x3FoMnKNFJ+g2DyYrrP7CNgzURMJKYMG3dfZucjPztTg3eWTcZoO+AxXj
 2x5MLnBId0weXl5nlwzrbaeI4aEu0bDGFra5xbeJ5nQ2m9X2uqGI2oPAE
 BbJuzUdOssZffT7h8mt35kH5NAGE3F3EO0tj43fKAmVCNTog/csHhy1nZ
 01+/FlaBIvliTQMvfCd443FJLRRF3etdXiTx5Ql+AVFX1nbIlwWuMan0r
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6x/fK1/
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git sysfs_deprecation_removal
branch HEAD: 4db0a9adfda73af2758b09002724ac00117b90c4  driver core: remove CONFIG_SYSFS_DEPRECATED and CONFIG_SYSFS_DEPRECATED_V2

elapsed time: 1105m

configs tested: 100
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230302   gcc  
arc                  randconfig-r014-20230302   gcc  
arc                  randconfig-r036-20230302   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r035-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230302   gcc  
hexagon      buildonly-randconfig-r001-20230302   clang
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
ia64                 randconfig-r013-20230302   gcc  
ia64                 randconfig-r023-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r022-20230302   gcc  
m68k                 randconfig-r032-20230302   gcc  
microblaze   buildonly-randconfig-r002-20230302   gcc  
microblaze           randconfig-r011-20230302   gcc  
microblaze           randconfig-r015-20230302   gcc  
microblaze           randconfig-r025-20230302   gcc  
microblaze           randconfig-r026-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
nios2        buildonly-randconfig-r006-20230302   gcc  
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r031-20230302   gcc  
powerpc              randconfig-r033-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230302   clang
riscv                               defconfig   gcc  
riscv                randconfig-r024-20230302   clang
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r021-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230302   gcc  
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
xtensa               randconfig-r034-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
