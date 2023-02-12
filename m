Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2726939C3
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Feb 2023 21:12:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 257C8815CC;
	Sun, 12 Feb 2023 20:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 257C8815CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJw_kSokEnjk; Sun, 12 Feb 2023 20:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8964815AB;
	Sun, 12 Feb 2023 20:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8964815AB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39B571BF30E
 for <devel@linuxdriverproject.org>; Sun, 12 Feb 2023 20:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 137BA815CC
 for <devel@linuxdriverproject.org>; Sun, 12 Feb 2023 20:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 137BA815CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36V1h_Abbq8N for <devel@linuxdriverproject.org>;
 Sun, 12 Feb 2023 20:11:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13764815AB
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13764815AB
 for <devel@driverdev.osuosl.org>; Sun, 12 Feb 2023 20:11:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="328455732"
X-IronPort-AV: E=Sophos;i="5.97,291,1669104000"; d="scan'208";a="328455732"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2023 12:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="997484323"
X-IronPort-AV: E=Sophos;i="5.97,291,1669104000"; d="scan'208";a="997484323"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Feb 2023 12:11:51 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pRIhT-0007NV-15;
 Sun, 12 Feb 2023 20:11:51 +0000
Date: Mon, 13 Feb 2023 04:10:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 826cb7d7bffc2efd41e33e7775e4ad5d4f7aeda7
Message-ID: <63e947cf.1i1G5sjefh5HWlY7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676232714; x=1707768714;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/0NgyWE0/rtSUD8mxp4HzNrSgt/dF4j4MY7OOQZyFko=;
 b=K+Vjj80xarb0nl05gLbKcgJ8jod7aYmavPueE6iVYHifW9jV+IS8mv/c
 WRnxcVs+fdSG6HleItR1kNkMkMVZR+S/R0SwPDOynH1QvxkeMZ9BWMjrG
 tSt64wnshSsfSRO2+zmmegg5TrZ8N65XvcZyVllT3LtKgHI/sw66ew2DY
 j29Dov268rCDe84nd/Wo7tbJ1b4PmVHaNeXcSUwLQ4TFOQJ76MbIW1qer
 H/EJ+BVbE4EhqNCGBPlEw2bXSEHyUpctQsGTNKJfdxHMsln7DIMhbMHcX
 lFDQkY7CNZXpSLBpsF39+0ZZfS1Fus9PJIRaNHaKbVDHzgT/KJECUZvEk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K+Vjj80x
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
branch HEAD: 826cb7d7bffc2efd41e33e7775e4ad5d4f7aeda7  driver core: mark struct device's bus_type as const.

elapsed time: 723m

configs tested: 88
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230212
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                           h5000_defconfig
arm                        mini2440_defconfig
arm                  randconfig-r046-20230212
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                       m5475evb_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                         cobalt_defconfig
mips                      maltasmvp_defconfig
mips                         rt305x_defconfig
nios2                               defconfig
openrisc                            defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                     tqm8548_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv             nommu_k210_sdcard_defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                             sh03_defconfig
sh                             shx3_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
arm                              alldefconfig
arm                        neponset_defconfig
arm                          pxa168_defconfig
arm                         s5pv210_defconfig
hexagon              randconfig-r041-20230212
hexagon              randconfig-r045-20230212
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20230212
s390                 randconfig-r044-20230212
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
