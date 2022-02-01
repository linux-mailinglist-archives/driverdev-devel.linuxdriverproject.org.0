Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A22A4A5A16
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Feb 2022 11:34:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3DA440272;
	Tue,  1 Feb 2022 10:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3urvX5n5Xglt; Tue,  1 Feb 2022 10:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C4DD40126;
	Tue,  1 Feb 2022 10:34:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6BF71BF995
 for <devel@linuxdriverproject.org>; Tue,  1 Feb 2022 10:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CE2C40272
 for <devel@linuxdriverproject.org>; Tue,  1 Feb 2022 10:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-myFKbzvvd8 for <devel@linuxdriverproject.org>;
 Tue,  1 Feb 2022 10:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BB28400C1
 for <devel@driverdev.osuosl.org>; Tue,  1 Feb 2022 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643711673; x=1675247673;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=e4i3JDiwOI+Y2yq/Eb9nJHSD1yMfw2cllGFpU42BuOc=;
 b=Qga85likg9bOaDDGe0P632kJaucRvc4qCeVtjzN1yjRDv+tj2nM7/e+U
 NrKTi7wyD+Q03XUUol7ItTEJ3xieOT+1YN8kOjnkz53WKarfPznJvClxA
 pDPkcpQW76tEw/aUHHZ618v7U9TOoyIL8L0Y+CVdFwxgLfOI/ZzsEk5U7
 S8SPaNaij1PL+SoSNLf2b71FLiBdtLqpVPANNaizT9yOLHA8HeecoClQB
 TyfiPjAdQu+3oZ2/E45dg3Eq4zq9v0bKg78hnX3TNG6sPSwugNEHrE7C7
 uQx3imdXru+HXb5aWEaHE50pqroRPZuUExlVRh0HeRuK+Z7edwU14DwPK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="308395673"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="308395673"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 02:34:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="537751476"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 01 Feb 2022 02:34:31 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nEqUY-000T7r-Dz; Tue, 01 Feb 2022 10:34:30 +0000
Date: Tue, 01 Feb 2022 18:34:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 d0d82cb741d0ad42bb776e17011c98fcdab9fee6
Message-ID: <61f90cb2.1ABuDR74pbGrr9cF%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: d0d82cb741d0ad42bb776e17011c98fcdab9fee6  staging: r8188eu: remove HW_VAR_CAM_EMPTY_ENTRY

elapsed time: 732m

configs tested: 150
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220131
powerpc              randconfig-c003-20220131
i386                          randconfig-c001
sh                          rsk7203_defconfig
mips                           xway_defconfig
um                               alldefconfig
powerpc                 mpc834x_mds_defconfig
sh                          urquell_defconfig
arm                       imx_v6_v7_defconfig
arc                            hsdk_defconfig
powerpc                     taishan_defconfig
sh                            titan_defconfig
m68k                           sun3_defconfig
sh                        sh7763rdp_defconfig
mips                         mpc30x_defconfig
sh                          rsk7269_defconfig
powerpc                    klondike_defconfig
powerpc                      ppc40x_defconfig
powerpc                 mpc837x_rdb_defconfig
parisc                           alldefconfig
m68k                       m5208evb_defconfig
xtensa                           allyesconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 mpc837x_mds_defconfig
riscv                    nommu_k210_defconfig
mips                      fuloong2e_defconfig
powerpc                      arches_defconfig
arm                           stm32_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     asp8347_defconfig
arm                      footbridge_defconfig
powerpc                       eiger_defconfig
powerpc                        cell_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
sh                               alldefconfig
m68k                          sun3x_defconfig
mips                      maltasmvp_defconfig
powerpc                      bamboo_defconfig
mips                        jmr3927_defconfig
openrisc                         alldefconfig
mips                         db1xxx_defconfig
arm                  randconfig-c002-20220130
arm                  randconfig-c002-20220131
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20220131
x86_64               randconfig-a003-20220131
x86_64               randconfig-a001-20220131
x86_64               randconfig-a006-20220131
x86_64               randconfig-a005-20220131
x86_64               randconfig-a002-20220131
i386                 randconfig-a006-20220131
i386                 randconfig-a005-20220131
i386                 randconfig-a003-20220131
i386                 randconfig-a002-20220131
i386                 randconfig-a001-20220131
i386                 randconfig-a004-20220131
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220130
x86_64                        randconfig-c007
arm                  randconfig-c002-20220130
powerpc              randconfig-c003-20220130
mips                 randconfig-c004-20220130
i386                          randconfig-c001
riscv                randconfig-c006-20220201
powerpc              randconfig-c003-20220201
mips                 randconfig-c004-20220201
arm                  randconfig-c002-20220201
powerpc                          allyesconfig
arm                             mxs_defconfig
arm                        spear3xx_defconfig
powerpc                        fsp2_defconfig
arm                           spitz_defconfig
powerpc                          allmodconfig
arm                  colibri_pxa270_defconfig
arm                       versatile_defconfig
arm                         orion5x_defconfig
mips                   sb1250_swarm_defconfig
mips                          rm200_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a013-20220131
x86_64               randconfig-a015-20220131
x86_64               randconfig-a014-20220131
x86_64               randconfig-a016-20220131
x86_64               randconfig-a011-20220131
x86_64               randconfig-a012-20220131
i386                 randconfig-a011-20220131
i386                 randconfig-a013-20220131
i386                 randconfig-a014-20220131
i386                 randconfig-a012-20220131
i386                 randconfig-a015-20220131
i386                 randconfig-a016-20220131
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220131
hexagon              randconfig-r045-20220130
hexagon              randconfig-r045-20220131
hexagon              randconfig-r041-20220130
hexagon              randconfig-r041-20220131

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
