Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119936565A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Dec 2022 23:56:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 915B54052F;
	Mon, 26 Dec 2022 22:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 915B54052F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZAxZW8WOHKe8; Mon, 26 Dec 2022 22:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DDF040339;
	Mon, 26 Dec 2022 22:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DDF040339
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAFCF1BF28E
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C11E7402BA
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C11E7402BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8CYaLjHAoBm for <devel@linuxdriverproject.org>;
 Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF05D4030A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF05D4030A
 for <devel@driverdev.osuosl.org>; Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="406879561"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="406879561"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2022 14:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="795173120"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="795173120"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Dec 2022 14:56:02 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p9wO1-000EhW-29;
 Mon, 26 Dec 2022 22:56:01 +0000
Date: Tue, 27 Dec 2022 06:55:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 46e7f496b109394ab24dc604e56426ac3a1736a8
Message-ID: <63aa2658.DILFVSg3IzU33Hpd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672095364; x=1703631364;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FzkuiYNsi94r7gvnQCYYCFURgkkZoGlnPtLywUxEa6Q=;
 b=lxUjtoze8YhkotNYuzpr2kWPd8QLkQLnC1gv8OUhYyTyhNErd8kE2y8H
 3UNXpFoVIWZALqdsqCvH5lhH4zWq90lIK+QAs0nO72pbZ6ymwLqGrfnp0
 j+xWfQPWH0M1fGny/+AXsnQhdBctEXH+3LfgSDCVGfSnlyAtWkMtQB9OI
 RVmIHfzM46KOxENkFUGoS/87KkU+oco+U5lfFn83EBxDKrBoruFWcGseg
 5WqVATCEewiom9+QCo8bw9qIXNKtDegn8CDqHgkeP3QSTPFyrlGn52W6O
 NpSsQQlG58i7W6AQOLzkfvqFXRKR4FU4JxfT4BKpxaeH5PVuIFLNsq2/y
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lxUjtoze
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
branch HEAD: 46e7f496b109394ab24dc604e56426ac3a1736a8  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 724m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                              defconfig
s390                                defconfig
arm                                 defconfig
ia64                             allmodconfig
powerpc                           allnoconfig
s390                             allyesconfig
x86_64                               rhel-8.3
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
x86_64                           allyesconfig
sh                               allmodconfig
i386                 randconfig-a012-20221226
x86_64               randconfig-a014-20221226
m68k                             allyesconfig
i386                 randconfig-a011-20221226
mips                             allyesconfig
arm64                            allyesconfig
m68k                             allmodconfig
x86_64               randconfig-a013-20221226
arc                              allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a013-20221226
x86_64               randconfig-a011-20221226
i386                 randconfig-a014-20221226
arm                              allyesconfig
x86_64               randconfig-a012-20221226
alpha                            allyesconfig
i386                 randconfig-a016-20221226
i386                 randconfig-a015-20221226
x86_64               randconfig-a015-20221226
x86_64               randconfig-a016-20221226
arm                  randconfig-r046-20221225
arc                  randconfig-r043-20221225
arc                  randconfig-r043-20221226
riscv                randconfig-r042-20221226
s390                 randconfig-r044-20221226
x86_64                            allnoconfig
i386                             allyesconfig
mips                         rt305x_defconfig
arm64                            alldefconfig
i386                          randconfig-c001
powerpc                     tqm8541_defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221225
sh                ecovec24-romimage_defconfig
arm                         lpc18xx_defconfig
m68k                                defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                      ep88xc_defconfig
m68k                       m5275evb_defconfig
sparc                            alldefconfig
arm                          lpd270_defconfig
arc                        nsim_700_defconfig
sparc64                             defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a002-20221226
x86_64               randconfig-a003-20221226
i386                 randconfig-a005-20221226
x86_64               randconfig-a006-20221226
i386                 randconfig-a004-20221226
i386                 randconfig-a001-20221226
x86_64               randconfig-a001-20221226
i386                 randconfig-a003-20221226
x86_64               randconfig-a004-20221226
x86_64               randconfig-a005-20221226
i386                 randconfig-a002-20221226
i386                 randconfig-a006-20221226
hexagon              randconfig-r045-20221225
hexagon              randconfig-r041-20221225
hexagon              randconfig-r041-20221226
arm                  randconfig-r046-20221226
hexagon              randconfig-r045-20221226
riscv                randconfig-r042-20221225
s390                 randconfig-r044-20221225
arm                          pcm027_defconfig
powerpc                     ppa8548_defconfig
riscv                             allnoconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
