Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ED95B65EC
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Sep 2022 04:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E0E7408BB;
	Tue, 13 Sep 2022 02:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E0E7408BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rTmLqArjYvD; Tue, 13 Sep 2022 02:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48A3E4012B;
	Tue, 13 Sep 2022 02:59:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48A3E4012B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DE2A1BF2A5
 for <devel@linuxdriverproject.org>; Tue, 13 Sep 2022 02:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 571E860B46
 for <devel@linuxdriverproject.org>; Tue, 13 Sep 2022 02:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 571E860B46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lG8lgh8bs81Y for <devel@linuxdriverproject.org>;
 Tue, 13 Sep 2022 02:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83932605A1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83932605A1
 for <devel@driverdev.osuosl.org>; Tue, 13 Sep 2022 02:59:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="278415501"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="278415501"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 19:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="758624130"
Received: from lkp-server02.sh.intel.com (HELO 4011df4f4fd3) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2022 19:59:41 -0700
Received: from kbuild by 4011df4f4fd3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oXw9F-00038T-0E;
 Tue, 13 Sep 2022 02:59:41 +0000
Date: Tue, 13 Sep 2022 10:58:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 a791dc135325862fdf491ac088f54993710e2515
Message-ID: <631ff1ed.ahOLMIEWq5P4n552%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663037983; x=1694573983;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5ykgXS5Yg++MqI95AqKPd+Q6TyDduYHPuP0dYhk70XA=;
 b=gsWuqJeQNlRhikWf8oY+jwvUYMvfgBwtbl9+q0l00/az48n6o1zvTMMd
 vQywtKrsCQA5L4JIPmJYJ1yJ0YUBwcNRDQilv3+Ekt+/0ErjKkeSgn2eN
 dtfrABJkVh+Al5hdQL3LioD9XBFxOUmA6so9ZbWyVgIKRjiVmCK8GHbxE
 CtOaKR+4/WtNVos7oRHdg4mN+SfE8NSS8wHBnFDd9df4fhuYY4DrB7qit
 y1jdm3BF1fBC8a2E+3CJd9zvXntXoVDjO9iitxX7m6kWn9CiOkMyTMBrA
 dzL3zDgS5JE8vTDTbPxU6PInTBpnik6jI2LaWIZ5CvLcL8QjdN3hJRvOh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gsWuqJeQ
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
branch HEAD: a791dc135325862fdf491ac088f54993710e2515  Merge 6.0-rc5 into driver-core-next

elapsed time: 720m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
m68k                             allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
powerpc                           allnoconfig
arm                                 defconfig
mips                             allyesconfig
x86_64                           rhel-8.3-syz
i386                 randconfig-a006-20220912
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a001-20220912
arc                  randconfig-r043-20220912
powerpc                          allmodconfig
riscv                randconfig-r042-20220911
x86_64               randconfig-a006-20220912
arc                  randconfig-r043-20220911
sh                               allmodconfig
x86_64               randconfig-a004-20220912
s390                 randconfig-r044-20220911
i386                 randconfig-a001-20220912
x86_64               randconfig-a002-20220912
arm64                            allyesconfig
x86_64                           allyesconfig
i386                 randconfig-a002-20220912
x86_64               randconfig-a005-20220912
i386                 randconfig-a004-20220912
arm                              allyesconfig
i386                 randconfig-a003-20220912
ia64                             allmodconfig
x86_64               randconfig-a003-20220912
i386                 randconfig-a005-20220912
i386                             allyesconfig

clang tested configs:
i386                 randconfig-a014-20220912
i386                 randconfig-a013-20220912
hexagon              randconfig-r045-20220911
i386                 randconfig-a016-20220912
hexagon              randconfig-r045-20220912
riscv                randconfig-r042-20220912
i386                 randconfig-a011-20220912
hexagon              randconfig-r041-20220912
i386                 randconfig-a012-20220912
hexagon              randconfig-r041-20220911
s390                 randconfig-r044-20220912
i386                 randconfig-a015-20220912
x86_64               randconfig-a014-20220912
x86_64               randconfig-a011-20220912
x86_64               randconfig-a012-20220912
x86_64               randconfig-a013-20220912
x86_64               randconfig-a016-20220912
x86_64               randconfig-a015-20220912

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
