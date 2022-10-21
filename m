Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DB6607F13
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Oct 2022 21:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3651E84436;
	Fri, 21 Oct 2022 19:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3651E84436
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p_ylMvyukATG; Fri, 21 Oct 2022 19:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B65F0842E4;
	Fri, 21 Oct 2022 19:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B65F0842E4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75CD51BF846
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 19:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4DAF684341
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 19:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DAF684341
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tDFozdYDpDb for <devel@linuxdriverproject.org>;
 Fri, 21 Oct 2022 19:32:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41DF6842E4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41DF6842E4
 for <devel@driverdev.osuosl.org>; Fri, 21 Oct 2022 19:32:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="304701847"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="304701847"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 12:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="581724559"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="581724559"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 21 Oct 2022 12:32:57 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olxlI-0002u7-1N;
 Fri, 21 Oct 2022 19:32:56 +0000
Date: Sat, 22 Oct 2022 03:32:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 b4b7fd49ceddca159477ffd055e7ace0aed07ca4
Message-ID: <6352f3df.qAu6tRal28pBHUnO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666380779; x=1697916779;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=W+uB6omyO/lYzlCtD+FAGZ4C9MneGoMfOw8ESd9DM7U=;
 b=bd4Ksi6O1pHXMb2SFSO19VyBNRtcKQewfOEcR7gDXfO1PVK9oJoDsRNV
 +xecrIN4QvvzuYZIAAYVCXbV4wbB3j7jEgF7BlvfsxfDR5yH0RRlAOIms
 AdA4QcK/KtWyVinkT/NeliJXKw8D2TZ/2M0lkhWqhVXsaUGpRueAwU1Co
 HTa8sE2xjOk7v5WbbTcgSwkquGX3/Ju8MCKr+cs7/+PR66mRKQ0WkJ8rD
 5zw4asCC3EArzL5MGPGdNmTg+tKkxuStB57ruC8oyC+F+enIml+U/FoDg
 FQDkYyYUGNbAByTtY0+pGvkT6KH6wpSwNWo9SF9s9jy3vGzAWwyENB4yg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bd4Ksi6O
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
branch HEAD: b4b7fd49ceddca159477ffd055e7ace0aed07ca4  kobject: make get_ktype() take a const pointer

elapsed time: 723m

configs tested: 142
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                          rhel-8.3-func
um                             i386_defconfig
i386                                defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                        randconfig-a013
x86_64                           rhel-8.3-kvm
i386                          randconfig-a012
m68k                             allyesconfig
i386                          randconfig-a014
m68k                             allmodconfig
x86_64                        randconfig-a011
arc                              allyesconfig
i386                          randconfig-a016
x86_64                           allyesconfig
alpha                            allyesconfig
arm                                 defconfig
x86_64                        randconfig-a015
arc                  randconfig-r043-20221018
riscv                randconfig-r042-20221018
s390                 randconfig-r044-20221018
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
powerpc                      chrp32_defconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
sh                           se7750_defconfig
sh                           se7343_defconfig
nios2                         10m50_defconfig
arc                  randconfig-r043-20221020
s390                 randconfig-r044-20221020
riscv                randconfig-r042-20221020
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          randconfig-c001
m68k                       m5475evb_defconfig
xtensa                              defconfig
sparc                            alldefconfig
arm                          badge4_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                         apollo_defconfig
arc                        vdk_hs38_defconfig
sh                           se7712_defconfig
arm64                               defconfig
powerpc                 linkstation_defconfig
m68k                        mvme16x_defconfig
loongarch                           defconfig
arm                        oxnas_v6_defconfig
openrisc                         alldefconfig
powerpc                       holly_defconfig
arc                  randconfig-r043-20221019
arm                        multi_v7_defconfig
sh                           se7721_defconfig
powerpc                         ps3_defconfig
m68k                           virt_defconfig
powerpc                      ppc40x_defconfig
sparc                       sparc32_defconfig
sh                          sdk7786_defconfig
parisc                           alldefconfig
mips                      fuloong2e_defconfig
arc                           tb10x_defconfig
sh                            titan_defconfig
powerpc                     pq2fads_defconfig
arm                         nhk8815_defconfig
ia64                          tiger_defconfig
arm                        mvebu_v7_defconfig
mips                    maltaup_xpa_defconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a012
hexagon              randconfig-r041-20221018
x86_64                        randconfig-a014
hexagon              randconfig-r045-20221018
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
s390                 randconfig-r044-20221019
hexagon              randconfig-r045-20221019
riscv                randconfig-r042-20221019
hexagon              randconfig-r041-20221019
x86_64                        randconfig-k001
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
arm                       mainstone_defconfig
powerpc                          allmodconfig
arm                         s3c2410_defconfig
mips                           ip28_defconfig
mips                          ath79_defconfig
arm                         shannon_defconfig
mips                     cu1830-neo_defconfig
powerpc                    gamecube_defconfig
mips                          ath25_defconfig
powerpc                 mpc8560_ads_defconfig
mips                           rs90_defconfig
mips                       lemote2f_defconfig
powerpc                    socrates_defconfig
arm                         orion5x_defconfig
arm                        magician_defconfig
hexagon              randconfig-r041-20221020
hexagon              randconfig-r045-20221020
arm                      pxa255-idp_defconfig
powerpc                      acadia_defconfig
arm                             mxs_defconfig
arm                       netwinder_defconfig
mips                        maltaup_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
