Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D4D6FB638
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 20:11:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F2FA41E27;
	Mon,  8 May 2023 18:11:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F2FA41E27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YEe9LHN8vMaE; Mon,  8 May 2023 18:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E600A41E69;
	Mon,  8 May 2023 18:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E600A41E69
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16B7D1BF342
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 18:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E45858452B
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 18:10:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E45858452B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1l5mPCc2GQa for <devel@linuxdriverproject.org>;
 Mon,  8 May 2023 18:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5144844EB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5144844EB
 for <devel@driverdev.osuosl.org>; Mon,  8 May 2023 18:10:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="334166044"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="334166044"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 11:10:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="701515571"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="701515571"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 08 May 2023 11:10:38 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pw5Jm-0001MK-0S;
 Mon, 08 May 2023 18:10:38 +0000
Date: Tue, 09 May 2023 02:10:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 5262a2ad92daa9d98f7ad25dc248635ed991948a
Message-ID: <20230508181012.IDk03%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683569452; x=1715105452;
 h=date:from:to:cc:subject:message-id;
 bh=dOucZMXeTJNEEln/11vhPjOPSef6MOiF39GqdzLgi40=;
 b=IScu3SFgohfCAE8V3Ooc+S5DE/f93/GkuZqkx2/ib6rlSzWjbsEN4iKx
 h2oIAkxcrpPuvvNmIirQEPQsa70QpZpTmXpOfM+6knGvfKR4QicgnJMTa
 +LFFCCj0W66N3yd+fkHK1yEAdVoPF6L97EhVYlOKQHyxFHOPUuGNJxgUG
 9/NgpbvycF3zFFWD3HQeEE96ToaDjUcGclR/VGi03pg7yNGYbLHUVxk06
 P2yhOlVAQgc5kjXXI9fS2XvqbBWSuWgfuFgaf3pfaXIlnB26xY63sgZpt
 CQoL+IA8bnFGtXsZWWeqznKTN784Tm64qrQHgRu+TH9NJ1IFZ6fqZcN6A
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IScu3SFg
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: 5262a2ad92daa9d98f7ad25dc248635ed991948a  driver core: convert class_create() to class_register()

elapsed time: 873m

configs tested: 127
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230508   gcc  
arc                  randconfig-r023-20230507   gcc  
arc                  randconfig-r043-20230507   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230508   clang
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230507   clang
arm                  randconfig-r012-20230508   clang
arm                  randconfig-r036-20230507   clang
arm                  randconfig-r046-20230507   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230507   clang
csky         buildonly-randconfig-r006-20230507   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230508   gcc  
csky                 randconfig-r011-20230507   gcc  
hexagon              randconfig-r001-20230507   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r045-20230507   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
i386                 randconfig-r014-20230508   gcc  
i386                 randconfig-r022-20230508   gcc  
i386                 randconfig-r026-20230508   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r026-20230507   gcc  
ia64                 randconfig-r034-20230507   gcc  
ia64                 randconfig-r036-20230508   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230508   gcc  
loongarch            randconfig-r021-20230507   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r001-20230507   gcc  
microblaze           randconfig-r004-20230508   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230508   gcc  
mips         buildonly-randconfig-r004-20230507   clang
mips                 randconfig-r024-20230508   clang
mips                 randconfig-r034-20230508   gcc  
mips                 randconfig-r035-20230507   clang
nios2        buildonly-randconfig-r002-20230507   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230508   gcc  
nios2                randconfig-r005-20230508   gcc  
nios2                randconfig-r021-20230508   gcc  
nios2                randconfig-r022-20230507   gcc  
openrisc     buildonly-randconfig-r003-20230508   gcc  
openrisc     buildonly-randconfig-r006-20230508   gcc  
openrisc             randconfig-r023-20230508   gcc  
openrisc             randconfig-r032-20230507   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230507   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230507   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230508   clang
riscv                randconfig-r025-20230507   clang
riscv                randconfig-r042-20230507   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230508   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230507   gcc  
s390                 randconfig-r014-20230507   clang
s390                 randconfig-r016-20230507   clang
s390                 randconfig-r044-20230507   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230508   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230507   gcc  
sparc                randconfig-r015-20230508   gcc  
sparc                randconfig-r035-20230508   gcc  
sparc64              randconfig-r005-20230507   gcc  
sparc64              randconfig-r006-20230507   gcc  
sparc64              randconfig-r024-20230507   gcc  
sparc64              randconfig-r033-20230507   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230508   clang
x86_64               randconfig-a002-20230508   clang
x86_64               randconfig-a003-20230508   clang
x86_64               randconfig-a004-20230508   clang
x86_64               randconfig-a005-20230508   clang
x86_64               randconfig-a006-20230508   clang
x86_64               randconfig-a011-20230508   gcc  
x86_64               randconfig-a012-20230508   gcc  
x86_64               randconfig-a013-20230508   gcc  
x86_64               randconfig-a014-20230508   gcc  
x86_64               randconfig-a015-20230508   gcc  
x86_64               randconfig-a016-20230508   gcc  
x86_64               randconfig-r033-20230508   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r011-20230508   gcc  
xtensa               randconfig-r025-20230508   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
