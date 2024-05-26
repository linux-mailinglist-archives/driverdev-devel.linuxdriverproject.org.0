Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 022638CF272
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2024 04:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D11EB812AE;
	Sun, 26 May 2024 02:19:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XhIU7BEbW7QN; Sun, 26 May 2024 02:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B011812BA
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B011812BA;
	Sun, 26 May 2024 02:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 456691D0B47
 for <devel@linuxdriverproject.org>; Sun, 26 May 2024 02:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31BCD400D9
 for <devel@linuxdriverproject.org>; Sun, 26 May 2024 02:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DUt3MXgh2vXV for <devel@linuxdriverproject.org>;
 Sun, 26 May 2024 02:19:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED33440017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED33440017
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED33440017
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2024 02:19:35 +0000 (UTC)
X-CSE-ConnectionGUID: iMSXMAETTemRzXVbHN5T7w==
X-CSE-MsgGUID: c8EJ5LH6QtWHOiylwr8jow==
X-IronPort-AV: E=McAfee;i="6600,9927,11083"; a="12811704"
X-IronPort-AV: E=Sophos;i="6.08,189,1712646000"; d="scan'208";a="12811704"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2024 19:19:33 -0700
X-CSE-ConnectionGUID: DsaWV6vhTRqIw3wA/VJs8Q==
X-CSE-MsgGUID: ZSKyiWl7QCe+F3M9gjijWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,189,1712646000"; d="scan'208";a="39185738"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 25 May 2024 19:19:33 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sB3Tu-0007eD-1j;
 Sun, 26 May 2024 02:19:30 +0000
Date: Sun, 26 May 2024 10:19:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 fb74df265facd5babbf921aa9b3979187ed4f626
Message-ID: <202405261014.CvGjegG1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716689974; x=1748225974;
 h=date:from:to:cc:subject:message-id;
 bh=hZ2767X/seW+9PsJtHFMHNRoLsGT5/Pp08HFoeJjSZ8=;
 b=OCheQ654LnpexgJS+n2Y/mUua/33D0hn64ODKRF1Sk9AzJr5i3KGg1oY
 uCs3av4c350FXFxLpSx9Oroh17zQld7uxpotMxNU7/pfyMvze9yY8hCBX
 16Kt+aboxNN/RPsEFip7xGlj4PLUotdors0AOD2eNDLqtyF1Ebdo9EdKM
 UstBgo+FS0ah6Q49Vpl3lv0qYGd4iJDn9kmy9JqSaBKKr62X20vikGJ4q
 H4zYyH2GD2c1DiKbuN4Zskt6BDjSqEXpoXT7lj/R8T9Gbn8tmALIMHYBN
 hlBpkhQjI1MGb0AOWVz1rNOvIwUeCNgLsiQWRhEjSx84eVTHWfhD3g5VJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OCheQ654
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
branch HEAD: fb74df265facd5babbf921aa9b3979187ed4f626  driver core: remove devm_device_add_groups()

elapsed time: 1082m

