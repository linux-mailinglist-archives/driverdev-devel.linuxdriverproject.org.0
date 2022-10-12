Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0A65FCF10
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 01:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80E89610B6;
	Wed, 12 Oct 2022 23:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80E89610B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BF3x8-zpTZW4; Wed, 12 Oct 2022 23:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2376A610B2;
	Wed, 12 Oct 2022 23:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2376A610B2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52A8E1BF59B
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 23:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E9C8610B0
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 23:54:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E9C8610B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCaHN9GWfEP9 for <devel@linuxdriverproject.org>;
 Wed, 12 Oct 2022 23:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3183D610B2
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3183D610B2
 for <devel@driverdev.osuosl.org>; Wed, 12 Oct 2022 23:54:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="292262405"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="292262405"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 16:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="578012862"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="578012862"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2022 16:54:13 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oilYC-0004Kb-1P;
 Wed, 12 Oct 2022 23:54:12 +0000
Date: Thu, 13 Oct 2022 07:53:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 2fbde9be22fb451d6461a70c0dd88386c09d34eb
Message-ID: <6347536f.qu7W2XqkkzEf4grV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665618855; x=1697154855;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Wd8H13NbFcJahG7/tdmIk92AfQwnEyHSJBY4GOLQ2NU=;
 b=HhPnugyA8FP/TRN5NAnUVXr1uvpC+3oxWvifTZuRGc4X2R0BTT+C8Cox
 j5/HxvbTYeU5+0Z17pSjLdeidpW8iIE+5ETXRCn6nc6gxtDKgainbKZwU
 Y36GaI5j5iJQW3fvTj0zbYzmLB4nkvCrYpA9yhwEo9mG2EutaF/5a70m+
 E+ZPNyRT4WX8lTx6azW8fJfHBAcQgmqgxJJwI9Pzar5r22Vk/oE+qqVD4
 spPB/iIvd1Fqyz2XnY32CUrdUTs5rTAFnxZy/ID2iKWkLUMRRaX+PrT2d
 5pypseRhY23V14tqXYKi3zKwYhLT9cOILje9V7OM0CRrx1CPZJ+AweSt1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HhPnugyA
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
branch HEAD: 2fbde9be22fb451d6461a70c0dd88386c09d34eb  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 725m

configs tested: 113
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
alpha                            allyesconfig
arc                              allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
x86_64                    rhel-8.3-kselftests
i386                                defconfig
riscv                randconfig-r042-20221012
x86_64                        randconfig-a002
x86_64                              defconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221012
i386                          randconfig-a001
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
sh                               allmodconfig
m68k                             allmodconfig
x86_64                        randconfig-a015
x86_64                           rhel-8.3-kvm
arc                                 defconfig
i386                          randconfig-a003
mips                             allyesconfig
x86_64                        randconfig-a006
powerpc                          allmodconfig
x86_64                               rhel-8.3
s390                 randconfig-r044-20221012
i386                          randconfig-a005
s390                             allmodconfig
alpha                               defconfig
arm64                            allyesconfig
s390                                defconfig
arm                              allyesconfig
s390                             allyesconfig
x86_64                           allyesconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
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
arm                        multi_v7_defconfig
arc                     haps_hs_smp_defconfig
sh                          kfr2r09_defconfig
nios2                               defconfig
loongarch                 loongson3_defconfig
sh                ecovec24-romimage_defconfig
sh                          urquell_defconfig
arm                         at91_dt_defconfig
arc                     nsimosci_hs_defconfig
arm                         nhk8815_defconfig
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
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a001
hexagon              randconfig-r041-20221012
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221012
i386                          randconfig-a002
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a006
i386                          randconfig-a004
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
