Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6144B36F3DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 03:58:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42D0C84C6F;
	Fri, 30 Apr 2021 01:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igVGDkedvV7k; Fri, 30 Apr 2021 01:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9219684C64;
	Fri, 30 Apr 2021 01:58:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03EA61BF36A
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 01:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 012FF4018C
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 01:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q_Seq9xf2GnQ for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 01:58:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1920840139
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 01:58:19 +0000 (UTC)
IronPort-SDR: 9M5Nf47tFLJfoJqqeT2vzOn6ttI6nfRFO52wUzE7UDK+Id+JXYJY9URpU6XeWFPXv34UZzxG7o
 WWrHgWJ9A9dA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="176653635"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="176653635"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 18:58:14 -0700
IronPort-SDR: cHJO9b+riplk52R6OjAPvv9sd8Lm+oujwB0XZvWryyX61jtrXk7Vka98zzocffeodeDNcN8x9Z
 7RKVyx1gguFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="459126793"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2021 18:58:12 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcIQ0-0007vE-6k; Fri, 30 Apr 2021 01:58:12 +0000
Date: Fri, 30 Apr 2021 09:57:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts-round2] BUILD SUCCESS
 bc5f2ade71ae152e85c902d81545a27a3103fbe0
Message-ID: <608b6420.bsWNZJEijXG7JAWZ%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts-round2
branch HEAD: bc5f2ade71ae152e85c902d81545a27a3103fbe0  Revert "orinoco: avoid assertion in case of NULL pointer"

elapsed time: 724m

configs tested: 140
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
riscv                            allyesconfig
nios2                               defconfig
nios2                            allyesconfig
arm                           omap1_defconfig
arm                        mvebu_v7_defconfig
arm                         mv78xx0_defconfig
arc                        nsimosci_defconfig
sh                          landisk_defconfig
powerpc                      arches_defconfig
powerpc                   lite5200b_defconfig
ia64                         bigsur_defconfig
sh                           se7721_defconfig
arm                          imote2_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                      tqm8xx_defconfig
m68k                       m5249evb_defconfig
arm64                            alldefconfig
um                             i386_defconfig
arm                         socfpga_defconfig
mips                         db1xxx_defconfig
sh                         microdev_defconfig
m68k                       bvme6000_defconfig
arm                           tegra_defconfig
powerpc                        icon_defconfig
nds32                            alldefconfig
powerpc                     redwood_defconfig
powerpc                 linkstation_defconfig
powerpc                     tqm8560_defconfig
i386                             alldefconfig
powerpc                   bluestone_defconfig
csky                                defconfig
powerpc                     ksi8560_defconfig
arm                          simpad_defconfig
ia64                                defconfig
arm                             mxs_defconfig
arm                      pxa255-idp_defconfig
sh                        edosk7705_defconfig
arm                  colibri_pxa300_defconfig
arm                      tct_hammer_defconfig
powerpc                     tqm5200_defconfig
arm                           h3600_defconfig
powerpc64                           defconfig
powerpc                     mpc512x_defconfig
s390                          debug_defconfig
sh                          polaris_defconfig
sh                          sdk7786_defconfig
m68k                         amcore_defconfig
sh                   rts7751r2dplus_defconfig
openrisc                         alldefconfig
arc                     haps_hs_smp_defconfig
arm                         at91_dt_defconfig
arm                        vexpress_defconfig
m68k                            q40_defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
openrisc                 simple_smp_defconfig
powerpc                     ppa8548_defconfig
arc                          axs103_defconfig
mips                           gcw0_defconfig
sh                          kfr2r09_defconfig
arm                          pxa168_defconfig
powerpc                 mpc8272_ads_defconfig
sh                        edosk7760_defconfig
sh                   sh7770_generic_defconfig
sh                            hp6xx_defconfig
arm                          lpd270_defconfig
openrisc                    or1ksim_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
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
