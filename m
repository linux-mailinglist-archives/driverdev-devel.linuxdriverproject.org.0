Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB4565DDE8
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Jan 2023 21:56:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B64BB81F9B;
	Wed,  4 Jan 2023 20:56:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B64BB81F9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fSN6JZ0xMUw; Wed,  4 Jan 2023 20:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A1B88196E;
	Wed,  4 Jan 2023 20:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A1B88196E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 241B61BF82C
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 20:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8795C81AF6
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 20:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8795C81AF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id omNchSlYU1GW for <devel@linuxdriverproject.org>;
 Wed,  4 Jan 2023 20:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 162EB81BE3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 162EB81BE3
 for <devel@driverdev.osuosl.org>; Wed,  4 Jan 2023 20:56:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="319743114"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="319743114"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 12:56:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="605299830"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="605299830"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 12:56:10 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDAny-0000lt-0C;
 Wed, 04 Jan 2023 20:56:10 +0000
Date: Thu, 05 Jan 2023 04:55:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 2aefbc81985cbbdfaff5ba346b785a8a7c6db5f5
Message-ID: <63b5e7da.YYV3XVZy5J/hirOA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672865774; x=1704401774;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TsIptJVWTBQgkIKbje7cdehVnSW1VgooQ/kd1hB+MIM=;
 b=PBIDfPi5+zFBSsWN+WMNna5eEHkLvsVutjLDjd+r3SfdLHrJtF3IT8s1
 Jgt+g5QHMPRoO3LHDye4cSX3SGiSMmFqLDtSYsdesmbd1Sf/WYcLV1UBC
 W5p+1PY+TY/V0KZ0H+WLtQypAuupEOM7X9K1dpH6QeIrMGuAEsLwYIMgg
 zZhQpp+q2+SJIfjakh5mp5wGQcN3qaB01sgarU5RFxMcWrw2q+xdRpYsy
 WX5+DIFDlSl7/2nlDP1+4qyUU6e1dr2gmncLId4UFVgKx0Ed9s6PJZJtD
 RJQEr+6IU1Jjymx+qjBlnStNbwofMPfFBA9FVL0WIzGCqVFBiXaLa05BQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PBIDfPi5
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
branch HEAD: 2aefbc81985cbbdfaff5ba346b785a8a7c6db5f5  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 720m

configs tested: 74
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
arc                                 defconfig
s390                             allmodconfig
m68k                             allyesconfig
alpha                               defconfig
m68k                             allmodconfig
arc                              allyesconfig
powerpc                           allnoconfig
s390                                defconfig
s390                             allyesconfig
mips                             allyesconfig
sh                               allmodconfig
um                             i386_defconfig
x86_64                            allnoconfig
um                           x86_64_defconfig
ia64                             allmodconfig
i386                 randconfig-a004-20230102
i386                 randconfig-a003-20230102
i386                 randconfig-a001-20230102
i386                 randconfig-a002-20230102
powerpc                          allmodconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
i386                 randconfig-a006-20230102
i386                 randconfig-a005-20230102
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
x86_64               randconfig-a003-20230102
x86_64               randconfig-a001-20230102
x86_64               randconfig-a004-20230102
x86_64               randconfig-a002-20230102
i386                                defconfig
x86_64               randconfig-a006-20230102
x86_64               randconfig-a005-20230102
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
x86_64                          rhel-8.3-func
arm64                            allyesconfig
riscv                randconfig-r042-20230101
arm                              allyesconfig
arc                  randconfig-r043-20230102
i386                             allyesconfig
arm                  randconfig-r046-20230102
arc                  randconfig-r043-20230101
s390                 randconfig-r044-20230101
i386                          randconfig-c001
powerpc              randconfig-c003-20230101

clang tested configs:
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
i386                 randconfig-a011-20230102
i386                 randconfig-a014-20230102
i386                 randconfig-a016-20230102
i386                 randconfig-a015-20230102
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230102
hexagon              randconfig-r045-20230101
x86_64               randconfig-a011-20230102
x86_64               randconfig-a014-20230102
hexagon              randconfig-r045-20230102
x86_64               randconfig-a012-20230102
arm                  randconfig-r046-20230101
x86_64               randconfig-a013-20230102
x86_64               randconfig-a016-20230102
riscv                randconfig-r042-20230102
x86_64               randconfig-a015-20230102
hexagon              randconfig-r041-20230101
s390                 randconfig-r044-20230102
x86_64                        randconfig-k001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
