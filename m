Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3216565A6
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Dec 2022 23:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75DD7403AA;
	Mon, 26 Dec 2022 22:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75DD7403AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n8uh5rVg5Udg; Mon, 26 Dec 2022 22:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45D3440339;
	Mon, 26 Dec 2022 22:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45D3440339
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BC511BF8B4
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76F2A60BBA
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76F2A60BBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1gVqd5_k-sz for <devel@linuxdriverproject.org>;
 Mon, 26 Dec 2022 22:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E96E360BA2
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E96E360BA2
 for <devel@driverdev.osuosl.org>; Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="406879563"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="406879563"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2022 14:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="795173121"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="795173121"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Dec 2022 14:56:02 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p9wO1-000EhR-1z;
 Mon, 26 Dec 2022 22:56:01 +0000
Date: Tue, 27 Dec 2022 06:55:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 718a1400847bdcb948927d4f437926bf116bdee9
Message-ID: <63aa2654.XxVgEDwONOWEh+Xj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672095364; x=1703631364;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FUqh0bO102A7T8hsjWeqSd9bHQsKNOOjU1aFW22muyg=;
 b=WJ/9JChUP+hMnOelYU15Ry1csVfD7Hw3weA1FbXDRgHGtDxPFDyqbdaR
 2hm9dPXRUzXjTA8r+1RUqQF5ocipnQ0nSPUQ11iDhUTZleCAkkhxE1ffM
 oUuXVDNsmDdo7QX8nFq50DRug8En0Bp+v92bEmmAKWWxLZKLOrdPGw/1y
 mYqU5btzLHDycpauCddTdl6QG0KmfEmqaNw/i5u4nbSwhqG8i582iZPso
 Gr3GFyyMM+siQQPU3QxEr0XIeFwSzRs/tLVCTvx96xg9E+3SRFED3fDFh
 3iBxzS/260ZWh1u/w64R0VGWGsPuOMn9x4rmI/xoeJJTdZ7PvdDdbjWc6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WJ/9JChU
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
branch HEAD: 718a1400847bdcb948927d4f437926bf116bdee9  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 723m

configs tested: 91
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-bpf
x86_64                          rhel-8.3-func
s390                                defconfig
x86_64                           rhel-8.3-syz
s390                             allyesconfig
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
um                           x86_64_defconfig
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                 randconfig-a012-20221226
x86_64               randconfig-a014-20221226
i386                 randconfig-a011-20221226
arm                                 defconfig
x86_64               randconfig-a013-20221226
sh                               allmodconfig
i386                 randconfig-a013-20221226
x86_64                           allyesconfig
i386                             allyesconfig
x86_64               randconfig-a011-20221226
mips                             allyesconfig
x86_64               randconfig-a012-20221226
x86_64               randconfig-a015-20221226
powerpc                          allmodconfig
i386                 randconfig-a014-20221226
x86_64               randconfig-a016-20221226
i386                 randconfig-a016-20221226
i386                 randconfig-a015-20221226
arm64                            allyesconfig
m68k                             allyesconfig
arm                              allyesconfig
m68k                             allmodconfig
arm                  randconfig-r046-20221225
arc                              allyesconfig
arc                  randconfig-r043-20221225
alpha                            allyesconfig
arc                  randconfig-r043-20221226
riscv                randconfig-r042-20221226
s390                 randconfig-r044-20221226
x86_64                            allnoconfig
mips                         rt305x_defconfig
arm64                            alldefconfig
i386                          randconfig-c001
x86_64                        randconfig-c001
arm                  randconfig-c002-20221225
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                     tqm8541_defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a004-20221226
i386                 randconfig-a001-20221226
i386                 randconfig-a003-20221226
i386                 randconfig-a002-20221226
i386                 randconfig-a006-20221226
i386                 randconfig-a005-20221226
x86_64               randconfig-a002-20221226
x86_64               randconfig-a005-20221226
hexagon              randconfig-r045-20221225
hexagon              randconfig-r041-20221225
hexagon              randconfig-r041-20221226
x86_64               randconfig-a003-20221226
x86_64               randconfig-a006-20221226
x86_64               randconfig-a001-20221226
x86_64               randconfig-a004-20221226
arm                  randconfig-r046-20221226
s390                 randconfig-r044-20221225
hexagon              randconfig-r045-20221226
riscv                randconfig-r042-20221225
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
