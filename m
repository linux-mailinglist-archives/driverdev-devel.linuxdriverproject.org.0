Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC608597E8
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Feb 2024 18:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22EDF82187;
	Sun, 18 Feb 2024 17:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoj1rl1KDakG; Sun, 18 Feb 2024 17:02:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E9B982189
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E9B982189;
	Sun, 18 Feb 2024 17:02:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CDFC1BF2F9
 for <devel@linuxdriverproject.org>; Sun, 18 Feb 2024 17:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AC1560797
 for <devel@linuxdriverproject.org>; Sun, 18 Feb 2024 17:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KwbKdU9WskHz for <devel@linuxdriverproject.org>;
 Sun, 18 Feb 2024 17:02:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C50486066D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C50486066D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C50486066D
 for <devel@driverdev.osuosl.org>; Sun, 18 Feb 2024 17:02:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="2218874"
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; 
   d="scan'208";a="2218874"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2024 09:02:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,168,1705392000"; d="scan'208";a="41789634"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 18 Feb 2024 09:02:35 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rbkYj-0003B6-0Z;
 Sun, 18 Feb 2024 17:02:33 +0000
Date: Mon, 19 Feb 2024 01:02:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 455c5e12a3b7d08c2ab47b7dd54944901c69cdcd
Message-ID: <202402190108.qOJL7l6k-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708275759; x=1739811759;
 h=date:from:to:cc:subject:message-id;
 bh=pZVMgggbB/zBniRzmoHgHaNXOfHgTuaynoJG6IlkbAY=;
 b=AI9i6ezbdX6rf3sVKu5TWK0aY5pm7xMCmrn2t+vf6XAICORJMNMLEgDZ
 Wl026a7jDKr+XVokKWE/2vzDeSN/GtzP6miEb+R/eu4NNuoaItB0nM84T
 4+0MqTV+3Pumzb3HLo1SJbq/igwTC+v/gF2pgiJ6b0at5Bi2OfcDtQa8e
 rGsmch553qGyQPE0w2c0/jP8z+PLQum0bbp0Jim29wq6FVZtEmLQbb5yO
 W60xgWJ7evQ/saVuW7VjonVAWaUF4qu/lS64otdvuckMVcGWt7MXmmK0g
 EsiGISC8RTlu42qtI+HmVz25sZCoqtv9IRJ2eR9vVYbG/MX8z74Zynnfn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AI9i6ezb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 455c5e12a3b7d08c2ab47b7dd54944901c69cdcd  staging: gdm724x: constantify the struct device_type usage

elapsed time: 1450m

configs tested: 179
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
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240218   gcc  
arc                   randconfig-002-20240218   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                   randconfig-003-20240218   gcc  
arm                           sama5_defconfig   gcc  
arm                        shmobile_defconfig   gcc  
arm                           spitz_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-004-20240218   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240218   gcc  
csky                  randconfig-002-20240218   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240218   clang
i386         buildonly-randconfig-002-20240218   clang
i386         buildonly-randconfig-003-20240218   clang
i386         buildonly-randconfig-004-20240218   clang
i386         buildonly-randconfig-005-20240218   clang
i386         buildonly-randconfig-006-20240218   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240218   clang
i386                  randconfig-002-20240218   gcc  
i386                  randconfig-003-20240218   clang
i386                  randconfig-004-20240218   clang
i386                  randconfig-005-20240218   clang
i386                  randconfig-006-20240218   gcc  
i386                  randconfig-011-20240218   gcc  
i386                  randconfig-012-20240218   gcc  
i386                  randconfig-013-20240218   clang
i386                  randconfig-014-20240218   gcc  
i386                  randconfig-015-20240218   gcc  
i386                  randconfig-016-20240218   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240218   gcc  
loongarch             randconfig-002-20240218   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   gcc  
mips                     cu1000-neo_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240218   gcc  
nios2                 randconfig-002-20240218   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240218   gcc  
parisc                randconfig-002-20240218   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                      ppc64e_defconfig   gcc  
powerpc               randconfig-001-20240218   gcc  
powerpc               randconfig-002-20240218   gcc  
powerpc64             randconfig-002-20240218   gcc  
powerpc64             randconfig-003-20240218   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240218   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240218   gcc  
s390                  randconfig-002-20240218   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20240218   gcc  
sh                    randconfig-002-20240218   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          alldefconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240218   gcc  
sparc64               randconfig-002-20240218   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240218   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240218   clang
x86_64       buildonly-randconfig-002-20240218   gcc  
x86_64       buildonly-randconfig-003-20240218   gcc  
x86_64       buildonly-randconfig-004-20240218   clang
x86_64       buildonly-randconfig-005-20240218   gcc  
x86_64       buildonly-randconfig-006-20240218   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240218   clang
x86_64                randconfig-002-20240218   clang
x86_64                randconfig-003-20240218   gcc  
x86_64                randconfig-004-20240218   gcc  
x86_64                randconfig-005-20240218   gcc  
x86_64                randconfig-006-20240218   clang
x86_64                randconfig-011-20240218   clang
x86_64                randconfig-012-20240218   gcc  
x86_64                randconfig-013-20240218   clang
x86_64                randconfig-014-20240218   clang
x86_64                randconfig-015-20240218   gcc  
x86_64                randconfig-016-20240218   clang
x86_64                randconfig-071-20240218   gcc  
x86_64                randconfig-072-20240218   clang
x86_64                randconfig-073-20240218   gcc  
x86_64                randconfig-074-20240218   gcc  
x86_64                randconfig-075-20240218   clang
x86_64                randconfig-076-20240218   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240218   gcc  
xtensa                randconfig-002-20240218   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
