Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE9A5EB2BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Sep 2022 22:55:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14B38605EC;
	Mon, 26 Sep 2022 20:55:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14B38605EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uMNDAYCqUXhs; Mon, 26 Sep 2022 20:55:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B700B605DB;
	Mon, 26 Sep 2022 20:55:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B700B605DB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8B91BF370
 for <devel@linuxdriverproject.org>; Mon, 26 Sep 2022 20:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 487F881A58
 for <devel@linuxdriverproject.org>; Mon, 26 Sep 2022 20:55:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 487F881A58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzILnmp6hF-S for <devel@linuxdriverproject.org>;
 Mon, 26 Sep 2022 20:55:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E880819CC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E880819CC
 for <devel@driverdev.osuosl.org>; Mon, 26 Sep 2022 20:55:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="362971711"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="362971711"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 13:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="654429475"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="654429475"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 26 Sep 2022 13:55:11 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ocv8A-0000F8-1H;
 Mon, 26 Sep 2022 20:55:10 +0000
Date: Tue, 27 Sep 2022 04:54:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7589197485da6fb02f3c06cfd7465aa2193da563
Message-ID: <6332119e.jI0ljp9qoxGytAYG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664225713; x=1695761713;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=SpPxpjLxzqOgrnTZ/0X1+D2sV+/iqz+1IJcXhPWA73s=;
 b=d9thK4w9s0kWzjAkKRfPxREVHILZEFeJj2Mp6LSmdngXfqR5vK9fA9RL
 sjXsWMkefN5KhAp2dNmCCLG77W7/Seuy6zELF0ihPppudTVRtkWMWLD/T
 +V2h6OiyCYxwJMN4QLbATPaOu2qMRJuwzsgxCiM820bVEUICHtQhOWCyX
 ZKbacEQlvhCCQpNAVQ8Ayfkvya/xzBXrV+SBQJBcjurNlQF/hVgVapuzP
 keUgfW3fhMOI97dAc3ragZCJNfpi5e+ZRXaIDUIQBdhzxAuwm3yC9aGjV
 6HeNxzthDiPr3OVD4bmqHylPJq0rhl+7TXtcmo6aMPByl7Wtk6ZPQ1x4r
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d9thK4w9
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
branch HEAD: 7589197485da6fb02f3c06cfd7465aa2193da563  staging: r8188eu: don't check for stop/removal in the blink worker

elapsed time: 723m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
i386                                defconfig
x86_64               randconfig-a005-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a002-20220926
x86_64               randconfig-a006-20220926
i386                 randconfig-a003-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a005-20220926
sh                               allmodconfig
powerpc                          allmodconfig
x86_64                              defconfig
mips                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
arc                  randconfig-r043-20220925
arm                                 defconfig
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
riscv                randconfig-r042-20220925
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
i386                 randconfig-a011-20220926
riscv                randconfig-r042-20220926
i386                 randconfig-a013-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a016-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a016-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
