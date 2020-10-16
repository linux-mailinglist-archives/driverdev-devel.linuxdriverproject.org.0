Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED1D290DD7
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 00:46:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76BD988BCA;
	Fri, 16 Oct 2020 22:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kx9utfXd7YdT; Fri, 16 Oct 2020 22:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C2C988BBE;
	Fri, 16 Oct 2020 22:46:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D208E1BF316
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 22:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE0F789059
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 22:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NEwkO7+LoqcE for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 22:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C08E89058
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 22:46:33 +0000 (UTC)
IronPort-SDR: 7dtyCxMgaFDKzsL0HUlIurFwfGYOZmWnrRjiUKj8T4Hp7APM68yLUd9P6GYvB1Ie91EJYo0dqT
 2jIRmB9BDwYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="146006612"
X-IronPort-AV: E=Sophos;i="5.77,384,1596524400"; d="scan'208";a="146006612"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 15:46:29 -0700
IronPort-SDR: 2JeclzQC++PmH3uBlaezkhdFVmTCYmzps1LJUQiS1yvBpsOUQZDny6GqEGvQ/O/XRSl9+NFEiI
 vPxBid2TY3QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,384,1596524400"; d="scan'208";a="531903818"
Received: from lkp-server02.sh.intel.com (HELO 262a2cdd3070) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 16 Oct 2020 15:46:27 -0700
Received: from kbuild by 262a2cdd3070 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kTYUU-0000Ar-RV; Fri, 16 Oct 2020 22:46:26 +0000
Date: Sat, 17 Oct 2020 06:46:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 2320710b1b02966d6b473e74014700533e718381
Message-ID: <5f8a22bc.YqLHApipycPGn9dj%lkp@intel.com>
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
branch HEAD: 2320710b1b02966d6b473e74014700533e718381  staging: qlge: remove extra blank lines

elapsed time: 722m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                          axs101_defconfig
sparc                            allyesconfig
powerpc                    klondike_defconfig
powerpc                 mpc832x_mds_defconfig
sh                   secureedge5410_defconfig
arm                        neponset_defconfig
h8300                     edosk2674_defconfig
mips                           mtx1_defconfig
arm                       aspeed_g5_defconfig
arm                          exynos_defconfig
arm                       aspeed_g4_defconfig
sh                           se7206_defconfig
arm                          prima2_defconfig
mips                        qi_lb60_defconfig
powerpc                 mpc837x_mds_defconfig
mips                        vocore2_defconfig
arc                      axs103_smp_defconfig
powerpc                      mgcoge_defconfig
arm                         palmz72_defconfig
m68k                        mvme147_defconfig
mips                         cobalt_defconfig
sh                         microdev_defconfig
c6x                         dsk6455_defconfig
powerpc                         wii_defconfig
mips                      loongson3_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                        icon_defconfig
arm                         cm_x300_defconfig
arm                       netwinder_defconfig
arm                   milbeaut_m10v_defconfig
arm                            hisi_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201016
i386                 randconfig-a006-20201016
i386                 randconfig-a001-20201016
i386                 randconfig-a003-20201016
i386                 randconfig-a004-20201016
i386                 randconfig-a002-20201016
x86_64               randconfig-a016-20201016
x86_64               randconfig-a012-20201016
x86_64               randconfig-a015-20201016
x86_64               randconfig-a013-20201016
x86_64               randconfig-a014-20201016
x86_64               randconfig-a011-20201016
i386                 randconfig-a016-20201016
i386                 randconfig-a013-20201016
i386                 randconfig-a015-20201016
i386                 randconfig-a011-20201016
i386                 randconfig-a012-20201016
i386                 randconfig-a014-20201016
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
x86_64               randconfig-a004-20201016
x86_64               randconfig-a002-20201016
x86_64               randconfig-a006-20201016
x86_64               randconfig-a001-20201016
x86_64               randconfig-a005-20201016
x86_64               randconfig-a003-20201016

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
