Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA865FD435
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 07:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB716419B7;
	Thu, 13 Oct 2022 05:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB716419B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlbVajF5aLZr; Thu, 13 Oct 2022 05:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51F2C419AB;
	Thu, 13 Oct 2022 05:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51F2C419AB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96AED1BF576
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 05:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C00641990
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 05:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C00641990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hcx_fqlMewr7 for <devel@linuxdriverproject.org>;
 Thu, 13 Oct 2022 05:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEC3C4172A
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEC3C4172A
 for <devel@driverdev.osuosl.org>; Thu, 13 Oct 2022 05:21:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="304969977"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="304969977"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 22:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="578090348"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="578090348"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2022 22:21:11 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oiqed-0004cf-0C;
 Thu, 13 Oct 2022 05:21:11 +0000
Date: Thu, 13 Oct 2022 13:20:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 ff8f3cb3d96a18f33eb312fdbcac9a06d9261e66
Message-ID: <6347a039.Alof5VHoBZaY1vir%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665638473; x=1697174473;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qtvgzckogQzLxta4EJnZ7j3leL5/nXwx2buukl9dAwk=;
 b=OXhxjWqx6OkoLqDLq7BKKF1ykcvbiCrAFBvcyCBX/+V2I3hmjsSLSdah
 oN7YdC6jqlnT54K2C9V/Icwgm2WiJ2NQUWNc6p0H3wa08+LACBlxQNM2o
 cFspTUKKuksec1mBcIQDIxziAvYd3PdhVTRS+DNPTh8x6cXH1a2G4p+rT
 wsBqUbxXMJ7gZAmOUe81Xn7ihqwJTZ2Pbbd5cjn8k+i1jcDlPjBNaC2aA
 aHXAzzS2FyUe+T3X12t2mGv7kTvklLvzuOzlkwUS2cdKw/Ilr3UmbG+uE
 wnOaNKL+Ji/BAuNGnZ+5YgkmibWydSq5CWgleWNcAGh5lCJpuqOPZW/cd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OXhxjWqx
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: ff8f3cb3d96a18f33eb312fdbcac9a06d9261e66  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 723m

configs tested: 91
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221012
riscv                randconfig-r042-20221012
s390                 randconfig-r044-20221012
um                             i386_defconfig
arm                                 defconfig
um                           x86_64_defconfig
arc                                 defconfig
x86_64                              defconfig
i386                                defconfig
powerpc                           allnoconfig
i386                          randconfig-a001
powerpc                          allmodconfig
x86_64                               rhel-8.3
i386                          randconfig-a003
alpha                               defconfig
x86_64                        randconfig-a013
sh                               allmodconfig
x86_64                        randconfig-a011
mips                             allyesconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a014
x86_64                           allyesconfig
x86_64                        randconfig-a004
s390                                defconfig
i386                             allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a015
s390                             allmodconfig
x86_64                        randconfig-a002
arc                              allyesconfig
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a005
alpha                            allyesconfig
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a006
m68k                             allyesconfig
m68k                             allmodconfig
s390                             allyesconfig
ia64                             allmodconfig
mips                         bigsur_defconfig
sh                           se7780_defconfig
arm                             ezx_defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
arm                        mini2440_defconfig
powerpc                     stx_gp3_defconfig
arm                         lpc18xx_defconfig
powerpc                  storcenter_defconfig
powerpc                 linkstation_defconfig
sh                ecovec24-romimage_defconfig
sh                          urquell_defconfig
arm                         at91_dt_defconfig
arc                     nsimosci_hs_defconfig
arm                         nhk8815_defconfig
arm                        multi_v7_defconfig
arc                     haps_hs_smp_defconfig
sh                          kfr2r09_defconfig
nios2                               defconfig
loongarch                 loongson3_defconfig
i386                          randconfig-c001
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
hexagon              randconfig-r045-20221012
hexagon              randconfig-r041-20221012
i386                          randconfig-a013
i386                          randconfig-a002
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a006
x86_64                        randconfig-a001
i386                          randconfig-a015
i386                          randconfig-a004
x86_64                        randconfig-a003
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig
x86_64                        randconfig-k001
powerpc                     akebono_defconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
