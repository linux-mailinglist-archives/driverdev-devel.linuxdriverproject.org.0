Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F765607E30
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Oct 2022 20:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9076461282;
	Fri, 21 Oct 2022 18:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9076461282
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zliCxHY4AYCe; Fri, 21 Oct 2022 18:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E48F60B49;
	Fri, 21 Oct 2022 18:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E48F60B49
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F8121BF863
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 18:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE1448441E
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 18:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE1448441E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQXOIX4Ad9eU for <devel@linuxdriverproject.org>;
 Fri, 21 Oct 2022 18:17:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A78B98441A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A78B98441A
 for <devel@driverdev.osuosl.org>; Fri, 21 Oct 2022 18:17:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="287473457"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="287473457"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 11:17:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="699454575"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="699454575"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2022 11:17:51 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olwad-0002rP-0o;
 Fri, 21 Oct 2022 18:17:51 +0000
Date: Sat, 22 Oct 2022 02:16:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 54de93cd8740d52a83728802b4270f953d1a636f
Message-ID: <6352e215.4yqA5U1NEgbAKszL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666376273; x=1697912273;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ywBErn9pW8UjV5J8/1lDXa6IGrEaynGUSS2eWvJagtI=;
 b=PhzNzrxfqIpXRIeNOkesCr6QQh2Nb9vnhFTbrZBlKzLsmYddCXSNVroU
 8r2W0+4VlPNL1Zkcuvb3WnoB4aZrQxbEbzZ4GCoyD0DFsccWJvhh3eQql
 3O6v7APIoK2JbMo2newTur53wBplI6ABk/C3VfBSG/r5X0fHC18qAVLxA
 jN7WQkeyLKw6CbxkWpEvX4N2K+O8nZLPGf7YYO90HRLrS6qF/JC9sQvEF
 jdalFzDoWrRCpOLQaxZXrssx3bQpUVkz4tow2zcqVmg1Jl75mZAkDA4ow
 QAonghFLMdBtI/GRQV1mrjgh6Bq9ExDe0edDeGPhq4Nbb9GTf5WFJb0pB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PhzNzrxf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 54de93cd8740d52a83728802b4270f953d1a636f  kernel/utsname_sysctl.c: Add missing enum uts_proc value

elapsed time: 720m

configs tested: 123
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
s390                             allmodconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
i386                                defconfig
x86_64                        randconfig-a013
x86_64                               rhel-8.3
x86_64                        randconfig-a002
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a011
x86_64                        randconfig-a006
x86_64                        randconfig-a015
powerpc                           allnoconfig
x86_64                        randconfig-a004
mips                             allyesconfig
m68k                             allyesconfig
x86_64                           allyesconfig
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
powerpc                      chrp32_defconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20221020
m68k                             allmodconfig
arc                              allyesconfig
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
arm                                 defconfig
sh                               allmodconfig
i386                             allyesconfig
s390                 randconfig-r044-20221020
arc                  randconfig-r043-20221018
riscv                randconfig-r042-20221020
riscv                randconfig-r042-20221018
s390                 randconfig-r044-20221018
openrisc                         alldefconfig
powerpc                       holly_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm                     eseries_pxa_defconfig
powerpc                  storcenter_defconfig
arm                              allyesconfig
arc                  randconfig-r043-20221019
arm64                            allyesconfig
m68k                         apollo_defconfig
arc                        vdk_hs38_defconfig
sh                           se7712_defconfig
i386                          randconfig-c001
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
sh                           se7750_defconfig
sh                           se7343_defconfig
nios2                         10m50_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                       m5475evb_defconfig
xtensa                              defconfig
sparc                            alldefconfig
arm                          badge4_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm64                               defconfig
powerpc                 linkstation_defconfig
m68k                        mvme16x_defconfig
loongarch                           defconfig
arm                        oxnas_v6_defconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221020
i386                 randconfig-a011-20221017
i386                 randconfig-a013-20221017
hexagon              randconfig-r045-20221020
i386                 randconfig-a012-20221017
hexagon              randconfig-r041-20221018
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a014-20221017
hexagon              randconfig-r045-20221018
i386                 randconfig-a016-20221017
i386                 randconfig-a015-20221017
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
s390                 randconfig-r044-20221019
hexagon              randconfig-r045-20221019
riscv                randconfig-r042-20221019
hexagon              randconfig-r041-20221019
x86_64                        randconfig-k001
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
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
