Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031694EBE2D
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 12:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83D9940CB7;
	Wed, 30 Mar 2022 10:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QoS6VE7ZbN8n; Wed, 30 Mar 2022 10:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CE9D4026A;
	Wed, 30 Mar 2022 10:00:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3CAE1BF2C1
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 10:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0F1F40529
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 10:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CXcXnpI-Ujkr for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 10:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C878A4026A
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 10:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648634420; x=1680170420;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qnfXn1u6Vi/2Wcce7sItTy+3NEUDOL8xEEy/S8aCxFs=;
 b=lQFnbWY+8p/dATw6PUtf4b8qYM0aBPXA0zOhFMob00ZXObBsfr1i7Euh
 s7H8/HSh8er4Fz9YMuxlK+hgkjBC0msw823NT0F7u2My7tbg7M5ErwAw1
 oXe4pMpf/5IfZALkeOlLIOP1Z3spnVDre6KSn6EPDRC46vlG51isiLq7f
 /22V3fGOdpTkXNQEkvd6fZD6rFjxr1Rc+KWQXheycLtDf4ZCKC4+RcqVV
 fJY1ZsJltwU6Q5U2NSzcMPofD03jfHTqYY2tpr+aBC+3TCg87W6P/bJJ7
 BpxhodsdIBSNfMGVE9CegbKmdQ9kBeLD2IVV5eSGLEX7//p3MfblMQV4Y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259477040"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259477040"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="585941664"
Received: from lkp-server02.sh.intel.com (HELO 7a008980c4ea) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2022 03:00:18 -0700
Received: from kbuild by 7a008980c4ea with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nZV7i-0000GK-2G; Wed, 30 Mar 2022 10:00:18 +0000
Date: Wed, 30 Mar 2022 18:00:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 c93c68f19e68e19c319d9471fdb9dab37d85d7f0
Message-ID: <62442a2a.2sYz67eFmwoQsx8v%lkp@intel.com>
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
branch HEAD: c93c68f19e68e19c319d9471fdb9dab37d85d7f0  staging: r8188eu: convert rtw_inc_and_chk_continual_urb_error() to bool

elapsed time: 740m

configs tested: 159
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc              randconfig-c003-20220330
i386                          randconfig-c001
sh                      rts7751r2d1_defconfig
arm                        realview_defconfig
alpha                               defconfig
arm                         assabet_defconfig
powerpc                     pq2fads_defconfig
arc                     haps_hs_smp_defconfig
riscv             nommu_k210_sdcard_defconfig
um                               alldefconfig
xtensa                           allyesconfig
sh                           se7619_defconfig
sh                          lboxre2_defconfig
powerpc                      pasemi_defconfig
arm                       imx_v6_v7_defconfig
parisc64                         alldefconfig
mips                         tb0226_defconfig
arm                        clps711x_defconfig
arm                            xcep_defconfig
arm                          badge4_defconfig
h8300                       h8s-sim_defconfig
m68k                            q40_defconfig
parisc                           alldefconfig
sh                         ecovec24_defconfig
sh                     magicpanelr2_defconfig
arm                        cerfcube_defconfig
openrisc                    or1ksim_defconfig
arm                        shmobile_defconfig
powerpc                     sequoia_defconfig
arm                      integrator_defconfig
openrisc                  or1klitex_defconfig
m68k                       m5249evb_defconfig
powerpc                   currituck_defconfig
arm                            qcom_defconfig
mips                         db1xxx_defconfig
sh                          sdk7786_defconfig
powerpc                         wii_defconfig
powerpc                 mpc85xx_cds_defconfig
m68k                          amiga_defconfig
sh                           se7712_defconfig
csky                             alldefconfig
sh                        sh7757lcr_defconfig
arm                  randconfig-c002-20220327
arm                  randconfig-c002-20220329
arm                  randconfig-c002-20220330
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
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
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a001-20220328
x86_64               randconfig-a003-20220328
x86_64               randconfig-a004-20220328
x86_64               randconfig-a002-20220328
x86_64               randconfig-a005-20220328
x86_64               randconfig-a006-20220328
i386                 randconfig-a001-20220328
i386                 randconfig-a003-20220328
i386                 randconfig-a006-20220328
i386                 randconfig-a005-20220328
i386                 randconfig-a004-20220328
i386                 randconfig-a002-20220328
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                    nommu_k210_defconfig
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
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
mips                 randconfig-c004-20220329
x86_64                        randconfig-c007
mips                 randconfig-c004-20220327
arm                  randconfig-c002-20220327
arm                  randconfig-c002-20220329
riscv                randconfig-c006-20220327
powerpc              randconfig-c003-20220327
powerpc              randconfig-c003-20220329
riscv                randconfig-c006-20220329
i386                          randconfig-c001
mips                 randconfig-c004-20220330
powerpc              randconfig-c003-20220330
riscv                randconfig-c006-20220330
arm                  randconfig-c002-20220330
powerpc                 mpc8313_rdb_defconfig
mips                           mtx1_defconfig
arm                         socfpga_defconfig
powerpc                      obs600_defconfig
powerpc                     mpc512x_defconfig
mips                        workpad_defconfig
powerpc                    socrates_defconfig
mips                           rs90_defconfig
powerpc                   lite5200b_defconfig
powerpc                     kilauea_defconfig
riscv                            alldefconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a016-20220328
x86_64               randconfig-a012-20220328
x86_64               randconfig-a011-20220328
x86_64               randconfig-a014-20220328
x86_64               randconfig-a013-20220328
x86_64               randconfig-a015-20220328
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a014-20220328
i386                 randconfig-a012-20220328
i386                 randconfig-a015-20220328
i386                 randconfig-a011-20220328
i386                 randconfig-a013-20220328
i386                 randconfig-a016-20220328
riscv                randconfig-r042-20220328
hexagon              randconfig-r045-20220329
hexagon              randconfig-r045-20220328
hexagon              randconfig-r045-20220327
hexagon              randconfig-r041-20220327
hexagon              randconfig-r045-20220330
hexagon              randconfig-r041-20220329
hexagon              randconfig-r041-20220328
hexagon              randconfig-r041-20220330

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