configs tested: 209
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240525   gcc  
arc                   randconfig-001-20240526   gcc  
arc                   randconfig-002-20240525   gcc  
arc                   randconfig-002-20240526   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240525   gcc  
arm                   randconfig-002-20240525   gcc  
arm                   randconfig-002-20240526   gcc  
arm                   randconfig-003-20240525   clang
arm                   randconfig-004-20240525   clang
arm                   randconfig-004-20240526   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240525   gcc  
arm64                 randconfig-001-20240526   gcc  
arm64                 randconfig-002-20240525   clang
arm64                 randconfig-003-20240525   gcc  
arm64                 randconfig-003-20240526   gcc  
arm64                 randconfig-004-20240525   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240525   gcc  
csky                  randconfig-001-20240526   gcc  
csky                  randconfig-002-20240525   gcc  
csky                  randconfig-002-20240526   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240525   clang
hexagon               randconfig-002-20240525   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240525   gcc  
i386         buildonly-randconfig-002-20240525   gcc  
i386         buildonly-randconfig-002-20240526   gcc  
i386         buildonly-randconfig-003-20240525   gcc  
i386         buildonly-randconfig-003-20240526   gcc  
i386         buildonly-randconfig-004-20240525   clang
i386         buildonly-randconfig-005-20240525   gcc  
i386         buildonly-randconfig-006-20240525   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240525   clang
i386                  randconfig-002-20240525   gcc  
i386                  randconfig-003-20240525   clang
i386                  randconfig-004-20240525   clang
i386                  randconfig-005-20240525   gcc  
i386                  randconfig-005-20240526   gcc  
i386                  randconfig-006-20240525   gcc  
i386                  randconfig-011-20240525   clang
i386                  randconfig-012-20240525   clang
i386                  randconfig-012-20240526   gcc  
i386                  randconfig-013-20240525   clang
i386                  randconfig-013-20240526   gcc  
i386                  randconfig-014-20240525   gcc  
i386                  randconfig-014-20240526   gcc  
i386                  randconfig-015-20240525   clang
i386                  randconfig-015-20240526   gcc  
i386                  randconfig-016-20240525   gcc  
i386                  randconfig-016-20240526   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240525   gcc  
loongarch             randconfig-001-20240526   gcc  
loongarch             randconfig-002-20240525   gcc  
loongarch             randconfig-002-20240526   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240525   gcc  
nios2                 randconfig-001-20240526   gcc  
nios2                 randconfig-002-20240525   gcc  
nios2                 randconfig-002-20240526   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240525   gcc  
parisc                randconfig-001-20240526   gcc  
parisc                randconfig-002-20240525   gcc  
parisc                randconfig-002-20240526   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240525   gcc  
powerpc               randconfig-002-20240525   gcc  
powerpc               randconfig-003-20240525   gcc  
powerpc               randconfig-003-20240526   gcc  
powerpc64             randconfig-001-20240525   clang
powerpc64             randconfig-002-20240525   gcc  
powerpc64             randconfig-002-20240526   gcc  
powerpc64             randconfig-003-20240525   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240525   gcc  
riscv                 randconfig-002-20240525   clang
riscv                 randconfig-002-20240526   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240525   clang
s390                  randconfig-002-20240525   clang
s390                  randconfig-002-20240526   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240525   gcc  
sh                    randconfig-001-20240526   gcc  
sh                    randconfig-002-20240525   gcc  
sh                    randconfig-002-20240526   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240525   gcc  
sparc64               randconfig-001-20240526   gcc  
sparc64               randconfig-002-20240525   gcc  
sparc64               randconfig-002-20240526   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240525   gcc  
um                    randconfig-002-20240525   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240525   clang
x86_64       buildonly-randconfig-001-20240526   clang
x86_64       buildonly-randconfig-002-20240526   clang
x86_64       buildonly-randconfig-003-20240526   gcc  
x86_64       buildonly-randconfig-004-20240526   clang
x86_64       buildonly-randconfig-005-20240526   clang
x86_64       buildonly-randconfig-006-20240526   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240525   clang
x86_64                randconfig-001-20240526   clang
x86_64                randconfig-002-20240525   clang
x86_64                randconfig-002-20240526   clang
x86_64                randconfig-003-20240525   clang
x86_64                randconfig-003-20240526   clang
x86_64                randconfig-004-20240525   clang
x86_64                randconfig-004-20240526   gcc  
x86_64                randconfig-005-20240525   clang
x86_64                randconfig-005-20240526   gcc  
x86_64                randconfig-006-20240525   clang
x86_64                randconfig-006-20240526   clang
x86_64                randconfig-011-20240525   clang
x86_64                randconfig-011-20240526   gcc  
x86_64                randconfig-012-20240525   clang
x86_64                randconfig-012-20240526   gcc  
x86_64                randconfig-013-20240526   gcc  
x86_64                randconfig-014-20240525   clang
x86_64                randconfig-014-20240526   gcc  
x86_64                randconfig-015-20240526   gcc  
x86_64                randconfig-016-20240525   clang
x86_64                randconfig-016-20240526   clang
x86_64                randconfig-071-20240526   gcc  
x86_64                randconfig-072-20240525   clang
x86_64                randconfig-072-20240526   clang
x86_64                randconfig-073-20240525   clang
x86_64                randconfig-073-20240526   clang
x86_64                randconfig-074-20240526   clang
x86_64                randconfig-075-20240526   clang
x86_64                randconfig-076-20240525   clang
x86_64                randconfig-076-20240526   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240525   gcc  
xtensa                randconfig-001-20240526   gcc  
xtensa                randconfig-002-20240525   gcc  
xtensa                randconfig-002-20240526   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
