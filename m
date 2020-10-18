Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC4F291FF1
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 22:42:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DBA48722F;
	Sun, 18 Oct 2020 20:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqXInBR0A0VO; Sun, 18 Oct 2020 20:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FA7A8720A;
	Sun, 18 Oct 2020 20:42:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 099AB1BF46A
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 20:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E91A6875FE
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 20:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1WxcVrk46Bw8 for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 20:42:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C901D87639
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 20:42:06 +0000 (UTC)
IronPort-SDR: t5pB+0Yy2toGLEINTN3obqziLuU17d5r6xXkxfo/NrQyAcII/DEU+9TG+O4QOBA2vWwzt55utK
 enhk0+ke1Mqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="166148558"
X-IronPort-AV: E=Sophos;i="5.77,392,1596524400"; d="scan'208";a="166148558"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 13:42:04 -0700
IronPort-SDR: 1Ljgz2061l+ii0U/i+IYHdL45pVq14onWe7/jxj7Z3l6TlRy96f0IVHxE8tsY7P11OI349W2FA
 jRmzWoQ8gdkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,392,1596524400"; d="scan'208";a="465295238"
Received: from lkp-server01.sh.intel.com (HELO 0318c0cac2d8) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 18 Oct 2020 13:42:03 -0700
Received: from kbuild by 0318c0cac2d8 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kUFVC-00009b-HO; Sun, 18 Oct 2020 20:42:02 +0000
Date: Mon, 19 Oct 2020 04:41:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 a259a22338ed6906256a51a440d31ea086a0b90b
Message-ID: <5f8ca879.WEX/pECUB9GGAmcd%lkp@intel.com>
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
branch HEAD: a259a22338ed6906256a51a440d31ea086a0b90b  staging: qlge: remove extra blank lines

elapsed time: 724m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                            zeus_defconfig
powerpc                    mvme5100_defconfig
mips                        omega2p_defconfig
powerpc                     sequoia_defconfig
microblaze                      mmu_defconfig
arc                        vdk_hs38_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                     asp8347_defconfig
mips                        nlm_xlr_defconfig
powerpc                     skiroot_defconfig
powerpc                     rainier_defconfig
powerpc                 canyonlands_defconfig
m68k                          multi_defconfig
mips                     cu1830-neo_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                     tqm5200_defconfig
powerpc                     ep8248e_defconfig
parisc                generic-32bit_defconfig
mips                         mpc30x_defconfig
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
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201018
i386                 randconfig-a005-20201018
i386                 randconfig-a001-20201018
i386                 randconfig-a003-20201018
i386                 randconfig-a004-20201018
i386                 randconfig-a002-20201018
x86_64               randconfig-a016-20201018
x86_64               randconfig-a015-20201018
x86_64               randconfig-a012-20201018
x86_64               randconfig-a013-20201018
x86_64               randconfig-a011-20201018
x86_64               randconfig-a014-20201018
i386                 randconfig-a015-20201018
i386                 randconfig-a013-20201018
i386                 randconfig-a016-20201018
i386                 randconfig-a012-20201018
i386                 randconfig-a011-20201018
i386                 randconfig-a014-20201018
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
x86_64               randconfig-a004-20201018
x86_64               randconfig-a002-20201018
x86_64               randconfig-a006-20201018
x86_64               randconfig-a003-20201018
x86_64               randconfig-a005-20201018
x86_64               randconfig-a001-20201018

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
