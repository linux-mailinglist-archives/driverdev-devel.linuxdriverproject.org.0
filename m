Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CB3660B84
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Jan 2023 02:37:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 838FA4185E;
	Sat,  7 Jan 2023 01:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 838FA4185E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmMV_qFwR-3e; Sat,  7 Jan 2023 01:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB87741884;
	Sat,  7 Jan 2023 01:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB87741884
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 125261BF59B
 for <devel@linuxdriverproject.org>; Sat,  7 Jan 2023 01:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF02B822E6
 for <devel@linuxdriverproject.org>; Sat,  7 Jan 2023 01:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF02B822E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9zS8gonf6Zy for <devel@linuxdriverproject.org>;
 Sat,  7 Jan 2023 01:37:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DAFC822E1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DAFC822E1
 for <devel@driverdev.osuosl.org>; Sat,  7 Jan 2023 01:37:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="384903585"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="384903585"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 17:37:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="658054383"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="658054383"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jan 2023 17:37:18 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDy97-000454-37;
 Sat, 07 Jan 2023 01:37:17 +0000
Date: Sat, 07 Jan 2023 09:36:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 96d800ea28c96b6af90c846c85151a05e9946976
Message-ID: <63b8cca8.RJUjlCFK0K5PWpFR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673055441; x=1704591441;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=m8TowwvfhFf5YxkRBttwATO89u71zK2lIxrSMVSGEB0=;
 b=J7aliD1YSmCw7o5m+fzub/+7NbPOGt2/PDg/IXK+bsPcpp9ZyYPJoGyD
 LKQ5yDuPB4OQ/593OkkgZ3jx8UdqzvQq0OicP6JqIlBmVtXiS8KbdGlSu
 UNt5mPLb/YfXhGRuPv0C9CcIrCPaadqjiL/WjGKMRVUiTNbZdOu3v7850
 YsR6RS1Jy04ZmHCbhAD8s4HCYwVNNHto/kugfmKSe7YlhtNJVbcZlMOY2
 XqKiCPxDJC/S0Ic8pPmBb/eCWAq7SB2Axssd6RMhu1DmCyJbA7eg1o0/U
 8HuAVCbWUn8S4IbL3UhIaE4K1Z5inDOjPHrXdnanRbj6BWwZjzkJh2C9M
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J7aliD1Y
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
branch HEAD: 96d800ea28c96b6af90c846c85151a05e9946976  USB: fix memory leak with using debugfs_lookup()

elapsed time: 786m

configs tested: 71
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
um                             i386_defconfig
s390                                defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20230106
powerpc                           allnoconfig
arm                  randconfig-r046-20230106
s390                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
sh                               allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a011
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
x86_64                              defconfig
mips                             allyesconfig
x86_64                           rhel-8.3-kvm
arm                                 defconfig
arc                              allyesconfig
ia64                             allmodconfig
i386                          randconfig-a014
i386                                defconfig
x86_64                        randconfig-a015
alpha                            allyesconfig
m68k                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a001
x86_64                               rhel-8.3
i386                          randconfig-a003
arm64                            allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a005
x86_64                          rhel-8.3-func
i386                             allyesconfig
powerpc                          allmodconfig
mips                         cobalt_defconfig
arm                            lart_defconfig
arm                        cerfcube_defconfig
mips                         db1xxx_defconfig
powerpc                      ppc6xx_defconfig

clang tested configs:
hexagon              randconfig-r041-20230106
hexagon              randconfig-r045-20230106
riscv                randconfig-r042-20230106
x86_64                        randconfig-a001
x86_64                        randconfig-a003
s390                 randconfig-r044-20230106
x86_64                        randconfig-a005
x86_64                        randconfig-a012
i386                          randconfig-a013
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
x86_64                          rhel-8.3-rust
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20230107
hexagon              randconfig-r045-20230107
arm                  randconfig-r046-20230107
arm                         hackkit_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
