Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 447DF4ECFE8
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Mar 2022 01:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD2C0612AB;
	Wed, 30 Mar 2022 23:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FN6I2THArreN; Wed, 30 Mar 2022 23:08:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34E5B612BC;
	Wed, 30 Mar 2022 23:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C24691BF41D
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 23:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF2C1612AB
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 23:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPFR5wQM5T5o for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 23:08:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18108612A8
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 23:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648681680; x=1680217680;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=a6R/1dpS6nFQl+RAc8hFt+QHIPJm1Ov6muITKYB+NY8=;
 b=DiNPE3UUmH4T7hCMc59nHdI26bj3zUXtfyNo9/y2TVlC52Xv8hCPRqUT
 iQs6eujm/d3DiY8FYKtn6ylTSgS671AnAZHynw3pmpeyByNA5hHMp+NcD
 KfMUp8pA+CLl57HIL85OJfRQnagailzgrVDbpyXqAbz91w3/mZflOahRa
 6T+ZfCuGxdaf2MA+4S2czpNGm0j8pvghrG/wBDmuzdh24mIGglwtlStjV
 WDfHd8THesy3ByPjls1WtuVUdPrx/an3gWLAFpgPR8z7P7dYAM5fg1rHq
 9om0Vrt94k2i/vVZvqkaJ9oBELDxVaqFRQhwKPoh0t2J4+XCrORPu2BrL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="239594960"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="239594960"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="605704687"
Received: from lkp-server02.sh.intel.com (HELO 56431612eabd) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2022 16:07:57 -0700
Received: from kbuild by 56431612eabd with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nZhPx-0000d4-AM;
 Wed, 30 Mar 2022 23:07:57 +0000
Date: Thu, 31 Mar 2022 07:07:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 0dfcaebf8157d5d12ceb4c11bea590b8f826555b
Message-ID: <6244e2af.kfccevXRaGhK1RGv%lkp@intel.com>
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
branch HEAD: 0dfcaebf8157d5d12ceb4c11bea590b8f826555b  staging: r8188eu: convert rtw_inc_and_chk_continual_urb_error() to bool

elapsed time: 720m

configs tested: 164
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220330
powerpc              randconfig-c003-20220330
sh                          landisk_defconfig
sh                        edosk7760_defconfig
powerpc                     rainier_defconfig
um                             i386_defconfig
xtensa                    smp_lx200_defconfig
arm                        mini2440_defconfig
powerpc                    adder875_defconfig
m68k                             allmodconfig
powerpc                     pq2fads_defconfig
arc                     haps_hs_smp_defconfig
riscv             nommu_k210_sdcard_defconfig
um                               alldefconfig
mips                            gpr_defconfig
nios2                         3c120_defconfig
sh                               alldefconfig
arm                       aspeed_g5_defconfig
parisc64                            defconfig
sh                        sh7757lcr_defconfig
powerpc                    klondike_defconfig
sparc                       sparc64_defconfig
sh                          rsk7201_defconfig
mips                            ar7_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
arm                            lart_defconfig
arm                        trizeps4_defconfig
alpha                            alldefconfig
arm                        cerfcube_defconfig
powerpc                 mpc837x_mds_defconfig
arc                     nsimosci_hs_defconfig
s390                                defconfig
powerpc                 mpc85xx_cds_defconfig
mips                           gcw0_defconfig
arm                           sama5_defconfig
parisc                generic-64bit_defconfig
powerpc                      arches_defconfig
ia64                            zx1_defconfig
m68k                        stmark2_defconfig
powerpc                  iss476-smp_defconfig
arm                         cm_x300_defconfig
sh                             espt_defconfig
powerpc                  storcenter_defconfig
sh                        apsh4ad0a_defconfig
mips                        bcm47xx_defconfig
powerpc                 mpc834x_itx_defconfig
sh                         ap325rxa_defconfig
mips                     decstation_defconfig
sh                           se7705_defconfig
arm                         s3c6400_defconfig
ia64                                defconfig
m68k                         amcore_defconfig
riscv                               defconfig
powerpc                       eiger_defconfig
um                                  defconfig
openrisc                    or1ksim_defconfig
sh                          urquell_defconfig
sh                           sh2007_defconfig
sh                            hp6xx_defconfig
sh                           se7721_defconfig
openrisc                  or1klitex_defconfig
arm                         at91_dt_defconfig
arc                         haps_hs_defconfig
m68k                          multi_defconfig
powerpc                      ppc6xx_defconfig
sh                          kfr2r09_defconfig
mips                           ip32_defconfig
sh                            migor_defconfig
powerpc                     sequoia_defconfig
ia64                      gensparse_defconfig
riscv                            allmodconfig
nios2                               defconfig
m68k                            q40_defconfig
mips                           jazz_defconfig
m68k                          hp300_defconfig
arm                         axm55xx_defconfig
sh                ecovec24-romimage_defconfig
sh                   sh7724_generic_defconfig
parisc                              defconfig
mips                         bigsur_defconfig
powerpc                 linkstation_defconfig
arc                            hsdk_defconfig
powerpc                        warp_defconfig
xtensa                          iss_defconfig
arm                           sunxi_defconfig
arm                  randconfig-c002-20220330
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220330
s390                 randconfig-r044-20220330
arc                  randconfig-r043-20220330
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
mips                 randconfig-c004-20220330
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220330
riscv                randconfig-c006-20220330
i386                          randconfig-c001
arm                  randconfig-c002-20220330
mips                         tb0219_defconfig
powerpc                     mpc5200_defconfig
powerpc                  mpc866_ads_defconfig
arm                        vexpress_defconfig
arm                       spear13xx_defconfig
mips                        omega2p_defconfig
powerpc                          allmodconfig
mips                          ath79_defconfig
powerpc                     powernv_defconfig
arm                         lpc32xx_defconfig
arm                             mxs_defconfig
powerpc                       ebony_defconfig
arm                         s3c2410_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220330
hexagon              randconfig-r041-20220330

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
