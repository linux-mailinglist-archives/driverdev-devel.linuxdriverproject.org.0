Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E40A6565A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Dec 2022 23:56:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F77E60BBA;
	Mon, 26 Dec 2022 22:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F77E60BBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6cI6ox9uTaR; Mon, 26 Dec 2022 22:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 409DD60BA2;
	Mon, 26 Dec 2022 22:56:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 409DD60BA2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 924A51BF28E
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 729FF402BA
 for <devel@linuxdriverproject.org>; Mon, 26 Dec 2022 22:56:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 729FF402BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7paS2me02nk for <devel@linuxdriverproject.org>;
 Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 701B3402C1
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 701B3402C1
 for <devel@driverdev.osuosl.org>; Mon, 26 Dec 2022 22:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="406879559"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="406879559"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2022 14:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10572"; a="795173122"
X-IronPort-AV: E=Sophos;i="5.96,276,1665471600"; d="scan'208";a="795173122"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Dec 2022 14:56:02 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p9wO1-000EhZ-2E;
 Mon, 26 Dec 2022 22:56:01 +0000
Date: Tue, 27 Dec 2022 06:55:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 4e82ff1793c9bd48669c537a75d86d4ce7c21461
Message-ID: <63aa2651.0/YUw2e7deBj0pb5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672095364; x=1703631364;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=al+mX+1NnELyb1EP0kXV4IolgFlaDW1c8P7lsCylc0A=;
 b=im1G29ybt2NwpChptMjQgWb7Lxsi2YGbU7jgryPzpDfqrydUFZziNEgK
 qEkgmWlxfvRCf208A+GiYL1LiCFn9eK8BF1e/v4FGZnBPI3Su373hliGm
 +7x7yxBhwgDkyuBzBApzwhg3PKYX+ENrvLI2W2OTTlus5+/aRGuRMPsTZ
 9RuCV8mY8sirbfCz76aR8cB9OcO1X2mn7pcCICwGpxwUnl9Kv5ChcCwos
 upKhzHKcmw/coa34OR/4leODzssO5a120Yw/xKty/627+AiFylWXyOrkI
 Mf/JNp3/RVFudNnQ6LMwmD7JggwymeSqph8k7V6VsziiQRawedEi8TWSa
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=im1G29yb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 4e82ff1793c9bd48669c537a75d86d4ce7c21461  readfile.2: new page describing readfile(2)

elapsed time: 722m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
ia64                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
i386                                defconfig
x86_64               randconfig-a012-20221226
x86_64                              defconfig
x86_64               randconfig-a014-20221226
s390                             allmodconfig
i386                 randconfig-a012-20221226
arm                                 defconfig
x86_64               randconfig-a013-20221226
i386                 randconfig-a011-20221226
x86_64               randconfig-a011-20221226
i386                 randconfig-a013-20221226
x86_64                               rhel-8.3
i386                 randconfig-a014-20221226
x86_64               randconfig-a015-20221226
i386                 randconfig-a016-20221226
x86_64                          rhel-8.3-func
x86_64               randconfig-a016-20221226
sh                               allmodconfig
s390                                defconfig
i386                 randconfig-a015-20221226
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
x86_64                           allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
s390                             allyesconfig
arm                              allyesconfig
i386                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                            allnoconfig
arm                        multi_v7_defconfig
powerpc                     rainier_defconfig
sh                ecovec24-romimage_defconfig
arm                  randconfig-r046-20221225
arc                  randconfig-r043-20221225
arc                  randconfig-r043-20221226
riscv                randconfig-r042-20221226
s390                 randconfig-r044-20221226
i386                          randconfig-c001
powerpc                     tqm8541_defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
arm                         lpc18xx_defconfig
m68k                                defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221225
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                      ep88xc_defconfig
m68k                       m5275evb_defconfig
sparc                            alldefconfig
arm                          lpd270_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arc                        nsim_700_defconfig
sparc64                             defconfig
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
x86_64               randconfig-a003-20221226
x86_64               randconfig-a006-20221226
x86_64               randconfig-a001-20221226
x86_64               randconfig-a004-20221226
x86_64               randconfig-a005-20221226
hexagon              randconfig-r045-20221225
hexagon              randconfig-r041-20221225
hexagon              randconfig-r041-20221226
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
