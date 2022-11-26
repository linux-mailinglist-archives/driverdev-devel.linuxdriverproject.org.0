Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 547F46395BE
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Nov 2022 12:32:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B67060E36;
	Sat, 26 Nov 2022 11:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B67060E36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW7KDXvfzohx; Sat, 26 Nov 2022 11:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14BCB60BA7;
	Sat, 26 Nov 2022 11:32:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14BCB60BA7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A09F1BF275
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 11:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2593240272
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 11:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2593240272
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jrvDAni-6ip8 for <devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 11:32:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 470E0400A6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 470E0400A6
 for <devel@driverdev.osuosl.org>; Sat, 26 Nov 2022 11:32:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="341497000"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="341497000"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 03:32:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="731648401"
X-IronPort-AV: E=Sophos;i="5.96,196,1665471600"; d="scan'208";a="731648401"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Nov 2022 03:32:23 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oytPy-0006Ft-33;
 Sat, 26 Nov 2022 11:32:22 +0000
Date: Sat, 26 Nov 2022 19:32:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 566a6e8de20726a9fc54b72b814e273f99360680
Message-ID: <6381f945.dx5jGtcfTVo2hTfv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669462345; x=1700998345;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fAVTC7xMA244qmEXeP3m0Z1Kd1yg8afeFNqHw9pRX/s=;
 b=KsymRLEydXZ1VhxBfiSws3bUMkRxRqtPBTX8w4xft91I09J1BCtiubip
 9+TkNYQuvB7+4AldEa/y2/urVCJr91YZ8yM9/zuSLR2xX5pjRPSuvOFuV
 txRsUIflhpPnEdekJTXtniYes8LJ7qU8PerxZNtGs6lX2mgTG01uZdMRT
 il6BSWGKbedqpeczMOvSntMl4lGDQITvqw6BpgH/UI030CL3LPyqET5JK
 qapbOA0v9tpZBrxLL1TPwJw+7i5W8k9nzaGSSV1z/RZEDSvQLWU5DNDkS
 FpD81CfT+3HFbNWwP4f18vi8TYs/QSZgjFPL5v/52e+04IcXYxojo4JIB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KsymRLEy
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 566a6e8de20726a9fc54b72b814e273f99360680  readfile.2: new page describing readfile(2)

elapsed time: 1020m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20221124
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                             allyesconfig
i386                                defconfig
x86_64                            allnoconfig
m68k                            q40_defconfig
arc                           tb10x_defconfig
arm                           tegra_defconfig
sparc                            alldefconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221124
hexagon              randconfig-r045-20221124
s390                 randconfig-r044-20221124
riscv                randconfig-r042-20221124
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-k001
s390                 randconfig-r044-20221126
hexagon              randconfig-r041-20221126
riscv                randconfig-r042-20221126
hexagon              randconfig-r045-20221126
powerpc                     mpc512x_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
