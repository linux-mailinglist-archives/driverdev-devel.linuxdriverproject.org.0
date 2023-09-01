Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0701D78F6C7
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Sep 2023 03:35:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6FAF61347;
	Fri,  1 Sep 2023 01:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6FAF61347
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SEQOYRp5qU4D; Fri,  1 Sep 2023 01:35:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E86160B8B;
	Fri,  1 Sep 2023 01:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E86160B8B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C15E1BF47F
 for <devel@linuxdriverproject.org>; Fri,  1 Sep 2023 01:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1534683337
 for <devel@linuxdriverproject.org>; Fri,  1 Sep 2023 01:35:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1534683337
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHYEUo9qvopB for <devel@linuxdriverproject.org>;
 Fri,  1 Sep 2023 01:35:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BDC9822F5
 for <devel@driverdev.osuosl.org>; Fri,  1 Sep 2023 01:35:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BDC9822F5
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="462475384"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="462475384"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 18:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="883013865"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="883013865"
Received: from lkp-server01.sh.intel.com (HELO 5d8055a4f6aa) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2023 18:35:19 -0700
Received: from kbuild by 5d8055a4f6aa with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qbt45-0000jd-0F;
 Fri, 01 Sep 2023 01:35:13 +0000
Date: Fri, 01 Sep 2023 09:34:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS WITH WARNING
 2929d17b58d02dcf52d0345fa966c616e09a5afa
Message-ID: <202309010948.ZLr85CiU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693532117; x=1725068117;
 h=date:from:to:cc:subject:message-id;
 bh=ir/AqXFXwdERz4iZoCqoo+LLkKbtaxSB/9L7NlzgiLY=;
 b=Bx6gaMl7/gM/Eb94w3yBJmLBxPYZ/qHfLQTH9yJfOv4mJS/4Cadm9egR
 16Z6z+Io49oSCtNHOHNBLGyZ69/DtvNrhM1ZFkv+4EeS4oxKCQWwGXvfc
 j7c7/eq30Nf9Uoco3KU5qmIS4YWCEvgFxthLkYOH28XYLiFLhviRshWvn
 WyWEHcjVydK8b3aYD9SydhuLYzrB9252/cg0UqjAjQKDxAPcUF5FqG9Hi
 nBkRuaERjkhSseIiv1I3FCk5P+bf/Hgfp03Upwk74TxtwyrMQ7+FGMra6
 ZDEw/0eUfd/7uYwLAbmPYovb4vm23Vp/ouibFB821tAVntS8rjw3wCiYL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bx6gaMl7
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 2929d17b58d02dcf52d0345fa966c616e09a5afa  sysfs: do not create empty directories if no attributes are present

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202308312145.bv4S52ys-lkp@intel.com

Warning: (recently discovered and may have been fixed)

fs/sysfs/file.c:397:13: warning: variable 'gid' is uninitialized when used here [-Wuninitialized]
fs/sysfs/file.c:397:8: warning: variable 'uid' is uninitialized when used here [-Wuninitialized]

Warning ids grouped by kconfigs:

clang_recent_errors
|-- arm-randconfig-r034-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- hexagon-randconfig-002-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- i386-randconfig-011-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- i386-randconfig-012-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- i386-randconfig-015-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- i386-randconfig-r022-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- powerpc64-randconfig-r023-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- s390-randconfig-001-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- s390-randconfig-r011-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- s390-randconfig-r013-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- um-allnoconfig
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-001-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-002-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-003-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-004-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-005-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-006-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
|-- x86_64-randconfig-r016-20230831
|   |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
|   `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here
`-- x86_64-rhel-8.3-rust
    |-- fs-sysfs-file.c:warning:variable-gid-is-uninitialized-when-used-here
    `-- fs-sysfs-file.c:warning:variable-uid-is-uninitialized-when-used-here

elapsed time: 853m

configs tested: 161
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230831   gcc  
alpha                randconfig-r033-20230831   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230831   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230831   gcc  
arm                  randconfig-r024-20230831   gcc  
arm                  randconfig-r034-20230831   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230831   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon               randconfig-001-20230831   clang
hexagon               randconfig-002-20230831   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230831   gcc  
i386         buildonly-randconfig-002-20230831   gcc  
i386         buildonly-randconfig-003-20230831   gcc  
i386         buildonly-randconfig-004-20230831   gcc  
i386         buildonly-randconfig-005-20230831   gcc  
i386         buildonly-randconfig-006-20230831   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230831   gcc  
i386                  randconfig-002-20230831   gcc  
i386                  randconfig-003-20230831   gcc  
i386                  randconfig-004-20230831   gcc  
i386                  randconfig-005-20230831   gcc  
i386                  randconfig-006-20230831   gcc  
i386                  randconfig-011-20230831   clang
i386                  randconfig-012-20230831   clang
i386                  randconfig-013-20230831   clang
i386                  randconfig-014-20230831   clang
i386                  randconfig-015-20230831   clang
i386                  randconfig-016-20230831   clang
i386                 randconfig-r022-20230831   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230831   gcc  
loongarch            randconfig-r002-20230831   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc64            randconfig-r023-20230831   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230831   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230831   clang
s390                 randconfig-r011-20230831   clang
s390                 randconfig-r013-20230831   clang
s390                 randconfig-r021-20230831   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r003-20230831   gcc  
sh                   randconfig-r005-20230831   gcc  
sh                   randconfig-r035-20230831   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230831   gcc  
sparc                randconfig-r026-20230831   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r006-20230831   gcc  
sparc64              randconfig-r012-20230831   gcc  
sparc64              randconfig-r025-20230831   gcc  
sparc64              randconfig-r032-20230831   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230831   gcc  
x86_64       buildonly-randconfig-002-20230831   gcc  
x86_64       buildonly-randconfig-003-20230831   gcc  
x86_64       buildonly-randconfig-004-20230831   gcc  
x86_64       buildonly-randconfig-005-20230831   gcc  
x86_64       buildonly-randconfig-006-20230831   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230831   clang
x86_64                randconfig-002-20230831   clang
x86_64                randconfig-003-20230831   clang
x86_64                randconfig-004-20230831   clang
x86_64                randconfig-005-20230831   clang
x86_64                randconfig-006-20230831   clang
x86_64                randconfig-011-20230831   gcc  
x86_64                randconfig-012-20230831   gcc  
x86_64                randconfig-013-20230831   gcc  
x86_64                randconfig-014-20230831   gcc  
x86_64                randconfig-015-20230831   gcc  
x86_64                randconfig-016-20230831   gcc  
x86_64                randconfig-071-20230831   gcc  
x86_64                randconfig-072-20230831   gcc  
x86_64                randconfig-073-20230831   gcc  
x86_64                randconfig-074-20230831   gcc  
x86_64                randconfig-075-20230831   gcc  
x86_64                randconfig-076-20230831   gcc  
x86_64               randconfig-r016-20230831   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r001-20230831   gcc  
xtensa               randconfig-r015-20230831   gcc  
xtensa               randconfig-r036-20230831   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
