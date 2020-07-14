Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE5B21EDFD
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 12:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0C1388E60;
	Tue, 14 Jul 2020 10:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZRWCPq9aoAa; Tue, 14 Jul 2020 10:31:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5707F88E66;
	Tue, 14 Jul 2020 10:31:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C380D1BF20F
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:31:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFAE82667E
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 10:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5IkXf0M5rwz for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 10:31:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 8798F204B0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 10:31:52 +0000 (UTC)
IronPort-SDR: ardR92VSgoQu7h5pOEm2zYKHz8zGLy/BAPU1NTXoZeLIP/nQaWzyKDqikpFiMRYe7Z8BhMVDnJ
 EfYqzvYgXxNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="146872095"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="146872095"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 03:31:51 -0700
IronPort-SDR: weQrKTsnSEJHhmDkDogYLEexeSbQvQESiiHyGLoAb+DqWZX+p4/TOVS/XDD0fdBfct+vzCq31E
 WDsA4DmN1utQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="269974555"
Received: from lkp-server02.sh.intel.com (HELO 393d9bdf0d5c) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jul 2020 03:31:50 -0700
Received: from kbuild by 393d9bdf0d5c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jvIE2-00003N-7J; Tue, 14 Jul 2020 10:31:50 +0000
Date: Tue, 14 Jul 2020 18:30:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 cb22ab20c969615296475b7068c891ca3a849fa9
Message-ID: <5f0d8933.4BUprRfgkS6QK0Nn%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: cb22ab20c969615296475b7068c891ca3a849fa9  staging: rtl8712/: Using comparison to true is error prone

elapsed time: 3059m

configs tested: 122
configs skipped: 4

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
arc                     haps_hs_smp_defconfig
mips                      bmips_stb_defconfig
xtensa                              defconfig
riscv                          rv32_defconfig
sh                      rts7751r2d1_defconfig
arm                     eseries_pxa_defconfig
arm                           stm32_defconfig
mips                    maltaup_xpa_defconfig
arm                         lpc18xx_defconfig
i386                                defconfig
mips                         mpc30x_defconfig
arm                         mv78xx0_defconfig
openrisc                         allyesconfig
sh                          rsk7201_defconfig
arm                        clps711x_defconfig
mips                           mtx1_defconfig
arm                            pleb_defconfig
arm                         assabet_defconfig
powerpc                     mpc512x_defconfig
arm                         orion5x_defconfig
s390                       zfcpdump_defconfig
alpha                            alldefconfig
mips                      pistachio_defconfig
mips                        nlm_xlr_defconfig
arm                        multi_v7_defconfig
sh                           se7721_defconfig
m68k                        m5407c3_defconfig
s390                              allnoconfig
powerpc                        cell_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
arm                           omap1_defconfig
i386                              allnoconfig
i386                             allyesconfig
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
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200712
i386                 randconfig-a005-20200712
i386                 randconfig-a006-20200712
i386                 randconfig-a002-20200712
i386                 randconfig-a003-20200712
i386                 randconfig-a004-20200712
x86_64               randconfig-a012-20200712
x86_64               randconfig-a011-20200712
x86_64               randconfig-a016-20200712
x86_64               randconfig-a014-20200712
x86_64               randconfig-a015-20200712
x86_64               randconfig-a013-20200712
i386                 randconfig-a016-20200712
i386                 randconfig-a015-20200712
i386                 randconfig-a011-20200712
i386                 randconfig-a012-20200712
i386                 randconfig-a013-20200712
i386                 randconfig-a014-20200712
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
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
