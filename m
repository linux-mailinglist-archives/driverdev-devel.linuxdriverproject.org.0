Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D47E6395B7
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Nov 2022 12:24:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79E6860E2A;
	Sat, 26 Nov 2022 11:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79E6860E2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7WHzhM7EjVu; Sat, 26 Nov 2022 11:24:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32EEB60BA7;
	Sat, 26 Nov 2022 11:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32EEB60BA7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD991BF275
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 11:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 210DD60E2A
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 11:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 210DD60E2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LKrEUm_CBoxR for <devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 11:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC39F60BA7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC39F60BA7
 for <devel@driverdev.osuosl.org>; Sat, 26 Nov 2022 11:24:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="316415002"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="316415002"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 03:24:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="675586258"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="675586258"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 26 Nov 2022 03:24:23 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oytIE-0006FG-1b;
 Sat, 26 Nov 2022 11:24:22 +0000
Date: Sat, 26 Nov 2022 19:24:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 e01996015e740f562962e55b8eeaed8199c11d09
Message-ID: <6381f761.zFsNIy0XsjjnRpUW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669461865; x=1700997865;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vwtoYWvn95Npa+QVt4D0cRFP4R2q0heiAwdF96czohw=;
 b=Wr2km4ijDJKIEs1e6Z8oKHtQsCE4AhGNbXTgpr2LLLfS6ZGWqp8Tbtfo
 p9zYdoTev+tgwYmchFw2NLmyyLhDlvI6IaXny3iLTC7pwZBBClI1hHG02
 30JqGwKsfJWGpPGUOz0rKJ9puPWHMrySaSmmj904R4LZEqUzxWBgmAJ/X
 S5f/2hmhClIzZ16T+pRxviPj6AjqvxG8xUE+sLuvd9/TDy54K0dHyezAL
 ciqZnzBxE3UQi7nWKtvBmeCd7QqDqOFd03GMhwzzbdgtXcql/6NKKZD5l
 Oy/kcgKBsPp9ofV2sn0u7/GQJYPfWMU8tk+tcKF/SilZWqp8q4YJvaG69
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wr2km4ij
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
branch HEAD: e01996015e740f562962e55b8eeaed8199c11d09  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 1014m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20221126
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
ia64                             allmodconfig
x86_64                              defconfig
x86_64                        randconfig-a013
x86_64                               rhel-8.3
x86_64                        randconfig-a011
i386                          randconfig-a001
x86_64                           allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a015
i386                          randconfig-a005
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221126
s390                 randconfig-r044-20221126
riscv                randconfig-r042-20221126
hexagon              randconfig-r041-20221126
x86_64                        randconfig-a012
i386                          randconfig-a002
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a004
i386                          randconfig-a006
powerpc                   bluestone_defconfig
powerpc                      walnut_defconfig
mips                          ath25_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
