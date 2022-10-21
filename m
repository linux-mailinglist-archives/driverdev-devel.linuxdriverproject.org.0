Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A0C606F4E
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Oct 2022 07:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 083DA60E15;
	Fri, 21 Oct 2022 05:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 083DA60E15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 21y2sAXu9aau; Fri, 21 Oct 2022 05:16:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FBDB60DC2;
	Fri, 21 Oct 2022 05:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FBDB60DC2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4B611BF3A4
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 05:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F779842D3
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 05:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F779842D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxxF-r6NplKW for <devel@linuxdriverproject.org>;
 Fri, 21 Oct 2022 05:16:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8101A8405C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8101A8405C
 for <devel@driverdev.osuosl.org>; Fri, 21 Oct 2022 05:16:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="306904717"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="306904717"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 22:16:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="663523970"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="663523970"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 20 Oct 2022 22:16:30 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olkOU-0002FT-0M;
 Fri, 21 Oct 2022 05:16:30 +0000
Date: Fri, 21 Oct 2022 13:15:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 404971602898ab3517b077be08f34eda4af0a482
Message-ID: <63522af4.h05QzUSWqQSBly9y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666329392; x=1697865392;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yuO7TEDzmZfVwJBiqPZdT9xLD5DbHE08eJG+8FT236o=;
 b=WrhDOxiKIqUK8axuubu4iRjbj9ORgGdDji1yfCoNst5T5dCjdIyXXk7+
 e6tvBbMsr0BIGsIqRcztsREam5GZlTU4qMyYve1/mweD+UDrrtsE0EQy7
 2DupUNWtYXAp8pVUaljEyDhhZf0cpaWXuvt8obk+cYgbUKqn1ijhsROVt
 L0WtVS7mmNrje7o2egEj/419CvXFE+w5Pl3KNlsGdMldXf4JxNNmurLiM
 mdrklgfOd98IVXE3KNcCPQ07XbL9DthhxyN6M/la8EP5j2gsX9kWMrucY
 ySC1a6i/+qJTY+ihBkuvvlMdpjdFaVXKezc/e2qf94fjZnROxs4x/SibS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WrhDOxiK
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
branch HEAD: 404971602898ab3517b077be08f34eda4af0a482  staging: octeon: remove redundant variable total_freed

elapsed time: 792m

configs tested: 109
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
m68k                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
arc                  randconfig-r043-20221019
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                           allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
openrisc                         alldefconfig
powerpc                       holly_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
powerpc                      chrp32_defconfig
i386                          randconfig-c001
sh                           se7750_defconfig
sh                           se7343_defconfig
nios2                         10m50_defconfig
m68k                       m5475evb_defconfig
xtensa                              defconfig
sparc                            alldefconfig
arm                          badge4_defconfig
um                               alldefconfig
powerpc                  iss476-smp_defconfig
sh                         apsh4a3a_defconfig
m68k                         apollo_defconfig
arc                        vdk_hs38_defconfig
sh                           se7712_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                           ci20_defconfig
m68k                        mvme147_defconfig
openrisc                            defconfig
mips                       bmips_be_defconfig
sh                ecovec24-romimage_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
arm                          gemini_defconfig
mips                  maltasmvp_eva_defconfig
arc                  randconfig-r043-20221018
arc                  randconfig-r043-20221020
s390                 randconfig-r044-20221018
s390                 randconfig-r044-20221020
riscv                randconfig-r042-20221018
riscv                randconfig-r042-20221020
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
riscv                randconfig-r042-20221019
hexagon              randconfig-r045-20221019
hexagon              randconfig-r041-20221019
s390                 randconfig-r044-20221019
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
mips                          ath79_defconfig
arm                         shannon_defconfig
mips                     cu1830-neo_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                    gamecube_defconfig
arm                           omap1_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
x86_64                        randconfig-k001
arm                        magician_defconfig
arm                       mainstone_defconfig
arm                  colibri_pxa300_defconfig
hexagon              randconfig-r045-20221018
hexagon              randconfig-r041-20221018

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
