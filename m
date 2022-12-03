Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D39641493
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Dec 2022 07:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FAF141834;
	Sat,  3 Dec 2022 06:47:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FAF141834
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x_pz5-SHOHlS; Sat,  3 Dec 2022 06:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4B1C41854;
	Sat,  3 Dec 2022 06:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4B1C41854
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3C8E1BF57B
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 06:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D0B041834
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 06:47:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D0B041834
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqFROZ_EszGS for <devel@linuxdriverproject.org>;
 Sat,  3 Dec 2022 06:47:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19ABE41833
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19ABE41833
 for <devel@driverdev.osuosl.org>; Sat,  3 Dec 2022 06:47:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="343078252"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="343078252"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 22:47:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="751544844"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="751544844"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2022 22:47:41 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1MJJ-000ELb-0e;
 Sat, 03 Dec 2022 06:47:41 +0000
Date: Sat, 03 Dec 2022 14:47:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:pktcdvd-removal] BUILD SUCCESS
 681051691a369f91e3a295e711d32127628fa4c8
Message-ID: <638af0fa.xSCh6ZgKYz5zSKYe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670050064; x=1701586064;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7ZbUffCaXGoQejuWSF88yW4u8jCmpNTUoGY06ETkH2U=;
 b=RoBShOod+GsM7gPN234q5NZPmoQh2BCSAYVqGIyAuKfXUVrfd0c05l1J
 tMikpijQffx8q3eOy1gHHhT5HxMei1t/AkFE72ox78SEcltObqL6jYzRQ
 y5OuuSicEYvmInfWPLH+/mdjROajohc8Up9jUxpJ7vT/uT210xNhh6rZa
 KgmQ54ozz+Vn2KaaoNyEQ6Tsq0n3e3vhZd47VsaheHG+bXarujb0NnoLF
 tw1Jjxit8SUW80Hh4YlWOc1Ewt7eLo4KSvjFuFkBSYeLLmP3Wc847wAUn
 Tu557L1p0+6G2D+DSuYGI0qi7OUkI5V1H1Rt1pAtHbBwKq18yE23Ofr4K
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RoBShOod
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git pktcdvd-removal
branch HEAD: 681051691a369f91e3a295e711d32127628fa4c8  pktcdvd: remove driver.

elapsed time: 722m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
sh                               allmodconfig
m68k                             allmodconfig
x86_64                              defconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arc                  randconfig-r043-20221201
i386                                defconfig
x86_64                               rhel-8.3
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                           allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20221201
hexagon              randconfig-r045-20221201
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a013
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
