Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6681027A457
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 00:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFFC08709A;
	Sun, 27 Sep 2020 22:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avmpqnKL73Jd; Sun, 27 Sep 2020 22:10:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 170E487087;
	Sun, 27 Sep 2020 22:10:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1831BF31D
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 22:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9836085725
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 22:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y+6hqmanWqho for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 22:10:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8B1A855BD
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 22:10:39 +0000 (UTC)
IronPort-SDR: oL2mcwJtXXZXJ5hQd5bbCBLWs9uUraEnnk5O6tLCFLHO7jXuT/sLa9uhQuWh/OS6I+h7Je1pUL
 RAI/b07lyISQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="223501399"
X-IronPort-AV: E=Sophos;i="5.77,311,1596524400"; d="scan'208";a="223501399"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2020 15:10:39 -0700
IronPort-SDR: w8rTf4AUi+ftgPu6+7yex6EwjYPhVumwDfcFSBovUk5APboKqz1jeDtSOxVNj7gZSeQVYqNJK3
 xfAnshuEtxFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,311,1596524400"; d="scan'208";a="514026142"
Received: from lkp-server01.sh.intel.com (HELO 0e0978ea3297) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 27 Sep 2020 15:10:37 -0700
Received: from kbuild by 0e0978ea3297 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kMesP-00006M-AK; Sun, 27 Sep 2020 22:10:37 +0000
Date: Mon, 28 Sep 2020 06:09:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 eca1d82ea858044a27fa95c498cc0835a0b2e17a
Message-ID: <5f710db7.7UYUI8TRc2PXFchg%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: eca1d82ea858044a27fa95c498cc0835a0b2e17a  staging: rtl8188eu: Reapply "staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames"

elapsed time: 720m

configs tested: 91
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      chrp32_defconfig
riscv                            allyesconfig
powerpc                 mpc8560_ads_defconfig
sh                   secureedge5410_defconfig
powerpc                      ppc6xx_defconfig
i386                             alldefconfig
powerpc                 mpc832x_rdb_defconfig
m68k                         apollo_defconfig
sh                          sdk7780_defconfig
arc                                 defconfig
powerpc                     sequoia_defconfig
i386                                defconfig
arm                           tegra_defconfig
arm                         orion5x_defconfig
m68k                             allyesconfig
powerpc                      tqm8xx_defconfig
arm                         lubbock_defconfig
arm                            u300_defconfig
x86_64                           allyesconfig
arc                         haps_hs_defconfig
arc                             nps_defconfig
c6x                        evmc6474_defconfig
mips                      maltaaprp_defconfig
arm                  colibri_pxa300_defconfig
powerpc                       maple_defconfig
parisc                              defconfig
arm                        multi_v5_defconfig
openrisc                 simple_smp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20200927
i386                 randconfig-a006-20200927
i386                 randconfig-a003-20200927
i386                 randconfig-a004-20200927
i386                 randconfig-a005-20200927
i386                 randconfig-a001-20200927
x86_64               randconfig-a016-20200927
i386                 randconfig-a012-20200927
i386                 randconfig-a014-20200927
i386                 randconfig-a016-20200927
i386                 randconfig-a013-20200927
i386                 randconfig-a011-20200927
i386                 randconfig-a015-20200927
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20200927
x86_64               randconfig-a003-20200927
x86_64               randconfig-a004-20200927
x86_64               randconfig-a002-20200927
x86_64               randconfig-a006-20200927
x86_64               randconfig-a001-20200927

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
