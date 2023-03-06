Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0504F6AD229
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Mar 2023 23:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0603140983;
	Mon,  6 Mar 2023 22:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0603140983
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GyBLU--qB96U; Mon,  6 Mar 2023 22:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4D4740650;
	Mon,  6 Mar 2023 22:58:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4D4740650
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 27F401BF3AD
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 22:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1D9F61026
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 22:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1D9F61026
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e6CI6WatYHqu for <devel@linuxdriverproject.org>;
 Mon,  6 Mar 2023 22:58:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE93861023
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE93861023
 for <devel@driverdev.osuosl.org>; Mon,  6 Mar 2023 22:58:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="337220441"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="337220441"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 14:58:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="800167956"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="800167956"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 06 Mar 2023 14:58:38 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZJmv-0000iH-2r;
 Mon, 06 Mar 2023 22:58:37 +0000
Date: Tue, 07 Mar 2023 06:57:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 91e1c88a089a4eca307d7136c7799bf26209a078
Message-ID: <64066ff5.9fW9MYg7sq/MfSTI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678143520; x=1709679520;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=diLr7HGgfBWjS8qhlKjZFOZkOEi5MbQzTunioA/w3LE=;
 b=WhNHM5sX+kPFwgwtf/8Y+naaEjyf0cCvxO7OyML6wTDXz9LMGDWzrIpo
 RS7hi2nUHUx0fgVbxmDIVoFyMr88UCP+9EG6FNC/B5DV2RLWfGsCgAlqx
 5AySG5j3/O3H3YOa2U4JKVVNEE1HNb+eCjMErpn3qC8Uzd4++iyYHfQz8
 ms9j8sPTZaUzaNJKy5XxjGF3SGnXui02juQgO2qfC6mJtctKsMJ+plk7g
 GGrFhjAboK/HT+EnB9ijK2tDYFxEBtKiKnDsoqGWloFliZ0EFJvOL2zUx
 Z166Os2oofl9V8rbAPnu9theptRwpEtwWGzgl5nDc/J51HTBdwbF6vEp5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WhNHM5sX
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: 91e1c88a089a4eca307d7136c7799bf26209a078  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 965m

configs tested: 127
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r035-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230306   gcc  
arc                  randconfig-r016-20230306   gcc  
arc                  randconfig-r032-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r023-20230305   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230306   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230305   gcc  
csky                 randconfig-r021-20230305   gcc  
hexagon              randconfig-r002-20230306   clang
hexagon              randconfig-r014-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230306   gcc  
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
i386                 randconfig-r034-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230305   gcc  
ia64                 randconfig-r023-20230306   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230305   gcc  
loongarch            randconfig-r011-20230306   gcc  
loongarch            randconfig-r015-20230305   gcc  
loongarch            randconfig-r022-20230306   gcc  
loongarch            randconfig-r033-20230305   gcc  
loongarch            randconfig-r034-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r032-20230305   gcc  
m68k                 randconfig-r036-20230306   gcc  
microblaze   buildonly-randconfig-r005-20230305   gcc  
microblaze           randconfig-r005-20230305   gcc  
microblaze           randconfig-r024-20230306   gcc  
microblaze           randconfig-r025-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230306   gcc  
openrisc     buildonly-randconfig-r002-20230306   gcc  
openrisc             randconfig-r014-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230305   gcc  
parisc               randconfig-r021-20230306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r006-20230305   gcc  
powerpc              randconfig-r006-20230306   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230306   clang
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230306   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r012-20230306   gcc  
sh                   randconfig-r015-20230306   gcc  
sh                   randconfig-r022-20230305   gcc  
sh                   randconfig-r026-20230305   gcc  
sparc        buildonly-randconfig-r001-20230305   gcc  
sparc        buildonly-randconfig-r002-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230306   gcc  
sparc                randconfig-r016-20230305   gcc  
sparc64              randconfig-r025-20230305   gcc  
sparc64              randconfig-r036-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
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
x86_64               randconfig-r001-20230306   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
