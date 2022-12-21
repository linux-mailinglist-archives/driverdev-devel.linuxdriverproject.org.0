Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC08652B7E
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Dec 2022 03:32:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B937781FE7;
	Wed, 21 Dec 2022 02:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B937781FE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J63dDUSEY-j3; Wed, 21 Dec 2022 02:32:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F21781FDF;
	Wed, 21 Dec 2022 02:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F21781FDF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2F511BF94D
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDD5C41770
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDD5C41770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4lc-BXqSXpR for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 02:32:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9033641754
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9033641754
 for <devel@driverdev.osuosl.org>; Wed, 21 Dec 2022 02:32:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="303192245"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="303192245"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 18:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="653339600"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="653339600"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Dec 2022 18:32:13 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p7otw-0009mY-33;
 Wed, 21 Dec 2022 02:32:12 +0000
Date: Wed, 21 Dec 2022 10:31:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 27b04428256b81185349a9c87f36f40ce4eb4fa9
Message-ID: <63a26ff5.tBB7KtXrWNUdhyRn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671589935; x=1703125935;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=AnqIMNAcbj0zYZyZ/Uq54JNlIn/opaLx7BdwuQRIkYs=;
 b=KtIr3wQWZr3ay43zJOa8N3zA8K4HNgIJAJ8MRY94IaUZQvQvZM/+OgHt
 7/N02JhY/bXPCchca4lJXR3ddgLSaSJwF/AR3r4ruiDYniJHi2Ii1OVIV
 77VEdfSDiXuUNZhqEYXpR6DgpS49duA3VsgxAQ2ch7ymsgiPTNFBP8vWH
 UtppiEoYg7nUMDjGUBl0KgRb795UJzmYFokxOHZHoYcVP92+KB+WJn7pK
 LJ9jdKV4rJgc7ORW8gQCWBgPNyv1DyZxBadBiGj82yDpxZzAhntVfwNeT
 cpcrRt/dUW4cjIWz+y9MWxqVp1SO6+PLXvRvbYk3I1GRmswpazvcDbqN7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KtIr3wQW
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
branch HEAD: 27b04428256b81185349a9c87f36f40ce4eb4fa9  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 1051m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
arc                                 defconfig
x86_64                              defconfig
um                           x86_64_defconfig
i386                                defconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20221219
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64               randconfig-a003-20221219
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64               randconfig-a001-20221219
x86_64               randconfig-a004-20221219
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a006-20221219
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a005-20221219
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
i386                             allyesconfig
arm                                 defconfig
s390                                defconfig
s390                             allmodconfig
ia64                             allmodconfig
sh                               allmodconfig
s390                             allyesconfig
x86_64                            allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                          randconfig-a001
arc                  randconfig-r043-20221219
i386                          randconfig-a003
arm                              allyesconfig
arm                  randconfig-r046-20221219
i386                          randconfig-a005
arc                  randconfig-r043-20221218
arm64                            allyesconfig
s390                 randconfig-r044-20221218
riscv                randconfig-r042-20221218

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a013-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a015-20221219
i386                 randconfig-a014-20221219
i386                 randconfig-a012-20221219
i386                 randconfig-a013-20221219
i386                 randconfig-a015-20221219
i386                 randconfig-a011-20221219
i386                 randconfig-a016-20221219
arm                  randconfig-r046-20221218
hexagon              randconfig-r041-20221218
hexagon              randconfig-r045-20221219
hexagon              randconfig-r041-20221219
hexagon              randconfig-r045-20221218
i386                          randconfig-a002
i386                          randconfig-a004
riscv                randconfig-r042-20221219
s390                 randconfig-r044-20221219
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
