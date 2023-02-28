Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FA86A527D
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 05:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 426D8402A7;
	Tue, 28 Feb 2023 04:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 426D8402A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSP_ApSNeDp2; Tue, 28 Feb 2023 04:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7DD9400D6;
	Tue, 28 Feb 2023 04:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7DD9400D6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F7DF1BF2B0
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 04:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29BF2402A7
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 04:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29BF2402A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LwKQEaTxijbW for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 04:57:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22433400D6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22433400D6
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 04:57:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="334090939"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="334090939"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 20:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="797935393"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="797935393"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 27 Feb 2023 20:57:18 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWs3C-00056J-0s;
 Tue, 28 Feb 2023 04:57:18 +0000
Date: Tue, 28 Feb 2023 12:56:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 8531201c53e75f23000344a9ab9f46770801aae7
Message-ID: <63fd8974.n8M1Su3R3sfBXkWR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677560241; x=1709096241;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CQwtxyYU+hJ4CECQEl9I+HaSJK5Gb1NwTlFXQvMTuAs=;
 b=celGFfU8wXGpFJIjihRRsoVoiey65dRDt3UtdcpFSAAFDzfVoVa0dlv7
 2fDlVkIHF4isDhi3bOj2/4jndz0uovu7StlgqyrQNc7oEasE70zL70ltH
 rIyQq2rfk1H23M6oOFjP9dDNpkeikrIuK8Ir6mhdVWg6qzs3d+5HAGywA
 4WnWZdk79orz7YgvuczKarm32rK1Cr+9XtA4g2OMq4kbRygwtAHlld4Gz
 EUmdqHUiYmmJ8tYF8yZk0zJRUSiBUgFpFuSetCIq/k+CzNmdg7euwSTg5
 df6YwLvp+S0TD7olyJbqfy2eGXA2+dXaz7y67xZ8NTRck4BSR7gi5Qt4T
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=celGFfU8
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
branch HEAD: 8531201c53e75f23000344a9ab9f46770801aae7  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 724m

configs tested: 131
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230226   gcc  
alpha        buildonly-randconfig-r003-20230227   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r026-20230226   gcc  
alpha                randconfig-r026-20230227   gcc  
alpha                randconfig-r034-20230226   gcc  
alpha                randconfig-r035-20230227   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230227   gcc  
arc                  randconfig-r043-20230226   gcc  
arc                  randconfig-r043-20230227   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r006-20230226   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230226   gcc  
arm                  randconfig-r046-20230227   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230227   clang
arm64                randconfig-r005-20230227   clang
arm64                randconfig-r022-20230227   gcc  
arm64                randconfig-r031-20230227   clang
arm64                randconfig-r034-20230227   clang
csky                                defconfig   gcc  
csky                 randconfig-r003-20230226   gcc  
csky                 randconfig-r006-20230226   gcc  
csky                 randconfig-r011-20230227   gcc  
csky                 randconfig-r025-20230226   gcc  
hexagon      buildonly-randconfig-r004-20230227   clang
hexagon              randconfig-r013-20230226   clang
hexagon              randconfig-r015-20230226   clang
hexagon              randconfig-r024-20230227   clang
hexagon              randconfig-r035-20230226   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r032-20230227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230226   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230226   gcc  
loongarch            randconfig-r022-20230226   gcc  
loongarch            randconfig-r031-20230226   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230227   gcc  
m68k                 randconfig-r013-20230227   gcc  
m68k                 randconfig-r016-20230227   gcc  
m68k                 randconfig-r033-20230226   gcc  
microblaze           randconfig-r001-20230226   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r014-20230227   clang
mips                 randconfig-r036-20230227   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230226   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r036-20230226   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230226   gcc  
riscv                randconfig-r042-20230226   clang
riscv                randconfig-r042-20230227   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230227   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230226   gcc  
s390                 randconfig-r023-20230226   clang
s390                 randconfig-r044-20230226   clang
s390                 randconfig-r044-20230227   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230226   gcc  
sh                   randconfig-r012-20230226   gcc  
sh                   randconfig-r033-20230227   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230227   gcc  
sparc                randconfig-r016-20230226   gcc  
sparc                randconfig-r032-20230226   gcc  
sparc64      buildonly-randconfig-r005-20230227   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r006-20230227   clang
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
x86_64               randconfig-r025-20230227   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230227   gcc  
xtensa               randconfig-r021-20230226   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
