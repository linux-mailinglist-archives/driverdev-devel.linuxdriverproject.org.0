Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB4C607F02
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Oct 2022 21:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7DB4418E1;
	Fri, 21 Oct 2022 19:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7DB4418E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3p1GsMpSVGi; Fri, 21 Oct 2022 19:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26B9341737;
	Fri, 21 Oct 2022 19:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B9341737
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1F971BF846
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 19:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA938818AC
 for <devel@linuxdriverproject.org>; Fri, 21 Oct 2022 19:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA938818AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oN6OrsiwphKK for <devel@linuxdriverproject.org>;
 Fri, 21 Oct 2022 19:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9DE781801
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9DE781801
 for <devel@driverdev.osuosl.org>; Fri, 21 Oct 2022 19:23:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="393391929"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="393391929"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 12:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="608503533"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="608503533"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 21 Oct 2022 12:23:56 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olxca-0002tf-0R;
 Fri, 21 Oct 2022 19:23:56 +0000
Date: Sat, 22 Oct 2022 03:23:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 3add133eac8c15dd0417d6298ebc73a9e23f2f59
Message-ID: <6352f1c3.e1Afo0Hgck0tMrY4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666380238; x=1697916238;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=T0Hdxcgj48qM0X5rFA5oHOECKwZWrRpyR5MgofhMh28=;
 b=QtJNXTOmM8TDsRBNxFnmaK81zZVGcuXZV/BqP4tYsNluJ+RVnuxiW9nD
 2azbPVHeRYB6TeaYgEaArLxCRfA/SadCTkF96UPKtznmHrKnXTeg/igGf
 VMrRzfi0KRKhQZbo6nxnV6Vvg3qu6V9WvNSSekqp3q4pJN9Ry2zrzdSlA
 NY4GtvxsC71T6WQrwva3ZyQBqB7UYNxuyqXDj85n6+5Mo9sK2/G5ndngg
 42wLjGgu2cZQad3xnmeIuiN9NVIQ9RYIIyNkXd0hf00iS85K0LI2YAlWu
 Zc3nx+5SNZ4gaEamybZSf2LHCNbi1Qdqfr2r+DFnNEGqBg53qRg2zvB7/
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QtJNXTOm
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 3add133eac8c15dd0417d6298ebc73a9e23f2f59  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 786m

configs tested: 131
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allmodconfig
x86_64                              defconfig
s390                             allyesconfig
i386                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                          randconfig-a001
x86_64                               rhel-8.3
i386                          randconfig-a003
i386                          randconfig-a005
arm                                 defconfig
x86_64                           allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                 randconfig-r044-20221018
x86_64                        randconfig-a004
m68k                             allyesconfig
x86_64                        randconfig-a002
i386                             allyesconfig
i386                          randconfig-a014
arc                              allyesconfig
arm64                            allyesconfig
x86_64                        randconfig-a006
arc                  randconfig-r043-20221020
arm                              allyesconfig
alpha                            allyesconfig
s390                 randconfig-r044-20221020
i386                          randconfig-a012
arc                  randconfig-r043-20221018
i386                          randconfig-a016
riscv                randconfig-r042-20221020
riscv                randconfig-r042-20221018
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
powerpc                      chrp32_defconfig
m68k                             allmodconfig
sh                           se7750_defconfig
sh                           se7343_defconfig
nios2                         10m50_defconfig
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

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
hexagon              randconfig-r041-20221020
x86_64                        randconfig-a005
hexagon              randconfig-r045-20221020
x86_64                        randconfig-a001
hexagon              randconfig-r041-20221018
x86_64                        randconfig-a003
hexagon              randconfig-r045-20221018
i386                          randconfig-a011
i386                          randconfig-a015
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
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
