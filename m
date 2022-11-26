Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4686D6395F0
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Nov 2022 13:10:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1F7341DB0;
	Sat, 26 Nov 2022 12:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1F7341DB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xw7Cy9ZUp4H3; Sat, 26 Nov 2022 12:10:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15FB041DAD;
	Sat, 26 Nov 2022 12:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15FB041DAD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1901BF426
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 12:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44D2C60AC9
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 12:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44D2C60AC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 713U2mC3QHlC for <devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 12:10:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2FEE60AC4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2FEE60AC4
 for <devel@driverdev.osuosl.org>; Sat, 26 Nov 2022 12:10:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="314627243"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="314627243"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 04:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="767583529"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="767583529"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 26 Nov 2022 04:10:26 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oyu0n-0006Ht-19;
 Sat, 26 Nov 2022 12:10:25 +0000
Date: Sat, 26 Nov 2022 20:09:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 1b25a23384e262698b7792c08bd172de34db52b3
Message-ID: <638201fa.+WHv/OAG2BpeehTQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669464628; x=1701000628;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jGuW1T9SrtzPwUFrFpHB9WbdOerJTEY0vI2bEjg0T+Y=;
 b=VlqTkWysM80tuKaTJ8fGoaIZXh3syqKudfmsc0oVcDKls6JOSfojvUvR
 AFf8JzcabeIBv/XcH5a2XD1NM3mXBrNDNN8XNHamle2n4jGVLKX7vOmIG
 UiwKFZlCv0rNcW1zKQhSg0F2slKDfWC+HZqUe6XEvnd5baYWY/xkdm6XA
 oqU24MnVhIC9wvIST7ToFO5yGcvCaKELBKNUB2jJ6rwODCYF9hvxQUKuO
 HKA4QIu5RDeaEGOBA+tjozbK4x+MyAzIcqVej1uwBv6NBPzuCP9OFvm0P
 hQO6lJiLBYFuH+RGs+KACdFyNj6Cx2thT3TOXRfo3tWRXLIGf/SSpowjn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VlqTkWys
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
branch HEAD: 1b25a23384e262698b7792c08bd172de34db52b3  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 1059m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20221124
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
s390                             allmodconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
ia64                             allmodconfig
m68k                             allyesconfig
x86_64                              defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
riscv                randconfig-r042-20221124
hexagon              randconfig-r041-20221124
hexagon              randconfig-r045-20221124
s390                 randconfig-r044-20221124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
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
