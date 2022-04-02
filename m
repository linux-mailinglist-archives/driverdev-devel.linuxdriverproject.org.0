Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A14F064F
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 22:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84B6C60EDE;
	Sat,  2 Apr 2022 20:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWggc73Zktkn; Sat,  2 Apr 2022 20:50:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28DAD60C34;
	Sat,  2 Apr 2022 20:50:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA971BF853
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 20:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EECA6416BA
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 20:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XX-WnaT3c60t for <devel@linuxdriverproject.org>;
 Sat,  2 Apr 2022 20:50:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A72A7416AC
 for <devel@driverdev.osuosl.org>; Sat,  2 Apr 2022 20:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648932606; x=1680468606;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jgPYu/RoC+ZkjNPdMXXqJekXmWXDSM+AyeL9h6OV+Mk=;
 b=ei1bjKv/WRnYIRO791mo+0TGeLpM1ZMFNMCN8m6lNJiAGdUZfmvEg8af
 gxjjM6Wp7KWA+QXYOh1Dk0ovGaKhpaTh9n4CpmSiNctzUSzKUsOiMGV12
 icYsJCS32jndxc89vVwB2YD4AXQ04B6YYosz2sWhSMRGdiPSqHbACRn+i
 NVpbJK/8CTZ9E6O4Z6aQ6ai+c69pht9A8W0RcC99YIHeWeEmRjubvx0p/
 831x5qCMqjPThy8kTIw6sV3Az+NDwpHSAgj4NIkg0/cIP9Shoj19eo0IG
 htUjfmx/4vsoWKwbHdC24skPvT4ttMJq14UhBoh900EDaKVdSjGs90xWj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10305"; a="346775370"
X-IronPort-AV: E=Sophos;i="5.90,231,1643702400"; d="scan'208";a="346775370"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2022 13:50:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,231,1643702400"; d="scan'208";a="523157975"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 02 Apr 2022 13:50:04 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nakh9-0000PL-PZ;
 Sat, 02 Apr 2022 20:50:03 +0000
Date: Sun, 03 Apr 2022 04:49:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 3794ccf4c9f3c5fca01973e18b7544c9437ead46
Message-ID: <6248b6c8.D2ypm7dYdrTUr5tx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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
branch HEAD: 3794ccf4c9f3c5fca01973e18b7544c9437ead46  staging: rtl8723bs: refactor rtw_ch2freq()

elapsed time: 723m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
powerpc                    klondike_defconfig
sh                          lboxre2_defconfig
sh                         ecovec24_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                      ppc6xx_defconfig
xtensa                  audio_kc705_defconfig
powerpc                      cm5200_defconfig
m68k                        mvme16x_defconfig
m68k                        mvme147_defconfig
sh                          sdk7786_defconfig
sh                           se7206_defconfig
powerpc                      makalu_defconfig
arm                         vf610m4_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220402
ia64                             allyesconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220402
s390                 randconfig-r044-20220402
riscv                randconfig-r042-20220402
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
mips                 randconfig-c004-20220403
arm                  randconfig-c002-20220403
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220403
i386                          randconfig-c001
s390                 randconfig-c005-20220403
riscv                randconfig-c006-20220403
powerpc                      obs600_defconfig
arm                        neponset_defconfig
powerpc                 mpc8272_ads_defconfig
mips                      maltaaprp_defconfig
arm                                 defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220402
hexagon              randconfig-r045-20220402

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
