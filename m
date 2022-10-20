Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C6460593B
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Oct 2022 10:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EA75404A9;
	Thu, 20 Oct 2022 08:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EA75404A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8YDjZ2M_nTTv; Thu, 20 Oct 2022 08:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1F9E40116;
	Thu, 20 Oct 2022 08:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1F9E40116
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3671BF957
 for <devel@linuxdriverproject.org>; Thu, 20 Oct 2022 08:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 237F4418F7
 for <devel@linuxdriverproject.org>; Thu, 20 Oct 2022 08:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 237F4418F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nCv4upMXiNOI for <devel@linuxdriverproject.org>;
 Thu, 20 Oct 2022 08:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84916418A0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84916418A0
 for <devel@driverdev.osuosl.org>; Thu, 20 Oct 2022 08:01:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286360285"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="286360285"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 01:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="754990508"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="754990508"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 20 Oct 2022 01:00:56 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olQU3-00012T-1u;
 Thu, 20 Oct 2022 08:00:55 +0000
Date: Thu, 20 Oct 2022 16:00:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 358e60cc9187e8755cd291f8ec739333d4479b3e
Message-ID: <63510017.gMPxkmPCOGW2hk5C%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666252892; x=1697788892;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9f332fF48IfxmgeKcdk4Xt/3yDdqntVuoNpgSD3KsJo=;
 b=jx2vvh+ogs4erSLiiL9Q4Ml+C/9tu8OgyuPQhB53wg1/AoxWzkdz/G6s
 9zqUWzBSv/kYpxFJvOluqSahNjhsbUx/5YqghGwhBxRBwaOpg2+FMW1Q/
 3mBndE3SjQUJm3zmCcnmcWgTq9S45J1eIO/fZf7oL6uD9rPpXSbdouQ2U
 HdyoRq25RON4S9JKaB0ym2H87lwDVqDubqty77T8oSljSuMrFXsCw+tUt
 4Pyb0HRPKmA2q4mjWSM43GIS76VjMXdFAqpSTEA24uQgHzilAHURudi25
 SlMCd84ZP4SiGVhSkeqbJ68lCv6wJoGAw7Zux1uXWxe75tOCCTyHKaYcP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jx2vvh+o
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
branch HEAD: 358e60cc9187e8755cd291f8ec739333d4479b3e  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 4438m

configs tested: 219
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
i386                             allyesconfig
i386                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
arm                        spear6xx_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-a005-20221017
i386                 randconfig-a003-20221017
i386                 randconfig-a004-20221017
i386                 randconfig-a001-20221017
i386                 randconfig-a006-20221017
arc                  randconfig-r043-20221017
sh                   secureedge5410_defconfig
arc                        nsimosci_defconfig
m68k                          multi_defconfig
csky                             alldefconfig
m68k                        m5407c3_defconfig
powerpc                  iss476-smp_defconfig
sh                   rts7751r2dplus_defconfig
m68k                        mvme16x_defconfig
x86_64               randconfig-a004-20221017
x86_64               randconfig-a001-20221017
x86_64               randconfig-a002-20221017
x86_64               randconfig-a006-20221017
x86_64               randconfig-a005-20221017
i386                 randconfig-c001-20221017
sh                           se7721_defconfig
arc                          axs103_defconfig
powerpc                     asp8347_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
parisc                generic-32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                 mpc8540_ads_defconfig
sh                          kfr2r09_defconfig
powerpc                 linkstation_defconfig
m68k                         amcore_defconfig
mips                           ci20_defconfig
powerpc                      makalu_defconfig
m68k                             alldefconfig
loongarch                           defconfig
loongarch                         allnoconfig
powerpc                      arches_defconfig
arm                          iop32x_defconfig
openrisc                  or1klitex_defconfig
sh                              ul2_defconfig
powerpc                  storcenter_defconfig
arm                            lart_defconfig
sh                        edosk7760_defconfig
sh                             shx3_defconfig
parisc                generic-64bit_defconfig
i386                 randconfig-a002-20221017
m68k                          hp300_defconfig
sh                           se7751_defconfig
sh                          rsk7203_defconfig
x86_64               randconfig-a003-20221017
powerpc                    adder875_defconfig
parisc                           alldefconfig
nios2                               defconfig
mips                        vocore2_defconfig
m68k                       m5208evb_defconfig
mips                     decstation_defconfig
mips                        bcm47xx_defconfig
m68k                            q40_defconfig
arc                     haps_hs_smp_defconfig
sh                           se7705_defconfig
arc                        vdk_hs38_defconfig
arm                           h3600_defconfig
x86_64               randconfig-c001-20221017
arm                  randconfig-c002-20221017
powerpc                     taishan_defconfig
arc                           tb10x_defconfig
m68k                       bvme6000_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                       sparc32_defconfig
sparc                       sparc64_defconfig
arm                       aspeed_g5_defconfig
arm64                            alldefconfig
sh                           se7724_defconfig
sh                            hp6xx_defconfig
arc                  randconfig-r043-20221018
s390                 randconfig-r044-20221018
riscv                randconfig-r042-20221018
arm                       imx_v6_v7_defconfig
m68k                          amiga_defconfig
m68k                        m5307c3_defconfig
riscv                               defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
powerpc                 mpc85xx_cds_defconfig
arc                            hsdk_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                    xip_kc705_defconfig
sh                         ap325rxa_defconfig
mips                      fuloong2e_defconfig
i386                          randconfig-c001
powerpc                         wii_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
arc                     nsimosci_hs_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                           jazz_defconfig
arm                         lpc18xx_defconfig
mips                  maltasmvp_eva_defconfig
m68k                       m5275evb_defconfig
powerpc                     pq2fads_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221018
powerpc                      ep88xc_defconfig
csky                              allnoconfig
arm                            mps2_defconfig
m68k                       m5475evb_defconfig
arm                          gemini_defconfig
sh                             sh03_defconfig
sh                          r7785rp_defconfig
sh                             espt_defconfig
sh                        sh7763rdp_defconfig
sh                          sdk7780_defconfig
powerpc                    klondike_defconfig
sparc                             allnoconfig
sh                          polaris_defconfig
mips                         cobalt_defconfig
sh                            shmin_defconfig
sh                         apsh4a3a_defconfig
ia64                             allyesconfig
arm                              allmodconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
ia64                             allmodconfig

clang tested configs:
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
x86_64               randconfig-a014-20221017
x86_64               randconfig-a015-20221017
x86_64               randconfig-a012-20221017
x86_64               randconfig-a011-20221017
x86_64               randconfig-a013-20221017
x86_64               randconfig-a016-20221017
s390                 randconfig-r044-20221017
hexagon              randconfig-r045-20221017
riscv                randconfig-r042-20221017
hexagon              randconfig-r041-20221017
x86_64               randconfig-k001-20221017
arm                          collie_defconfig
x86_64                        randconfig-c007
mips                 randconfig-c004-20221018
i386                          randconfig-c001
s390                 randconfig-c005-20221018
arm                  randconfig-c002-20221018
riscv                randconfig-c006-20221018
powerpc              randconfig-c003-20221018
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                        maltaup_defconfig
arm                         s3c2410_defconfig
powerpc                 mpc832x_mds_defconfig
mips                           rs90_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                       mainstone_defconfig
arm                          sp7021_defconfig
powerpc                    mvme5100_defconfig
x86_64                        randconfig-k001
mips                 randconfig-c004-20221019
s390                 randconfig-c005-20221019
arm                  randconfig-c002-20221019
riscv                randconfig-c006-20221019
powerpc              randconfig-c003-20221019
hexagon                             defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
