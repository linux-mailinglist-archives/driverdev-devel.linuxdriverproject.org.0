Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F08421EE0A
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 12:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7BB288839;
	Tue, 14 Jul 2020 10:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PILK3x7NTmYh; Tue, 14 Jul 2020 10:34:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6EDC887A6;
	Tue, 14 Jul 2020 10:34:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5199B1BF20F
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:34:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B36488E63
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:34:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dvrm118A_tBS for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 10:34:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CA5688E59
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 10:34:21 +0000 (UTC)
IronPort-SDR: K2AElXyh2MpySqC3WZcB23AMjKejXKrerLPQKOR0EA+ePvADw2iPJv50pQMECifTlmhIXZwBK9
 mFttIoUGy6ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="128421160"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="128421160"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 03:34:21 -0700
IronPort-SDR: YZXhoo580ADjEOoygE2NTErfDxieSuQLAlsiuR2Oj0UcKgD6yD6BvqIiHLHOGHcYAkxaJpglGP
 YCs30yqIbrpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="281710454"
Received: from lkp-server02.sh.intel.com (HELO 393d9bdf0d5c) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 14 Jul 2020 03:34:19 -0700
Received: from kbuild by 393d9bdf0d5c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jvIGQ-00005D-Vy; Tue, 14 Jul 2020 10:34:18 +0000
Date: Tue, 14 Jul 2020 18:33:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 caaba08f8c0dbe5c8fcb497faa7e3b394c21ff39
Message-ID: <5f0d8a16.wtOLXtUf2HHDO4Dv%lkp@intel.com>
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
branch HEAD: caaba08f8c0dbe5c8fcb497faa7e3b394c21ff39  staging: qlge: qlge_ethtool: Remove one byte memset.

elapsed time: 1239m

configs tested: 150
configs skipped: 14

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
mips                         tb0287_defconfig
arm64                            alldefconfig
arm                        mini2440_defconfig
arm                            hisi_defconfig
powerpc                      ppc40x_defconfig
arm                        keystone_defconfig
sh                        sh7785lcr_defconfig
mips                         db1xxx_defconfig
m68k                       m5249evb_defconfig
m68k                         amcore_defconfig
h8300                               defconfig
arm                         hackkit_defconfig
mips                         bigsur_defconfig
mips                        maltaup_defconfig
um                            kunit_defconfig
arm                        oxnas_v6_defconfig
m68k                            mac_defconfig
riscv                             allnoconfig
mips                            gpr_defconfig
nios2                               defconfig
sh                         ap325rxa_defconfig
arc                                 defconfig
powerpc                     powernv_defconfig
mips                         tb0219_defconfig
powerpc                     pq2fads_defconfig
arm                         bcm2835_defconfig
sh                             espt_defconfig
ia64                        generic_defconfig
sh                 kfr2r09-romimage_defconfig
nds32                             allnoconfig
m68k                        m5407c3_defconfig
arm                       aspeed_g5_defconfig
x86_64                           alldefconfig
arm                          tango4_defconfig
sh                                  defconfig
sh                           se7712_defconfig
xtensa                          iss_defconfig
sparc64                          allmodconfig
powerpc                      mgcoge_defconfig
sh                         apsh4a3a_defconfig
m68k                        mvme16x_defconfig
arc                            hsdk_defconfig
arm                           h5000_defconfig
arm                          collie_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     mpc5200_defconfig
arm                           sama5_defconfig
sh                        apsh4ad0a_defconfig
mips                              allnoconfig
arm                         cm_x300_defconfig
i386                             alldefconfig
arm                             rpc_defconfig
ia64                         bigsur_defconfig
m68k                        stmark2_defconfig
parisc                           alldefconfig
ia64                      gensparse_defconfig
sh                           se7721_defconfig
arm                     eseries_pxa_defconfig
sh                           se7724_defconfig
m68k                         apollo_defconfig
arm                      pxa255-idp_defconfig
powerpc                     mpc512x_defconfig
arm                     am200epdkit_defconfig
xtensa                       common_defconfig
i386                              allnoconfig
parisc                           allmodconfig
mips                           mtx1_defconfig
sh                          sdk7786_defconfig
xtensa                generic_kc705_defconfig
sh                          rsk7203_defconfig
i386                             allyesconfig
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
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200713
i386                 randconfig-a005-20200713
i386                 randconfig-a006-20200713
i386                 randconfig-a002-20200713
i386                 randconfig-a003-20200713
i386                 randconfig-a004-20200713
i386                 randconfig-a016-20200713
i386                 randconfig-a015-20200713
i386                 randconfig-a011-20200713
i386                 randconfig-a012-20200713
i386                 randconfig-a013-20200713
i386                 randconfig-a014-20200713
riscv                            allyesconfig
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
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
