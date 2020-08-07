Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B753723E6DB
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 06:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 541D88884F;
	Fri,  7 Aug 2020 04:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4Ze-ie0LI1C; Fri,  7 Aug 2020 04:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B590F887C5;
	Fri,  7 Aug 2020 04:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC8F81BF31D
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 04:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0A75253F9
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 04:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3hKdhCP+L-jg for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 04:38:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 6FE3F25435
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 04:38:54 +0000 (UTC)
IronPort-SDR: P6eEwKkPuUJgeoMnEshqwNY4c88w/r2daXLG+Tt07Zh3jz4VY280UtmWfjJyuVnC/PTa+HNJfA
 EmPrVE4ELflA==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="133070247"
X-IronPort-AV: E=Sophos;i="5.75,444,1589266800"; d="scan'208";a="133070247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 21:38:53 -0700
IronPort-SDR: 1+hFmXhkqU8MT+Kj85jdsX3AktLADr3AOACQ3umaMrECAsn7r/HCfC9XC53hTAppAcmrF6TmXJ
 v0FZ4E/o3k8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,444,1589266800"; d="scan'208";a="468100679"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 06 Aug 2020 21:38:52 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k3u9b-00020B-Hs; Fri, 07 Aug 2020 04:38:51 +0000
Date: Fri, 07 Aug 2020 12:38:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 386703cdbd092acbc66a1f2f4f0406574aaa7d5e
Message-ID: <5f2cdac3.CieYs6aUMTNPyMOt%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 386703cdbd092acbc66a1f2f4f0406574aaa7d5e  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 723m

configs tested: 98
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         axm55xx_defconfig
xtensa                    xip_kc705_defconfig
m68k                       m5475evb_defconfig
powerpc                       holly_defconfig
mips                         tb0287_defconfig
sh                        dreamcast_defconfig
sh                          r7780mp_defconfig
arm                        realview_defconfig
arm                           sunxi_defconfig
microblaze                    nommu_defconfig
m68k                       m5249evb_defconfig
powerpc                    amigaone_defconfig
powerpc                      pasemi_defconfig
arm                             rpc_defconfig
m68k                        mvme147_defconfig
m68k                          multi_defconfig
powerpc                  mpc885_ads_defconfig
mips                      fuloong2e_defconfig
sh                   secureedge5410_defconfig
ia64                          tiger_defconfig
arm                         mv78xx0_defconfig
microblaze                      mmu_defconfig
mips                      bmips_stb_defconfig
mips                        bcm47xx_defconfig
arm                  colibri_pxa270_defconfig
xtensa                              defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200806
i386                 randconfig-a004-20200806
i386                 randconfig-a001-20200806
i386                 randconfig-a002-20200806
i386                 randconfig-a003-20200806
i386                 randconfig-a006-20200806
i386                 randconfig-a005-20200805
i386                 randconfig-a004-20200805
i386                 randconfig-a001-20200805
i386                 randconfig-a003-20200805
i386                 randconfig-a002-20200805
i386                 randconfig-a006-20200805
i386                 randconfig-a011-20200805
i386                 randconfig-a012-20200805
i386                 randconfig-a013-20200805
i386                 randconfig-a014-20200805
i386                 randconfig-a015-20200805
i386                 randconfig-a016-20200805
x86_64               randconfig-a006-20200806
x86_64               randconfig-a001-20200806
x86_64               randconfig-a004-20200806
x86_64               randconfig-a005-20200806
x86_64               randconfig-a003-20200806
x86_64               randconfig-a002-20200806
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
