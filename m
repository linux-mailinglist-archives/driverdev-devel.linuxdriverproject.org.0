Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B20456B557A
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Mar 2023 00:18:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9514D41C92;
	Fri, 10 Mar 2023 23:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9514D41C92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KY7R-wwma73U; Fri, 10 Mar 2023 23:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED55141C98;
	Fri, 10 Mar 2023 23:18:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED55141C98
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5591BF409
 for <devel@linuxdriverproject.org>; Fri, 10 Mar 2023 23:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8415A41C92
 for <devel@linuxdriverproject.org>; Fri, 10 Mar 2023 23:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8415A41C92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S8Ns4FQPn-TZ for <devel@linuxdriverproject.org>;
 Fri, 10 Mar 2023 23:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34A2E41C90
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34A2E41C90
 for <devel@driverdev.osuosl.org>; Fri, 10 Mar 2023 23:18:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="423116563"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="423116563"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 15:18:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="788215416"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="788215416"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2023 15:18:34 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pam0P-00049q-0y;
 Fri, 10 Mar 2023 23:18:33 +0000
Date: Sat, 11 Mar 2023 07:17:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 0433686c6092f65b552eadad651f620e51b6aad1
Message-ID: <640bbaa3.xMxK3NJsYbWL0qWQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678490331; x=1710026331;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Z/+hR/fTNOTcgg2TcWtY0LoflOSTzGfpvc5TlqUjKzo=;
 b=hcNjMTMeaK85SYap1ZtXI8IKkaGuYbjYrpLXm+FsEeqZ8xuVoR7ouJ8b
 sx1FRZ+ev/DnA9YPbR9fetr+itrH+iYXHgmA1jNEBjSRUiPJc9cXwQwur
 49gHFLMETSJz3t7UB+h08kewI19qi50TD2uD/iFZYph67ZyStT3hNUeGv
 VakXV05mFdbKba9isb5PXI3idBPX9C2EC8HVy5lh2TFTrt/yzVaCP0vxz
 6AyO/vP7u85FVtvIKL91L481nJ9G2TuFHuZ2+csUehmfO07XP6/0tQHwO
 jdBzzqwOe/dRIILWwbbFlGH4c2RRFhaAqP+1Q3/nSbmC11NKMlcrlfats
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hcNjMTMe
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
branch HEAD: 0433686c6092f65b552eadad651f620e51b6aad1  devres: Pass unique name of the resource to devm_add_action()

elapsed time: 898m

configs tested: 122
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230310   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230310   gcc  
arc                  randconfig-r015-20230310   gcc  
arc                  randconfig-r025-20230310   gcc  
arc                  randconfig-r032-20230310   gcc  
arc                  randconfig-r043-20230310   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230310   clang
arm                                 defconfig   gcc  
arm                  randconfig-r036-20230310   gcc  
arm                  randconfig-r046-20230310   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230310   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230310   gcc  
csky                 randconfig-r005-20230310   gcc  
csky                 randconfig-r026-20230310   gcc  
hexagon              randconfig-r041-20230310   clang
hexagon              randconfig-r045-20230310   clang
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
ia64         buildonly-randconfig-r001-20230310   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r016-20230310   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230310   gcc  
loongarch            randconfig-r026-20230310   gcc  
loongarch            randconfig-r034-20230310   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230310   gcc  
m68k                 randconfig-r024-20230310   gcc  
microblaze           randconfig-r001-20230310   gcc  
microblaze           randconfig-r013-20230310   gcc  
microblaze           randconfig-r022-20230310   gcc  
microblaze           randconfig-r035-20230310   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230310   gcc  
mips                 randconfig-r016-20230310   clang
mips                 randconfig-r021-20230310   clang
mips                 randconfig-r025-20230310   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230310   gcc  
nios2                randconfig-r035-20230310   gcc  
openrisc     buildonly-randconfig-r006-20230310   gcc  
openrisc             randconfig-r002-20230310   gcc  
openrisc             randconfig-r014-20230310   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230310   gcc  
parisc               randconfig-r012-20230310   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r033-20230310   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230310   clang
riscv                randconfig-r042-20230310   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r004-20230310   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r034-20230310   clang
s390                 randconfig-r044-20230310   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230310   gcc  
sh           buildonly-randconfig-r006-20230310   gcc  
sh                   randconfig-r001-20230310   gcc  
sh                   randconfig-r033-20230310   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230310   gcc  
sparc                randconfig-r022-20230310   gcc  
sparc                randconfig-r023-20230310   gcc  
sparc                randconfig-r024-20230310   gcc  
sparc64      buildonly-randconfig-r004-20230310   gcc  
sparc64              randconfig-r006-20230310   gcc  
sparc64              randconfig-r031-20230310   gcc  
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
xtensa               randconfig-r013-20230310   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
