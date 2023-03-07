Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 718956AF878
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Mar 2023 23:21:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D4A741763;
	Tue,  7 Mar 2023 22:21:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D4A741763
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j15RrhMDhimE; Tue,  7 Mar 2023 22:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B057A4179E;
	Tue,  7 Mar 2023 22:21:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B057A4179E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E70631BF3D8
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 22:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C10824014D
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 22:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C10824014D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PikWtwuvAK1e for <devel@linuxdriverproject.org>;
 Tue,  7 Mar 2023 22:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A66FD400CF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A66FD400CF
 for <devel@driverdev.osuosl.org>; Tue,  7 Mar 2023 22:21:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="363624092"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="363624092"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 14:21:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679109356"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="679109356"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 07 Mar 2023 14:21:27 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZfgS-0001eP-16;
 Tue, 07 Mar 2023 22:21:24 +0000
Date: Wed, 08 Mar 2023 06:20:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 22fd6153c16a40d123d8c9936967d0a59e417129
Message-ID: <6407b8b0.z3yaQOwUaYF1+cid%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678227689; x=1709763689;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3DzcvnhzY7650XoqUduV0YwqcXj5NVf7l052oHiLdxk=;
 b=bMYRe+hZ6Vz00cEwN4b7YSwH80irUfjIXNMsIm7A6J7eTbefEKol9r4n
 SZIzPb4jXO71Lo7eZ2ctAygj33s5nYT6+d6wkTBo+ZKuUsz9eyiWYxofl
 7Gt3H6ttIYjSoTAjsn7JyNxDVcdn6Qs1/AWJlhcRgmMdY/Go9iooxUoiX
 1xr3i2q2QaKNMrTvT+/0JgGi0SIgPUIGrZcHfxmC3ae8+f5QEIPTiv+36
 Uf6hTOs5zGBPd0oIkyp2cTtLuPMFhO0fK0SAI17fJuF3JZzdRbCnHwpM3
 ENbWqc+YP4+donFaKZYx5lHE61N/g9xeWbODgsapQ68Hu2fYIxAanA975
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bMYRe+hZ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 22fd6153c16a40d123d8c9936967d0a59e417129  driver core: class: fix block class problem when removing CONFIG_SYSFS_DEPRECATED*

elapsed time: 804m

configs tested: 172
configs skipped: 16

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230305   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230306   gcc  
alpha                randconfig-r013-20230306   gcc  
alpha                randconfig-r035-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230306   gcc  
arc                  randconfig-r016-20230306   gcc  
arc                  randconfig-r021-20230305   gcc  
arc                  randconfig-r032-20230306   gcc  
arc                  randconfig-r033-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230305   clang
arm          buildonly-randconfig-r005-20230305   clang
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230306   gcc  
arm                  randconfig-r025-20230305   clang
arm                  randconfig-r033-20230305   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230305   clang
arm64        buildonly-randconfig-r004-20230306   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230306   clang
csky         buildonly-randconfig-r004-20230305   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230305   gcc  
csky                 randconfig-r013-20230306   gcc  
csky                 randconfig-r026-20230305   gcc  
hexagon              randconfig-r011-20230306   clang
hexagon              randconfig-r013-20230305   clang
hexagon              randconfig-r015-20230305   clang
hexagon              randconfig-r034-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r001-20230306   gcc  
i386                 randconfig-r034-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230306   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230305   gcc  
ia64                 randconfig-r021-20230305   gcc  
ia64                 randconfig-r022-20230305   gcc  
ia64                 randconfig-r023-20230305   gcc  
ia64                 randconfig-r035-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230306   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230306   gcc  
loongarch            randconfig-r033-20230305   gcc  
loongarch            randconfig-r034-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230305   gcc  
m68k                 randconfig-r002-20230306   gcc  
m68k                 randconfig-r012-20230305   gcc  
m68k                 randconfig-r014-20230305   gcc  
m68k                 randconfig-r021-20230306   gcc  
m68k                 randconfig-r022-20230306   gcc  
m68k                 randconfig-r024-20230305   gcc  
m68k                 randconfig-r032-20230305   gcc  
m68k                 randconfig-r036-20230306   gcc  
microblaze   buildonly-randconfig-r005-20230305   gcc  
microblaze   buildonly-randconfig-r006-20230306   gcc  
microblaze           randconfig-r001-20230306   gcc  
microblaze           randconfig-r034-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230306   clang
mips                 randconfig-r005-20230306   clang
mips                 randconfig-r024-20230305   clang
nios2        buildonly-randconfig-r003-20230305   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230305   gcc  
nios2                randconfig-r024-20230306   gcc  
nios2                randconfig-r031-20230306   gcc  
nios2                randconfig-r036-20230306   gcc  
openrisc     buildonly-randconfig-r001-20230305   gcc  
openrisc     buildonly-randconfig-r002-20230306   gcc  
openrisc             randconfig-r003-20230305   gcc  
parisc       buildonly-randconfig-r006-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230305   gcc  
parisc               randconfig-r036-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230306   clang
powerpc      buildonly-randconfig-r003-20230305   gcc  
powerpc              randconfig-r006-20230306   gcc  
powerpc              randconfig-r015-20230306   clang
powerpc              randconfig-r025-20230305   gcc  
powerpc              randconfig-r031-20230305   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230306   gcc  
riscv                randconfig-r023-20230305   gcc  
riscv                randconfig-r035-20230306   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230305   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r006-20230305   gcc  
sh                   randconfig-r022-20230305   gcc  
sparc        buildonly-randconfig-r004-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230306   gcc  
sparc                randconfig-r004-20230306   gcc  
sparc                randconfig-r005-20230306   gcc  
sparc                randconfig-r011-20230305   gcc  
sparc                randconfig-r031-20230306   gcc  
sparc64              randconfig-r026-20230305   gcc  
sparc64              randconfig-r036-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r023-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230305   gcc  
xtensa       buildonly-randconfig-r006-20230306   gcc  
xtensa               randconfig-r003-20230306   gcc  
xtensa               randconfig-r012-20230305   gcc  
xtensa               randconfig-r016-20230306   gcc  
xtensa               randconfig-r026-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
