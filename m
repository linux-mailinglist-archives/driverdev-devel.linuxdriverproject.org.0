Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3AA6762C7
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Jan 2023 02:58:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84DB841700;
	Sat, 21 Jan 2023 01:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84DB841700
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SjTNkwFpu75b; Sat, 21 Jan 2023 01:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4546D4014E;
	Sat, 21 Jan 2023 01:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4546D4014E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B442D1BF681
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 01:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B43F60D54
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 01:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B43F60D54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8FooM1YDICk for <devel@linuxdriverproject.org>;
 Sat, 21 Jan 2023 01:58:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DA9660B89
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DA9660B89
 for <devel@driverdev.osuosl.org>; Sat, 21 Jan 2023 01:58:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327018559"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="327018559"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 17:58:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="729313166"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="729313166"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jan 2023 17:58:39 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJ39S-0003F4-2l;
 Sat, 21 Jan 2023 01:58:38 +0000
Date: Sat, 21 Jan 2023 09:57:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 00142bfd5a916a0b3899cc709bf8f5042cf3d084
Message-ID: <63cb46a2.wQF08Q87VNkHiNm9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674266321; x=1705802321;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YCrsvaYhx7s6ORvGcXujlZAIHdApPRa2fTAM0PCPWi0=;
 b=GnhMBuFZfDcvp0MiO/WQwUPs4etjqpW+dKOyfc1CL3VD9HfcDHXZuFk5
 hiAPdrqPwGvA8fujbZf6c+zPVu1sMOuu+OCtfBPkubxwH35jHW8OwEzgC
 2jd57AshecYSnZwwyq/fBkMblmMXzZ+amZvASkZc8U8C34EAkgCyS54Ob
 i2Jgc7DHihIwgpoO6/rRS7zrp62Sc1AOVPaWH7ZFB6vUsRzdycydBXfyy
 6rdPg/222xoaRjzsu61JwBjw2O4Z0+W8ZmG0/Cs8w2RFmbC+NL0bCqaGF
 38Y5+6A6GGw1wGtszGH9S8voIP0GiaQUUb3sIxgPuhNogDF7yV+fk1Ion
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GnhMBuFZ
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
branch HEAD: 00142bfd5a916a0b3899cc709bf8f5042cf3d084  kernels/ksysfs.c: export kernel address bits

elapsed time: 721m

configs tested: 75
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
s390                             allyesconfig
arm                  randconfig-r046-20230119
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20230119
x86_64                          rhel-8.3-func
ia64                             allmodconfig
sh                               allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                        randconfig-a006
alpha                            allyesconfig
i386                                defconfig
x86_64                               rhel-8.3
arc                              allyesconfig
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001
arm                            hisi_defconfig
arm                      footbridge_defconfig
mips                           ci20_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
riscv                randconfig-r042-20230119
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230119
hexagon              randconfig-r041-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a015
powerpc                     tqm8540_defconfig
powerpc                    ge_imp3a_defconfig
arm                       spear13xx_defconfig
mips                       lemote2f_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     ksi8560_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
