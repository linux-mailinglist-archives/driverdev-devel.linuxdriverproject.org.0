Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FCE68258F
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 08:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A951606DC;
	Tue, 31 Jan 2023 07:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A951606DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xGF4220Qpsxz; Tue, 31 Jan 2023 07:30:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB51F6068B;
	Tue, 31 Jan 2023 07:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB51F6068B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEE7E1BF34D
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 07:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6A0B4010C
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 07:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6A0B4010C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVryoJXNccgR for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 07:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF90F400DD
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF90F400DD
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 07:30:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329881185"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="329881185"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:30:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="664399702"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="664399702"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 30 Jan 2023 23:30:41 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMl6G-0004Gh-3D;
 Tue, 31 Jan 2023 07:30:40 +0000
Date: Tue, 31 Jan 2023 15:30:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 3609abd768471a629f43847c8a5b6c4b7b3a970a
Message-ID: <63d8c38d.yPfZO43cR53lYuXy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675150244; x=1706686244;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=g6ldr+z7QfXk8TOmNMc1eVW8LtgEQAFBCZ68plEiB1s=;
 b=eDBocvDFfsqSipBYvZK1tEL1gFfNPQAGNvBIONQk66Eq0gGNitGxnLxS
 Nirv/HeCc2CvZyzAwgcaLKoRirhkTlPUmxfBrf0/y103X9kCiiGQ2Jj8w
 TW/HBG32Tpb4HDNLOEUPKzUzM+oIRLnQ/Nmvs7gL8jAWBmciIcTaH60Vo
 mDWNquOvR5+UKTuXRzFjuKixHk2nEm/B9NF2Js9LcfkJEnYIWvDrGm4ak
 2K2vb6au2o2bJySPbd1yQ5o4nM9Ghg4t9fXPugCopS+xCFoki7CwgVZq4
 nfGUQT6dLKn5n6AnMWqYQY4kcrVJ0/+Frr8BbhXWii9i2cLUQJS8hY3W6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eDBocvDF
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 3609abd768471a629f43847c8a5b6c4b7b3a970a  driver core: soc: remove layering violation for the soc_bus

elapsed time: 725m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
sh                               allmodconfig
s390                             allmodconfig
s390                                defconfig
powerpc                          allmodconfig
mips                             allyesconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
x86_64               randconfig-a006-20230130
i386                 randconfig-a004-20230130
x86_64               randconfig-a005-20230130
i386                 randconfig-a003-20230130
i386                                defconfig
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
i386                             allyesconfig
arc                  randconfig-r043-20230129
arm                                 defconfig
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230130
riscv                randconfig-r042-20230130
s390                 randconfig-r044-20230129
x86_64                        randconfig-k001
arm                         s5pv210_defconfig
powerpc                     skiroot_defconfig
powerpc                    gamecube_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
