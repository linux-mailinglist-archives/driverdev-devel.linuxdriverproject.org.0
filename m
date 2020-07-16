Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 020EE221D9B
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 09:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE5008A605;
	Thu, 16 Jul 2020 07:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3GuaYwWr4jY; Thu, 16 Jul 2020 07:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 733908A608;
	Thu, 16 Jul 2020 07:49:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B34C1BF3BF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 424AE88632
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JJk5dJLdnO8c for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 07:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 687E688628
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:49:15 +0000 (UTC)
IronPort-SDR: YKEXrfhBxI++eobAzn2fOiWH5pFIdBphjXENASbLZm4LMm4+mUbWe/uHoIGslI5eT/InwBU6wX
 nA/ZjEwpcvFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147331079"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="147331079"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 00:49:14 -0700
IronPort-SDR: NY4JA8vUE+rnv60f5sLguwF2yGzU3DTJBDhDAKGVa+/2XC5G/sTpBTQVUC/KsdDte02ozDgub+
 BR5p/W5QNDzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="318339502"
Received: from lkp-server02.sh.intel.com (HELO 02dcbd16d3ea) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2020 00:49:13 -0700
Received: from kbuild by 02dcbd16d3ea with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jvydk-000069-QU; Thu, 16 Jul 2020 07:49:12 +0000
Date: Thu, 16 Jul 2020 15:47:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 419317021ccc8957d9cf11bf2500c2cff37ca6c7
Message-ID: <5f10061f.GGRM5zR9PeQgcft3%lkp@intel.com>
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
branch HEAD: 419317021ccc8957d9cf11bf2500c2cff37ca6c7  staging: rtl8188eu: core: fix coding style issues

elapsed time: 796m

configs tested: 111
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arc                          axs101_defconfig
c6x                        evmc6457_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                    gamecube_defconfig
arm                          lpd270_defconfig
i386                             allyesconfig
mips                          malta_defconfig
c6x                        evmc6474_defconfig
riscv                    nommu_k210_defconfig
powerpc                  mpc866_ads_defconfig
arm                       mainstone_defconfig
arm                      tct_hammer_defconfig
powerpc                        cell_defconfig
sparc                            alldefconfig
mips                       capcella_defconfig
mips                        nlm_xlr_defconfig
powerpc                      pmac32_defconfig
arm                        clps711x_defconfig
arm                           corgi_defconfig
riscv                            allyesconfig
arm                         orion5x_defconfig
i386                              allnoconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a001-20200715
i386                 randconfig-a005-20200715
i386                 randconfig-a002-20200715
i386                 randconfig-a006-20200715
i386                 randconfig-a003-20200715
i386                 randconfig-a004-20200715
i386                 randconfig-a016-20200715
i386                 randconfig-a011-20200715
i386                 randconfig-a015-20200715
i386                 randconfig-a012-20200715
i386                 randconfig-a013-20200715
i386                 randconfig-a014-20200715
x86_64               randconfig-a005-20200715
x86_64               randconfig-a006-20200715
x86_64               randconfig-a002-20200715
x86_64               randconfig-a001-20200715
x86_64               randconfig-a003-20200715
x86_64               randconfig-a004-20200715
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
