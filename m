Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB4F6A600B
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 20:59:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AADC60B9B;
	Tue, 28 Feb 2023 19:58:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AADC60B9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTJTbKKPavue; Tue, 28 Feb 2023 19:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C1D76119C;
	Tue, 28 Feb 2023 19:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C1D76119C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA08E1BF369
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFB1440448
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 19:58:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFB1440448
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tk8cVkUeTTN for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 19:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EF764031F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EF764031F
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 19:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="399018970"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="399018970"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="667569743"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="667569743"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Feb 2023 11:58:51 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pX67e-0005cH-0h;
 Tue, 28 Feb 2023 19:58:50 +0000
Date: Wed, 01 Mar 2023 03:58:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 99fb5efee0baa83a14ffa85da04f5fd8414ddeb6
Message-ID: <63fe5ce4.Nl9zg5f9Z0CwAvlz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677614333; x=1709150333;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Tw7J+UYxaXC2y2gW+RWpEldY9IoL/3WJpcEQG4R47NE=;
 b=TJiaLJQdsGpcDQb1u9xjaF8ZHBRFADIhG+IfZbpIi7/IC0pzCdolNtpa
 MqiEBLb64xZ9IQ+kwhr89Y3MvL1n0gQVqX11UNkcmDU3xxkvlGxrFDkCa
 LZQaPn+l2Baf4GyfaGoXBOZeT4zqozgo0OJKVYWY+rbJNHJ+VVWWBaEQj
 9H8agsphrYk9/Q+EaCvAwaXBOuG6SrugFJyFqQGjNociIyfPzN0rZm5RC
 tY3n1nfj6ZJsEphjuEolNwILJojjooSOSzSrcE1WBtodXFdd19BFYwZh1
 cuY5Jd6ya2ShbIzr1UTFx8OJkpBr0oxBjJJjSHn4Pd1Q84TmtTakfidW9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TJiaLJQd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 99fb5efee0baa83a14ffa85da04f5fd8414ddeb6  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 722m

configs tested: 158
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230228   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230226   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230226   gcc  
arc                  randconfig-r004-20230227   gcc  
arc                  randconfig-r021-20230227   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          ep93xx_defconfig   clang
arm                             mxs_defconfig   clang
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm                           sama7_defconfig   clang
arm                        spear3xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230227   clang
arm64        buildonly-randconfig-r005-20230226   gcc  
arm64        buildonly-randconfig-r005-20230227   clang
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230227   clang
arm64                randconfig-r024-20230226   clang
arm64                randconfig-r031-20230227   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230227   gcc  
csky                 randconfig-r016-20230227   gcc  
csky                 randconfig-r022-20230227   gcc  
csky                 randconfig-r036-20230226   gcc  
hexagon      buildonly-randconfig-r003-20230227   clang
hexagon              randconfig-r002-20230226   clang
hexagon              randconfig-r021-20230226   clang
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
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230227   gcc  
ia64         buildonly-randconfig-r001-20230228   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230227   gcc  
ia64                 randconfig-r024-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230226   gcc  
loongarch            randconfig-r023-20230227   gcc  
loongarch            randconfig-r031-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230228   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230227   gcc  
m68k                 randconfig-r012-20230226   gcc  
m68k                 randconfig-r014-20230227   gcc  
microblaze   buildonly-randconfig-r006-20230227   gcc  
microblaze           randconfig-r035-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230228   clang
mips                         cobalt_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                 randconfig-r001-20230227   gcc  
mips                           rs90_defconfig   clang
mips                           xway_defconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r011-20230226   gcc  
parisc       buildonly-randconfig-r004-20230226   gcc  
parisc       buildonly-randconfig-r004-20230228   gcc  
parisc       buildonly-randconfig-r006-20230228   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230226   gcc  
parisc               randconfig-r022-20230226   gcc  
parisc               randconfig-r034-20230226   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      pmac32_defconfig   clang
powerpc              randconfig-r025-20230227   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r034-20230227   clang
riscv                randconfig-r036-20230227   clang
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230227   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230226   gcc  
s390                 randconfig-r026-20230227   gcc  
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r012-20230227   gcc  
sh                   randconfig-r013-20230227   gcc  
sh                   randconfig-r025-20230226   gcc  
sh                   randconfig-r032-20230227   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230226   gcc  
sparc64              randconfig-r003-20230226   gcc  
sparc64              randconfig-r033-20230227   gcc  
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
x86_64               randconfig-r015-20230227   gcc  
x86_64               randconfig-r035-20230227   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230226   gcc  
xtensa               randconfig-r001-20230226   gcc  
xtensa               randconfig-r016-20230226   gcc  
xtensa               randconfig-r033-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
