Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D31785F94CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Oct 2022 02:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5E1B416B1;
	Mon, 10 Oct 2022 00:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5E1B416B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hChQNPBuM170; Mon, 10 Oct 2022 00:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEA87416AD;
	Mon, 10 Oct 2022 00:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA87416AD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E35F31BF9A4
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B931382AEF
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B931382AEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntgZosU0TL7O for <devel@linuxdriverproject.org>;
 Mon, 10 Oct 2022 00:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B78882AF5
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B78882AF5
 for <devel@driverdev.osuosl.org>; Mon, 10 Oct 2022 00:11:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="287349091"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="287349091"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2022 17:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="576867271"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="576867271"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2022 17:11:41 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohgOT-0001Nt-09;
 Mon, 10 Oct 2022 00:11:41 +0000
Date: Mon, 10 Oct 2022 08:10:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 318fbfc691ea7851bfa7c54e338e1b59544d8f6a
Message-ID: <63436308.xfb1PGv3eGemQWoS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665360704; x=1696896704;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rfbtqeACfg4j0sA8yxgcoQrP1DivUqsq5H4ttVqR/7k=;
 b=Xg2BYV/Pct1wP6cQiuPJAINMIWQ6HajphjpjXnl6c+nNW+tHhXwGi3ns
 sjQYkodca7jsKYkswpO2RRfnPLUksHjlemc9OCFQxg2mpFQQdXFGUkl7e
 CzczJo2o5GtAJC4z++chxHOzl37RF0UX9lzrSvXqI+KPgrqtR2MgrfczA
 ytaRycrTu/FjDkesZTwnbbmouQu2vkiXEmfiS2nCxgaGxD9+xEy7tSJaF
 uYogoq4n/lYpCyWP10CUcf0TSZuL0V3PRNelecFiLc5ZICOM6fjaot5WE
 /pyuO3JBR+Hct3RFXX5dptNZuHsEMwGRljVX6+OCFf3I2cvOHED/FPaDs
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xg2BYV/P
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
branch HEAD: 318fbfc691ea7851bfa7c54e338e1b59544d8f6a  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 725m

configs tested: 129
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
x86_64                              defconfig
riscv                randconfig-r042-20221009
arm                                 defconfig
arc                              allyesconfig
i386                                defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a002
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
powerpc                          allmodconfig
m68k                             allyesconfig
x86_64                        randconfig-a011
m68k                             allmodconfig
i386                          randconfig-a001
x86_64                           rhel-8.3-syz
i386                          randconfig-a003
x86_64                        randconfig-a006
sh                               allmodconfig
mips                             allyesconfig
x86_64                        randconfig-a015
s390                 randconfig-r044-20221009
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a005
arc                  randconfig-r043-20221009
x86_64                        randconfig-a004
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
arm64                            allyesconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
arm                     eseries_pxa_defconfig
arm                         lubbock_defconfig
ia64                             allmodconfig
loongarch                        alldefconfig
mips                           gcw0_defconfig
sh                         ap325rxa_defconfig
mips                            gpr_defconfig
ia64                      gensparse_defconfig
arc                           tb10x_defconfig
sh                          urquell_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
s390                             allmodconfig
alpha                               defconfig
powerpc                      ep88xc_defconfig
arm                            lart_defconfig
arm                      footbridge_defconfig
mips                 decstation_r4k_defconfig
arm                            mps2_defconfig
ia64                         bigsur_defconfig
arm                           sunxi_defconfig
sh                          sdk7786_defconfig
arm                         lpc18xx_defconfig
sh                           se7705_defconfig
s390                                defconfig
m68k                          atari_defconfig
loongarch                           defconfig
powerpc                     asp8347_defconfig
riscv                            allmodconfig
arc                        vdk_hs38_defconfig
sh                             espt_defconfig
arm                           corgi_defconfig
arm                         cm_x300_defconfig
s390                             allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
loongarch                         allnoconfig
loongarch                        allmodconfig
arm                  randconfig-c002-20221009
x86_64                        randconfig-c001
i386                          randconfig-c001
sh                               j2_defconfig
powerpc                     tqm8541_defconfig
arm                             ezx_defconfig
mips                         cobalt_defconfig
sh                           se7750_defconfig
arm                        cerfcube_defconfig
arm                        spear6xx_defconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
arm                       multi_v4t_defconfig
xtensa                    xip_kc705_defconfig
sh                        edosk7705_defconfig
sh                          lboxre2_defconfig

clang tested configs:
x86_64                        randconfig-a001
i386                          randconfig-a013
hexagon              randconfig-r045-20221009
x86_64                        randconfig-a012
i386                          randconfig-a015
i386                          randconfig-a002
hexagon              randconfig-r041-20221009
x86_64                        randconfig-a003
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a004
x86_64                        randconfig-a005
arm                           spitz_defconfig
powerpc                          g5_defconfig
mips                  cavium_octeon_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                          ath25_defconfig
powerpc                    socrates_defconfig
x86_64                        randconfig-k001
powerpc                   bluestone_defconfig
powerpc                          allyesconfig
powerpc                       ebony_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
