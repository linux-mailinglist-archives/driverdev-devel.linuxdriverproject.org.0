Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 195FB5ECCDD
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Sep 2022 21:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E8FA60A79;
	Tue, 27 Sep 2022 19:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E8FA60A79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmC3mrfePHFf; Tue, 27 Sep 2022 19:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B620F60A65;
	Tue, 27 Sep 2022 19:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B620F60A65
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 865661BF30E
 for <devel@linuxdriverproject.org>; Tue, 27 Sep 2022 19:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61BB7400DB
 for <devel@linuxdriverproject.org>; Tue, 27 Sep 2022 19:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61BB7400DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2Bad0vuOosA for <devel@linuxdriverproject.org>;
 Tue, 27 Sep 2022 19:28:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FA4F400DA
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FA4F400DA
 for <devel@driverdev.osuosl.org>; Tue, 27 Sep 2022 19:28:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="299009180"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="299009180"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 12:28:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="690110859"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="690110859"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 12:28:51 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odGGB-0001Vg-0i;
 Tue, 27 Sep 2022 19:28:51 +0000
Date: Wed, 28 Sep 2022 03:27:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 1da40c2667388dd70306bfd3d4dcb49fd20b50a9
Message-ID: <63334ebe.28d5f13+UaCT6mY0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664306933; x=1695842933;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=67wLHaIWTIxPUpWm5bChfyF8e7CSXBvKQqNyr09I+pM=;
 b=CWsOcr6Mmma2Os4NIaGuMMaArSG5IQbNJcwovAHYHyW+0Kpe2dhkREHa
 H4QJ0JMFMN2ShGe5V+Cfyj4+5De44r4E2G65nGnrBnRIUQcSqatt7DVSq
 cPesZUK7qpdi9UuECM+aOlJNC0Y+nz0uYI/2+sKZNKBCXOZ1zxzE+Pzp5
 iFkIJsLgSi7TQW5gfUDv5w05BTYDfDZ8qUcOZGlZAN9yOLCHJvPHGYnnK
 6c8ISALHwUQhXGywUaJLRlt60vL4l1iOPSKpq0OeK/Rs0KYdyRFmlGBxO
 ARUijHKuADkLqTdCeQ1t/5xVlyBW0qpxZrnH6+nbZcgMXrAe9yUwk2Yv4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CWsOcr6M
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
branch HEAD: 1da40c2667388dd70306bfd3d4dcb49fd20b50a9  Documentation: NBD_REQUEST_MAGIC isn't a magic number

elapsed time: 723m

configs tested: 75
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
x86_64                          rhel-8.3-func
x86_64               randconfig-a003-20220926
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a006-20220926
m68k                             allyesconfig
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a005-20220926
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
alpha                            allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
powerpc                          allmodconfig
arc                              allyesconfig
arc                  randconfig-r043-20220925
i386                 randconfig-a006-20220926
i386                 randconfig-a001-20220926
x86_64                              defconfig
s390                 randconfig-r044-20220925
i386                 randconfig-a004-20220926
x86_64                        randconfig-a004
riscv                randconfig-r042-20220925
i386                 randconfig-a002-20220926
arc                  randconfig-r043-20220926
i386                 randconfig-a003-20220926
x86_64                        randconfig-a002
x86_64                               rhel-8.3
i386                 randconfig-a005-20220926
x86_64                        randconfig-a006
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
hexagon              randconfig-r045-20220925
riscv                randconfig-r042-20220926
i386                 randconfig-a012-20220926
s390                 randconfig-r044-20220926
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220926
i386                 randconfig-a011-20220926
x86_64                        randconfig-a001
i386                 randconfig-a014-20220926
i386                 randconfig-a013-20220926
x86_64                        randconfig-a003
i386                 randconfig-a015-20220926
i386                          randconfig-a013
i386                 randconfig-a016-20220926
x86_64               randconfig-a012-20220926
i386                          randconfig-a011
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
i386                          randconfig-a015
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a015-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
