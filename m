Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80C95B44E8
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Sep 2022 09:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2AF44054B;
	Sat, 10 Sep 2022 07:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2AF44054B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mf0Gs9qhuwiS; Sat, 10 Sep 2022 07:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F90240133;
	Sat, 10 Sep 2022 07:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F90240133
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E01B1BF47A
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 07:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F3B560F75
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 07:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F3B560F75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9wDqcza-ghc for <devel@linuxdriverproject.org>;
 Sat, 10 Sep 2022 07:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C58DC60BC7
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C58DC60BC7
 for <devel@driverdev.osuosl.org>; Sat, 10 Sep 2022 07:43:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="361575063"
X-IronPort-AV: E=Sophos;i="5.93,305,1654585200"; d="scan'208";a="361575063"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 00:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,305,1654585200"; d="scan'208";a="592879635"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 10 Sep 2022 00:41:45 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWv7Y-0002Gx-1i;
 Sat, 10 Sep 2022 07:41:44 +0000
Date: Sat, 10 Sep 2022 15:41:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 b659f9527a8a21f1c25f1d5b391c045a1bac719c
Message-ID: <631c3fb6.eVu3WFXAAPYLoS+3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662795814; x=1694331814;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=t1hArXoTBaWU4Sc4IGrXcHVJYcqh5l47Dl708FR3Gmg=;
 b=n4B0mf9ShLWGTwwCj3HXHVYohWCkJpkmAukRe9NKhqtGvb/LDgFCrCA9
 UQI9gCvlUIRkZQyJd3FrWSlxLRb2pkRb3gfs6fbNLrU2KBSkDB60wKC5m
 RC2zZmOX7ky0PcrrCC4jEQQwBtTO4r/KZYyGLnxRMh4BprBsLTRYR5nEi
 A27V7tY1X/nba8XBgegDg+sNWcqoUZcNZcw4+F/rBeb2EoxV06LL8Uq7g
 WUYxC6otCb2Par1RG/tb2tJwgZ2FFu5mKHgthscsx+uNBm2ymWQSI7HTk
 2OMH6usUh6FW91oDdGVgcq4ziTJ+5f6FE8xKHrdYN8jMNLhfuz8q8oq/F
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n4B0mf9S
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: b659f9527a8a21f1c25f1d5b391c045a1bac719c  scsi: stex: properly zero out the passthrough command structure

elapsed time: 802m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
m68k                             allmodconfig
x86_64                        randconfig-a002
arc                              allyesconfig
alpha                            allyesconfig
arm                                 defconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
m68k                             allyesconfig
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20220907
x86_64                               rhel-8.3
x86_64                        randconfig-a006
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
i386                          randconfig-a001
sh                               allmodconfig
i386                          randconfig-a003
arm64                            allyesconfig
mips                             allyesconfig
x86_64                           allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a013
powerpc                          allmodconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a005
i386                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                              alldefconfig
sh                              ul2_defconfig
arm                           sunxi_defconfig
arm                          exynos_defconfig
i386                          randconfig-c001
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                   secureedge5410_defconfig
arm                         lubbock_defconfig
sh                          rsk7264_defconfig
powerpc                      ppc40x_defconfig
arm                         axm55xx_defconfig
mips                         db1xxx_defconfig
arm                            zeus_defconfig
parisc                              defconfig
sh                     sh7710voipgw_defconfig
arm                        keystone_defconfig
x86_64                           alldefconfig
xtensa                    xip_kc705_defconfig
mips                    maltaup_xpa_defconfig
arm                          badge4_defconfig
mips                      maltasmvp_defconfig
mips                     decstation_defconfig
sh                         ecovec24_defconfig
sh                           se7712_defconfig
sh                           se7750_defconfig
sh                          sdk7786_defconfig
arm                           h3600_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
arm                         cm_x300_defconfig
powerpc                    klondike_defconfig
sh                        sh7763rdp_defconfig
xtensa                           allyesconfig
powerpc                     tqm8541_defconfig
powerpc                       holly_defconfig
s390                       zfcpdump_defconfig
mips                        bcm47xx_defconfig
arm                            pleb_defconfig
mips                      loongson3_defconfig
powerpc                  iss476-smp_defconfig
powerpc                       eiger_defconfig
openrisc                  or1klitex_defconfig
nios2                         10m50_defconfig
powerpc                 mpc837x_rdb_defconfig
m68k                        m5407c3_defconfig
sparc                               defconfig
nios2                         3c120_defconfig
mips                      fuloong2e_defconfig
sh                             espt_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                            mps2_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220907
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220907
i386                          randconfig-a002
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
riscv                randconfig-r042-20220909
hexagon              randconfig-r041-20220909
hexagon              randconfig-r045-20220909
s390                 randconfig-r044-20220909
x86_64                        randconfig-k001
hexagon              randconfig-r041-20220908
hexagon              randconfig-r045-20220908

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
