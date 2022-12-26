Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3266E6565A7
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Dec 2022 23:56:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B74881367;
	Mon, 26 Dec 2022 22:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B74881367
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wa17agjUCsCv; Mon, 26 Dec 2022 22:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4798B81359;
	Mon, 26 Dec 2022 22:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4798B81359
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD96B1BF28E
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8804B402BA
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8804B402BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id waTKf7zwpsfl for <devel@linuxdriverproject.org>;
 Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 332CB402C0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 332CB402C0
 for <devel@driverdev.osuosl.org>; Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="406879557"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="406879557"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2022 14:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="795173119"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="795173119"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Dec 2022 14:56:02 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p9wO1-000EhT-25;
 Mon, 26 Dec 2022 22:56:01 +0000
Date: Tue, 27 Dec 2022 06:55:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 054a1b19f9fd0653f67d5cec845e625d99c84a2e
Message-ID: <63aa264e.cNGnB0Y9fBZZnplv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672095364; x=1703631364;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tiFO0ZFxLYGynOk6lhc4y5NGSsy9YvYfIvhb7kgLmm4=;
 b=Cg7/r1QhFmnCVTcWALC7OrIBlzY2Ngn1gJ8Wug+7Z8pggt4K2hqU2xku
 B1U2fdZi2u67ms87gv302lRbR1ZY3chVZWDUb71lxe38xsT46QDP8+Xsm
 yZzaMmLiWajERmV18QsXlZImOIFw9EWQ2aqf0V97dsmSD1HBFzAC4K86H
 hf8hMk5ZH9gaPYZZ5hTBD+GViI8anRYM+4KdDOGH+yW0Qo5b2QL1Ksu4m
 gaCt2t/BOWtLJsRqhDxElEDotjiQjHnIZpFhfl7ntuc9EZtxGful80hnR
 UKjPK2fAfmG7/5fx5LScdIYLhcoOzubWRL1qVBAbgI459PKVRalRmzbcP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cg7/r1Qh
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
branch HEAD: 054a1b19f9fd0653f67d5cec845e625d99c84a2e  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 723m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
ia64                             allmodconfig
s390                             allyesconfig
i386                 randconfig-a012-20221226
i386                 randconfig-a011-20221226
i386                 randconfig-a013-20221226
arm                                 defconfig
i386                 randconfig-a014-20221226
i386                 randconfig-a016-20221226
i386                 randconfig-a015-20221226
arm64                            allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64               randconfig-a014-20221226
x86_64               randconfig-a013-20221226
x86_64               randconfig-a011-20221226
x86_64                           allyesconfig
i386                                defconfig
x86_64               randconfig-a012-20221226
arm                              allyesconfig
x86_64               randconfig-a016-20221226
x86_64               randconfig-a015-20221226
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
x86_64                           rhel-8.3-kvm
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20221226
riscv                randconfig-r042-20221226
s390                 randconfig-r044-20221226
sh                               allmodconfig
i386                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                            allnoconfig
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
i386                 randconfig-a004-20221226
i386                 randconfig-a001-20221226
i386                 randconfig-a003-20221226
i386                 randconfig-a002-20221226
i386                 randconfig-a006-20221226
i386                 randconfig-a005-20221226
x86_64                          rhel-8.3-rust
x86_64               randconfig-a002-20221226
x86_64               randconfig-a005-20221226
x86_64               randconfig-a003-20221226
hexagon              randconfig-r041-20221226
x86_64               randconfig-a006-20221226
x86_64               randconfig-a001-20221226
arm                  randconfig-r046-20221226
x86_64               randconfig-a004-20221226
hexagon              randconfig-r045-20221226
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
