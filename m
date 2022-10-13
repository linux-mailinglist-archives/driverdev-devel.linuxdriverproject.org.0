Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 823A45FD332
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 04:18:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32388610A0;
	Thu, 13 Oct 2022 02:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32388610A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mir--eBMcSJU; Thu, 13 Oct 2022 02:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0A2F60A6B;
	Thu, 13 Oct 2022 02:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0A2F60A6B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCDF01BF577
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 02:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5E86610A0
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 02:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5E86610A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KWxlYtpWHQkY for <devel@linuxdriverproject.org>;
 Thu, 13 Oct 2022 02:18:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C1CC60A6B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C1CC60A6B
 for <devel@driverdev.osuosl.org>; Thu, 13 Oct 2022 02:18:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="391263440"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="391263440"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 19:18:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660151422"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660151422"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 12 Oct 2022 19:18:43 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oino2-0004WJ-3B;
 Thu, 13 Oct 2022 02:18:42 +0000
Date: Thu, 13 Oct 2022 10:17:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 d509823823e3b5be5cd5c097f8562744f8634969
Message-ID: <63477553.FQIzHU+y9Mp/lfwz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665627526; x=1697163526;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5IFFSzEBU+lQUOYQXP3ttmNlKd/lEapybtZxncEzg5I=;
 b=OxgeGDM8/rR1zpzgCCwet1zJSnBGmcEZMmjDnLVSN5aoI4ri7EpJSUUR
 /Qp9BupwcR9MSL2ocQSkcKvsAGbjHlDvfW7P4Yjn4IG1CkJLJFSlC+2pK
 DZq8CnFtBfuyjc6VLv2VpUYWo9inqmwlz8SjUW2ndtXUyTdGX5VCACY5L
 GOknXWPc9yzYdHyqVLKuaSTzdPdOEEFIpFzHR3xIWyB1B57nt7G6s4peg
 SiDKuB3WfNMjw1/mqi+fzonSjpSROHFKRNjMinqodVWTzAn8xNHPwQ35S
 rP1xfr1Bj3IObwgp2c72Eib5pSA9qf59C+R+fpOvbHNava2zCpWkfqwQ0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OxgeGDM8
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
branch HEAD: d509823823e3b5be5cd5c097f8562744f8634969  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 870m

configs tested: 121
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
riscv                randconfig-r042-20221012
x86_64                           rhel-8.3-kvm
arc                              allyesconfig
x86_64                        randconfig-a013
alpha                            allyesconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221012
s390                 randconfig-r044-20221012
x86_64                        randconfig-a011
x86_64                        randconfig-a015
s390                                defconfig
arm                                 defconfig
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
s390                             allmodconfig
x86_64                        randconfig-a002
i386                          randconfig-a005
x86_64                        randconfig-a006
x86_64                              defconfig
i386                                defconfig
powerpc                           allnoconfig
s390                             allyesconfig
mips                             allyesconfig
i386                          randconfig-a014
x86_64                               rhel-8.3
sh                               allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                          allmodconfig
sh                          landisk_defconfig
sh                         ecovec24_defconfig
mips                         bigsur_defconfig
sh                           se7780_defconfig
arm                             ezx_defconfig
arm                        mini2440_defconfig
powerpc                     stx_gp3_defconfig
arm                         lpc18xx_defconfig
powerpc                  storcenter_defconfig
powerpc                 linkstation_defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
arm                       omap2plus_defconfig
sparc                               defconfig
powerpc                     tqm8541_defconfig
arm                        spear6xx_defconfig
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
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                        cerfcube_defconfig
m68k                          amiga_defconfig
powerpc                   currituck_defconfig
m68k                       bvme6000_defconfig
arc                        nsimosci_defconfig
sh                            hp6xx_defconfig
powerpc                      cm5200_defconfig
arm                         assabet_defconfig
sh                          sdk7780_defconfig
sh                           se7712_defconfig
i386                          randconfig-c001
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
xtensa                           allyesconfig
mips                 decstation_r4k_defconfig
xtensa                    xip_kc705_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
mips                        vocore2_defconfig

clang tested configs:
hexagon              randconfig-r045-20221012
hexagon              randconfig-r041-20221012
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a002
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a004
x86_64                        randconfig-a003
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
powerpc                   bluestone_defconfig
mips                           ip28_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig
powerpc                          allmodconfig
powerpc                     mpc5200_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
