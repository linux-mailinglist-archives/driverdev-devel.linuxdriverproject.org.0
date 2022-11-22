Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 445E2633742
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Nov 2022 09:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 561A060FE1;
	Tue, 22 Nov 2022 08:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 561A060FE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ozta0ZeqY0rM; Tue, 22 Nov 2022 08:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00AB260FD9;
	Tue, 22 Nov 2022 08:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00AB260FD9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 392861BF30F
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 08:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21565402E8
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 08:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21565402E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ATzspVRtdUm for <devel@linuxdriverproject.org>;
 Tue, 22 Nov 2022 08:36:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11D7A40160
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11D7A40160
 for <devel@driverdev.osuosl.org>; Tue, 22 Nov 2022 08:36:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="340632799"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="340632799"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 00:36:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641341360"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641341360"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 22 Nov 2022 00:36:03 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxOl9-0001GZ-2U;
 Tue, 22 Nov 2022 08:36:03 +0000
Date: Tue, 22 Nov 2022 16:35:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 0dd64fe475a4b7cefb7f4f589d16aeaca0a1204c
Message-ID: <637c89e8.OD67j4lW32m3/v3Z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669106170; x=1700642170;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=X0cXNJ2GJiALcpbhbQ5FD862uhL1DqlqOZFmMv/cxm0=;
 b=jE6ElDSIFfpKOt4IfzE+hZSfvXu2SsncpIoI1eiWbumsBly4eHfRlMHr
 ijt6iJUDf/zcpDjzx0MJ60tGVFvk4uWj2XLBOreAREDoHAWml3bVZwmzJ
 g9eApnn58LMGdqfmWurDy01dfmCVJ7/52EzK9DQ5cSxl1/8iwFuIDZPfl
 wgFY/Gvj+s8CeuOHA3sf6+EL9yJsJGEMR1+frls1aCUUrE/091DTrple+
 G5rVTKVPxv67K4iKy+zSAFKcdLHN1GyNx6VPZ8KGg+aIekQHmR8BzCUly
 RgRZnsCzBescHTc9yJP/QlwmUCbTlmTSodgXoVaD/UMf2kzJKqASLvO9+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jE6ElDSI
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 0dd64fe475a4b7cefb7f4f589d16aeaca0a1204c  driver core: pass a const * into of_device_uevent()

elapsed time: 1347m

configs tested: 103
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                            allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                          hp300_defconfig
arm                        realview_defconfig
powerpc                    sam440ep_defconfig
sh                         ap325rxa_defconfig
i386                             allyesconfig
i386                                defconfig
arm                            hisi_defconfig
sh                          sdk7786_defconfig
sparc                       sparc64_defconfig
sh                          rsk7264_defconfig
sh                           se7712_defconfig
s390                 randconfig-r044-20221121
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221121
i386                          randconfig-c001
ia64                             allmodconfig
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a012-20221121
x86_64               randconfig-a013-20221121
x86_64               randconfig-a016-20221121
x86_64               randconfig-a015-20221121
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a014-20221121
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a015-20221121
m68k                        m5272c3_defconfig
arm                         nhk8815_defconfig
arm                                 defconfig
arc                              allyesconfig
powerpc                      bamboo_defconfig
sh                               alldefconfig
m68k                        m5307c3_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                  randconfig-r043-20221120
loongarch                           defconfig
loongarch                         allnoconfig
powerpc                     tqm8541_defconfig
powerpc                     asp8347_defconfig
xtensa                    xip_kc705_defconfig
powerpc                      pasemi_defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a002-20221121
x86_64               randconfig-a001-20221121
x86_64               randconfig-a004-20221121
x86_64               randconfig-a006-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a003-20221121
powerpc                    gamecube_defconfig
powerpc                  mpc866_ads_defconfig
arm                        neponset_defconfig
powerpc                     ksi8560_defconfig
x86_64                        randconfig-k001
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
powerpc                    mvme5100_defconfig
arm                         bcm2835_defconfig
arm                         lpc32xx_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                  mpc885_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
