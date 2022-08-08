Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3678858D06F
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Aug 2022 01:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 458CF40982;
	Mon,  8 Aug 2022 23:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 458CF40982
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gy6rjVdUtddq; Mon,  8 Aug 2022 23:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADB48408FD;
	Mon,  8 Aug 2022 23:21:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADB48408FD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC2361BF330
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 23:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C760740359
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 23:21:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C760740359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0y3HEuS5Op3 for <devel@linuxdriverproject.org>;
 Mon,  8 Aug 2022 23:21:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CACF240297
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CACF240297
 for <devel@driverdev.osuosl.org>; Mon,  8 Aug 2022 23:21:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="288277017"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="288277017"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 16:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="633101344"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2022 16:21:35 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oLC3y-000Mab-2m;
 Mon, 08 Aug 2022 23:21:34 +0000
Date: Tue, 09 Aug 2022 07:20:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 8805c751a2269cc9f4da22faac1d2447c3d0b042
Message-ID: <62f19a4b.Kx5o89nziWp5zvNc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660000897; x=1691536897;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/pFeiQ6xaIkM4VtS71zAmPgnTWTbn63egBW+rjHcBGY=;
 b=PuWcx7MQ9ABXOoVy7GyqqqdOT3vG7thiCCfQjPZoAAMCt8dx4GKAwjpN
 EeCZpBGkcprgKTwCFzulKEjKpcZDCXHW9dp3v+cGSiWZF8Aa02nrMNQ75
 uH+jIkeXSz977KOYVlqUVZYq/f4MItblR0+K1Ck56mDw+Oed7ntQ+qTqO
 KQkeTDaD5yhA2W6H9R8I6HZy1I6nEOuQgrb/r4SCHg4MrVdqQlxRg918y
 r71+RbaQMRqIsSmbSWi89+sz6SkjZBQBtyzefermB4+jydgVvZCW+vGAw
 GwEDol9kGY0tdaTfBVj+mSEcUsCO3DJL1gbuA3Glv2PRXcCl7sTE12KRd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PuWcx7MQ
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
branch HEAD: 8805c751a2269cc9f4da22faac1d2447c3d0b042  HID: vivaldi: convert to use dev_groups

elapsed time: 696m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
arc                  randconfig-r043-20220808
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                           rhel-8.3-syz
i386                          randconfig-a003
x86_64                           allyesconfig
x86_64               randconfig-a003-20220808
x86_64               randconfig-a001-20220808
x86_64               randconfig-a002-20220808
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a006-20220808
x86_64               randconfig-a004-20220808
x86_64               randconfig-a005-20220808
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sh                ecovec24-romimage_defconfig
mips                      loongson3_defconfig
loongarch                        alldefconfig
sh                           sh2007_defconfig
arm                             ezx_defconfig
parisc64                            defconfig
powerpc                 mpc837x_rdb_defconfig
arc                         haps_hs_defconfig
nios2                            alldefconfig
i386                 randconfig-c001-20220808

clang tested configs:
hexagon              randconfig-r045-20220808
hexagon              randconfig-r041-20220808
x86_64               randconfig-a013-20220808
x86_64               randconfig-a012-20220808
x86_64               randconfig-a011-20220808
riscv                randconfig-r042-20220808
s390                 randconfig-r044-20220808
x86_64               randconfig-a015-20220808
x86_64               randconfig-a016-20220808
x86_64               randconfig-a014-20220808
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a011-20220808
i386                 randconfig-a013-20220808
i386                 randconfig-a012-20220808
i386                 randconfig-a014-20220808
i386                 randconfig-a016-20220808
i386                 randconfig-a015-20220808

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
