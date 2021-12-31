Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275124821D9
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Dec 2021 04:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 823AA405E2;
	Fri, 31 Dec 2021 03:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YQpBy9BK5XJG; Fri, 31 Dec 2021 03:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4277240178;
	Fri, 31 Dec 2021 03:36:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8E11BF41F
 for <devel@linuxdriverproject.org>; Fri, 31 Dec 2021 03:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 396D64055A
 for <devel@linuxdriverproject.org>; Fri, 31 Dec 2021 03:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BaxgyPjPnOoa for <devel@linuxdriverproject.org>;
 Fri, 31 Dec 2021 03:35:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AE1940178
 for <devel@driverdev.osuosl.org>; Fri, 31 Dec 2021 03:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640921744; x=1672457744;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PtZeSlIkjFKh8l756YRyH76+k7s0xxoBIKoNejnHVLw=;
 b=L1CC1HeoasuOk+dsbLhLSblQIBeyUXRzT9trgawmaL0f5ObeDWvgNHdQ
 M88UGQ4tWq+DoFFDbcDFqO23jSjM4+yUJlrF4VIxMQYNselNgBbpITbA3
 qti6mpvl9dXZiWXPfq63c4SLqa3RE+AssKjo8KAwAY4A2KMWDBDrln3SR
 j3XXT3LzT5VnHIciIZYHXPmdvZTsGEla3qbBS/Y23A/wBPBvlM+NrVYpS
 YO19IOaXT5BmPVzrSFRMusCWnM/5rUD8oFD+KwEYPISPRgGtnjbNju3f+
 4CMmNHbjULERXLHhNUf2B0r/joX5ZSfFTsELOM7l1ZEAr5F4vZN3BhpB1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="229080741"
X-IronPort-AV: E=Sophos;i="5.88,250,1635231600"; d="scan'208";a="229080741"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2021 19:35:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,250,1635231600"; d="scan'208";a="468976203"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 30 Dec 2021 19:35:41 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n38hg-000Au9-F9; Fri, 31 Dec 2021 03:35:40 +0000
Date: Fri, 31 Dec 2021 11:35:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 12b31d07b0ceb723821394b414c02db64468f1f2
Message-ID: <61ce7a6c.gRWal3mltW+PlawJ%lkp@intel.com>
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
branch HEAD: 12b31d07b0ceb723821394b414c02db64468f1f2  staging: vc04_services: update TODO file

elapsed time: 724m

configs tested: 166
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                 randconfig-c001-20211230
mips                 randconfig-c004-20211230
sh                             sh03_defconfig
sh                   secureedge5410_defconfig
powerpc                 canyonlands_defconfig
sh                            hp6xx_defconfig
arc                        nsimosci_defconfig
arm                            hisi_defconfig
riscv                             allnoconfig
mips                       lemote2f_defconfig
powerpc                     ppa8548_defconfig
powerpc                      makalu_defconfig
sh                           se7780_defconfig
sh                          landisk_defconfig
sh                   sh7724_generic_defconfig
riscv                            alldefconfig
arm                         vf610m4_defconfig
ia64                            zx1_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                          sdk7780_defconfig
powerpc                    mvme5100_defconfig
ia64                        generic_defconfig
mips                          rm200_defconfig
powerpc                      pmac32_defconfig
powerpc                     kilauea_defconfig
sh                          lboxre2_defconfig
mips                     loongson2k_defconfig
openrisc                         alldefconfig
mips                        bcm63xx_defconfig
sh                                  defconfig
csky                                defconfig
powerpc                      walnut_defconfig
powerpc                       ppc64_defconfig
mips                         mpc30x_defconfig
arm                        cerfcube_defconfig
mips                          ath25_defconfig
sh                          rsk7203_defconfig
arm                      footbridge_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                            e55_defconfig
powerpc                     ksi8560_defconfig
h8300                       h8s-sim_defconfig
powerpc                          g5_defconfig
arm                           spitz_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                          pxa168_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                   lite5200b_defconfig
h8300                               defconfig
parisc                           allyesconfig
arm                         nhk8815_defconfig
powerpc                    amigaone_defconfig
arm                          collie_defconfig
mips                             allyesconfig
um                               alldefconfig
mips                            gpr_defconfig
m68k                           sun3_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                    ge_imp3a_defconfig
mips                           mtx1_defconfig
sh                ecovec24-romimage_defconfig
arm                        mini2440_defconfig
xtensa                           alldefconfig
sh                            migor_defconfig
sparc64                          alldefconfig
xtensa                  cadence_csp_defconfig
arm                        spear3xx_defconfig
arc                              allyesconfig
arm                        spear6xx_defconfig
arc                         haps_hs_defconfig
powerpc                     ep8248e_defconfig
sh                        sh7785lcr_defconfig
sh                           se7750_defconfig
m68k                       m5475evb_defconfig
arm                           sama5_defconfig
sh                          sdk7786_defconfig
parisc                generic-64bit_defconfig
riscv                            allmodconfig
powerpc                     powernv_defconfig
mips                        qi_lb60_defconfig
arm                        mvebu_v7_defconfig
arm                  randconfig-c002-20211230
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a013-20211230
x86_64               randconfig-a015-20211230
x86_64               randconfig-a012-20211230
x86_64               randconfig-a011-20211230
x86_64               randconfig-a016-20211230
x86_64               randconfig-a014-20211230
i386                 randconfig-a016-20211230
i386                 randconfig-a011-20211230
i386                 randconfig-a012-20211230
i386                 randconfig-a013-20211230
i386                 randconfig-a014-20211230
i386                 randconfig-a015-20211230
arc                  randconfig-r043-20211230
riscv                randconfig-r042-20211230
s390                 randconfig-r044-20211230
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20211230
x86_64               randconfig-a001-20211230
x86_64               randconfig-a003-20211230
x86_64               randconfig-a006-20211230
x86_64               randconfig-a004-20211230
x86_64               randconfig-a005-20211230
i386                 randconfig-a001-20211230
i386                 randconfig-a005-20211230
i386                 randconfig-a004-20211230
i386                 randconfig-a002-20211230
i386                 randconfig-a006-20211230
i386                 randconfig-a003-20211230
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
hexagon              randconfig-r041-20211230
hexagon              randconfig-r045-20211230

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
