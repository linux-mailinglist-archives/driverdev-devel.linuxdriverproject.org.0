Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6863C60DCD2
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Oct 2022 10:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2790E607F4;
	Wed, 26 Oct 2022 08:13:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2790E607F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EcZ8tkH7cSYH; Wed, 26 Oct 2022 08:13:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D31C060783;
	Wed, 26 Oct 2022 08:13:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D31C060783
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABF6C1BF8B4
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 08:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8721380B11
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 08:13:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8721380B11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id URkiTHaqlel1 for <devel@linuxdriverproject.org>;
 Wed, 26 Oct 2022 08:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3099A80B07
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3099A80B07
 for <devel@driverdev.osuosl.org>; Wed, 26 Oct 2022 08:13:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="334504663"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="334504663"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 01:13:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="774500676"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="774500676"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2022 01:13:44 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1onbXj-0007An-2l;
 Wed, 26 Oct 2022 08:13:43 +0000
Date: Wed, 26 Oct 2022 16:13:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 937ec9f7d5f2625d60077bb7824fee35dc447c6e
Message-ID: <6358ec1c.NPiwogHMv87idAns%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666772026; x=1698308026;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aAnb84dRFgaQzwuNbbOr1qiO5wJAvsm2W98QxauhJJA=;
 b=Y4JVQ2Rjqmvvsic1WseB99x/TLg5CPon3/iodUmlxgnpy9o0dGh0mQeR
 F536796g6nRyEsUep5TZwmHF0ShZ/CyyoZUIpXqHQLRYEpw8YrjpjG/FA
 0naOIIAPqA/K9GX3/t4CeMM90ZhZx1zA7S5MHZoL0r11sJLHUORkIuJlN
 GMmYgfMpk5NJj42mOJb8Jb0/KRDSbi3T9GwlmpiIrzJCaht1HlB1rGnoc
 3KRq+LVgFteWNp43YZ+xibuIaN0BS5+mVhHvqo6FRBIRci+mnRo4Z2bpx
 8BRwf087LNR3Eg4SKgQjC+fdApaK4iMpArwmyLweKahvXnIgVpxb1hB5p
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y4JVQ2Rj
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 937ec9f7d5f2625d60077bb7824fee35dc447c6e  staging: rtl8192e: remove bogus ssid character sign test

elapsed time: 880m

configs tested: 70
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
i386                                defconfig
x86_64                              defconfig
arc                  randconfig-r043-20221025
s390                                defconfig
s390                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
arm                                 defconfig
arc                              allyesconfig
x86_64                               rhel-8.3
x86_64               randconfig-a014-20221024
x86_64                           allyesconfig
s390                             allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
x86_64               randconfig-a013-20221024
i386                          randconfig-a014
x86_64               randconfig-a012-20221024
m68k                             allyesconfig
x86_64               randconfig-a016-20221024
powerpc                          allmodconfig
x86_64               randconfig-a011-20221024
x86_64               randconfig-a015-20221024
i386                          randconfig-a012
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
i386                             allyesconfig
arm                              allyesconfig
i386                          randconfig-a016
sh                               allmodconfig
mips                             allyesconfig
m68k                             allmodconfig
i386                 randconfig-a011-20221024
i386                 randconfig-a014-20221024
i386                 randconfig-a015-20221024
i386                 randconfig-a016-20221024
i386                 randconfig-a012-20221024
i386                 randconfig-a013-20221024
arc                  randconfig-r043-20221026
s390                 randconfig-r044-20221026
riscv                randconfig-r042-20221026

clang tested configs:
hexagon              randconfig-r041-20221025
hexagon              randconfig-r045-20221025
s390                 randconfig-r044-20221025
riscv                randconfig-r042-20221025
i386                 randconfig-a001-20221024
x86_64               randconfig-a001-20221024
x86_64               randconfig-a003-20221024
x86_64               randconfig-a002-20221024
i386                          randconfig-a013
i386                 randconfig-a002-20221024
i386                          randconfig-a015
x86_64               randconfig-a004-20221024
i386                 randconfig-a005-20221024
i386                 randconfig-a003-20221024
i386                          randconfig-a011
x86_64               randconfig-a005-20221024
i386                 randconfig-a004-20221024
x86_64               randconfig-a006-20221024
i386                 randconfig-a006-20221024
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
