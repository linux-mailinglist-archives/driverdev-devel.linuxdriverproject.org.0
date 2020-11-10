Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF0F2ACF65
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 07:09:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C4CF866C4;
	Tue, 10 Nov 2020 06:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bolVCDsjaGTR; Tue, 10 Nov 2020 06:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6E4485F0B;
	Tue, 10 Nov 2020 06:09:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 935F71BF307
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 06:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 86DD6203EE
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 06:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5KpHg03Bxc1R for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 06:08:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id DB055203E4
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 06:08:56 +0000 (UTC)
IronPort-SDR: PNyl5kSPDmcO9BljDAo1F/i4MRoeMcXr7KmnuQg30by8depUoOj+217Xnk5cwAa8P0xTRS1hX9
 BAt+QZRxub7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="167340594"
X-IronPort-AV: E=Sophos;i="5.77,465,1596524400"; d="scan'208";a="167340594"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 22:08:47 -0800
IronPort-SDR: VXPgIr+RGk99okZxpX+oVKfr39qqfIvhqOewXZl8cKatDNdeiAt6RHViGmv23aX5SZTBjlvpfv
 1W2hXAsPIEjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,465,1596524400"; d="scan'208";a="529656724"
Received: from lkp-server02.sh.intel.com (HELO c6c5fbb3488a) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 09 Nov 2020 22:08:45 -0800
Received: from kbuild by c6c5fbb3488a with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kcMph-00003w-8z; Tue, 10 Nov 2020 06:08:45 +0000
Date: Tue, 10 Nov 2020 14:08:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 33c0c9bdf7a59051a654cd98b7d2b48ce0080967
Message-ID: <5faa2e5d.bTNrp1FspeNbIx+J%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 33c0c9bdf7a59051a654cd98b7d2b48ce0080967  drivers: base: fix some kernel-doc markups

elapsed time: 724m

configs tested: 152
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     decstation_defconfig
arm                        spear6xx_defconfig
sh                          r7785rp_defconfig
sh                             shx3_defconfig
arm                          ixp4xx_defconfig
powerpc                     mpc5200_defconfig
sh                      rts7751r2d1_defconfig
mips                      malta_kvm_defconfig
sh                ecovec24-romimage_defconfig
parisc                generic-64bit_defconfig
x86_64                              defconfig
sh                          urquell_defconfig
powerpc                    gamecube_defconfig
mips                      maltaaprp_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                      mgcoge_defconfig
powerpc                 mpc832x_mds_defconfig
x86_64                           alldefconfig
mips                        qi_lb60_defconfig
m68k                       m5275evb_defconfig
h8300                               defconfig
powerpc                     tqm8541_defconfig
powerpc                      tqm8xx_defconfig
sh                             espt_defconfig
arc                        nsim_700_defconfig
i386                                defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                       maple_defconfig
sh                               alldefconfig
m68k                         amcore_defconfig
powerpc                      katmai_defconfig
sh                   sh7770_generic_defconfig
powerpc                   motionpro_defconfig
powerpc                     tqm5200_defconfig
arm                        mvebu_v7_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                      tct_hammer_defconfig
arm                        keystone_defconfig
arm                             ezx_defconfig
mips                   sb1250_swarm_defconfig
arm                       omap2plus_defconfig
riscv                            alldefconfig
arm                        realview_defconfig
xtensa                  audio_kc705_defconfig
xtensa                              defconfig
powerpc                     ep8248e_defconfig
powerpc                     asp8347_defconfig
mips                        nlm_xlr_defconfig
arm                        multi_v5_defconfig
powerpc                     stx_gp3_defconfig
mips                           jazz_defconfig
arm                            mmp2_defconfig
arm                        cerfcube_defconfig
m68k                        m5272c3_defconfig
arm                        oxnas_v6_defconfig
sh                          rsk7203_defconfig
arm                       cns3420vb_defconfig
arm                           omap1_defconfig
c6x                        evmc6472_defconfig
powerpc                     sequoia_defconfig
powerpc                     tqm8548_defconfig
sh                            hp6xx_defconfig
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
arc                                 defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
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
x86_64               randconfig-a003-20201110
x86_64               randconfig-a005-20201110
x86_64               randconfig-a004-20201110
x86_64               randconfig-a002-20201110
x86_64               randconfig-a006-20201110
x86_64               randconfig-a001-20201110
i386                 randconfig-a006-20201110
i386                 randconfig-a005-20201110
i386                 randconfig-a002-20201110
i386                 randconfig-a001-20201110
i386                 randconfig-a003-20201110
i386                 randconfig-a004-20201110
i386                 randconfig-a004-20201109
i386                 randconfig-a006-20201109
i386                 randconfig-a005-20201109
i386                 randconfig-a001-20201109
i386                 randconfig-a003-20201109
i386                 randconfig-a002-20201109
i386                 randconfig-a012-20201110
i386                 randconfig-a014-20201110
i386                 randconfig-a016-20201110
i386                 randconfig-a011-20201110
i386                 randconfig-a015-20201110
i386                 randconfig-a013-20201110
i386                 randconfig-a014-20201109
i386                 randconfig-a015-20201109
i386                 randconfig-a013-20201109
i386                 randconfig-a016-20201109
i386                 randconfig-a011-20201109
i386                 randconfig-a012-20201109
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
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20201110
x86_64               randconfig-a011-20201110
x86_64               randconfig-a014-20201110
x86_64               randconfig-a013-20201110
x86_64               randconfig-a016-20201110
x86_64               randconfig-a012-20201110
x86_64               randconfig-a012-20201109
x86_64               randconfig-a015-20201109
x86_64               randconfig-a013-20201109
x86_64               randconfig-a011-20201109
x86_64               randconfig-a014-20201109
x86_64               randconfig-a016-20201109

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
