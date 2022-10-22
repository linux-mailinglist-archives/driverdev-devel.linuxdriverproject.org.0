Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1B608F92
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Oct 2022 22:37:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 671EE4015A;
	Sat, 22 Oct 2022 20:36:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 671EE4015A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fOSj7sn513mW; Sat, 22 Oct 2022 20:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0924D4011B;
	Sat, 22 Oct 2022 20:36:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0924D4011B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C25B61BF3BD
 for <devel@linuxdriverproject.org>; Sat, 22 Oct 2022 20:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CD5981C6F
 for <devel@linuxdriverproject.org>; Sat, 22 Oct 2022 20:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CD5981C6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bf-YMMZkEi8p for <devel@linuxdriverproject.org>;
 Sat, 22 Oct 2022 20:36:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5269681C44
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5269681C44
 for <devel@driverdev.osuosl.org>; Sat, 22 Oct 2022 20:36:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10508"; a="304822242"
X-IronPort-AV: E=Sophos;i="5.95,205,1661842800"; d="scan'208";a="304822242"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2022 13:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10508"; a="756173447"
X-IronPort-AV: E=Sophos;i="5.95,205,1661842800"; d="scan'208";a="756173447"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 22 Oct 2022 13:36:49 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1omLEe-0003t9-2M;
 Sat, 22 Oct 2022 20:36:48 +0000
Date: Sun, 23 Oct 2022 04:36:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 19cbe487f55fd04bc0b83bc34b6175f9dc6ab4e4
Message-ID: <63545443.X0neZvpI2mDHwk+a%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666471011; x=1698007011;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uAgNRpg0vPHaCuUqT6jriiJW0rwHrWelOsN/wvTJE2k=;
 b=f3dsC9OSBae6EQooIT7qwTnAMfRna25HmeVzTkwVJccEfjwI+R7LkRr+
 /K6OwspEAe93cuCS7MdmanoVunXM3PxkL0KpyV6sMs9mgsYM23skljZGq
 YRikG6XvWla0rxxS6vppsfMSB6d9y5rsn9hYVtAbyLSL5ot5ErRsz57d7
 fBFDPuwscdB9ju6s2X3lMg27fdgIto3SSK36+Jj/2w0MYhpK7oIlCEv5l
 UwHkDGmJwz3IbUxHOgWmsU7vccZyZZuLgjKri56QFBuGRVpfzEIrhvKx9
 TSRyK7wOVAPysFQBZ1tvgtzVN5bgvQESt1P+ogQmP2B1AwnApbPAhYk01
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f3dsC9OS
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
branch HEAD: 19cbe487f55fd04bc0b83bc34b6175f9dc6ab4e4  staging: rtl8723bs: use tab instead of spaces for indent

elapsed time: 724m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
s390                             allmodconfig
um                             i386_defconfig
s390                                defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
s390                             allyesconfig
i386                          randconfig-a003
x86_64                           allyesconfig
i386                          randconfig-a005
arc                  randconfig-r043-20221020
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
s390                 randconfig-r044-20221020
arc                  randconfig-r043-20221018
x86_64                           rhel-8.3-syz
riscv                randconfig-r042-20221020
i386                             allyesconfig
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20221018
x86_64                           rhel-8.3-kvm
s390                 randconfig-r044-20221018
arm                                 defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
i386                          randconfig-a012
i386                          randconfig-a014
x86_64                        randconfig-a006
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
m68k                             allyesconfig
x86_64                        randconfig-a015
arm                        multi_v7_defconfig
sh                           se7721_defconfig
powerpc                         ps3_defconfig
m68k                           virt_defconfig
arm                           u8500_defconfig
csky                                defconfig
parisc                generic-64bit_defconfig
sparc                       sparc32_defconfig
sh                          sdk7786_defconfig
parisc                           alldefconfig
mips                      fuloong2e_defconfig
arm                            zeus_defconfig
sh                               alldefconfig
loongarch                         allnoconfig
sh                                  defconfig
sh                          polaris_defconfig
powerpc                 mpc834x_mds_defconfig
i386                          randconfig-c001
sh                           se7722_defconfig
ia64                          tiger_defconfig
arm                        mvebu_v7_defconfig
mips                    maltaup_xpa_defconfig
arc                        nsimosci_defconfig
microblaze                          defconfig
arm                          lpd270_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                        clps711x_defconfig
mips                       bmips_be_defconfig
arm                            mps2_defconfig
arc                     nsimosci_hs_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
hexagon              randconfig-r041-20221020
hexagon              randconfig-r045-20221020
i386                          randconfig-a006
hexagon              randconfig-r041-20221018
hexagon              randconfig-r045-20221018
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a005
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                   microwatt_defconfig
arm                         orion5x_defconfig
powerpc                      obs600_defconfig
arm                      pxa255-idp_defconfig
mips                          ath79_defconfig
powerpc                      acadia_defconfig
arm                             mxs_defconfig
x86_64                        randconfig-k001
mips                       rbtx49xx_defconfig
arm                           spitz_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
