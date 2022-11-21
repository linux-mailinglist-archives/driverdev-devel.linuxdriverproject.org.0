Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B959632DD8
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Nov 2022 21:21:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EFE54094D;
	Mon, 21 Nov 2022 20:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EFE54094D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMiAOQk9bCzj; Mon, 21 Nov 2022 20:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE4E44049F;
	Mon, 21 Nov 2022 20:21:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE4E44049F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DEA31BF34D
 for <devel@linuxdriverproject.org>; Mon, 21 Nov 2022 20:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38E6F60F1B
 for <devel@linuxdriverproject.org>; Mon, 21 Nov 2022 20:21:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38E6F60F1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2qw7sCPofRS for <devel@linuxdriverproject.org>;
 Mon, 21 Nov 2022 20:21:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFA2460BF0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFA2460BF0
 for <devel@driverdev.osuosl.org>; Mon, 21 Nov 2022 20:21:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="377914325"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="377914325"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 12:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783579711"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="783579711"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2022 12:21:34 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxDIM-0000j8-18;
 Mon, 21 Nov 2022 20:21:34 +0000
Date: Tue, 22 Nov 2022 04:21:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 ccdbe14b77a5e39496baf632e157f9daf322dd27
Message-ID: <637bddb7.y1mStK3EnYfEVwEn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669062096; x=1700598096;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WIi0PUP3+mlHQGHl0SmdNPd9mAVpiCVwLmP3bzUeko4=;
 b=Lm7T12bgmJ8qcE9TBc2r9YERgZ9OJCzavyD/ZVUzMzYO9Txu/9UZmysL
 Ne8MiIp7RVAGZAXNRcqqFAYvUWMLzdNS9866oqPF0Gk7zIdoFREhvwxdd
 CQshVKZL1HI6fOpTLfYz8LfqX6Sghw3EfV6zZLUIvj6ZGg48u5xlFbxVm
 3wyZBriSJcqDcTH/t7hGHN87imlsYitMa0O0cPHZAoNhG9SwDQF5x71Iv
 PX4memzTzASDO4KulmhiyLxQ/9UDfxNaRt207DraPU1BAdTu3j+158RQK
 SLE5wb0ssV6JVrISvbinloNsR4Va9jwzodn90VY0KHSNSLWmhD625lxvj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lm7T12bg
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: ccdbe14b77a5e39496baf632e157f9daf322dd27  staging: rtl8192e: Rename pHTInfo

elapsed time: 5797m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
s390                             allyesconfig
sh                               allmodconfig
x86_64                            allnoconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
s390                 randconfig-r044-20221121
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221121
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                                defconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
sh                            migor_defconfig
sh                          urquell_defconfig
i386                 randconfig-a014-20221121
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a015-20221121
arc                              allyesconfig
i386                          randconfig-c001
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a012-20221121
x86_64               randconfig-a013-20221121
x86_64               randconfig-a016-20221121
x86_64               randconfig-a015-20221121
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
mips                      loongson3_defconfig
csky                                defconfig
powerpc                      ppc6xx_defconfig
sh                             espt_defconfig
arm                              allmodconfig
arm                           corgi_defconfig
powerpc                      bamboo_defconfig
sh                          r7780mp_defconfig
arm                        cerfcube_defconfig
xtensa                           alldefconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                            allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
arm                          simpad_defconfig
sh                          rsk7264_defconfig
mips                 decstation_r4k_defconfig
loongarch                           defconfig
arm                             pxa_defconfig
mips                        bcm47xx_defconfig
powerpc                    adder875_defconfig
mips                           ip32_defconfig
xtensa                       common_defconfig
loongarch                         allnoconfig
powerpc                     sequoia_defconfig
arm                        shmobile_defconfig
arc                  randconfig-r043-20221120
sh                        sh7763rdp_defconfig
m68k                            q40_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                 mpc837x_mds_defconfig
arm                      footbridge_defconfig
powerpc                       eiger_defconfig
m68k                             allmodconfig
m68k                          hp300_defconfig
arm                        realview_defconfig
powerpc                    sam440ep_defconfig
sh                         ap325rxa_defconfig

clang tested configs:
x86_64               randconfig-a002-20221121
x86_64               randconfig-a001-20221121
x86_64               randconfig-a004-20221121
x86_64               randconfig-a006-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a003-20221121
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
x86_64                        randconfig-k001
arm                                 defconfig
arm                          pxa168_defconfig
riscv                          rv32_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                    mvme5100_defconfig
arm                         bcm2835_defconfig
arm                         lpc32xx_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
