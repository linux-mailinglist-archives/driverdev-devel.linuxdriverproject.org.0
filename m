Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1134967FC2F
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Jan 2023 02:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E55D24170D;
	Sun, 29 Jan 2023 01:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E55D24170D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UB0OM6dOZ5Tz; Sun, 29 Jan 2023 01:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E83CF41731;
	Sun, 29 Jan 2023 01:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E83CF41731
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86B941BF5A7
 for <devel@linuxdriverproject.org>; Sun, 29 Jan 2023 01:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66C0841715
 for <devel@linuxdriverproject.org>; Sun, 29 Jan 2023 01:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66C0841715
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r28FubX1TpuX for <devel@linuxdriverproject.org>;
 Sun, 29 Jan 2023 01:36:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2698A416F6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2698A416F6
 for <devel@driverdev.osuosl.org>; Sun, 29 Jan 2023 01:36:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="307695134"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="307695134"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 17:36:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="665671788"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="665671788"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jan 2023 17:36:02 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLwbx-0001JI-1C;
 Sun, 29 Jan 2023 01:36:01 +0000
Date: Sun, 29 Jan 2023 09:35:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 56d5f362ad0f8f60bc7c6fd5d7bc2b528d6963f5
Message-ID: <63d5cd73.zSvjJBeT8XR/xmZ3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674956164; x=1706492164;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=caRiCQQuaqNLWFpCI8OIvhEjqw7ETRiObdV1sWuWT4U=;
 b=THgZ0hiTnPUJJNnZwNVEX2CJ/kLtJDNVaVzdegCCSOSne3kZFrM7qi3W
 SRnrSE6i9xZSWsOT3QA/FkE8jetFRQOZjvfeAlqQ9s0VNAc0nmnGGA36M
 RFbgeOrUvCwFthCPl2kqQp3Z9Fp98IX8C6rKcMlxK36ZWKtFltOCd3CQl
 XfYWatFHALiz3jRRi8OT0DYXOFB4NSfJzI2TJk20yarCAHIUZRHTS0GBN
 yfjQr3JO6j0gOM1h29Yw8tHm9y0dU69bYyL34H8AqaZr99hl9CXkA/vC1
 L0lN1KSKQH8MyRhkPX9PfiBz35ioE5BupSfHH1OmJlwVfIw17KFwA684z
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=THgZ0hiT
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 56d5f362ad0f8f60bc7c6fd5d7bc2b528d6963f5  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 721m

configs tested: 101
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
arc                  randconfig-r043-20230123
x86_64               randconfig-a002-20230123
i386                 randconfig-a001-20230123
x86_64               randconfig-a004-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a001-20230123
ia64                             allmodconfig
arc                                 defconfig
arm                  randconfig-r046-20230123
s390                             allmodconfig
alpha                               defconfig
x86_64               randconfig-a005-20230123
s390                                defconfig
x86_64               randconfig-a006-20230123
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                           allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                     ep8248e_defconfig
arm                       aspeed_g5_defconfig
sh                   rts7751r2dplus_defconfig
mips                     decstation_defconfig
ia64                        generic_defconfig
m68k                          multi_defconfig
arm                               allnoconfig
powerpc                      ep88xc_defconfig
sh                          r7780mp_defconfig
powerpc                     rainier_defconfig
openrisc                  or1klitex_defconfig
sh                           se7712_defconfig
i386                          randconfig-c001
arm                           tegra_defconfig
arm                        shmobile_defconfig
powerpc                     pq2fads_defconfig
xtensa                       common_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
sh                            titan_defconfig
arm                          exynos_defconfig

clang tested configs:
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
hexagon              randconfig-r041-20230123
i386                 randconfig-a016-20230123
hexagon              randconfig-r045-20230123
x86_64               randconfig-a013-20230123
i386                 randconfig-a015-20230123
s390                 randconfig-r044-20230123
x86_64               randconfig-a011-20230123
riscv                randconfig-r042-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
riscv                randconfig-r042-20230129
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
