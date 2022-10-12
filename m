Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B235FCF11
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 01:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 179354035A;
	Wed, 12 Oct 2022 23:54:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 179354035A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Euw7UdtnFs-B; Wed, 12 Oct 2022 23:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 848A040384;
	Wed, 12 Oct 2022 23:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 848A040384
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8681D1BF59B
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 23:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62CA1610B0
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 23:54:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62CA1610B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QMFDRhsUkT78 for <devel@linuxdriverproject.org>;
 Wed, 12 Oct 2022 23:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63DED610B3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63DED610B3
 for <devel@driverdev.osuosl.org>; Wed, 12 Oct 2022 23:54:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="292262404"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="292262404"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 16:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="955949196"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="955949196"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Oct 2022 16:54:13 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oilYC-0004KZ-18;
 Wed, 12 Oct 2022 23:54:12 +0000
Date: Thu, 13 Oct 2022 07:53:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 abadae949a41b61ed7d0e84b22c32194cd3e3232
Message-ID: <63475372.5bGshHdtpq2zVZGH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665618855; x=1697154855;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gZN627TDXCOk634jobMF6iqDNz+7MY2523ipS402Avk=;
 b=eI9QSqiOcy2hmOPW8/lvoQdoxcz65XQD4R5+2Zxc42QdmPUXmIhC5R/r
 g5Ok9uJ7aDcx+EBvjqZcSWpx6pdfBops3ptM58UkdSoNzSURo6l6I1Xpu
 4T3R2Nb0DMpD/DUFL3h1H5KdQB/vXv7yGGicXRV2IgoZ8eTdmT2I/vkls
 bZxbWEeZu41SrbH6bi+KFoiEYd/Urz6zsFkPuGSWXNIfNNvt0aheWLIxb
 BmubLv0uYiKiL9w9YnRGPnLq4+URqdTdaOlfFLhWSWsG3Og/a/KcBTML9
 dKWBGXUne7Kvqxx4ocHyv859ec3QHo3s6qgfIpXGO4Nxqz+LG2T4CKDcd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eI9QSqiO
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
branch HEAD: abadae949a41b61ed7d0e84b22c32194cd3e3232  readfile.2: new page describing readfile(2)

elapsed time: 724m

configs tested: 113
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                              defconfig
riscv                randconfig-r042-20221012
arm                                 defconfig
i386                                defconfig
s390                             allmodconfig
arc                  randconfig-r043-20221012
s390                                defconfig
x86_64                           rhel-8.3-syz
s390                 randconfig-r044-20221012
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a015
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
x86_64                               rhel-8.3
x86_64                        randconfig-a013
x86_64                        randconfig-a011
powerpc                           allnoconfig
x86_64                           allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
s390                             allyesconfig
arc                              allyesconfig
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
m68k                             allyesconfig
sh                               allmodconfig
i386                             allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
arm64                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
ia64                             allmodconfig
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

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
x86_64                        randconfig-a014
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20221012
hexagon              randconfig-r045-20221012
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-k001
powerpc                   bluestone_defconfig
mips                           ip28_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
