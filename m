Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D655C50D53C
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Apr 2022 23:15:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48AE960AB7;
	Sun, 24 Apr 2022 21:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3DKZ7L6j8ipN; Sun, 24 Apr 2022 21:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D11B0605A0;
	Sun, 24 Apr 2022 21:15:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E121C1BF470
 for <devel@linuxdriverproject.org>; Sun, 24 Apr 2022 21:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA6C54019E
 for <devel@linuxdriverproject.org>; Sun, 24 Apr 2022 21:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5leT6pdVvfiu for <devel@linuxdriverproject.org>;
 Sun, 24 Apr 2022 21:15:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1C574002B
 for <devel@driverdev.osuosl.org>; Sun, 24 Apr 2022 21:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650834903; x=1682370903;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=S/JYld6fOfVni2DZPfgvSrfEBcUBNl0KxujagY5COso=;
 b=cI87m4++qh2phuI5OrswuN1rE8lCT1t1rg+WdDgpUWq342UKZkzHDESU
 zf8igQokcMs7KG46XKx1GjBVQvNYqYkyknyEHi/CV/0LgNUXDHm5WG/z2
 Mf4yBC83tpIPU85Z/t2AB3GHaozXl7pnwRctYWMPNdD/y+ngY4xDlfMeV
 LBd6vsDB2RHFqGTlM3eFI3iujH9PuXfGinhGSAQTQwP1/86zXvscHm33+
 IbGExo1GcrTD+/SyMQA8f6j/VhtaMVlqzacyQIOM4vHfRuhZUm6sIAch2
 gRtDUAZ3zJ4p0NdeFXDG5X9agMgqq+z0JWFjIcDhzOx0OmZ131n5m2IIL w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="328017946"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="328017946"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 14:15:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="563829266"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Apr 2022 14:15:01 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nijZM-0001nD-MW;
 Sun, 24 Apr 2022 21:15:00 +0000
Date: Mon, 25 Apr 2022 05:14:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 5b5bfecaa333fb6a0cce1bfc4852a622dacfed1d
Message-ID: <6265bdba.AdbpA8JLdTJt99v0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 5b5bfecaa333fb6a0cce1bfc4852a622dacfed1d  scripts/get_abi: Fix wrong script file name in the help message

elapsed time: 721m

configs tested: 134
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                           se7750_defconfig
sh                           sh2007_defconfig
i386                                defconfig
powerpc                       maple_defconfig
sh                          r7785rp_defconfig
mips                  decstation_64_defconfig
powerpc                      tqm8xx_defconfig
arm                      jornada720_defconfig
powerpc                      bamboo_defconfig
sh                          landisk_defconfig
m68k                          amiga_defconfig
arm                     eseries_pxa_defconfig
um                             i386_defconfig
arc                     nsimosci_hs_defconfig
sh                        apsh4ad0a_defconfig
m68k                        mvme147_defconfig
arm                          exynos_defconfig
x86_64                           alldefconfig
arm                           imxrt_defconfig
m68k                         amcore_defconfig
sh                        edosk7760_defconfig
microblaze                          defconfig
sh                            hp6xx_defconfig
powerpc                     mpc83xx_defconfig
arm                            lart_defconfig
arm                            zeus_defconfig
sh                             shx3_defconfig
csky                             alldefconfig
arm                           sama5_defconfig
arm                           corgi_defconfig
mips                      maltasmvp_defconfig
arm                         nhk8815_defconfig
parisc                              defconfig
m68k                        m5407c3_defconfig
riscv                               defconfig
arm                        realview_defconfig
mips                       capcella_defconfig
arc                        vdk_hs38_defconfig
powerpc                 mpc834x_mds_defconfig
arm                          gemini_defconfig
sh                        sh7785lcr_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                    maltaup_xpa_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220424
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220424
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
mips                malta_qemu_32r6_defconfig
arm                         hackkit_defconfig
mips                       rbtx49xx_defconfig
arm                              alldefconfig
powerpc                        fsp2_defconfig
arm                        multi_v5_defconfig
powerpc                      acadia_defconfig
arm                       mainstone_defconfig
arm                          moxart_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20220424
riscv                randconfig-r042-20220424
hexagon              randconfig-r045-20220424
s390                 randconfig-r044-20220424

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
