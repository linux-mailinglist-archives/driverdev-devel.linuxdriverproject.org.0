Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 683596CF214
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Mar 2023 20:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8E1660BF2;
	Wed, 29 Mar 2023 18:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E1660BF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hg4bRm47CHXs; Wed, 29 Mar 2023 18:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9020960777;
	Wed, 29 Mar 2023 18:23:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9020960777
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 481941BF33B
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 18:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1975041B80
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 18:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1975041B80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2sPpzlUruQa for <devel@linuxdriverproject.org>;
 Wed, 29 Mar 2023 18:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC08C41AE2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC08C41AE2
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 18:23:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="321354528"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="321354528"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 11:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="773684722"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="773684722"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Mar 2023 11:23:06 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phaRu-000JoO-0I;
 Wed, 29 Mar 2023 18:23:06 +0000
Date: Thu, 30 Mar 2023 02:22:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 bc1f183feb41b857c6ef6d5f2c728b572bd2b0fa
Message-ID: <642481fb.oL9G3R1/c30mD+/i%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680114195; x=1711650195;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NtQaJ1b6cOuKjBwf3hd/CkOaaW474M2iktgb/+zS2EY=;
 b=m3sQ7dH/i73uLqoTxN8zSRmGdGtA5sGRQe5XC7qtx/ZX2jVBm7jU3cpZ
 DvErernHJMnnuayNpmaD8T0EllvIuB7XE8pbwStlJ/L/Hv3b5W+e541yT
 19iY6e8LvJEpYp819zfgLHrrqZn4SrtXEOYU4aKfWuP4DJCPkHIF9pAn6
 RniwCT0CLYkY9P7/WcUti+iJcMai3jBr/guJh6nk+8D9LfVgv3Yt/5uAo
 Aoau7cCS0r4Q0eirKGaF+V0EMeQx5ggWaEFZgNU1LQfjQo5kusJ3s1pAj
 L8UX40Tek3DI4FcODSk/y9wa3ciMV79XKHBHgkD2jv3ZKZIMxa+RL5bem
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m3sQ7dH/
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: bc1f183feb41b857c6ef6d5f2c728b572bd2b0fa  driver core: class: remove struct class_interface * from callbacks

elapsed time: 725m

configs tested: 103
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230329   gcc  
alpha                randconfig-r012-20230329   gcc  
alpha                randconfig-r036-20230329   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230329   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r013-20230329   gcc  
arm                  randconfig-r026-20230329   gcc  
arm                  randconfig-r046-20230329   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230329   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230329   gcc  
hexagon              randconfig-r003-20230329   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r045-20230329   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230327   gcc  
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230327   gcc  
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
ia64                 randconfig-r015-20230329   gcc  
ia64                 randconfig-r023-20230329   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r006-20230329   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230329   gcc  
microblaze           randconfig-r035-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230329   gcc  
openrisc             randconfig-r022-20230329   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230329   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230329   clang
riscv                randconfig-r042-20230329   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230329   gcc  
s390                 randconfig-r044-20230329   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r031-20230329   gcc  
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
x86_64               randconfig-a011-20230327   clang
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230327   clang
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230327   clang
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230327   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230327   clang
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230329   gcc  
xtensa       buildonly-randconfig-r003-20230329   gcc  
xtensa               randconfig-r002-20230329   gcc  
xtensa               randconfig-r032-20230329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
