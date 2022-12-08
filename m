Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72385646843
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Dec 2022 05:30:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 348F1417BD;
	Thu,  8 Dec 2022 04:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 348F1417BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8KTyhe66psxz; Thu,  8 Dec 2022 04:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FD7241814;
	Thu,  8 Dec 2022 04:30:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FD7241814
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 933C61BF3DE
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 04:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7552381FB4
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 04:30:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7552381FB4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAGog34E453I for <devel@linuxdriverproject.org>;
 Thu,  8 Dec 2022 04:30:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF2B781334
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF2B781334
 for <devel@driverdev.osuosl.org>; Thu,  8 Dec 2022 04:30:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315788459"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="315788459"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 20:30:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="753392892"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="753392892"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2022 20:30:31 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p38YJ-0000pV-16;
 Thu, 08 Dec 2022 04:30:31 +0000
Date: Thu, 08 Dec 2022 12:30:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f18caf261398a7f2de4fa3f600deb87072fe7b8d
Message-ID: <63916858.g5LGa8YmYzDwfcyl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670473833; x=1702009833;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8iA4QyOaDaLdAa5ByxXWUTM4zn6jWNoUmGRCmsVrVTM=;
 b=j9ffRyIBz203LrAKw029SW95Hn8QrOTnjMhTUJRczv9oYV5WzwHnTOPp
 z4bXLOHwCTPSrtjBjDyFDriy/dKlyVZAMTgEU3PcB/956T9sYcWAImYzI
 ncVSgT6G/pQDkg9foP7se35ofwFMJ0wUuZUY7vGjUeMRkVeRGipU5vpF+
 zZ3iRHIfCMa3c4xmym7oLkPJi0WbyLujketllkpuScN8G3kFYK+Es/Bl1
 Ai/aPu47K4nNfs2fyY4lEPzOKtV8/uRKVnjBcWfwhKFXbNSXi0arFyceH
 gMcdrqbMXvynA2q5wmpOa/FEuUjzQWCOtOFZr76Sv4twCpGV5Fhz/Ye83
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j9ffRyIB
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
branch HEAD: f18caf261398a7f2de4fa3f600deb87072fe7b8d  device property: Fix documentation for fwnode_get_next_parent()

elapsed time: 722m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
s390                 randconfig-r044-20221207
powerpc                           allnoconfig
arc                  randconfig-r043-20221207
um                           x86_64_defconfig
s390                             allyesconfig
riscv                randconfig-r042-20221207
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
x86_64                        randconfig-a006
m68k                             allmodconfig
x86_64                          rhel-8.3-rust
i386                                defconfig
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
x86_64                        randconfig-a015
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a013
i386                          randconfig-a001
arm                                 defconfig
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
mips                             allyesconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a003
powerpc                          allmodconfig
x86_64                               rhel-8.3
i386                             allyesconfig
i386                          randconfig-a005
arm64                            allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
i386                          randconfig-a013
x86_64                        randconfig-a001
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
