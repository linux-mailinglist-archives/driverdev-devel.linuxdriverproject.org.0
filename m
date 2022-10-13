Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9AE5FE221
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 20:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48AC540425;
	Thu, 13 Oct 2022 18:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48AC540425
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mWa-3ipptKi; Thu, 13 Oct 2022 18:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 951F04030F;
	Thu, 13 Oct 2022 18:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 951F04030F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 929D31BF3F7
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 18:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E7EF40CE5
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 18:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E7EF40CE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iiv1SDhdeH0l for <devel@linuxdriverproject.org>;
 Thu, 13 Oct 2022 18:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80BD2404C9
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80BD2404C9
 for <devel@driverdev.osuosl.org>; Thu, 13 Oct 2022 18:54:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="391484791"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="391484791"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 11:54:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="690245067"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="690245067"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 13 Oct 2022 11:54:16 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oj3LU-0005TQ-0M;
 Thu, 13 Oct 2022 18:54:16 +0000
Date: Fri, 14 Oct 2022 02:54:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 8b4707899773986d1639a0dd146701944ebd93ef
Message-ID: <63485ed0.DH8bR6WNzXBowhMc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665687260; x=1697223260;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=VpxGcyAtHRuxaBSqSs6kwDVTRx4E16C6oS738gO7+VA=;
 b=jzoZZWGKsncuHxjsblCcEN7tRRnTMUIMWCFCXK3JOIdNbugFamlnc50v
 OJZxA14H7xSj5P4EL0UpFWHtyaOTXMij5cl/UJeaWLBuxuaDRHlkrA+7s
 YfRxHqFGK9zfMhCZnCIOy/gIQGE/zWvA+Ti6CwLpKYt65eUi/7okGb987
 n4RK3R+8A+qgwFPO5kJj7UhL7muc9zldGiAdhNUkfjNtvntj9ATnoA/gV
 Gci2FHrKMi510Sd/9/DynA6xbVBqBfCRMLoRIhfSO3j0jZDJvkl8sFLJB
 uZRaMBMS0/WkR84E+vT7s504LBRFb/LaTBVO8jwFn38yMLj7b8qOQZCOu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jzoZZWGK
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
branch HEAD: 8b4707899773986d1639a0dd146701944ebd93ef  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 724m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                               defconfig
x86_64                              defconfig
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20221012
arc                  randconfig-r043-20221012
x86_64                           allyesconfig
s390                 randconfig-r044-20221012
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
arm                                 defconfig
i386                                defconfig
x86_64                        randconfig-a002
mips                             allyesconfig
s390                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a006
i386                          randconfig-a001
m68k                             allmodconfig
x86_64                        randconfig-a013
s390                             allmodconfig
alpha                            allyesconfig
arm64                            allyesconfig
arc                              allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a011
sh                               allmodconfig
i386                          randconfig-a005
x86_64                        randconfig-a004
arm                              allyesconfig
x86_64                        randconfig-a015
i386                          randconfig-a014
s390                             allyesconfig
m68k                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                        multi_v7_defconfig
arc                     haps_hs_smp_defconfig
sh                          kfr2r09_defconfig
loongarch                 loongson3_defconfig
ia64                             allmodconfig
i386                          randconfig-c001
sh                ecovec24-romimage_defconfig
sh                          urquell_defconfig
arm                         at91_dt_defconfig
arc                     nsimosci_hs_defconfig
arm                         nhk8815_defconfig
nios2                               defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         bigsur_defconfig
sh                           se7780_defconfig
arm                             ezx_defconfig
powerpc                      ppc40x_defconfig
sh                            shmin_defconfig
sh                        apsh4ad0a_defconfig
powerpc                       maple_defconfig
powerpc                  iss476-smp_defconfig
xtensa                           allyesconfig
arm                         lpc18xx_defconfig
mips                 decstation_r4k_defconfig
xtensa                    xip_kc705_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
nios2                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221012
hexagon              randconfig-r045-20221012
x86_64                        randconfig-a001
x86_64                        randconfig-a014
x86_64                        randconfig-a003
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a002
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a005
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig
x86_64                        randconfig-k001
arm                        mvebu_v5_defconfig
powerpc                     tqm8540_defconfig
powerpc                     akebono_defconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig
arm                       aspeed_g4_defconfig
powerpc                      ppc44x_defconfig
mips                        qi_lb60_defconfig
mips                     cu1000-neo_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
