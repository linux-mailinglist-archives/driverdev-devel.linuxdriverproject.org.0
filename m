Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6424628A4EF
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Oct 2020 03:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D54F787705;
	Sun, 11 Oct 2020 01:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njkY9xgk9JBJ; Sun, 11 Oct 2020 01:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B669876D9;
	Sun, 11 Oct 2020 01:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 304BC1BF331
 for <devel@linuxdriverproject.org>; Sun, 11 Oct 2020 01:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D21186B8D
 for <devel@linuxdriverproject.org>; Sun, 11 Oct 2020 01:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZ64MmokFxcw for <devel@linuxdriverproject.org>;
 Sun, 11 Oct 2020 01:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 605E4864CD
 for <devel@driverdev.osuosl.org>; Sun, 11 Oct 2020 01:28:40 +0000 (UTC)
IronPort-SDR: 2j+4JF7gPODruu+3r5h+b6cfqYxsDhwszxfgruLTweFi+rWQmrhzqY+yiRI1P8QdfDRRmxXB0G
 LLl+VpqlTwsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9770"; a="183067854"
X-IronPort-AV: E=Sophos;i="5.77,361,1596524400"; d="scan'208";a="183067854"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2020 18:28:35 -0700
IronPort-SDR: LNzhCJelc6Hg0oa5AO30m+OIh8ShZIOvXc9/C1+sDmIbvBJUmH2/PtlP2aZ9xR0/TR6cqA2DIN
 SgeDTJXJWsAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,361,1596524400"; d="scan'208";a="317481745"
Received: from lkp-server02.sh.intel.com (HELO 92b3fbfaed90) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 10 Oct 2020 18:28:34 -0700
Received: from kbuild by 92b3fbfaed90 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kRQA5-0000MW-Gi; Sun, 11 Oct 2020 01:28:33 +0000
Date: Sun, 11 Oct 2020 09:28:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 e1f13c879a7c21bd207dc6242455e8e3a1e88b40
Message-ID: <5f825fa6.BvzPgSEqzGMWWmcF%lkp@intel.com>
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
branch HEAD: e1f13c879a7c21bd207dc6242455e8e3a1e88b40  staging: comedi: check validity of wMaxPacketSize of usb endpoints found

elapsed time: 722m

configs tested: 113
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sparc                               defconfig
mips                        bcm47xx_defconfig
sh                              ul2_defconfig
sh                           se7619_defconfig
powerpc                     skiroot_defconfig
m68k                          multi_defconfig
powerpc                    ge_imp3a_defconfig
sh                          polaris_defconfig
powerpc                          allyesconfig
powerpc                     taishan_defconfig
mips                      loongson3_defconfig
sh                          kfr2r09_defconfig
arm                         s3c6400_defconfig
mips                           jazz_defconfig
arc                         haps_hs_defconfig
sh                   rts7751r2dplus_defconfig
sh                        edosk7705_defconfig
arc                     haps_hs_smp_defconfig
sh                         apsh4a3a_defconfig
powerpc                      katmai_defconfig
arm                        neponset_defconfig
arm                         ebsa110_defconfig
arm                              zx_defconfig
sh                               j2_defconfig
arm                             rpc_defconfig
mips                malta_kvm_guest_defconfig
c6x                        evmc6457_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                         wii_defconfig
powerpc                     tqm8548_defconfig
powerpc                  iss476-smp_defconfig
s390                             allyesconfig
mips                           rs90_defconfig
parisc                generic-32bit_defconfig
m68k                        mvme147_defconfig
arm                            dove_defconfig
powerpc                     ksi8560_defconfig
sh                           se7705_defconfig
sh                          rsk7269_defconfig
arm                       imx_v6_v7_defconfig
arm                         s3c2410_defconfig
ia64                            zx1_defconfig
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
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201010
i386                 randconfig-a006-20201010
i386                 randconfig-a001-20201010
i386                 randconfig-a003-20201010
i386                 randconfig-a004-20201010
i386                 randconfig-a002-20201010
x86_64               randconfig-a016-20201010
x86_64               randconfig-a015-20201010
x86_64               randconfig-a012-20201010
x86_64               randconfig-a013-20201010
x86_64               randconfig-a014-20201010
x86_64               randconfig-a011-20201010
i386                 randconfig-a016-20201010
i386                 randconfig-a015-20201010
i386                 randconfig-a013-20201010
i386                 randconfig-a012-20201010
i386                 randconfig-a011-20201010
i386                 randconfig-a014-20201010
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201010
x86_64               randconfig-a002-20201010
x86_64               randconfig-a006-20201010
x86_64               randconfig-a001-20201010
x86_64               randconfig-a003-20201010
x86_64               randconfig-a005-20201010

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
