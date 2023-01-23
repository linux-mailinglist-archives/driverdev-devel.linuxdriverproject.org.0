Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12397677494
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Jan 2023 05:13:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AF2260BC7;
	Mon, 23 Jan 2023 04:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AF2260BC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JQXzwordvC_4; Mon, 23 Jan 2023 04:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E58360BC3;
	Mon, 23 Jan 2023 04:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E58360BC3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF20C1BF295
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B966D415E9
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B966D415E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uYvKRVl3389t for <devel@linuxdriverproject.org>;
 Mon, 23 Jan 2023 04:12:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AA6D415E7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AA6D415E7
 for <devel@driverdev.osuosl.org>; Mon, 23 Jan 2023 04:12:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="328058788"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="328058788"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 20:12:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835330664"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="835330664"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 22 Jan 2023 20:12:55 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJoCU-0005PI-2O;
 Mon, 23 Jan 2023 04:12:54 +0000
Date: Mon, 23 Jan 2023 12:12:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f89fd04323f755e7437a0113d986812c3fffe03d
Message-ID: <63ce0942.RPuLqkCRW356olkA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674447178; x=1705983178;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=X7JbAb7fwl2Fs1zQkslvM//T2YJAl0BPOvo7RJyO3SY=;
 b=ISyOAyQ3NVLtMKgoWJAoHoQOWrnmpzy9srXdskUoCSf3ZZdIRiBTm+qo
 DPpiHA0kXU2eVVXmewzUoYsG8N1wEXDp3OAyl4MBMHrCma0TP2aVrxX/i
 i4E6xb+4aNpkU758RYvZB3sKx9c/7JpJuZTi5flybhN05zVBUdGDeJMPG
 uZY89f2fvPmygPRulzAm38gSgG/ZCAlkTF9wZc3Z3zqEML8pcH78SVan8
 PuaCmYyxKpI5NHNWioURzVgnqzJNK18PIL6dTut3G/UX2dn8LR79LVxbQ
 OSDP4dgucHACWRFl4Ja4RI17R/iDU7oW58eUOI7I2To/v+is+zp7MRQ9j
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISyOAyQ3
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
branch HEAD: f89fd04323f755e7437a0113d986812c3fffe03d  Merge 6.2-rc5 into driver-core-next

elapsed time: 721m

configs tested: 95
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                              defconfig
arm                                 defconfig
x86_64                               rhel-8.3
x86_64               randconfig-a006-20230123
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
mips                             allyesconfig
arc                  randconfig-r043-20230123
powerpc                          allmodconfig
arc                                 defconfig
arc                  randconfig-r043-20230122
i386                 randconfig-a006-20230123
x86_64               randconfig-a002-20230123
riscv                randconfig-r042-20230122
i386                 randconfig-a003-20230123
arm                  randconfig-r046-20230123
i386                 randconfig-a002-20230123
arm64                            allyesconfig
i386                 randconfig-a001-20230123
i386                 randconfig-a005-20230123
s390                             allmodconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
s390                 randconfig-r044-20230122
x86_64                         rhel-8.3-kunit
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
i386                 randconfig-a004-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
alpha                               defconfig
m68k                             allyesconfig
x86_64               randconfig-a004-20230123
m68k                             allmodconfig
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a003-20230123
s390                             allyesconfig
i386                             allyesconfig
alpha                            allyesconfig
s390                                defconfig
arc                              allyesconfig
nios2                         10m50_defconfig
sh                            hp6xx_defconfig
powerpc                        cell_defconfig
sh                            titan_defconfig
sh                          rsk7264_defconfig
powerpc                 linkstation_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64               randconfig-a016-20230123
hexagon              randconfig-r041-20230123
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230122
hexagon              randconfig-r045-20230123
i386                 randconfig-a016-20230123
s390                 randconfig-r044-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
arm                  randconfig-r046-20230122
riscv                randconfig-r042-20230123
hexagon              randconfig-r041-20230122
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
i386                 randconfig-a014-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                         s5pv210_defconfig
arm                         mv78xx0_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                    gamecube_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                             allyesconfig
riscv                          rv32_defconfig
powerpc                     skiroot_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
