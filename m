Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DA2609912
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Oct 2022 06:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 588F9402F5;
	Mon, 24 Oct 2022 04:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 588F9402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bed801iq-2M; Mon, 24 Oct 2022 04:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF6A540127;
	Mon, 24 Oct 2022 04:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF6A540127
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB00C1BF3C5
 for <devel@linuxdriverproject.org>; Mon, 24 Oct 2022 04:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6974402F5
 for <devel@linuxdriverproject.org>; Mon, 24 Oct 2022 04:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6974402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrMVnFKRahRA for <devel@linuxdriverproject.org>;
 Mon, 24 Oct 2022 04:12:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B572640127
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B572640127
 for <devel@driverdev.osuosl.org>; Mon, 24 Oct 2022 04:12:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="304944883"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="304944883"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2022 21:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="960297151"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="960297151"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Oct 2022 21:12:33 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1omopE-00052h-1v;
 Mon, 24 Oct 2022 04:12:32 +0000
Date: Mon, 24 Oct 2022 12:11:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4a1fc310e739d63d2d28952e358b33adde0d87e4
Message-ID: <6356107e.y0CNV+1FGaqXXRBW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666584766; x=1698120766;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=P9M5r0Umaa0ftylLLX3qHBErElP3yLvsPDG1AGa5xi8=;
 b=Tj9RXUforOAbWLFjE9bS9T9nTe3RCjy6vRJ/JOX2TFCdRaPcXwxwwh4h
 4h6EKLXVUvCvvaQPsGhBHaJQJ7CwGfHSL6PxE15iWD3unp4FeWhz5ze0f
 Qmj8Sr8+6VGw65GSolUYds+uMsFrtRdyZ+zL6VkCJIpgmUmi8iAE5SYDH
 SJ1vSID9Xy3ZXabfJIAqRSIlq/sGg7NbkGYYaM1HwcGPP0kqaBs0dfZ2G
 WopfoH78HJeRMztLWxn/Qyis0QXktw5KA44rpnvoTkD07fEUDP5QzzKK2
 5X2ANGpZxxV7oL16bzbiWd+Mx4N9rCMpQxeTdI8ELaHD9332jKWnqC4aM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tj9RXUfo
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 4a1fc310e739d63d2d28952e358b33adde0d87e4  Staging: rtl8192e: rtl819x_HTProc: fixed unnecessary parentheses

elapsed time: 726m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
i386                                defconfig
alpha                               defconfig
s390                             allmodconfig
x86_64                              defconfig
s390                                defconfig
i386                 randconfig-a011-20221024
alpha                            allyesconfig
i386                 randconfig-a015-20221024
m68k                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a014-20221024
x86_64                          rhel-8.3-func
i386                 randconfig-a013-20221024
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
i386                 randconfig-a012-20221024
i386                             allyesconfig
arc                              allyesconfig
i386                 randconfig-a016-20221024
x86_64                               rhel-8.3
sh                               allmodconfig
x86_64                           allyesconfig
mips                             allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
arc                  randconfig-r043-20221024
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64               randconfig-a013-20221024
x86_64               randconfig-a012-20221024
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20221024
x86_64               randconfig-a011-20221024
x86_64               randconfig-a015-20221024
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20221023
arm                              allyesconfig
x86_64               randconfig-a014-20221024
s390                 randconfig-r044-20221024
arm64                            allyesconfig
x86_64               randconfig-a016-20221024
sh                          kfr2r09_defconfig
sh                           sh2007_defconfig
arm                            xcep_defconfig
sh                            migor_defconfig
arc                         haps_hs_defconfig
loongarch                 loongson3_defconfig
powerpc                      tqm8xx_defconfig
i386                          randconfig-c001
arm                            hisi_defconfig
mips                        bcm47xx_defconfig
sparc                       sparc64_defconfig
ia64                        generic_defconfig
arc                          axs103_defconfig
powerpc                       ppc64_defconfig
sh                            hp6xx_defconfig
arm                         cm_x300_defconfig
arm                            mps2_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                        m5272c3_defconfig
powerpc                      makalu_defconfig
csky                              allnoconfig
mips                     decstation_defconfig
arm                         assabet_defconfig
mips                           ip32_defconfig
xtensa                          iss_defconfig
parisc                generic-64bit_defconfig
mips                     loongson1b_defconfig
powerpc                      bamboo_defconfig
arm                          pxa3xx_defconfig
sh                           se7750_defconfig
arm                           tegra_defconfig
sh                   rts7751r2dplus_defconfig
xtensa                  nommu_kc705_defconfig
sh                          rsk7201_defconfig

clang tested configs:
x86_64               randconfig-a001-20221024
hexagon              randconfig-r045-20221023
x86_64               randconfig-a005-20221024
x86_64               randconfig-a003-20221024
hexagon              randconfig-r041-20221024
x86_64               randconfig-a006-20221024
x86_64               randconfig-a004-20221024
x86_64               randconfig-a002-20221024
riscv                randconfig-r042-20221023
hexagon              randconfig-r045-20221024
s390                 randconfig-r044-20221023
i386                 randconfig-a001-20221024
i386                 randconfig-a002-20221024
i386                 randconfig-a005-20221024
hexagon              randconfig-r041-20221023
i386                 randconfig-a003-20221024
i386                 randconfig-a004-20221024
i386                 randconfig-a006-20221024
mips                     cu1830-neo_defconfig
x86_64                        randconfig-k001
powerpc                  mpc885_ads_defconfig
mips                           rs90_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
