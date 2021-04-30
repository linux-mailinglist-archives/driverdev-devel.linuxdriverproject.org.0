Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 099A736F55A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 07:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9721341B51;
	Fri, 30 Apr 2021 05:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGMrV61gWE9D; Fri, 30 Apr 2021 05:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DC7E40F7E;
	Fri, 30 Apr 2021 05:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 157C91C11BA
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 05:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04CB841B45
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 05:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVp6MJEAoDuU for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 05:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D30E640F7E
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 05:31:33 +0000 (UTC)
IronPort-SDR: 1PYOpBS/HQ6Trxw8xnzeiVdIFbw1jRw1hw9I0lwGZO1FCKcZNyc4dD4c8ErBNpRvRlsI3QdI/s
 QnhmOJRpVs0w==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="261149029"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="261149029"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 22:31:31 -0700
IronPort-SDR: d5qaVWCq6lr3q2gjnhhiJu0t50hdNHzRqgNspRf9P8dDsjVw5UDP/n7rWkkzXg3pgSH1Wvnqzd
 VDEwTDxFaRZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="527507854"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2021 22:31:30 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcLkP-000800-Lc; Fri, 30 Apr 2021 05:31:29 +0000
Date: Fri, 30 Apr 2021 13:30:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 0ba4f2bb6230ae18167909728ba274054e599b19
Message-ID: <608b9606.dbigWvdNM39R1E+j%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts
branch HEAD: 0ba4f2bb6230ae18167909728ba274054e599b19  net: fujitsu: fix potential null-ptr-deref

elapsed time: 725m

configs tested: 137
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
powerpc                         ps3_defconfig
arm                           h3600_defconfig
mips                         db1xxx_defconfig
powerpc                      pmac32_defconfig
arm                      integrator_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                      tqm8xx_defconfig
m68k                       m5249evb_defconfig
arm64                            alldefconfig
um                             i386_defconfig
arc                        nsimosci_defconfig
powerpc                 mpc836x_rdk_defconfig
xtensa                    xip_kc705_defconfig
m68k                       m5208evb_defconfig
powerpc                 linkstation_defconfig
arm                       aspeed_g5_defconfig
powerpc                    socrates_defconfig
arm                        mini2440_defconfig
arm                            hisi_defconfig
arm                         lpc32xx_defconfig
powerpc                   currituck_defconfig
arm                           viper_defconfig
i386                             alldefconfig
arm                        spear6xx_defconfig
powerpc                          g5_defconfig
arm                           omap1_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                   bluestone_defconfig
csky                                defconfig
powerpc                     ksi8560_defconfig
arm                          simpad_defconfig
mips                malta_kvm_guest_defconfig
mips                         rt305x_defconfig
powerpc                   motionpro_defconfig
arm                     eseries_pxa_defconfig
sh                           se7619_defconfig
arm                          collie_defconfig
powerpc                 mpc8540_ads_defconfig
sh                        sh7763rdp_defconfig
powerpc                   lite5200b_defconfig
arm                        neponset_defconfig
m68k                            q40_defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
openrisc                 simple_smp_defconfig
powerpc                     ppa8548_defconfig
arc                          axs103_defconfig
mips                           gcw0_defconfig
sh                          kfr2r09_defconfig
ia64                             allyesconfig
arm                          pxa168_defconfig
sh                   rts7751r2dplus_defconfig
sh                           se7724_defconfig
mips                           rs90_defconfig
powerpc                      acadia_defconfig
powerpc                      ppc44x_defconfig
mips                            ar7_defconfig
arc                            hsdk_defconfig
sh                            shmin_defconfig
arm                         s3c2410_defconfig
arm                           sunxi_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210429
x86_64               randconfig-a002-20210429
x86_64               randconfig-a005-20210429
x86_64               randconfig-a006-20210429
x86_64               randconfig-a001-20210429
x86_64               randconfig-a003-20210429
i386                 randconfig-a005-20210429
i386                 randconfig-a002-20210429
i386                 randconfig-a001-20210429
i386                 randconfig-a006-20210429
i386                 randconfig-a003-20210429
i386                 randconfig-a004-20210429
i386                 randconfig-a012-20210429
i386                 randconfig-a014-20210429
i386                 randconfig-a013-20210429
i386                 randconfig-a011-20210429
i386                 randconfig-a015-20210429
i386                 randconfig-a016-20210429
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210429
x86_64               randconfig-a016-20210429
x86_64               randconfig-a011-20210429
x86_64               randconfig-a014-20210429
x86_64               randconfig-a013-20210429
x86_64               randconfig-a012-20210429

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
