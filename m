Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC023647CED
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Dec 2022 05:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2D7B417C3;
	Fri,  9 Dec 2022 04:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2D7B417C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yItImUPMdGGG; Fri,  9 Dec 2022 04:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A1DD41601;
	Fri,  9 Dec 2022 04:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A1DD41601
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54D5B1BF3A9
 for <devel@linuxdriverproject.org>; Fri,  9 Dec 2022 04:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C6C860A7B
 for <devel@linuxdriverproject.org>; Fri,  9 Dec 2022 04:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C6C860A7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQKUunjpq01C for <devel@linuxdriverproject.org>;
 Fri,  9 Dec 2022 04:27:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4601060881
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4601060881
 for <devel@driverdev.osuosl.org>; Fri,  9 Dec 2022 04:27:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="344410157"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="344410157"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 20:27:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="624985236"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="624985236"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Dec 2022 20:27:03 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3UyU-0001cJ-0w;
 Fri, 09 Dec 2022 04:27:02 +0000
Date: Fri, 09 Dec 2022 12:26:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 37aa6b98237082a4bf882b4d986329b94ebd447d
Message-ID: <6392b8e6.X/xllVnYZ/KzJcWL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670560025; x=1702096025;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Me5X6hy0KS6/wEuFSDs0PkXkBkGjX7yTau0eiVye6uk=;
 b=LY8CSBtKQp8gsPZs0B9oGrwL8tQx3B7R78OxltxI28hqvYRuveSoD/WU
 QWD0Ni5jttIkdc4/pPsK+M6D+RnXJMGNV1x5Rd+vUbBzTryO1Cuqp6zWW
 445QNt89OwCJFQFIKPmAGULC9bJAXp3tchy6vwDc4jcCvk8aZXxOE0mRF
 TBvEkMQhOaDK3fVzYRtvcGwEfye//oQ5PGQRfPZGVXThUrcVmLD9mx11z
 xxzbRGBuxYRm3DxLaHrzXZbL4/g5rhr2CvaTbdpCntpKMKjfAunkiN8Ld
 zqRkeGTUIYUZFrDfeAIyFBZ7z5+k+JL5InqcLk1a6puekzMKrBx+Mll1a
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LY8CSBtK
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
branch HEAD: 37aa6b98237082a4bf882b4d986329b94ebd447d  vme: Use root_device_register() not underlined version

elapsed time: 720m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20221207
x86_64                              defconfig
riscv                randconfig-r042-20221207
sh                               allmodconfig
s390                 randconfig-r044-20221207
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
mips                             allyesconfig
x86_64                               rhel-8.3
powerpc                          allmodconfig
x86_64                           allyesconfig
x86_64                          rhel-8.3-rust
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a004
x86_64                        randconfig-a013
x86_64                          rhel-8.3-func
x86_64                        randconfig-a011
x86_64                        randconfig-a002
x86_64                        randconfig-a015
x86_64                        randconfig-a006
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a016
i386                          randconfig-a005
ia64                             allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
