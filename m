Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9575ECF9B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Sep 2022 23:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ECF740761;
	Tue, 27 Sep 2022 21:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ECF740761
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IiIfZbVs8Q6P; Tue, 27 Sep 2022 21:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F77C404F4;
	Tue, 27 Sep 2022 21:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F77C404F4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E18191BF357
 for <devel@linuxdriverproject.org>; Tue, 27 Sep 2022 21:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9B6940510
 for <devel@linuxdriverproject.org>; Tue, 27 Sep 2022 21:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9B6940510
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sx1q2jpFfZe1 for <devel@linuxdriverproject.org>;
 Tue, 27 Sep 2022 21:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56B35404F4
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56B35404F4
 for <devel@driverdev.osuosl.org>; Tue, 27 Sep 2022 21:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="300159498"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="300159498"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 14:53:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572801771"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572801771"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 27 Sep 2022 14:53:54 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odIWY-0001ca-0N;
 Tue, 27 Sep 2022 21:53:54 +0000
Date: Wed, 28 Sep 2022 05:53:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 280f669ba63aa20082ffc7daa8fade8e738c944e
Message-ID: <633370d1.upeOctZqtuEg5LLH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664315637; x=1695851637;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O0Lz4fT1eDJ4VTIXqnVB1FbPeqfsAL5SGieHEMh62JY=;
 b=MnR3QotQ2D0ZbkV4mUW9bivU4tNJPU2VZ/B95hqPgdn7+UXmflT3wXE1
 wsk0ZuE+RiSJa3VYS83KMLmiH2uoj5d1wFeiGpOKHVs4L4H1d2FX/nBbF
 kWI/YMLAymm6d8OonMb1saLOQ5RWs7PErlu9X4qXdwLZprmcv1HRJtmnR
 gEt2EF+BDn5awN5Aa5Dn0IHUdPmzDiZ3kwYVUuYIvkDmhwe1xKCiQXuG1
 y6WVXNCSuxFiRHQ7AbvDMZIIW9pLE5eMk4y0TCqGr0xUsviFEaL86jbAU
 9YytjtSDQ9lWqRkqMEdcnC8q28NQD0wCmtxyDbqDdbOTXzmiyjbjpqaVB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MnR3QotQ
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
branch HEAD: 280f669ba63aa20082ffc7daa8fade8e738c944e  staging: rtl8192e: cmdpkt: Use skb_put_data() instead of skb_put/memcpy pair

elapsed time: 778m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                  randconfig-r043-20220925
m68k                             allmodconfig
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
x86_64                              defconfig
m68k                             allyesconfig
x86_64                               rhel-8.3
x86_64               randconfig-a002-20220926
i386                 randconfig-a001-20220926
arm                                 defconfig
i386                 randconfig-a004-20220926
x86_64               randconfig-a004-20220926
i386                 randconfig-a002-20220926
x86_64                           allyesconfig
i386                                defconfig
x86_64               randconfig-a001-20220926
i386                 randconfig-a003-20220926
x86_64               randconfig-a003-20220926
i386                 randconfig-a005-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a006-20220926
arm64                            allyesconfig
arm                              allyesconfig
i386                 randconfig-a006-20220926
i386                             allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
i386                 randconfig-a011-20220926
x86_64               randconfig-a016-20220926
i386                 randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
i386                 randconfig-a013-20220926
x86_64               randconfig-a015-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a016-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
