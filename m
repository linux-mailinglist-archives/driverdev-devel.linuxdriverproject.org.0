Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE5F633496
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Nov 2022 06:00:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17AE160BE3;
	Tue, 22 Nov 2022 05:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17AE160BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUHTbyXLA--n; Tue, 22 Nov 2022 05:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE05460B73;
	Tue, 22 Nov 2022 05:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE05460B73
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FC7F1BF20B
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 05:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59FA160BE3
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 05:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59FA160BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7HhfqWEwLRL for <devel@linuxdriverproject.org>;
 Tue, 22 Nov 2022 05:00:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32F5860B73
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 32F5860B73
 for <devel@driverdev.osuosl.org>; Tue, 22 Nov 2022 05:00:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="301276405"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="301276405"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 20:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="886383727"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="886383727"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2022 20:59:57 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxLO0-00015n-1c;
 Tue, 22 Nov 2022 04:59:56 +0000
Date: Tue, 22 Nov 2022 12:59:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 19e83c7d0647cc29d3c6547693c09b6b26e66706
Message-ID: <637c5749.tV5GTwqZrk2OdyAw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669093200; x=1700629200;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jjAn8VPTejudhL/NPZG79MdSVxIZ0ouFmGuASqE50bQ=;
 b=e+XQcKVLEv8xMV4yK70BiEw9RXge93cgKKlO3wVo3ChKnUxbzUPMGgi/
 MozlbuWQAp9oP4pyHQyth4vVQGC11j2BJVo+PFkwHapFH8EP2hkZTYdNf
 IAbABIzgQGz+C4KxQCrKNh4j8VtJdDndCIv9iLSIT485kYw+H6qJtuNYo
 Prra5+jB8rcPPOLNGyuLCUB+BfiQHa+BYaDotBW757zBH1Vo0BwZ1skv0
 1U5C/wVoZKX7fUomAsaLtbz4ghFvx61Hrkxw6b+f9JA2NM0VMo3HO8FNr
 3ouxoVeMxHsTPKAj9oRJvrLNch/8tIlO+T+kTD/HjhJo/YIPq9T53vPFB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e+XQcKVL
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
branch HEAD: 19e83c7d0647cc29d3c6547693c09b6b26e66706  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 1133m

configs tested: 109
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                            allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                          hp300_defconfig
arm                        realview_defconfig
powerpc                    sam440ep_defconfig
sh                         ap325rxa_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
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
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
mips                           jazz_defconfig
powerpc                      ep88xc_defconfig
m68k                       m5249evb_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                           sama5_defconfig
arm                      footbridge_defconfig
powerpc                       eiger_defconfig
arc                           tb10x_defconfig
mips                          rb532_defconfig
powerpc                      bamboo_defconfig
sh                               alldefconfig
m68k                        m5307c3_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arc                  randconfig-r043-20221120
powerpc                     tqm8541_defconfig
powerpc                     asp8347_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
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

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
