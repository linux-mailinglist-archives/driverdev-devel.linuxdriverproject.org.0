Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D06665CB
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Jan 2023 22:46:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83FF74027A;
	Wed, 11 Jan 2023 21:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83FF74027A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tyM7XefLO2CV; Wed, 11 Jan 2023 21:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CB9840164;
	Wed, 11 Jan 2023 21:46:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CB9840164
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44F341BF2A3
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 21:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E6AE4197A
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 21:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E6AE4197A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBYxVchHOAX1 for <devel@linuxdriverproject.org>;
 Wed, 11 Jan 2023 21:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A8734181D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A8734181D
 for <devel@driverdev.osuosl.org>; Wed, 11 Jan 2023 21:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321237641"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="321237641"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 13:46:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="746320638"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="746320638"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jan 2023 13:46:44 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFivj-0009YQ-1J;
 Wed, 11 Jan 2023 21:46:43 +0000
Date: Thu, 12 Jan 2023 05:45:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 d1e36d268bbbf07ea491d8bd452731a639508dcb
Message-ID: <63bf2e14.uPDiyS3DerIUeBnU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673473606; x=1705009606;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9sswnepUGRP2hgKkjj+LAc+ZDL/aU0crPpVA6ooEjXU=;
 b=PzUTgnuAw41jJICeINojAi17pf4JdVgA7gyOjaXlqRKKfQt6CQmZQhTB
 4E1KbyZ9ORG+B9NzEHfqkmReXEMZkxl5UwxGzucpFCqWCQFX+2++T75PE
 WLuLQE/9SmavxwH3ODWxT4Tu5/IN0kk/scDMZzlhmitEy6fXLVUiLLEzy
 RtCooaGJmqBeeE5+sN2pttiWF/VjkfqkMNNLR3hb/Td4pnbn5J3//zzrN
 JP/nnFOwdWd/V0//DZ09MgPNX1LVuzGN2QcecZ1zPQfDdE6R7C6PKSPps
 cZI0+6jw43oE8P3lJEcvZFSg23IKQj6WmO6YQrA/zJ4G9GBSIfA28LTmw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PzUTgnuA
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
branch HEAD: d1e36d268bbbf07ea491d8bd452731a639508dcb  driver core: change to_subsys_private() to use container_of_const()

elapsed time: 724m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                                defconfig
powerpc                           allnoconfig
arc                                 defconfig
m68k                             allyesconfig
ia64                             allmodconfig
m68k                             allmodconfig
s390                             allmodconfig
x86_64                        randconfig-a013
x86_64                          rhel-8.3-func
um                             i386_defconfig
arc                              allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a001
alpha                            allyesconfig
alpha                               defconfig
um                           x86_64_defconfig
x86_64                              defconfig
s390                                defconfig
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a003
s390                             allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a015
i386                          randconfig-a005
x86_64                               rhel-8.3
arm                                 defconfig
arc                  randconfig-r043-20230110
mips                             allyesconfig
x86_64                        randconfig-a004
s390                 randconfig-r044-20230110
powerpc                          allmodconfig
x86_64                        randconfig-a002
i386                             allyesconfig
arm64                            allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a006
riscv                randconfig-r042-20230110
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
sh                   rts7751r2dplus_defconfig
m68k                                defconfig
sh                          rsk7201_defconfig
m68k                            q40_defconfig
sh                           se7780_defconfig
sh                         ap325rxa_defconfig
arm                               allnoconfig
m68k                        mvme16x_defconfig
sparc                            alldefconfig
s390                       zfcpdump_defconfig
arm                         lubbock_defconfig
powerpc                     redwood_defconfig
sh                          rsk7203_defconfig
sh                            hp6xx_defconfig
sh                           se7724_defconfig
arm                            lart_defconfig
mips                     decstation_defconfig
mips                           ci20_defconfig
powerpc                      pcm030_defconfig
arm                          gemini_defconfig
powerpc                     tqm8548_defconfig
microblaze                      mmu_defconfig
arm                           tegra_defconfig
loongarch                 loongson3_defconfig
parisc                           allyesconfig
powerpc                      pasemi_defconfig
mips                       bmips_be_defconfig
xtensa                         virt_defconfig
arc                        nsim_700_defconfig
nios2                               defconfig
mips                         rt305x_defconfig
i386                          randconfig-c001
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arc                        vdk_hs38_defconfig
sh                   sh7770_generic_defconfig
m68k                         amcore_defconfig
arm                        multi_v7_defconfig
sh                              ul2_defconfig
m68k                             alldefconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                    klondike_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a002
hexagon              randconfig-r041-20230110
i386                          randconfig-a004
x86_64                        randconfig-a014
arm                  randconfig-r046-20230110
i386                          randconfig-a006
x86_64                        randconfig-a001
i386                          randconfig-a013
hexagon              randconfig-r045-20230110
i386                          randconfig-a011
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a015
x86_64                        randconfig-k001
powerpc                      chrp32_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
